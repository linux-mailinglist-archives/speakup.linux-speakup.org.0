Return-Path: <speakup+bounces-839-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A0F4E61E342
	for <lists+speakup@lfdr.de>; Sun,  6 Nov 2022 16:51:33 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E49E383617; Sun,  6 Nov 2022 10:51:23 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2B411383615
	for <lists+speakup@lfdr.de>; Sun,  6 Nov 2022 10:51:23 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8C8E2383615; Sun,  6 Nov 2022 10:51:18 -0500 (EST)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 619CB383615
	for <speakup@linux-speakup.org>; Sun,  6 Nov 2022 10:51:18 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 352822010B;
	Sun,  6 Nov 2022 16:51:10 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zKeRytKHzjnZ; Sun,  6 Nov 2022 16:51:10 +0100 (CET)
Received: from begin (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 85C4520107;
	Sun,  6 Nov 2022 16:51:09 +0100 (CET)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1orhvR-00DuLc-0S;
	Sun, 06 Nov 2022 16:51:09 +0100
Date: Sun, 6 Nov 2022 16:51:09 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: wangkailong@jari.cn
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	gregkh@linuxfoundation.org, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: Fix warning comparing pointer to 0
Message-ID: <20221106155109.wh5ivhk2zc7cumn5@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	wangkailong@jari.cn, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, gregkh@linuxfoundation.org,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
References: <1de9cab8.c1.1844d7bdf4b.Coremail.wangkailong@jari.cn>
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
In-Reply-To: <1de9cab8.c1.1844d7bdf4b.Coremail.wangkailong@jari.cn>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

wangkailong@jari.cn, le dim. 06 nov. 2022 23:07:54 +0800, a ecrit:
> Fix the following coccicheck warning:
> 
> drivers/accessibility/speakup/utils.h:39:15-16: WARNING comparing
> pointer to 0

You're replacing it with the contrary of what it should be...

> ---
>  drivers/accessibility/speakup/utils.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/utils.h b/drivers/accessibility/speakup/utils.h
> index 4bf2ee8ac246..5803b521df2b 100644
> --- a/drivers/accessibility/speakup/utils.h
> +++ b/drivers/accessibility/speakup/utils.h
> @@ -36,7 +36,7 @@ static inline void open_input(const char *dir_name, const char *name)
>  	else
>  		snprintf(filename, sizeof(filename), "%s", name);
>  	infile = fopen(filename, "r");
> -	if (infile == 0) {
> +	if (infile) {
>  		fprintf(stderr, "can't open %s\n", filename);
>  		exit(1);
>  	}
> -- 
> 2.25.1

