Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 294032BB68
	for <lists+speakup@lfdr.de>; Mon, 27 May 2019 22:29:29 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ECC0F1C5A59; Mon, 27 May 2019 16:29:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C56831C6B39;
	Mon, 27 May 2019 16:28:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C580A1C4354; Mon, 27 May 2019 16:28:27 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [IPv6:2a0c:e300::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 86E1F1C4355
 for <speakup@linux-speakup.org>; Mon, 27 May 2019 16:28:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 20C932ED4;
 Mon, 27 May 2019 22:28:22 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GaWlTzEBuJG2; Mon, 27 May 2019 22:28:21 +0200 (CEST)
Received: from function (105.251.129.77.rev.sfr.net [77.129.251.105])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 3E6AE1969;
 Mon, 27 May 2019 22:28:21 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1hVMEF-00042b-Nw; Mon, 27 May 2019 22:28:19 +0200
Date: Mon, 27 May 2019 22:28:19 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] drivers: staging: speakup: serialio: fix warning
 linux/serial.h is included more than once
Message-ID: <20190527202819.mh635ht2jf4ku7rl@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 William Hubbs <w.d.hubbs@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20190526071322.GA3830@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526071322.GA3830@hari-Inspiron-1545>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)
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

Hariprasad Kelam, le dim. 26 mai 2019 12:43:22 +0530, a ecrit:
> fix below warning reported by  includecheck
> 
> ./drivers/staging/speakup/serialio.h: linux/serial.h is included more
> than once.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

That was indeed the result of f79b0d9c223ca09cefffc72304a7bcbc401a1c6f
("staging: speakup: Fixed warning <linux/serial.h> instead of
<asm/serial.h>") which didn't take care of the inclusion above.
I believe <linux/serial.h> only is fine, the important part is in
drivers/staging/speakup/serialio.c which really needs to include
asm/serial.h to get SERIAL_PORT_DFNS

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/staging/speakup/serialio.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/staging/speakup/serialio.h b/drivers/staging/speakup/serialio.h
> index aa691e4..6f8f86f 100644
> --- a/drivers/staging/speakup/serialio.h
> +++ b/drivers/staging/speakup/serialio.h
> @@ -4,9 +4,6 @@
>  
>  #include <linux/serial.h>	/* for rs_table, serial constants */
>  #include <linux/serial_reg.h>	/* for more serial constants */
> -#ifndef __sparc__
> -#include <linux/serial.h>
> -#endif
>  #include <linux/serial_core.h>
>  
>  #include "spk_priv.h"
> -- 
> 2.7.4
> 

-- 
Samuel
> No manual is ever necessary.
May I politely interject here: BULLSHIT.  That's the biggest Apple lie of all!
(Discussion in comp.os.linux.misc on the intuitiveness of interfaces.)
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
