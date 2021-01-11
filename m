Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 942812F22E3
	for <lists+speakup@lfdr.de>; Mon, 11 Jan 2021 23:37:52 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 27892380FA5; Mon, 11 Jan 2021 17:37:52 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 947B7380F3B;
	Mon, 11 Jan 2021 17:37:48 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C48E2380EB7; Mon, 11 Jan 2021 17:37:47 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9C51B380923
 for <speakup@linux-speakup.org>; Mon, 11 Jan 2021 17:37:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 7F60C68B;
 Mon, 11 Jan 2021 23:37:42 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gr-tPAs02lxc; Mon, 11 Jan 2021 23:37:41 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 18B025E2;
 Mon, 11 Jan 2021 23:37:40 +0100 (CET)
Received: from samy by begin with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kz5og-002vQB-Ni; Mon, 11 Jan 2021 23:37:38 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/4] speakup: Simplify spk_ttyio_out error handling.
Date: Mon, 11 Jan 2021 23:37:36 +0100
Message-Id: <20210111223737.697336-4-samuel.thibault@ens-lyon.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
References: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
X-Rspamd-Server: hera
Authentication-Results: hera.aquilenet.fr
X-Rspamd-Queue-Id: 7F60C68B
X-Spamd-Result: default: False [5.00 / 15.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
 RCPT_COUNT_THREE(0.00)[4]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
 R_MISSING_CHARSET(2.50)[]; BROKEN_CONTENT_TYPE(1.50)[];
 RCVD_COUNT_THREE(0.00)[3]; MID_CONTAINS_FROM(1.00)[];
 RCVD_NO_TLS_LAST(0.10)[]; FROM_EQ_ENVFROM(0.00)[]
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

This avoids most code indentation

Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>
---
 drivers/accessibility/speakup/spk_ttyio.c | 38 ++++++++++++-----------
 1 file changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/accessibility/speakup/spk_ttyio.c b/drivers/accessibility/speakup/spk_ttyio.c
index adc1cdb..4dbd24c 100644
--- a/drivers/accessibility/speakup/spk_ttyio.c
+++ b/drivers/accessibility/speakup/spk_ttyio.c
@@ -225,27 +225,29 @@ void spk_ttyio_unregister_ldisc(void)
 static int spk_ttyio_out(struct spk_synth *in_synth, const char ch)
 {
 	struct tty_struct *tty = in_synth->dev;
+	int ret;
+
+	if (!in_synth->alive || !tty->ops->write)
+		return 0;
 
-	if (in_synth->alive && tty->ops->write) {
-		int ret = tty->ops->write(tty, &ch, 1);
-
-		if (ret == 0)
-			/* No room */
-			return 0;
-		if (ret < 0) {
-			pr_warn("%s: I/O error, deactivating speakup\n",
-				in_synth->long_name);
-			/* No synth any more, so nobody will restart TTYs,
-			 * and we thus need to do it ourselves.  Now that there
-			 * is no synth we can let application flood anyway
-			 */
-			in_synth->alive = 0;
-			speakup_start_ttys();
-			return 0;
-		}
+	ret = tty->ops->write(tty, &ch, 1);
+
+	if (ret == 0)
+		/* No room */
+		return 0;
+
+	if (ret > 0)
+		/* Success */
 		return 1;
-	}
 
+	pr_warn("%s: I/O error, deactivating speakup\n",
+		in_synth->long_name);
+	/* No synth any more, so nobody will restart TTYs,
+	 * and we thus need to do it ourselves.  Now that there
+	 * is no synth we can let application flood anyway
+	 */
+	in_synth->alive = 0;
+	speakup_start_ttys();
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
