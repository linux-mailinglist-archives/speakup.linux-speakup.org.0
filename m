Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id B82F72A21A4
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 21:59:16 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 48ADB380F6A; Sun,  1 Nov 2020 15:59:16 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1010E380F20;
	Sun,  1 Nov 2020 15:59:16 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 15C9D380F0E; Sun,  1 Nov 2020 15:59:15 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B523A380EE7
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 15:59:14 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 46B7FB1A;
 Sun,  1 Nov 2020 21:59:12 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zbVqOTUC1Pn2; Sun,  1 Nov 2020 21:59:11 +0100 (CET)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id DED72AAC;
 Sun,  1 Nov 2020 21:59:10 +0100 (CET)
Received: from samy by function.home with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kZKRR-009lim-Rr; Sun, 01 Nov 2020 21:59:09 +0100
Date: Sun, 1 Nov 2020 21:59:09 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: covici@ccs.covici.com,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup crashes with kernel 5.4.69
Message-ID: <20201101205909.zz2ihrr6zmucrfbq@function>
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="duvqlqgw3ja37uin"
Content-Disposition: inline
In-Reply-To: <m3o8l6sge6.wl-covici@ccs.covici.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4


--duvqlqgw3ja37uin
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

John Covici, le mar. 13 oct. 2020 04:02:09 -0400, a ecrit:
> Hi.  When I just tried to boot with kernel 5.4.69, it did come up, but
> soon crashed with a lot of kernel: basd schedule from idle thread.

Ok, I see the concern. Would you be able to try the attached patch?

Samuel

--duvqlqgw3ja37uin
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=speakup_io_buffer

speakup ttyio: Do not buffer by default

The old serialio code was assuming that the inb would return the
last speech index.  We should thus not actually buffer characters by
default, and just always keep the last character.  When a driver is
reading a ROM version, however, we need to buffer characters.  We just
need to make drivers explicitly tell when they need buffering or not.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

---
 drivers/staging/speakup/serialio.c       |    7 +++
 drivers/staging/speakup/speakup_audptr.c |    2 
 drivers/staging/speakup/speakup_ltlk.c   |    2 
 drivers/staging/speakup/spk_ttyio.c      |   53 +++++++++++++++++++------
 drivers/staging/speakup/spk_types.h      |   14 ++++++
 5 files changed, 67 insertions(+), 11 deletions(-)

--- a/drivers/staging/speakup/speakup_audptr.c
+++ b/drivers/staging/speakup/speakup_audptr.c
@@ -129,6 +129,7 @@ static void synth_version(struct spk_syn
 	unsigned char test = 0;
 	char synth_id[40] = "";
 
+	synth->io_ops->bufferize(1);
 	synth->synth_immediate(synth, "\x05[Q]");
 	synth_id[test] = synth->io_ops->synth_in();
 	if (synth_id[test] == 'A') {
@@ -140,6 +141,7 @@ static void synth_version(struct spk_syn
 	}
 	if (synth_id[0] == 'A')
 		pr_info("%s version: %s", synth->long_name, synth_id);
+	synth->io_ops->bufferize(0);
 }
 
 static int synth_probe(struct spk_synth *synth)
--- a/drivers/staging/speakup/speakup_ltlk.c
+++ b/drivers/staging/speakup/speakup_ltlk.c
@@ -130,6 +130,7 @@ static void synth_interrogate(struct spk
 	unsigned char *t, i;
 	unsigned char buf[50], rom_v[20];
 
+	synth->io_ops->bufferize(1);
 	synth->synth_immediate(synth, "\x18\x01?");
 	for (i = 0; i < 50; i++) {
 		buf[i] = synth->io_ops->synth_in();
@@ -144,6 +145,7 @@ static void synth_interrogate(struct spk
 	}
 	rom_v[i] = 0;
 	pr_info("%s: ROM version: %s\n", synth->long_name, rom_v);
+	synth->io_ops->bufferize(0);
 }
 
 static int synth_probe(struct spk_synth *synth)
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -11,6 +11,7 @@
 struct spk_ldisc_data {
 	char buf;
 	struct completion completion;
+	bool bufferize;
 	bool buf_free;
 };
 
@@ -56,7 +57,7 @@ static int spk_ttyio_ldisc_open(struct t
 		return -ENOMEM;
 
 	init_completion(&ldisc_data->completion);
-	ldisc_data->buf_free = true;
+	ldisc_data->bufferize = false;
 	speakup_tty->disc_data = ldisc_data;
 
 	return 0;
@@ -84,6 +85,12 @@ static int spk_ttyio_receive_buf2(struct
 		return count;
 	}
 
+	if (!ldisc_data->bufferize) {
+		/* Just keep the last character */
+		ldisc_data->buf = cp[count-1];
+		return count;
+	}
+
 	if (!ldisc_data->buf_free)
 		/* ttyio_in will tty_schedule_flip */
 		return 0;
@@ -113,6 +120,7 @@ static int spk_ttyio_out(struct spk_synt
 static int spk_ttyio_out_unicode(struct spk_synth *in_synth, u16 ch);
 static void spk_ttyio_send_xchar(char ch);
 static void spk_ttyio_tiocmset(unsigned int set, unsigned int clear);
+static void spk_ttyio_bufferize(bool enable);
 static unsigned char spk_ttyio_in(void);
 static unsigned char spk_ttyio_in_nowait(void);
 static void spk_ttyio_flush_buffer(void);
@@ -123,6 +131,7 @@ struct spk_io_ops spk_ttyio_ops = {
 	.synth_out_unicode = spk_ttyio_out_unicode,
 	.send_xchar = spk_ttyio_send_xchar,
 	.tiocmset = spk_ttyio_tiocmset,
+	.bufferize = spk_ttyio_bufferize,
 	.synth_in = spk_ttyio_in,
 	.synth_in_nowait = spk_ttyio_in_nowait,
 	.flush_buffer = spk_ttyio_flush_buffer,
@@ -293,16 +302,38 @@ static int spk_ttyio_wait_for_xmitr(stru
 	return 1;
 }
 
-static unsigned char ttyio_in(int timeout)
+static void spk_ttyio_bufferize(bool enable)
+{
+	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
+	bool previous;
+
+	previous = ldisc_data->bufferize;
+	ldisc_data->bufferize = enable;
+	mb();
+
+	if (!previous && enable) {
+		/* Prepare buffering */
+		reinit_completion(&ldisc_data->completion);
+		ldisc_data->buf_free = true;
+	} else if (previous && !enable) {
+		/* Stop buffering */
+		tty_schedule_flip(speakup_tty->port);
+		ldisc_data->buf = 0xff;
+	}
+}
+
+static unsigned char spk_ttyio_in(void)
 {
+	int timeout = SPK_SYNTH_TIMEOUT;
 	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
 	char rv;
 
+	BUG_ON(!ldisc_data->bufferize);
+
 	if (wait_for_completion_timeout(&ldisc_data->completion,
 					usecs_to_jiffies(timeout)) == 0) {
-		if (timeout)
-			pr_warn("spk_ttyio: timeout (%d)  while waiting for input\n",
-				timeout);
+		pr_warn("spk_ttyio: timeout (%d)  while waiting for input\n",
+			timeout);
 		return 0xff;
 	}
 
@@ -318,14 +349,14 @@ static unsigned char ttyio_in(int timeou
 	return rv;
 }
 
-static unsigned char spk_ttyio_in(void)
-{
-	return ttyio_in(SPK_SYNTH_TIMEOUT);
-}
-
 static unsigned char spk_ttyio_in_nowait(void)
 {
-	u8 rv = ttyio_in(0);
+	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
+	u8 rv;
+
+	BUG_ON(ldisc_data->bufferize);
+
+	rv = ldisc_data->buf;
 
 	return (rv == 0xff) ? 0 : rv;
 }
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -155,8 +155,22 @@ struct spk_io_ops {
 	int (*synth_out_unicode)(struct spk_synth *synth, u16 ch);
 	void (*send_xchar)(char ch);
 	void (*tiocmset)(unsigned int set, unsigned int clear);
+
+	/*
+	 * Drivers may either
+	 * - define read_buff_add, and thus spk_io does not buffer at all and
+	 *   synth_in and synth_in_nowait must not be called.
+	 * - or not define read_buff_add, and use synth_in_nowait to read the
+	 *   last characters that was received (this is typically what
+	 *   spk_synth_get_index does).
+	 * - or not define read_buff_add, but call bufferize(1), then call
+	 *   synth_in several times to get characters one after the other, then
+	 *   call bufferize(0) to revert back to using synth_in_nowait.
+	 */
+	void (*bufferize)(bool enable);
 	unsigned char (*synth_in)(void);
 	unsigned char (*synth_in_nowait)(void);
+
 	void (*flush_buffer)(void);
 	int (*wait_for_xmitr)(struct spk_synth *synth);
 };
--- a/drivers/staging/speakup/serialio.c
+++ b/drivers/staging/speakup/serialio.c
@@ -29,6 +29,7 @@ static int timeouts;
 static int spk_serial_out(struct spk_synth *in_synth, const char ch);
 static void spk_serial_send_xchar(char ch);
 static void spk_serial_tiocmset(unsigned int set, unsigned int clear);
+static void spk_serial_bufferize(bool enable);
 static unsigned char spk_serial_in(void);
 static unsigned char spk_serial_in_nowait(void);
 static void spk_serial_flush_buffer(void);
@@ -38,6 +39,7 @@ struct spk_io_ops spk_serial_io_ops = {
 	.synth_out = spk_serial_out,
 	.send_xchar = spk_serial_send_xchar,
 	.tiocmset = spk_serial_tiocmset,
+	.bufferize = spk_serial_bufferize,
 	.synth_in = spk_serial_in,
 	.synth_in_nowait = spk_serial_in_nowait,
 	.flush_buffer = spk_serial_flush_buffer,
@@ -251,6 +253,11 @@ static int spk_serial_wait_for_xmitr(str
 	return 1;
 }
 
+static void spk_serial_bufferize(bool enable)
+{
+	/* We let the UART buffer characters */
+}
+
 static unsigned char spk_serial_in(void)
 {
 	int tmout = SPK_SERIAL_TIMEOUT;

--duvqlqgw3ja37uin
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--duvqlqgw3ja37uin--
