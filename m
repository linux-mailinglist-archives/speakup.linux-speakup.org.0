Return-Path: <speakup+bounces-914-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9667F65F85A
	for <lists+speakup@lfdr.de>; Fri,  6 Jan 2023 01:52:18 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5C6A13827E6; Thu,  5 Jan 2023 19:52:13 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 459A73827E6
	for <lists+speakup@lfdr.de>; Thu,  5 Jan 2023 19:52:13 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3FF9B3827E6; Thu,  5 Jan 2023 19:52:08 -0500 (EST)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0A2B63827D5
	for <speakup@linux-speakup.org>; Thu,  5 Jan 2023 19:52:08 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id C21AD20176;
	Fri,  6 Jan 2023 01:52:02 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CXxScuYzd18E; Fri,  6 Jan 2023 01:52:02 +0100 (CET)
Received: from begin (adijon-658-1-86-31.w86-204.abo.wanadoo.fr [86.204.233.31])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 157DA20172;
	Fri,  6 Jan 2023 01:52:02 +0100 (CET)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1pDaxl-000k0r-25;
	Fri, 06 Jan 2023 01:52:01 +0100
Date: Fri, 6 Jan 2023 01:52:01 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH -next] speakup: Fix warning comparing pointer to 0
Message-ID: <20230106005201.h3ikdaisqgjupavc@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Yang Li <yang.lee@linux.alibaba.com>, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, Abaci Robot <abaci@linux.alibaba.com>
References: <20230106004114.72589-1-yang.lee@linux.alibaba.com>
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
In-Reply-To: <20230106004114.72589-1-yang.lee@linux.alibaba.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Yang Li, le ven. 06 janv. 2023 08:41:14 +0800, a ecrit:
> ./drivers/accessibility/speakup/utils.h:39:15-16: WARNING comparing pointer to 0
> 
> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3636
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/utils.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/utils.h b/drivers/accessibility/speakup/utils.h
> index 4ce9a12f7664..db00c962f8e2 100644
> --- a/drivers/accessibility/speakup/utils.h
> +++ b/drivers/accessibility/speakup/utils.h
> @@ -36,7 +36,7 @@ static inline void open_input(const char *dir_name, const char *name)
>  	else
>  		snprintf(filename, sizeof(filename), "%s", name);
>  	infile = fopen(filename, "r");
> -	if (infile == 0) {
> +	if (!infile) {
>  		fprintf(stderr, "can't open %s\n", filename);
>  		exit(1);
>  	}
> -- 
> 2.20.1.7.g153144c
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

