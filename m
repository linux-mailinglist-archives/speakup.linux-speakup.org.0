Return-Path: <speakup+bounces-1461-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BC258C18D57
	for <lists+speakup@lfdr.de>; Wed, 29 Oct 2025 09:05:45 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6B7EA3819B7; Wed, 29 Oct 2025 03:56:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 544B63818C4
	for <lists+speakup@lfdr.de>; Wed, 29 Oct 2025 03:56:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 696533818AF; Wed, 29 Oct 2025 03:56:30 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2C7A6380719
	for <speakup@linux-speakup.org>; Wed, 29 Oct 2025 03:56:30 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 071F6A1C18;
	Wed, 29 Oct 2025 08:56:22 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MyoH-mr6tvXg; Wed, 29 Oct 2025 08:56:21 +0100 (CET)
Received: from begin (aamiens-653-1-40-48.w83-192.abo.wanadoo.fr [83.192.199.48])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 6DA61A1C0D;
	Wed, 29 Oct 2025 08:56:21 +0100 (CET)
Received: from samy by begin with local (Exim 4.98.2)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1vE12a-00000009aGe-3kj4;
	Wed, 29 Oct 2025 08:56:20 +0100
Date: Wed, 29 Oct 2025 08:56:20 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Bo Liu <liubo03@inspur.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Accessiblity: speakup_soft: Fix double word in comments
Message-ID: <aQHIpJ1XiMfDzhMs@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Bo Liu <liubo03@inspur.com>, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20251029071629.17705-1-liubo03@inspur.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029071629.17705-1-liubo03@inspur.com>
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Bo Liu, le mer. 29 oct. 2025 15:16:29 +0800, a ecrit:
> Remove the repeated word "the" in comments.
> 
> Signed-off-by: Bo Liu <liubo03@inspur.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/speakup_soft.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/speakup_soft.c b/drivers/accessibility/speakup/speakup_soft.c
> index 6d446824677b..6549bfb96e7f 100644
> --- a/drivers/accessibility/speakup/speakup_soft.c
> +++ b/drivers/accessibility/speakup/speakup_soft.c
> @@ -446,7 +446,7 @@ static int softsynth_adjust(struct spk_synth *synth, struct st_var_header *var)
>  	if (var->var_id != PUNC_LEVEL)
>  		return 0;
>  
> -	/* We want to set the the speech synthesis punctuation level
> +	/* We want to set the speech synthesis punctuation level
>  	 * accordingly, so it properly tunes speaking A_PUNC characters */
>  	var_data = var->data;
>  	if (!var_data)
> -- 
> 2.31.1

