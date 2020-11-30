Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 469FA2C90FC
	for <lists+speakup@lfdr.de>; Mon, 30 Nov 2020 23:26:48 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D8FBB380F30; Mon, 30 Nov 2020 17:26:47 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E4392380F4D;
	Mon, 30 Nov 2020 17:26:45 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 1F332380BEA; Mon, 30 Nov 2020 17:26:45 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CCE64380BAD
 for <speakup@linux-speakup.org>; Mon, 30 Nov 2020 17:26:44 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id B0FFA121B;
 Mon, 30 Nov 2020 23:26:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id voVgiLAFaf23; Mon, 30 Nov 2020 23:26:42 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 832771218;
 Mon, 30 Nov 2020 23:26:42 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kjrd3-00Fm11-Pr; Mon, 30 Nov 2020 23:26:41 +0100
Date: Mon, 30 Nov 2020 23:26:41 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [patch 1/3] speakup: Add synth parameter to io functions
Message-ID: <20201130220719.168900798@ens-lyon.org>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
References: <20201130220626.854574234@ens-lyon.org>
MIME-Version: 1.0
Content-Disposition: inline; filename=io_synth
User-Agent: quilt/0.65
Organization: I am not organized
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

This merely adds the missing synth parameter to all io functions.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Index: linux-5.9/drivers/accessibility/speakup/spk_ttyio.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/spk_ttyio.c
+++ linux-5.9/drivers/accessibility/speakup/spk_ttyio.c
@@ -114,11 +114,11 @@ static struct tty_ldisc_ops spk_ttyio_ld
 
 static int spk_ttyio_out(struct spk_synth *in_synth, const char ch);
 static int spk_ttyio_out_unicode(struct spk_synth *in_synth, u16 ch);
-static void spk_ttyio_send_xchar(char ch);
-static void spk_ttyio_tiocmset(unsigned int set, unsigned int clear);
-static unsigned char spk_ttyio_in(void);
-static unsigned char spk_ttyio_in_nowait(void);
-static void spk_ttyio_flush_buffer(void);
+static void spk_ttyio_send_xchar(struct spk_synth *in_synth, char ch);
+static void spk_ttyio_tiocmset(struct spk_synth *in_synth, unsigned int set, unsigned int clear);
+static unsigned char spk_ttyio_in(struct spk_synth *in_synth);
+static unsigned char spk_ttyio_in_nowait(struct spk_synth *in_synth);
+static void spk_ttyio_flush_buffer(struct spk_synth *in_synth);
 static int spk_ttyio_wait_for_xmitr(struct spk_synth *in_synth);
 
 struct spk_io_ops spk_ttyio_ops = {
@@ -281,7 +281,7 @@ static int check_tty(struct tty_struct *
 	return 0;
 }
 
-static void spk_ttyio_send_xchar(char ch)
+static void spk_ttyio_send_xchar(struct spk_synth *in_synth, char ch)
 {
 	mutex_lock(&speakup_tty_mutex);
 	if (check_tty(speakup_tty)) {
@@ -294,7 +294,7 @@ static void spk_ttyio_send_xchar(char ch
 	mutex_unlock(&speakup_tty_mutex);
 }
 
-static void spk_ttyio_tiocmset(unsigned int set, unsigned int clear)
+static void spk_ttyio_tiocmset(struct spk_synth *in_synth, unsigned int set, unsigned int clear)
 {
 	mutex_lock(&speakup_tty_mutex);
 	if (check_tty(speakup_tty)) {
@@ -312,7 +312,7 @@ static int spk_ttyio_wait_for_xmitr(stru
 	return 1;
 }
 
-static unsigned char ttyio_in(int timeout)
+static unsigned char ttyio_in(struct spk_synth *in_synth, int timeout)
 {
 	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
 	char rv;
@@ -337,19 +337,19 @@ static unsigned char ttyio_in(int timeou
 	return rv;
 }
 
-static unsigned char spk_ttyio_in(void)
+static unsigned char spk_ttyio_in(struct spk_synth *in_synth)
 {
 	return ttyio_in(SPK_SYNTH_TIMEOUT);
 }
 
-static unsigned char spk_ttyio_in_nowait(void)
+static unsigned char spk_ttyio_in_nowait(struct spk_synth *in_synth)
 {
 	u8 rv = ttyio_in(0);
 
 	return (rv == 0xff) ? 0 : rv;
 }
 
-static void spk_ttyio_flush_buffer(void)
+static void spk_ttyio_flush_buffer(struct spk_synth *in_synth)
 {
 	mutex_lock(&speakup_tty_mutex);
 	if (check_tty(speakup_tty)) {
@@ -377,7 +377,7 @@ int spk_ttyio_synth_probe(struct spk_syn
 }
 EXPORT_SYMBOL_GPL(spk_ttyio_synth_probe);
 
-void spk_ttyio_release(void)
+void spk_ttyio_release(struct spk_synth *in_synth)
 {
 	if (!speakup_tty)
 		return;
@@ -393,15 +393,15 @@ void spk_ttyio_release(void)
 }
 EXPORT_SYMBOL_GPL(spk_ttyio_release);
 
-const char *spk_ttyio_synth_immediate(struct spk_synth *synth, const char *buff)
+const char *spk_ttyio_synth_immediate(struct spk_synth *in_synth, const char *buff)
 {
 	u_char ch;
 
 	while ((ch = *buff)) {
 		if (ch == '\n')
-			ch = synth->procspeech;
+			ch = in_synth->procspeech;
 		if (tty_write_room(speakup_tty) < 1 ||
-		    !synth->io_ops->synth_out(synth, ch))
+		    !in_synth->io_ops->synth_out(in_synth, ch))
 			return buff;
 		buff++;
 	}
Index: linux-5.9/drivers/accessibility/speakup/serialio.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/serialio.c
+++ linux-5.9/drivers/accessibility/speakup/serialio.c
@@ -27,11 +27,11 @@ static const struct old_serial_port *ser
 static int timeouts;
 
 static int spk_serial_out(struct spk_synth *in_synth, const char ch);
-static void spk_serial_send_xchar(char ch);
-static void spk_serial_tiocmset(unsigned int set, unsigned int clear);
-static unsigned char spk_serial_in(void);
-static unsigned char spk_serial_in_nowait(void);
-static void spk_serial_flush_buffer(void);
+static void spk_serial_send_xchar(struct spk_synth *in_synth, char ch);
+static void spk_serial_tiocmset(struct spk_synth *in_synth, unsigned int set, unsigned int clear);
+static unsigned char spk_serial_in(struct spk_synth *in_synth);
+static unsigned char spk_serial_in_nowait(struct spk_synth *in_synth);
+static void spk_serial_flush_buffer(struct spk_synth *in_synth);
 static int spk_serial_wait_for_xmitr(struct spk_synth *in_synth);
 
 struct spk_io_ops spk_serial_io_ops = {
@@ -150,7 +150,7 @@ static void start_serial_interrupt(int i
 	outb(1, speakup_info.port_tts + UART_FCR);	/* Turn FIFO On */
 }
 
-static void spk_serial_send_xchar(char ch)
+static void spk_serial_send_xchar(struct spk_synth *synth, char ch)
 {
 	int timeout = SPK_XMITR_TIMEOUT;
 
@@ -162,7 +162,7 @@ static void spk_serial_send_xchar(char c
 	outb(ch, speakup_info.port_tts);
 }
 
-static void spk_serial_tiocmset(unsigned int set, unsigned int clear)
+static void spk_serial_tiocmset(struct spk_synth *in_synth, unsigned int set, unsigned int clear)
 {
 	int old = inb(speakup_info.port_tts + UART_MCR);
 
@@ -275,7 +275,7 @@ static unsigned char spk_serial_in_nowai
 	return inb_p(speakup_info.port_tts + UART_RX);
 }
 
-static void spk_serial_flush_buffer(void)
+static void spk_serial_flush_buffer(struct spk_synth *in_synth)
 {
 	/* TODO: flush the UART 16550 buffer */
 }
Index: linux-5.9/drivers/accessibility/speakup/speakup_apollo.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/speakup_apollo.c
+++ linux-5.9/drivers/accessibility/speakup/speakup_apollo.c
@@ -163,8 +163,8 @@ static void do_catch_up(struct spk_synth
 		full_time_val = full_time->u.n.value;
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		if (!synth->io_ops->synth_out(synth, ch)) {
-			synth->io_ops->tiocmset(0, UART_MCR_RTS);
-			synth->io_ops->tiocmset(UART_MCR_RTS, 0);
+			synth->io_ops->tiocmset(synth, 0, UART_MCR_RTS);
+			synth->io_ops->tiocmset(synth, UART_MCR_RTS, 0);
 			schedule_timeout(msecs_to_jiffies(full_time_val));
 			continue;
 		}
Index: linux-5.9/drivers/accessibility/speakup/speakup_audptr.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/speakup_audptr.c
+++ linux-5.9/drivers/accessibility/speakup/speakup_audptr.c
@@ -119,8 +119,8 @@ static struct spk_synth synth_audptr = {
 
 static void synth_flush(struct spk_synth *synth)
 {
-	synth->io_ops->flush_buffer();
-	synth->io_ops->send_xchar(SYNTH_CLEAR);
+	synth->io_ops->flush_buffer(synth);
+	synth->io_ops->send_xchar(synth, SYNTH_CLEAR);
 	synth->io_ops->synth_out(synth, PROCSPEECH);
 }
 
@@ -130,11 +130,11 @@ static void synth_version(struct spk_syn
 	char synth_id[40] = "";
 
 	synth->synth_immediate(synth, "\x05[Q]");
-	synth_id[test] = synth->io_ops->synth_in();
+	synth_id[test] = synth->io_ops->synth_in(synth);
 	if (synth_id[test] == 'A') {
 		do {
 			/* read version string from synth */
-			synth_id[++test] = synth->io_ops->synth_in();
+			synth_id[++test] = synth->io_ops->synth_in(synth);
 		} while (synth_id[test] != '\n' && test < 32);
 		synth_id[++test] = 0x00;
 	}
Index: linux-5.9/drivers/accessibility/speakup/speakup_spkout.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/speakup_spkout.c
+++ linux-5.9/drivers/accessibility/speakup/speakup_spkout.c
@@ -117,8 +117,8 @@ static struct spk_synth synth_spkout = {
 
 static void synth_flush(struct spk_synth *synth)
 {
-	synth->io_ops->flush_buffer();
-	synth->io_ops->send_xchar(SYNTH_CLEAR);
+	synth->io_ops->flush_buffer(synth);
+	synth->io_ops->send_xchar(synth, SYNTH_CLEAR);
 }
 
 module_param_named(ser, synth_spkout.ser, int, 0444);
Index: linux-5.9/drivers/accessibility/speakup/spk_types.h
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/spk_types.h
+++ linux-5.9/drivers/accessibility/speakup/spk_types.h
@@ -155,11 +155,11 @@ struct spk_synth;
 struct spk_io_ops {
 	int (*synth_out)(struct spk_synth *synth, const char ch);
 	int (*synth_out_unicode)(struct spk_synth *synth, u16 ch);
-	void (*send_xchar)(char ch);
-	void (*tiocmset)(unsigned int set, unsigned int clear);
-	unsigned char (*synth_in)(void);
-	unsigned char (*synth_in_nowait)(void);
-	void (*flush_buffer)(void);
+	void (*send_xchar)(struct spk_synth *synth, char ch);
+	void (*tiocmset)(struct spk_synth *synth, unsigned int set, unsigned int clear);
+	unsigned char (*synth_in)(struct spk_synth *synth);
+	unsigned char (*synth_in_nowait)(struct spk_synth *synth);
+	void (*flush_buffer)(struct spk_synth *synth);
 	int (*wait_for_xmitr)(struct spk_synth *synth);
 };
 
@@ -186,7 +186,7 @@ struct spk_synth {
 	int *default_vol;
 	struct spk_io_ops *io_ops;
 	int (*probe)(struct spk_synth *synth);
-	void (*release)(void);
+	void (*release)(struct spk_synth *synth);
 	const char *(*synth_immediate)(struct spk_synth *synth,
 				       const char *buff);
 	void (*catch_up)(struct spk_synth *synth);
Index: linux-5.9/drivers/accessibility/speakup/speakup_decext.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/speakup_decext.c
+++ linux-5.9/drivers/accessibility/speakup/speakup_decext.c
@@ -218,7 +218,7 @@ static void do_catch_up(struct spk_synth
 static void synth_flush(struct spk_synth *synth)
 {
 	in_escape = 0;
-	synth->io_ops->flush_buffer();
+	synth->io_ops->flush_buffer(synth);
 	synth->synth_immediate(synth, "\033P;10z\033\\");
 }
 
Index: linux-5.9/drivers/accessibility/speakup/speakup_dectlk.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/speakup_dectlk.c
+++ linux-5.9/drivers/accessibility/speakup/speakup_dectlk.c
@@ -289,7 +289,7 @@ static void synth_flush(struct spk_synth
 		synth->io_ops->synth_out(synth, ']');
 	in_escape = 0;
 	is_flushing = 1;
-	synth->io_ops->flush_buffer();
+	synth->io_ops->flush_buffer(synth);
 	synth->io_ops->synth_out(synth, SYNTH_CLEAR);
 }
 
Index: linux-5.9/drivers/accessibility/speakup/speakup_dtlk.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/speakup_dtlk.c
+++ linux-5.9/drivers/accessibility/speakup/speakup_dtlk.c
@@ -24,7 +24,7 @@
 #define PROCSPEECH 0x00
 
 static int synth_probe(struct spk_synth *synth);
-static void dtlk_release(void);
+static void dtlk_release(struct spk_synth *synth);
 static const char *synth_immediate(struct spk_synth *synth, const char *buf);
 static void do_catch_up(struct spk_synth *synth);
 static void synth_flush(struct spk_synth *synth);
@@ -365,7 +365,7 @@ static int synth_probe(struct spk_synth
 	return 0;
 }
 
-static void dtlk_release(void)
+static void dtlk_release(struct spk_synth *synth)
 {
 	spk_stop_serial_interrupt();
 	if (speakup_info.port_tts)
Index: linux-5.9/drivers/accessibility/speakup/speakup_ltlk.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/speakup_ltlk.c
+++ linux-5.9/drivers/accessibility/speakup/speakup_ltlk.c
@@ -132,7 +132,7 @@ static void synth_interrogate(struct spk
 
 	synth->synth_immediate(synth, "\x18\x01?");
 	for (i = 0; i < 50; i++) {
-		buf[i] = synth->io_ops->synth_in();
+		buf[i] = synth->io_ops->synth_in(synth);
 		if (i > 2 && buf[i] == 0x7f)
 			break;
 	}
Index: linux-5.9/drivers/accessibility/speakup/synth.c
===================================================================
--- linux-5.9.orig/drivers/accessibility/speakup/synth.c
+++ linux-5.9/drivers/accessibility/speakup/synth.c
@@ -137,14 +137,14 @@ EXPORT_SYMBOL_GPL(spk_do_catch_up_unicod
 
 void spk_synth_flush(struct spk_synth *synth)
 {
-	synth->io_ops->flush_buffer();
+	synth->io_ops->flush_buffer(synth);
 	synth->io_ops->synth_out(synth, synth->clear);
 }
 EXPORT_SYMBOL_GPL(spk_synth_flush);
 
 unsigned char spk_synth_get_index(struct spk_synth *synth)
 {
-	return synth->io_ops->synth_in_nowait();
+	return synth->io_ops->synth_in_nowait(synth);
 }
 EXPORT_SYMBOL_GPL(spk_synth_get_index);
 
@@ -440,7 +440,7 @@ void synth_release(void)
 		sysfs_remove_group(speakup_kobj, &synth->attributes);
 	for (var = synth->vars; var->var_id != MAXVARS; var++)
 		speakup_unregister_var(var->var_id);
-	synth->release();
+	synth->release(synth);
 	synth = NULL;
 }
 


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
