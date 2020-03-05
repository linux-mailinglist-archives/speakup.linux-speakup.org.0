Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 93BD7183EBE
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:44:20 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 2B0E342804C9; Thu, 12 Mar 2020 21:44:20 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 6985A428048C
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:44:19 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5566F1C727F; Thu, 12 Mar 2020 21:44:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3355C1C730A;
	Thu, 12 Mar 2020 21:30:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 8A15D1C2C6B; Thu,  5 Mar 2020 02:46:37 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id EEC381C0DBA
 for <speakup@linux-speakup.org>; Thu,  5 Mar 2020 02:46:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id CAA4D148D;
 Thu,  5 Mar 2020 08:46:31 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-IGOv4z-aAj; Thu,  5 Mar 2020 08:46:30 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id BFC5312B7;
 Thu,  5 Mar 2020 08:46:30 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1j9lDB-001Dcl-Bm; Thu, 05 Mar 2020 08:46:29 +0100
Date: Thu, 5 Mar 2020 08:46:29 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Zhenzhong Duan <zhenzhong.duan@gmail.com>
Subject: Re: [PATCH] staging: speakup: Fix a typo error print for softsynthu
 device
Message-ID: <20200305074629.i2ntpvmlpn4nwb7y@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Zhenzhong Duan <zhenzhong.duan@gmail.com>,
 linux-kernel@vger.kernel.org, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org, William Hubbs <w.d.hubbs@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200305072151.403-1-zhenzhong.duan@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305072151.403-1-zhenzhong.duan@gmail.com>
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
Cc: devel@driverdev.osuosl.org, William Hubbs <w.d.hubbs@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Zhenzhong Duan, le jeu. 05 mars 2020 15:21:51 +0800, a ecrit:
> When softsynthu device fails the register, "/dev/softsynthu" should be
> printed instead of "/dev/softsynth".

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> Signed-off-by: Zhenzhong Duan <zhenzhong.duan@gmail.com>
> Cc: William Hubbs <w.d.hubbs@gmail.com>
> Cc: Chris Brannon <chris@the-brannons.com>
> Cc: Kirk Reiser <kirk@reisers.ca>
> Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/staging/speakup/speakup_soft.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/speakup_soft.c b/drivers/staging/speakup/speakup_soft.c
> index 9d85a3a1af4c..28cedaec6d8a 100644
> --- a/drivers/staging/speakup/speakup_soft.c
> +++ b/drivers/staging/speakup/speakup_soft.c
> @@ -388,7 +388,7 @@ static int softsynth_probe(struct spk_synth *synth)
>  	synthu_device.name = "softsynthu";
>  	synthu_device.fops = &softsynthu_fops;
>  	if (misc_register(&synthu_device)) {
> -		pr_warn("Couldn't initialize miscdevice /dev/softsynth.\n");
> +		pr_warn("Couldn't initialize miscdevice /dev/softsynthu.\n");
>  		return -ENODEV;
>  	}
>  
> -- 
> 2.17.1
> 

-- 
Samuel
N: beep beep Miam miam? 
y: ++
a: kill -MIAM -1
 -+- #runtime < /dev/miam -+-
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
