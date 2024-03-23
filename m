Return-Path: <speakup+bounces-1093-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7A3C388796F
	for <lists+speakup@lfdr.de>; Sat, 23 Mar 2024 17:43:24 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE5B8C81C3B; Sat, 23 Mar 2024 12:43:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 99F16C80B91
	for <lists+speakup@lfdr.de>; Sat, 23 Mar 2024 12:43:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 30F77C80B90; Sat, 23 Mar 2024 12:43:03 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BA9ECC80B8E
	for <speakup@linux-speakup.org>; Sat, 23 Mar 2024 12:43:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 1F74DA0265;
	Sat, 23 Mar 2024 17:42:54 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qoYpq7EczQUd; Sat, 23 Mar 2024 17:42:54 +0100 (CET)
Received: from begin (aamiens-653-1-111-57.w83-192.abo.wanadoo.fr [83.192.234.57])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id D2F8EA01A5;
	Sat, 23 Mar 2024 17:42:53 +0100 (CET)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ro4SL-00000005pMJ-20vz;
	Sat, 23 Mar 2024 17:42:53 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org
Subject: [PATCH] speakup: Turn i18n files utf-8
Date: Sat, 23 Mar 2024 17:42:47 +0100
Message-ID: <20240323164247.1388441-1-samuel.thibault@ens-lyon.org>
X-Mailer: git-send-email 2.43.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

i18n currently assume latin1 encoding, which is not enough for most
languages.

This separates out the utf-8 processing of /dev/synthu, and uses it for
a new synth_writeu, which we make synth_printf now use. This has the
effect of making all the i18 messages processed in utf-8.

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
---
 drivers/accessibility/speakup/devsynth.c | 59 ++++-----------
 drivers/accessibility/speakup/speakup.h  |  2 +
 drivers/accessibility/speakup/synth.c    | 92 ++++++++++++++++++++++--
 3 files changed, 102 insertions(+), 51 deletions(-)

diff --git a/drivers/accessibility/speakup/devsynth.c b/drivers/accessibility/speakup/devsynth.c
index 674204ee5a85..e3d909bd0480 100644
--- a/drivers/accessibility/speakup/devsynth.c
+++ b/drivers/accessibility/speakup/devsynth.c
@@ -39,13 +39,13 @@ static ssize_t speakup_file_write(struct file *fp, const char __user *buffer,
 static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
 				   size_t nbytes, loff_t *ppos)
 {
-	size_t count = nbytes, want;
+	size_t count = nbytes, consumed, want;
 	const char __user *ptr = buffer;
 	size_t bytes;
 	unsigned long flags;
 	unsigned char buf[256];
 	u16 ubuf[256];
-	size_t in, in2, out;
+	size_t in, out;
 
 	if (!synth)
 		return -ENODEV;
@@ -58,57 +58,24 @@ static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
 			return -EFAULT;
 
 		/* Convert to u16 */
-		for (in = 0, out = 0; in < bytes; in++) {
-			unsigned char c = buf[in];
-			int nbytes = 8 - fls(c ^ 0xff);
-			u32 value;
-
-			switch (nbytes) {
-			case 8: /* 0xff */
-			case 7: /* 0xfe */
-			case 1: /* 0x80 */
-				/* Invalid, drop */
-				goto drop;
-
-			case 0:
-				/* ASCII, copy */
-				ubuf[out++] = c;
-				continue;
+		for (in = 0, out = 0; in < bytes; in += consumed) {
+			s32 value;
 
-			default:
-				/* 2..6-byte UTF-8 */
+			value = synth_utf8_get(buf + in, bytes - in, &consumed, &want);
+			if (value == -1) {
+				/* Invalid or incomplete */
 
-				if (bytes - in < nbytes) {
+				if (want > bytes - in)
 					/* We don't have it all yet, stop here
 					 * and wait for the rest
 					 */
 					bytes = in;
-					want = nbytes;
-					continue;
-				}
-
-				/* First byte */
-				value = c & ((1u << (7 - nbytes)) - 1);
-
-				/* Other bytes */
-				for (in2 = 2; in2 <= nbytes; in2++) {
-					c = buf[in + 1];
-					if ((c & 0xc0) != 0x80)	{
-						/* Invalid, drop the head */
-						want = 1;
-						goto drop;
-					}
-					value = (value << 6) | (c & 0x3f);
-					in++;
-				}
-
-				if (value < 0x10000)
-					ubuf[out++] = value;
-				want = 1;
-				break;
+
+				continue;
 			}
-drop:
-			;
+
+			if (value < 0x10000)
+				ubuf[out++] = value;
 		}
 
 		count -= bytes;
diff --git a/drivers/accessibility/speakup/speakup.h b/drivers/accessibility/speakup/speakup.h
index 364fde99749e..54f1226ea061 100644
--- a/drivers/accessibility/speakup/speakup.h
+++ b/drivers/accessibility/speakup/speakup.h
@@ -76,7 +76,9 @@ int speakup_paste_selection(struct tty_struct *tty);
 void speakup_cancel_paste(void);
 void speakup_register_devsynth(void);
 void speakup_unregister_devsynth(void);
+s32 synth_utf8_get(const char *buf, size_t count, size_t *consumed, size_t *want);
 void synth_write(const char *buf, size_t count);
+void synth_writeu(const char *buf, size_t count);
 int synth_supports_indexing(void);
 
 extern struct vc_data *spk_sel_cons;
diff --git a/drivers/accessibility/speakup/synth.c b/drivers/accessibility/speakup/synth.c
index eea2a2fa4f01..c6339758fa67 100644
--- a/drivers/accessibility/speakup/synth.c
+++ b/drivers/accessibility/speakup/synth.c
@@ -215,10 +215,95 @@ void synth_write(const char *buf, size_t count)
 	synth_start();
 }
 
+/* Consume one utf-8 character from buf (that contains up to count bytes),
+ * returns the unicode codepoint if valid, -1 otherwise.
+ * In all cases, returns the number of consumed bytes in *consumed,
+ * and the minimum number of bytes that would be needed for the next character
+ * in *want.
+ */
+s32 synth_utf8_get(const char *buf, size_t count, size_t *consumed, size_t *want)
+{
+	unsigned char c = buf[0];
+	int nbytes = 8 - fls(c ^ 0xff);
+	u32 value;
+	size_t i;
+
+	switch (nbytes) {
+	case 8: /* 0xff */
+	case 7: /* 0xfe */
+	case 1: /* 0x80 */
+		/* Invalid, drop */
+		*consumed = 1;
+		*want = 1;
+		return -1;
+
+	case 0:
+		/* ASCII, take as such */
+		*consumed = 1;
+		*want = 1;
+		return c;
+
+	default:
+		/* 2..6-byte UTF-8 */
+
+		if (count < nbytes) {
+			/* We don't have it all */
+			*consumed = 0;
+			*want = nbytes;
+			return -1;
+		}
+
+		/* First byte */
+		value = c & ((1u << (7 - nbytes)) - 1);
+
+		/* Other bytes */
+		for (i = 1; i < nbytes; i++) {
+			c = buf[i];
+			if ((c & 0xc0) != 0x80)	{
+				/* Invalid, drop the head */
+				*consumed = i;
+				*want = 1;
+				return -1;
+			}
+			value = (value << 6) | (c & 0x3f);
+		}
+
+		*consumed = nbytes;
+		*want = 1;
+		return value;
+	}
+}
+
+void synth_writeu(const char *buf, size_t count)
+{
+	size_t i, consumed, want;
+
+	/* Convert to u16 */
+	for (i = 0; i < count; i++) {
+		s32 value;
+
+		value = synth_utf8_get(buf + i, count - i, &consumed, &want);
+		if (value == -1) {
+			/* Invalid or incomplete */
+
+			if (want > count - i)
+				/* We don't have it all, stop */
+				count = i;
+
+			continue;
+		}
+
+		if (value < 0x10000)
+			synth_buffer_add(value);
+	}
+
+	synth_start();
+}
+
 void synth_printf(const char *fmt, ...)
 {
 	va_list args;
-	unsigned char buf[160], *p;
+	unsigned char buf[160];
 	int r;
 
 	va_start(args, fmt);
@@ -227,10 +312,7 @@ void synth_printf(const char *fmt, ...)
 	if (r > sizeof(buf) - 1)
 		r = sizeof(buf) - 1;
 
-	p = buf;
-	while (r--)
-		synth_buffer_add(*p++);
-	synth_start();
+	synth_writeu(buf, r);
 }
 EXPORT_SYMBOL_GPL(synth_printf);
 
-- 
2.39.2


