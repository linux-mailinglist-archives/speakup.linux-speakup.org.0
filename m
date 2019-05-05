Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 1D48F13E31
	for <lists+speakup@lfdr.de>; Sun,  5 May 2019 09:33:16 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 126EF1C4468; Sun,  5 May 2019 03:33:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9CDEB1C4422;
	Sun,  5 May 2019 03:33:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A75C51C4387; Sun,  5 May 2019 03:33:04 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 2250A1C437C
 for <speakup@linux-speakup.org>; Sun,  5 May 2019 03:33:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 3C2E075F0;
 Sun,  5 May 2019 09:32:59 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 19Q5PwfWms_x; Sun,  5 May 2019 09:32:58 +0200 (CEST)
Received: from function (105.251.129.77.rev.sfr.net [77.129.251.105])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 999B57529;
 Sun,  5 May 2019 09:32:58 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1hNBdo-0007f3-Qp; Sun, 05 May 2019 09:32:56 +0200
Date: Sun, 5 May 2019 09:32:56 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: Re: [PATCH] Staging: speakup: Replace return type
Message-ID: <20190505073256.wtcmx2egkhtxyqmv@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
 gregkh@linuxfoundation.org, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20190505072645.3940-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190505072645.3940-1-madhumithabiw@gmail.com>
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
Cc: devel@driverdev.osuosl.org, w.d.hubbs@gmail.com, gregkh@linuxfoundation.org,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hello,

Madhumitha Prabakaran, le dim. 05 mai 2019 02:26:45 -0500, a ecrit:
> Replace return type and remove the respective assignment.

I prefer to keep it the way it was, it looks more straightforward for
the reader.

Samuel

> Issue found by Coccinelle.
> 
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/speakup/i18n.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
> index ee240d36f947..a748eb8052d1 100644
> --- a/drivers/staging/speakup/i18n.c
> +++ b/drivers/staging/speakup/i18n.c
> @@ -470,8 +470,7 @@ static char *find_specifier_end(char *input)
>  	input++;		/* Advance over %. */
>  	input = skip_flags(input);
>  	input = skip_width(input);
> -	input = skip_conversion(input);
> -	return input;
> +	return skip_conversion(input);
>  }
>  
>  /*
> -- 
> 2.17.1
> 

-- 
Samuel
Progress (n.): The process through which the Internet has evolved from
smart people in front of dumb terminals to dumb people in front of smart
terminals.
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
