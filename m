Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 095842A26B1
	for <lists+speakup@lfdr.de>; Mon,  2 Nov 2020 10:10:22 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9D707380F82; Mon,  2 Nov 2020 04:10:21 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6A38C380F30;
	Mon,  2 Nov 2020 04:10:21 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 63776380F25; Mon,  2 Nov 2020 04:10:20 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 29FAE380F19
 for <speakup@linux-speakup.org>; Mon,  2 Nov 2020 04:10:20 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 1D5D1B43;
 Mon,  2 Nov 2020 10:10:19 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dPjlJf5N-NTy; Mon,  2 Nov 2020 10:10:18 +0100 (CET)
Received: from function.home (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 5C19E222;
 Mon,  2 Nov 2020 10:10:18 +0100 (CET)
Received: from samy by function.home with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kZVqz-00BY4e-19; Mon, 02 Nov 2020 10:10:17 +0100
Date: Mon, 2 Nov 2020 10:10:16 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: covici@ccs.covici.com,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup crashes with kernel 5.4.69
Message-ID: <20201102091016.kasjjmcc3yjpvu4d@function>
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
 <20201101214000.u6al47enhggqputs@function>
 <20201102071203.GC8027@gregn.net>
 <m3v9eop2ks.wl-covici@ccs.covici.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ne7smd6zwylvjd6i"
Content-Disposition: inline
In-Reply-To: <m3v9eop2ks.wl-covici@ccs.covici.com>
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


--ne7smd6zwylvjd6i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

John Covici, le lun. 02 nov. 2020 03:47:47 -0500, a ecrit:
> Looks like the patch is working!

Ok, good. Could you try the (much simpler) attached patch instead?

Samuel

--ne7smd6zwylvjd6i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=patch

--- a/drivers/accessibility/speakup/spk_ttyio.c
+++ b/drivers/accessibility/speakup/spk_ttyio.c
@@ -298,11 +298,13 @@ static unsigned char ttyio_in(int timeou
 	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
 	char rv;
 
-	if (wait_for_completion_timeout(&ldisc_data->completion,
+	if (!timeout) {
+		if (!try_wait_for_completion(&ldisc_data->completion))
+			return 0xff;
+	} else if (wait_for_completion_timeout(&ldisc_data->completion,
 					usecs_to_jiffies(timeout)) == 0) {
-		if (timeout)
-			pr_warn("spk_ttyio: timeout (%d)  while waiting for input\n",
-				timeout);
+		pr_warn("spk_ttyio: timeout (%d)  while waiting for input\n",
+			timeout);
 		return 0xff;
 	}
 

--ne7smd6zwylvjd6i
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--ne7smd6zwylvjd6i--
