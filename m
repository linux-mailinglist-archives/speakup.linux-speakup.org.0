Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 11E8E23B940
	for <lists+speakup@lfdr.de>; Tue,  4 Aug 2020 13:14:29 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3FCEA1C0873; Tue,  4 Aug 2020 07:14:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 807D21C078C;
	Tue,  4 Aug 2020 07:13:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A23161C074E; Tue,  4 Aug 2020 07:13:24 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9DD8C1C070F
 for <speakup@linux-speakup.org>; Tue,  4 Aug 2020 07:13:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 382F1DB4F;
 Tue,  4 Aug 2020 13:12:49 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5f8jKIz8z6hR; Tue,  4 Aug 2020 13:12:48 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 416091866;
 Tue,  4 Aug 2020 13:12:48 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1k2usB-001aIz-7l; Tue, 04 Aug 2020 13:12:47 +0200
Date: Tue, 4 Aug 2020 13:12:47 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] speakup: Fix wait_for_xmitr for ttyio case
Message-ID: <20200804111247.sqx7g74lpaemgw4k@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

This was missed while introducing the tty-based serial access.

The only remaining use of wait_for_xmitr with tty-based access is in
spk_synth_is_alive_restart to check whether the synth can be restarted.
With tty-based this is up to the tty layer to cope with the buffering
etc. so we can just say yes.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Index: linux-2.6/drivers/accessibility/speakup/serialio.c
===================================================================
--- linux-2.6.orig/drivers/accessibility/speakup/serialio.c
+++ linux-2.6/drivers/accessibility/speakup/serialio.c
@@ -32,6 +32,7 @@ static void spk_serial_tiocmset(unsigned
 static unsigned char spk_serial_in(void);
 static unsigned char spk_serial_in_nowait(void);
 static void spk_serial_flush_buffer(void);
+static int spk_serial_wait_for_xmitr(struct spk_synth *in_synth);
 
 struct spk_io_ops spk_serial_io_ops = {
 	.synth_out = spk_serial_out,
@@ -40,6 +41,7 @@ struct spk_io_ops spk_serial_io_ops = {
 	.synth_in = spk_serial_in,
 	.synth_in_nowait = spk_serial_in_nowait,
 	.flush_buffer = spk_serial_flush_buffer,
+	.wait_for_xmitr = spk_serial_wait_for_xmitr,
 };
 EXPORT_SYMBOL_GPL(spk_serial_io_ops);
 
@@ -211,7 +213,7 @@ void spk_stop_serial_interrupt(void)
 }
 EXPORT_SYMBOL_GPL(spk_stop_serial_interrupt);
 
-int spk_wait_for_xmitr(struct spk_synth *in_synth)
+static int spk_serial_wait_for_xmitr(struct spk_synth *in_synth)
 {
 	int tmout = SPK_XMITR_TIMEOUT;
 
Index: linux-2.6/drivers/accessibility/speakup/spk_priv.h
===================================================================
--- linux-2.6.orig/drivers/accessibility/speakup/spk_priv.h
+++ linux-2.6/drivers/accessibility/speakup/spk_priv.h
@@ -34,7 +34,6 @@
 
 const struct old_serial_port *spk_serial_init(int index);
 void spk_stop_serial_interrupt(void);
-int spk_wait_for_xmitr(struct spk_synth *in_synth);
 void spk_serial_release(void);
 void spk_ttyio_release(void);
 void spk_ttyio_register_ldisc(void);
Index: linux-2.6/drivers/accessibility/speakup/spk_ttyio.c
===================================================================
--- linux-2.6.orig/drivers/accessibility/speakup/spk_ttyio.c
+++ linux-2.6/drivers/accessibility/speakup/spk_ttyio.c
@@ -116,6 +116,7 @@ static void spk_ttyio_tiocmset(unsigned
 static unsigned char spk_ttyio_in(void);
 static unsigned char spk_ttyio_in_nowait(void);
 static void spk_ttyio_flush_buffer(void);
+static int spk_ttyio_wait_for_xmitr(struct spk_synth *in_synth);
 
 struct spk_io_ops spk_ttyio_ops = {
 	.synth_out = spk_ttyio_out,
@@ -125,6 +126,7 @@ struct spk_io_ops spk_ttyio_ops = {
 	.synth_in = spk_ttyio_in,
 	.synth_in_nowait = spk_ttyio_in_nowait,
 	.flush_buffer = spk_ttyio_flush_buffer,
+	.wait_for_xmitr = spk_ttyio_wait_for_xmitr,
 };
 EXPORT_SYMBOL_GPL(spk_ttyio_ops);
 
@@ -286,6 +288,11 @@ static void spk_ttyio_tiocmset(unsigned
 	mutex_unlock(&speakup_tty_mutex);
 }
 
+static int spk_ttyio_wait_for_xmitr(struct spk_synth *in_synth)
+{
+	return 1;
+}
+
 static unsigned char ttyio_in(int timeout)
 {
 	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
Index: linux-2.6/drivers/accessibility/speakup/spk_types.h
===================================================================
--- linux-2.6.orig/drivers/accessibility/speakup/spk_types.h
+++ linux-2.6/drivers/accessibility/speakup/spk_types.h
@@ -158,6 +158,7 @@ struct spk_io_ops {
 	unsigned char (*synth_in)(void);
 	unsigned char (*synth_in_nowait)(void);
 	void (*flush_buffer)(void);
+	int (*wait_for_xmitr)(struct spk_synth *synth);
 };
 
 struct spk_synth {
Index: linux-2.6/drivers/accessibility/speakup/synth.c
===================================================================
--- linux-2.6.orig/drivers/accessibility/speakup/synth.c
+++ linux-2.6/drivers/accessibility/speakup/synth.c
@@ -159,7 +159,7 @@ int spk_synth_is_alive_restart(struct sp
 {
 	if (synth->alive)
 		return 1;
-	if (spk_wait_for_xmitr(synth) > 0) {
+	if (synth->io_ops->wait_for_xmitr(synth) > 0) {
 		/* restart */
 		synth->alive = 1;
 		synth_printf("%s", synth->init);
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
