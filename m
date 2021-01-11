Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 95B182F22E4
	for <lists+speakup@lfdr.de>; Mon, 11 Jan 2021 23:38:21 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A9E0380FB1; Mon, 11 Jan 2021 17:38:21 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C1311380FB7;
	Mon, 11 Jan 2021 17:38:18 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 27A10380EEC; Mon, 11 Jan 2021 17:38:18 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 00B09380964
 for <speakup@linux-speakup.org>; Mon, 11 Jan 2021 17:38:18 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 0055A5E2;
 Mon, 11 Jan 2021 23:37:47 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DOSxeEdQ5OzT; Mon, 11 Jan 2021 23:37:45 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 6E897673;
 Mon, 11 Jan 2021 23:37:41 +0100 (CET)
Received: from samy by begin with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kz5og-002vQ9-N4; Mon, 11 Jan 2021 23:37:38 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] speakup: Reference synth from tty and tty from synth
Date: Mon, 11 Jan 2021 23:37:35 +0100
Message-Id: <20210111223737.697336-3-samuel.thibault@ens-lyon.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
References: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
X-Rspamd-Server: hera
Authentication-Results: hera.aquilenet.fr
X-Rspamd-Queue-Id: 0055A5E2
X-Spamd-Result: default: False [5.18 / 15.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_SPAM(0.18)[66.01%];
 FROM_HAS_DN(0.00)[]; RCPT_COUNT_THREE(0.00)[4];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 MIME_GOOD(-0.10)[text/plain]; R_MISSING_CHARSET(2.50)[];
 BROKEN_CONTENT_TYPE(1.50)[]; RCVD_COUNT_THREE(0.00)[3];
 MID_CONTAINS_FROM(1.00)[]; RCVD_NO_TLS_LAST(0.10)[];
 FROM_EQ_ENVFROM(0.00)[]
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

We do not actually need speakup_tty and spk_ttyio_synth global
variables, the synth can store the pointer to the tty, and the tty
ldisc_data can store the pointer to the synth.

Along the way, we can clench the initialization of the synth and the
creation of the tty, so that tty is never NULL. Even if the device
disappears (e.g. USB unplug), the tty structure will still be there,
and we automatically stop speakup in the spk_ttyio_out error handler
but keep tty until the user cleans things up.

As a result, this simplifies locking a lot.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
---
 drivers/accessibility/speakup/spk_ttyio.c | 117 ++++++++--------------
 drivers/accessibility/speakup/spk_types.h |   2 +
 2 files changed, 46 insertions(+), 73 deletions(-)

diff --git a/drivers/accessibility/speakup/spk_ttyio.c b/drivers/accessibility/speakup/spk_ttyio.c
index d62fb74..adc1cdb 100644
--- a/drivers/accessibility/speakup/spk_ttyio.c
+++ b/drivers/accessibility/speakup/spk_ttyio.c
@@ -12,14 +12,15 @@ struct spk_ldisc_data {
 	char buf;
 	struct completion completion;
 	bool buf_free;
+	struct spk_synth *synth;
 };
 
-static struct spk_synth *spk_ttyio_synth;
-static struct tty_struct *speakup_tty;
-/* mutex to protect against speakup_tty disappearing from underneath us while
- * we are using it. this can happen when the device physically unplugged,
- * while in use. it also serialises access to speakup_tty.
+/*
+ * This allows to catch within spk_ttyio_ldisc_open whether it is getting set
+ * on for a speakup-driven device.
  */
+static struct tty_struct *speakup_tty;
+/* This mutex serializes the use of such global speakup_tty variable */
 static DEFINE_MUTEX(speakup_tty_mutex);
 
 static int ser_to_dev(int ser, dev_t *dev_no)
@@ -67,22 +68,20 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
 
 static void spk_ttyio_ldisc_close(struct tty_struct *tty)
 {
-	mutex_lock(&speakup_tty_mutex);
-	kfree(speakup_tty->disc_data);
-	speakup_tty = NULL;
-	mutex_unlock(&speakup_tty_mutex);
+	kfree(tty->disc_data);
 }
 
 static int spk_ttyio_receive_buf2(struct tty_struct *tty,
 				  const unsigned char *cp, char *fp, int count)
 {
 	struct spk_ldisc_data *ldisc_data = tty->disc_data;
+	struct spk_synth *synth = ldisc_data->synth;
 
-	if (spk_ttyio_synth->read_buff_add) {
+	if (synth->read_buff_add) {
 		int i;
 
 		for (i = 0; i < count; i++)
-			spk_ttyio_synth->read_buff_add(cp[i]);
+			synth->read_buff_add(cp[i]);
 
 		return count;
 	}
@@ -187,13 +186,17 @@ static int spk_ttyio_initialise_ldisc(struct spk_synth *synth)
 	mutex_lock(&speakup_tty_mutex);
 	speakup_tty = tty;
 	ret = tty_set_ldisc(tty, N_SPEAKUP);
-	if (ret)
-		speakup_tty = NULL;
+	speakup_tty = NULL;
 	mutex_unlock(&speakup_tty_mutex);
 
-	if (!ret)
+	if (!ret) {
 		/* Success */
+		struct spk_ldisc_data *ldisc_data = tty->disc_data;
+
+		ldisc_data->synth = synth;
+		synth->dev = tty;
 		return 0;
+	}
 
 	pr_err("speakup: Failed to set N_SPEAKUP on tty\n");
 
@@ -221,11 +224,11 @@ void spk_ttyio_unregister_ldisc(void)
 
 static int spk_ttyio_out(struct spk_synth *in_synth, const char ch)
 {
-	mutex_lock(&speakup_tty_mutex);
-	if (in_synth->alive && speakup_tty && speakup_tty->ops->write) {
-		int ret = speakup_tty->ops->write(speakup_tty, &ch, 1);
+	struct tty_struct *tty = in_synth->dev;
+
+	if (in_synth->alive && tty->ops->write) {
+		int ret = tty->ops->write(tty, &ch, 1);
 
-		mutex_unlock(&speakup_tty_mutex);
 		if (ret == 0)
 			/* No room */
 			return 0;
@@ -243,7 +246,6 @@ static int spk_ttyio_out(struct spk_synth *in_synth, const char ch)
 		return 1;
 	}
 
-	mutex_unlock(&speakup_tty_mutex);
 	return 0;
 }
 
@@ -264,47 +266,20 @@ static int spk_ttyio_out_unicode(struct spk_synth *in_synth, u16 ch)
 	return ret;
 }
 
-static int check_tty(struct tty_struct *tty)
-{
-	if (!tty) {
-		pr_warn("%s: I/O error, deactivating speakup\n",
-			spk_ttyio_synth->long_name);
-		/* No synth any more, so nobody will restart TTYs, and we thus
-		 * need to do it ourselves.  Now that there is no synth we can
-		 * let application flood anyway
-		 */
-		spk_ttyio_synth->alive = 0;
-		speakup_start_ttys();
-		return 1;
-	}
-
-	return 0;
-}
-
 static void spk_ttyio_send_xchar(struct spk_synth *in_synth, char ch)
 {
-	mutex_lock(&speakup_tty_mutex);
-	if (check_tty(speakup_tty)) {
-		mutex_unlock(&speakup_tty_mutex);
-		return;
-	}
+	struct tty_struct *tty = in_synth->dev;
 
-	if (speakup_tty->ops->send_xchar)
-		speakup_tty->ops->send_xchar(speakup_tty, ch);
-	mutex_unlock(&speakup_tty_mutex);
+	if (tty->ops->send_xchar)
+		tty->ops->send_xchar(tty, ch);
 }
 
 static void spk_ttyio_tiocmset(struct spk_synth *in_synth, unsigned int set, unsigned int clear)
 {
-	mutex_lock(&speakup_tty_mutex);
-	if (check_tty(speakup_tty)) {
-		mutex_unlock(&speakup_tty_mutex);
-		return;
-	}
+	struct tty_struct *tty = in_synth->dev;
 
-	if (speakup_tty->ops->tiocmset)
-		speakup_tty->ops->tiocmset(speakup_tty, set, clear);
-	mutex_unlock(&speakup_tty_mutex);
+	if (tty->ops->tiocmset)
+		tty->ops->tiocmset(tty, set, clear);
 }
 
 static int spk_ttyio_wait_for_xmitr(struct spk_synth *in_synth)
@@ -314,7 +289,8 @@ static int spk_ttyio_wait_for_xmitr(struct spk_synth *in_synth)
 
 static unsigned char ttyio_in(struct spk_synth *in_synth, int timeout)
 {
-	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
+	struct tty_struct *tty = in_synth->dev;
+	struct spk_ldisc_data *ldisc_data = tty->disc_data;
 	char rv;
 
 	if (!timeout) {
@@ -334,7 +310,7 @@ static unsigned char ttyio_in(struct spk_synth *in_synth, int timeout)
 	mb();
 	ldisc_data->buf_free = true;
 	/* Let TTY push more characters */
-	tty_schedule_flip(speakup_tty->port);
+	tty_schedule_flip(tty->port);
 
 	return rv;
 }
@@ -353,16 +329,10 @@ static unsigned char spk_ttyio_in_nowait(struct spk_synth *in_synth)
 
 static void spk_ttyio_flush_buffer(struct spk_synth *in_synth)
 {
-	mutex_lock(&speakup_tty_mutex);
-	if (check_tty(speakup_tty)) {
-		mutex_unlock(&speakup_tty_mutex);
-		return;
-	}
-
-	if (speakup_tty->ops->flush_buffer)
-		speakup_tty->ops->flush_buffer(speakup_tty);
+	struct tty_struct *tty = in_synth->dev;
 
-	mutex_unlock(&speakup_tty_mutex);
+	if (tty->ops->flush_buffer)
+		tty->ops->flush_buffer(tty);
 }
 
 int spk_ttyio_synth_probe(struct spk_synth *synth)
@@ -373,7 +343,6 @@ int spk_ttyio_synth_probe(struct spk_synth *synth)
 		return rv;
 
 	synth->alive = 1;
-	spk_ttyio_synth = synth;
 
 	return 0;
 }
@@ -381,28 +350,30 @@ EXPORT_SYMBOL_GPL(spk_ttyio_synth_probe);
 
 void spk_ttyio_release(struct spk_synth *in_synth)
 {
-	if (!speakup_tty)
-		return;
+	struct tty_struct *tty = in_synth->dev;
 
-	tty_lock(speakup_tty);
+	tty_lock(tty);
 
-	if (speakup_tty->ops->close)
-		speakup_tty->ops->close(speakup_tty, NULL);
+	if (tty->ops->close)
+		tty->ops->close(tty, NULL);
+
+	tty_ldisc_flush(tty);
+	tty_unlock(tty);
+	tty_kclose(tty);
 
-	tty_ldisc_flush(speakup_tty);
-	tty_unlock(speakup_tty);
-	tty_kclose(speakup_tty);
+	in_synth->dev = NULL;
 }
 EXPORT_SYMBOL_GPL(spk_ttyio_release);
 
 const char *spk_ttyio_synth_immediate(struct spk_synth *in_synth, const char *buff)
 {
+	struct tty_struct *tty = in_synth->dev;
 	u_char ch;
 
 	while ((ch = *buff)) {
 		if (ch == '\n')
 			ch = in_synth->procspeech;
-		if (tty_write_room(speakup_tty) < 1 ||
+		if (tty_write_room(tty) < 1 ||
 		    !in_synth->io_ops->synth_out(in_synth, ch))
 			return buff;
 		buff++;
diff --git a/drivers/accessibility/speakup/spk_types.h b/drivers/accessibility/speakup/spk_types.h
index 2dc17c2..7789f5d 100644
--- a/drivers/accessibility/speakup/spk_types.h
+++ b/drivers/accessibility/speakup/spk_types.h
@@ -200,6 +200,8 @@ struct spk_synth {
 	struct synth_indexing indexing;
 	int alive;
 	struct attribute_group attributes;
+
+	void *dev;
 };
 
 /*
-- 
2.20.1

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
