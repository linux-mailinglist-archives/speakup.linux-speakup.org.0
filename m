Return-Path: <speakup+bounces-744-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0D8975FA944
	for <lists+speakup@lfdr.de>; Tue, 11 Oct 2022 02:25:01 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B42E438401B; Mon, 10 Oct 2022 20:24:59 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A06BD383F01
	for <lists+speakup@lfdr.de>; Mon, 10 Oct 2022 20:24:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A3D87383F01; Mon, 10 Oct 2022 20:24:54 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5F904383EF9
	for <speakup@linux-speakup.org>; Mon, 10 Oct 2022 20:24:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id A8B0420166;
	Tue, 11 Oct 2022 02:24:51 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PG3SXhi9Mn50; Tue, 11 Oct 2022 02:24:50 +0200 (CEST)
Received: from begin.home (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id AF3E920165;
	Tue, 11 Oct 2022 02:24:50 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1oi34k-007ZK6-37;
	Tue, 11 Oct 2022 02:24:50 +0200
Date: Tue, 11 Oct 2022 02:24:50 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Yureka <yuka@yuka.dev>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, gregkh@linuxfoundation.org,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: remove usage of non-standard u_char
Message-ID: <20221011002450.d25x3gvgu5snsozm@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Yureka <yuka@yuka.dev>, w.d.hubbs@gmail.com, chris@the-brannons.com,
	gregkh@linuxfoundation.org, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <9b7e4894-deec-39ba-bb7c-3c6d6427fa1d@yuka.dev>
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
In-Reply-To: <9b7e4894-deec-39ba-bb7c-3c6d6427fa1d@yuka.dev>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Yureka, le mar. 11 oct. 2022 02:17:43 +0200, a ecrit:
> From: Yureka Lilian <yuka@yuka.dev>
> 
> This code is included in the build tools makemapdata and genmap, and it
> expects that libc exposes a definition of u_char. But u_char is not
> defined in either C or POSIX standards, and some systems don't have it.
> Namely this breaks the build on hosts using musl libc, because musl only
> exposes u_char if _GNU_SOURCE is defined.
> 
> Signed-off-by: Yureka Lilian <yuka@yuka.dev>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/utils.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/utils.h b/drivers/accessibility/speakup/utils.h
> index 4bf2ee8ac..4ce9a12f7 100644
> --- a/drivers/accessibility/speakup/utils.h
> +++ b/drivers/accessibility/speakup/utils.h
> @@ -54,7 +54,7 @@ static inline int oops(const char *msg, const char *info)
>  
>  static inline struct st_key *hash_name(char *name)
>  {
> -   u_char *pn = (u_char *)name;
> +   unsigned char *pn = (unsigned char *)name;
>     int hash = 0;
>  
>     while (*pn) {
> -- 
> 2.37.3

