Return-Path: <speakup+bounces-1298-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 72BB2ACE0EC
	for <lists+speakup@lfdr.de>; Wed,  4 Jun 2025 17:06:27 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1AC943824C3; Wed, 04 Jun 2025 10:58:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 046C0381905
	for <lists+speakup@lfdr.de>; Wed, 04 Jun 2025 10:58:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 37670381905; Wed, 04 Jun 2025 10:58:18 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EAD1E380618
	for <speakup@linux-speakup.org>; Wed, 04 Jun 2025 10:58:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 7A9C4A5E1A;
	Wed,  4 Jun 2025 16:58:08 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vTXMXiec2PkD; Wed,  4 Jun 2025 16:58:08 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id B481CA5DE2;
	Wed,  4 Jun 2025 16:58:07 +0200 (CEST)
Received: from samy by begin with local (Exim 4.98.2)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1uMpZ9-000000065Wf-16Fm;
	Wed, 04 Jun 2025 16:58:07 +0200
Date: Wed, 4 Jun 2025 16:58:07 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Jagadeesh Yalapalli <jagadeesharm14@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org,
	Jagadeesh Yalapalli <jagadeesh.yalapalli@einfochips.com>
Subject: Re: [PATCH v1] speakup: Replace u_short with u16 for spk_chartab
Message-ID: <aEBe_wji03rJPBwj@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Jagadeesh Yalapalli <jagadeesharm14@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org,
	Jagadeesh Yalapalli <jagadeesh.yalapalli@einfochips.com>
References: <20250604135846.46184-1-jagadeesharm14@gmail.com>
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
In-Reply-To: <20250604135846.46184-1-jagadeesharm14@gmail.com>
Organization: I am not organized
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Jagadeesh Yalapalli, le mer. 04 juin 2025 13:58:36 +0000, a ecrit:
> From: Jagadeesh Yalapalli <jagadeesh.yalapalli@einfochips.com>
> 
> The spk_chartab array was previously declared as `u_short`,
> which is a non-standard type and may vary in size across platforms.
> Replace it with `u16` to ensure consistent 16-bit width and improve
> code portability and readability.

There is much more to it than just this line: there is also the
declaration in speakup.h, and the comment above, and all related
variables such as default_chartab, the variables in functions such as
charclass, mask, char_type, ch_type, ...

Samuel

> Signed-off-by: Jagadeesh Yalapalli <jagadeesh.yalapalli@einfochips.com>
> ---
>  drivers/accessibility/speakup/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/main.c b/drivers/accessibility/speakup/main.c
> index e68cf1d83787..34c7cb6a9b43 100644
> --- a/drivers/accessibility/speakup/main.c
> +++ b/drivers/accessibility/speakup/main.c
> @@ -187,7 +187,7 @@ char *spk_default_chars[256] = {
>   * initialized to default_chartab and user selectable via
>   * /sys/module/speakup/parameters/chartab
>   */
> -u_short spk_chartab[256];
> +u16 spk_chartab[256];
>  
>  static u_short default_chartab[256] = {
>  	B_CTL, B_CTL, B_CTL, B_CTL, B_CTL, B_CTL, B_CTL, B_CTL,	/* 0-7 */
> -- 
> 2.43.0

