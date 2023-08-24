Return-Path: <speakup+bounces-1024-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 42792787AB9
	for <lists+speakup@lfdr.de>; Thu, 24 Aug 2023 23:58:25 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EEEFB382337; Thu, 24 Aug 2023 17:58:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D805E3822F3
	for <lists+speakup@lfdr.de>; Thu, 24 Aug 2023 17:58:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9FC79382208; Thu, 24 Aug 2023 17:58:18 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1C0DB3821F3
	for <speakup@linux-speakup.org>; Thu, 24 Aug 2023 17:58:18 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id F1193200F3;
	Thu, 24 Aug 2023 23:58:07 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tJdgRRiDj2Ea; Thu, 24 Aug 2023 23:58:07 +0200 (CEST)
Received: from begin.home (lfbn-bor-1-1163-184.w92-158.abo.wanadoo.fr [92.158.138.184])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 50228200F0;
	Thu, 24 Aug 2023 23:58:07 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1qZIL8-001mhZ-2z;
	Thu, 24 Aug 2023 23:58:06 +0200
Date: Thu, 24 Aug 2023 23:58:06 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Justin Stitt <justinstitt@google.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH] accessibility: speakup: refactor deprecated strncpy
Message-ID: <20230824215806.3ulejc2gsapcl2mw@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Justin Stitt <justinstitt@google.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20230824-strncpy-drivers-accessibility-speakup-kobjects-c-v1-1-3a1ef1221e90@google.com>
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
In-Reply-To: <20230824-strncpy-drivers-accessibility-speakup-kobjects-c-v1-1-3a1ef1221e90@google.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Justin Stitt, le jeu. 24 août 2023 21:44:29 +0000, a ecrit:
> `strncpy` is deprecated for use on NUL-terminated destination strings [1].
> 
> Use `strscpy` as it guarantees NUL-termination of its destination buffer [2]
> which allows for simpler and less ambiguous code.
> 
> Also, change `strlen(buf)` to `strlen(ptr)` to be consistent with
> further usage within the scope of the function. Note that these are
> equivalent:
> |419 	const char *ptr = buf;
> 
> Link: www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings[1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Signed-off-by: Justin Stitt <justinstitt@google.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
> Note: build-tested only.
> ---
>  drivers/accessibility/speakup/kobjects.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/kobjects.c b/drivers/accessibility/speakup/kobjects.c
> index a7522d409802..8aa416c5f3fc 100644
> --- a/drivers/accessibility/speakup/kobjects.c
> +++ b/drivers/accessibility/speakup/kobjects.c
> @@ -422,12 +422,11 @@ static ssize_t synth_direct_store(struct kobject *kobj,
>  	if (!synth)
>  		return -EPERM;
>  
> -	len = strlen(buf);
> +	len = strlen(ptr);
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	while (len > 0) {
>  		bytes = min_t(size_t, len, 250);
> -		strncpy(tmp, ptr, bytes);
> -		tmp[bytes] = '\0';
> +		strscpy(tmp, ptr, bytes);
>  		string_unescape_any_inplace(tmp);
>  		synth_printf("%s", tmp);
>  		ptr += bytes;
> 
> ---
> base-commit: f9604036a3fb6149badf346994b46b03f9292db7
> change-id: 20230824-strncpy-drivers-accessibility-speakup-kobjects-c-4009e7df0936
> 
> Best regards,
> --
> Justin Stitt <justinstitt@google.com>
> 

