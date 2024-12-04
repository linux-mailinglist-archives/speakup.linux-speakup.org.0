Return-Path: <speakup+bounces-1222-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C76B59E480C
	for <lists+speakup@lfdr.de>; Wed,  4 Dec 2024 23:41:54 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7472B3825A1; Wed, 04 Dec 2024 17:34:33 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 60556381906
	for <lists+speakup@lfdr.de>; Wed, 04 Dec 2024 17:34:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9A530381909; Wed, 04 Dec 2024 17:34:29 -0500 (EST)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 74C7B381905
	for <speakup@linux-speakup.org>; Wed, 04 Dec 2024 17:34:29 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 09670A2003;
	Wed,  4 Dec 2024 23:34:22 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cBM__F55PESV; Wed,  4 Dec 2024 23:34:21 +0100 (CET)
Received: from begin.home (aamiens-653-1-40-48.w83-192.abo.wanadoo.fr [83.192.199.48])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 4F43BA1FFD;
	Wed,  4 Dec 2024 23:34:20 +0100 (CET)
Received: from samy by begin.home with local (Exim 4.98)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1tIxwq-00000003GVc-1GEa;
	Wed, 04 Dec 2024 23:34:20 +0100
Date: Wed, 4 Dec 2024 23:34:20 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: liujing <liujing@cmss.chinamobile.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	masahiroy@kernel.org, nicolas@fjasle.eu, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: Fix the wrong format specifier
Message-ID: <Z1DY7PPuTA0y86ey@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	liujing <liujing@cmss.chinamobile.com>, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, masahiroy@kernel.org,
	nicolas@fjasle.eu, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20241204150303.8219-1-liujing@cmss.chinamobile.com>
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
In-Reply-To: <20241204150303.8219-1-liujing@cmss.chinamobile.com>
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

liujing, le mer. 04 déc. 2024 23:03:03 +0800, a ecrit:
> Make a minor change to eliminate a static checker warning. The type
> of '(unsigned int)kp[i]' is unsigned int, so the correct format specifier should be
> %u instead of %d.
> 
> Signed-off-by: liujing <liujing@cmss.chinamobile.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> diff --git a/drivers/accessibility/speakup/genmap.c b/drivers/accessibility/speakup/genmap.c
> index 0882bab10fb8..9bd78e1f023b 100644
> --- a/drivers/accessibility/speakup/genmap.c
> +++ b/drivers/accessibility/speakup/genmap.c
> @@ -153,7 +153,7 @@ main(int argc, char *argv[])
>  			continue;
>  		printf("\n\t%d,", lc);
>  		for (i = 0; i < max_states; i++)
> -			printf(" %d,", (unsigned int)kp[i]);
> +			printf(" %u,", (unsigned int)kp[i]);
>  	}
>  	printf("\n\t0, %d\n", map_ver);
>  
> -- 
> 2.27.0

