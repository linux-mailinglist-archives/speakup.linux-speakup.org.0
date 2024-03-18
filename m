Return-Path: <speakup+bounces-1093-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9244187EC42
	for <lists+speakup@lfdr.de>; Mon, 18 Mar 2024 16:35:37 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 48B30382707; Mon, 18 Mar 2024 11:35:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 257B2382077
	for <lists+speakup@lfdr.de>; Mon, 18 Mar 2024 11:35:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1700F3825C3; Mon, 18 Mar 2024 11:35:31 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D6318382077
	for <speakup@linux-speakup.org>; Mon, 18 Mar 2024 11:35:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 09B1AA034E;
	Mon, 18 Mar 2024 16:35:28 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0J5TDXVXlzJ; Mon, 18 Mar 2024 16:35:27 +0100 (CET)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 6FF64A034A;
	Mon, 18 Mar 2024 16:35:27 +0100 (CET)
Received: from samy by begin with local (Exim 4.97)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1rmF1K-0000000BaFB-2Tyr;
	Mon, 18 Mar 2024 16:35:26 +0100
Date: Mon, 18 Mar 2024 16:35:26 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Gaosheng Cui <cuigaosheng1@huawei.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, speakup@linux-speakup.org
Subject: Re: [PATCH -next] speakup: Fix compilation error reported by old GCC
 in devsynth
Message-ID: <20240318153526.a4ajrvnheumujlgf@begin>
References: <20240318143639.470582-1-cuigaosheng1@huawei.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240318143639.470582-1-cuigaosheng1@huawei.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Gaosheng Cui, le lun. 18 mars 2024 22:36:39 +0800, a ecrit:
> GCC version: 9.4.0
> 
> devsynth.c: In function ‘speakup_file_writeu’:
> devsynth.c:110:1: error: label at end of compound statement
>   110 | drop:
>       | ^~~~
> 
> There is a compilation error reported by old GCC in devsynth,
> as above, fix it by moving the label.
> 
> Fixes: 807977260ae4 ("speakup: Add /dev/synthu device")
> Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>
> ---
>  drivers/accessibility/speakup/devsynth.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/devsynth.c b/drivers/accessibility/speakup/devsynth.c
> index da4d0f6aa5bf..1544495bfbd9 100644
> --- a/drivers/accessibility/speakup/devsynth.c
> +++ b/drivers/accessibility/speakup/devsynth.c
> @@ -67,8 +67,8 @@ static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
>  			case 8: /* 0xff */
>  			case 7: /* 0xfe */
>  			case 1: /* 0x80 */
> -				/* Invalid, drop */
> -				goto drop;
> +				/* Invalid, drop and continue */
> +				continue;
>  
>  			case 0:
>  				/* ASCII, copy */
> @@ -105,9 +105,9 @@ static ssize_t speakup_file_writeu(struct file *fp, const char __user *buffer,
>  				if (value < 0x10000)
>  					ubuf[out++] = value;
>  				want = 1;
> +drop:

This label placement would be very confusing.

As I already mentioned, I have already sent a fix for this to Greg KH.

Samuel

>  				break;
>  			}
> -drop:
>  		}
>  
>  		count -= bytes;
> -- 
> 2.25.1

