Return-Path: <speakup+bounces-747-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5395FED23
	for <lists+speakup@lfdr.de>; Fri, 14 Oct 2022 13:20:46 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 298AD383F79; Fri, 14 Oct 2022 07:14:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 152B8383EF6
	for <lists+speakup@lfdr.de>; Fri, 14 Oct 2022 07:14:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 192C1383FA7; Fri, 14 Oct 2022 07:14:27 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E7DD4380786
	for <speakup@linux-speakup.org>; Fri, 14 Oct 2022 07:14:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 15AA22015D;
	Fri, 14 Oct 2022 13:14:19 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MGaq2TVi_ns7; Fri, 14 Oct 2022 13:14:18 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id A77CF20158;
	Fri, 14 Oct 2022 13:14:18 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ojIdt-00FwbK-37;
	Fri, 14 Oct 2022 13:14:17 +0200
Date: Fri, 14 Oct 2022 13:14:17 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: =?utf-8?B?xJBvw6BuIFRy4bqnbiBDw7RuZw==?= Danh <congdanhqx@gmail.com>
Cc: speakup@linux-speakup.org, William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>
Subject: Re: [PATCH] speakup: replace utils' u_char with unsigned char
Message-ID: <20221014111417.3w2uj72mxh2diqo5@begin>
References: <b75743026aaee2d81efe3d7f2e8fa47f7d0b8ea7.1665736571.git.congdanhqx@gmail.com>
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
In-Reply-To: <b75743026aaee2d81efe3d7f2e8fa47f7d0b8ea7.1665736571.git.congdanhqx@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Đoàn Trần Công Danh, le ven. 14 oct. 2022 15:38:15 +0700, a ecrit:
> drivers/accessibility/speakup/utils.h will be used to compile host tool
> to generate metadata.
> 
> "u_char" is a non-standard type, which is defined to "unsigned char"
> on glibc but not defined by some libc, e.g. musl.
> 
> Let's replace "u_char" with "unsigned char"
> 
> Signed-off-by: Đoàn Trần Công Danh <congdanhqx@gmail.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

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
> 2.38.0.413.g74048e4d9e

