Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 009A42D4C8E
	for <lists+speakup@lfdr.de>; Wed,  9 Dec 2020 22:13:50 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C1AE8380FC7; Wed,  9 Dec 2020 16:13:48 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 508E038100F;
	Wed,  9 Dec 2020 16:13:46 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C7BF9380FBF; Wed,  9 Dec 2020 16:13:45 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5C818380F8E
 for <speakup@linux-speakup.org>; Wed,  9 Dec 2020 16:13:45 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id D81B81309;
 Wed,  9 Dec 2020 22:13:12 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sqEjnCBbjJ_5; Wed,  9 Dec 2020 22:13:12 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id D2DDEC80;
 Wed,  9 Dec 2020 22:13:10 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kn6lq-006kOS-4x; Wed, 09 Dec 2020 22:13:10 +0100
Message-Id: <20201209205838.672084780@ens-lyon.org>
User-Agent: quilt/0.65
Date: Wed, 09 Dec 2020 21:58:32 +0100
From: samuel.thibault@ens-lyon.org
To: gregkh@linuxfoundation.org
Subject: [patch 3/3] speakup: Simplify spk_ttyio_out error handling.
References: <20201209205829.693745475@ens-lyon.org>
MIME-Version: 1.0
Content-Disposition: inline; filename=spk_ttyio_clean
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

Index: linux-5.10/drivers/accessibility/speakup/spk_ttyio.c
===================================================================
--- linux-5.10.orig/drivers/accessibility/speakup/spk_ttyio.c
+++ linux-5.10/drivers/accessibility/speakup/spk_ttyio.c
@@ -225,27 +225,29 @@ void spk_ttyio_unregister_ldisc(void)
 static int spk_ttyio_out(struct spk_synth *in_synth, const char ch)
 {
 	struct tty_struct *tty = in_synth->dev;
+	int ret;
 
-	if (in_synth->alive && tty->ops->write) {
-		int ret = tty->ops->write(tty, &ch, 1);
+	if (!in_synth->alive || !tty->ops->write)
+		return 0;
 
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
 


_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
