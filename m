Return-Path: <speakup+bounces-1316-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 360CDB1D4AB
	for <lists+speakup@lfdr.de>; Thu,  7 Aug 2025 11:26:26 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 290AB3822BC; Thu, 07 Aug 2025 05:18:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 150C838223C
	for <lists+speakup@lfdr.de>; Thu, 07 Aug 2025 05:18:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 48B3C382060; Thu, 07 Aug 2025 05:18:11 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 231E4381898
	for <speakup@linux-speakup.org>; Thu, 07 Aug 2025 05:18:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 7935EA0493;
	Thu,  7 Aug 2025 11:18:00 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKMl65vKd_rK; Thu,  7 Aug 2025 11:18:00 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id EAA70A03B6;
	Thu,  7 Aug 2025 11:17:59 +0200 (CEST)
Received: from samy by begin with local (Exim 4.98.2)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ujwl5-0000000ALFG-2frs;
	Thu, 07 Aug 2025 11:17:59 +0200
Date: Thu, 7 Aug 2025 11:17:59 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Xichao Zhao <zhao.xichao@vivo.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] accessibility: Use str_plural() to simplify the code
Message-ID: <aJRvR9xEkzMix5zQ@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Xichao Zhao <zhao.xichao@vivo.com>, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20250807085930.429665-1-zhao.xichao@vivo.com>
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
In-Reply-To: <20250807085930.429665-1-zhao.xichao@vivo.com>
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Xichao Zhao, le jeu. 07 août 2025 16:59:30 +0800, a ecrit:
> Use the string choice helper function str_plural() to simplify the code.
> 
> Signed-off-by: Xichao Zhao <zhao.xichao@vivo.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/kobjects.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/kobjects.c b/drivers/accessibility/speakup/kobjects.c
> index 0dfdb6608e02..57139971e997 100644
> --- a/drivers/accessibility/speakup/kobjects.c
> +++ b/drivers/accessibility/speakup/kobjects.c
> @@ -98,7 +98,7 @@ static void report_char_chartab_status(int reset, int received, int used,
>  		if (rejected)
>  			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
>  				 " with %d reject%s\n",
> -				 rejected, rejected > 1 ? "s" : "");
> +				 rejected, str_plural(rejected));
>  		pr_info("%s", buf);
>  	}
>  }
> @@ -740,7 +740,7 @@ static void report_msg_status(int reset, int received, int used,
>  		if (rejected)
>  			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
>  				 " with %d reject%s\n",
> -				 rejected, rejected > 1 ? "s" : "");
> +				 rejected, str_plural(rejected));
>  		pr_info("%s", buf);
>  	}
>  }
> -- 
> 2.34.1

