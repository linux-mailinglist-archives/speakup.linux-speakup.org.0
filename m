Return-Path: <speakup+bounces-888-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AB851642895
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 13:37:37 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 05190382AEF; Mon,  5 Dec 2022 07:37:36 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E4CCB38290D
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 07:37:35 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DC323382A1E; Mon,  5 Dec 2022 07:37:30 -0500 (EST)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B419138290D
	for <speakup@linux-speakup.org>; Mon,  5 Dec 2022 07:37:30 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 832542010B;
	Mon,  5 Dec 2022 13:37:27 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 34QAqrD_xFx3; Mon,  5 Dec 2022 13:37:27 +0100 (CET)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id BDA1720108;
	Mon,  5 Dec 2022 13:37:26 +0100 (CET)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1p2Air-00293E-30;
	Mon, 05 Dec 2022 13:37:25 +0100
Date: Mon, 5 Dec 2022 13:37:25 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: yang.yang29@zte.com.cn
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	mushi.shar@gmail.com, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, xu.panda@zte.com.cn
Subject: Re: [PATCH linux-next v2] accessibility: speakup: use strscpy() to
 instead of strncpy()
Message-ID: <20221205123725.jn6gdimypvzcj5zg@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	yang.yang29@zte.com.cn, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, mushi.shar@gmail.com, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, xu.panda@zte.com.cn
References: <202212051928467539184@zte.com.cn>
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
In-Reply-To: <202212051928467539184@zte.com.cn>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

yang.yang29@zte.com.cn, le lun. 05 déc. 2022 19:28:46 +0800, a ecrit:
> From: Xu Panda <xu.panda@zte.com.cn>
> 
> The implementation of strscpy() is more robust and safer.
> That's now the recommended way to copy NUL terminated strings.
> ---
> change for v2
>  - fix the mistake of eating one character when len > 250,
> thanks to Samuel Thibault.
> ---
> 
> Signed-off-by: Xu Panda <xu.panda@zte.com.cn>
> Signed-off-by: Yang Yang <yang.yang29@zte.com>
> Signed-off-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

It's not really a signed-off from my side, I just did a review :)

but with that version,

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/kobjects.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/kobjects.c b/drivers/accessibility/speakup/kobjects.c
> index a7522d409802..c1ef48280f3c 100644
> --- a/drivers/accessibility/speakup/kobjects.c
> +++ b/drivers/accessibility/speakup/kobjects.c
> @@ -426,8 +426,7 @@ static ssize_t synth_direct_store(struct kobject *kobj,
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	while (len > 0) {
>  		bytes = min_t(size_t, len, 250);
> -		strncpy(tmp, ptr, bytes);
> -		tmp[bytes] = '\0';
> +		strscpy(tmp, ptr, bytes + 1);
>  		string_unescape_any_inplace(tmp);
>  		synth_printf("%s", tmp);
>  		ptr += bytes;
> -- 
> 2.15.2
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

