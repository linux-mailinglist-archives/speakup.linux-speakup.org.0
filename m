Return-Path: <speakup+bounces-565-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D5A6B59627E
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 20:32:22 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 724FB384818; Tue, 16 Aug 2022 14:32:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5C60F3847DA
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 14:32:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 131F43847D9; Tue, 16 Aug 2022 14:32:17 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E13C13847CF
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 14:32:16 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 2671420147;
	Tue, 16 Aug 2022 20:32:15 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8DMI6DcRaZkj; Tue, 16 Aug 2022 20:32:15 +0200 (CEST)
Received: from begin.home (lfbn-orl-1-1261-6.w86-244.abo.wanadoo.fr [86.244.81.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 665B620135;
	Tue, 16 Aug 2022 20:32:14 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1oO1MM-00GqFm-1D;
	Tue, 16 Aug 2022 20:32:14 +0200
Date: Tue, 16 Aug 2022 20:32:14 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Nikita Travkin <nikita@trvn.ru>
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	speakup@linux-speakup.org
Subject: Re: [PATCH] speakup: Fix compilation in some build environments
Message-ID: <20220816183214.6atl3g2fndi5jmep@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Nikita Travkin <nikita@trvn.ru>, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, speakup@linux-speakup.org
References: <20220612172244.il3siyq7ueqnvah5@begin>
 <20220816072843.1699317-1-nikita@trvn.ru>
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
In-Reply-To: <20220816072843.1699317-1-nikita@trvn.ru>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Nikita Travkin, le mar. 16 août 2022 12:28:43 +0500, a ecrit:
> -- >8 --
> From bc239d8740f9e31240e8727f76227daa1aec3c4f Mon Sep 17 00:00:00 2001
> From: Nikita Travkin <nikita@trvn.ru>
> Date: Tue, 16 Aug 2022 11:39:52 +0500
> 
> A compilation error may occur if the host CC doesn't have u_char
> defined:
> 
>   HOSTCC  drivers/accessibility/speakup/makemapdata.o
> In file included from ../drivers/accessibility/speakup/makemapdata.c:15:
> ../drivers/accessibility/speakup/utils.h: In function 'hash_name':
> ../drivers/accessibility/speakup/utils.h:57:9: error: unknown type name 'u_char'; did you mean 'char'?
>    57 |         u_char *pn = (u_char *)name;
>       |         ^~~~~~
>       |         char
> 
> Fix this by using "unsigned char" instead.
> 
> Fixes: 6a5c94d92699 ("speakup: Generate speakupmap.h automatically")
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> ---
>  drivers/accessibility/speakup/utils.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/utils.h b/drivers/accessibility/speakup/utils.h
> index 4bf2ee8ac246..4ce9a12f7664 100644
> --- a/drivers/accessibility/speakup/utils.h
> +++ b/drivers/accessibility/speakup/utils.h
> @@ -54,7 +54,7 @@ static inline int oops(const char *msg, const char *info)
>  
>  static inline struct st_key *hash_name(char *name)
>  {
> -	u_char *pn = (u_char *)name;
> +	unsigned char *pn = (unsigned char *)name;
>  	int hash = 0;
>  
>  	while (*pn) {
> -- 
> 2.35.3
> 

