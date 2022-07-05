Return-Path: <speakup+bounces-459-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EFDFE5668FD
	for <lists+speakup@lfdr.de>; Tue,  5 Jul 2022 13:16:30 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AB9353809DF; Tue,  5 Jul 2022 07:16:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 964A8380187
	for <lists+speakup@lfdr.de>; Tue,  5 Jul 2022 07:16:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7FFBA380B2A; Tue,  5 Jul 2022 07:16:24 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 568693807E8
	for <speakup@linux-speakup.org>; Tue,  5 Jul 2022 07:16:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id B792C2015D;
	Tue,  5 Jul 2022 13:16:22 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MUpfWmLr-gSF; Tue,  5 Jul 2022 13:16:22 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 0DFBB2014C;
	Tue,  5 Jul 2022 13:16:21 +0200 (CEST)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1o8gXV-00FM2c-2k;
	Tue, 05 Jul 2022 13:16:21 +0200
Date: Tue, 5 Jul 2022 13:16:21 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Li zeming <zeming@nfschina.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] accessibility/speakup/speakup_acnt: Add header file
 macro definition
Message-ID: <20220705111621.smcxnfx45ai7vixy@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Li zeming <zeming@nfschina.com>, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20220705101955.27337-1-zeming@nfschina.com>
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
In-Reply-To: <20220705101955.27337-1-zeming@nfschina.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Li zeming, le mar. 05 juil. 2022 18:19:55 +0800, a ecrit:
> I think the header file could avoid redefinition errors.
>  at compile time by adding macro definitions.

Redefining a macro to the same value is not a problem, but better have it
indeed.

> Signed-off-by: Li zeming <zeming@nfschina.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Could you also patch speakup_dtlk.h the same way? Thanks.

Samuel

> ---
>  drivers/accessibility/speakup/speakup_acnt.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/accessibility/speakup/speakup_acnt.h b/drivers/accessibility/speakup/speakup_acnt.h
> index cffa938ae580..cea05d770f6d 100644
> --- a/drivers/accessibility/speakup/speakup_acnt.h
> +++ b/drivers/accessibility/speakup/speakup_acnt.h
> @@ -1,5 +1,7 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
>  /* speakup_acntpc.h - header file for speakups Accent-PC driver. */
> +#ifndef _SPEAKUP_ACNT_H
> +#define _SPEAKUP_ACNT_H
>  
>  #define SYNTH_IO_EXTENT	0x02
>  
> @@ -17,3 +19,4 @@
>  #define SYNTH_FULL	'F' /* synth is full. */
>  #define SYNTH_ALMOST_EMPTY 'M' /* synth has less than 2 seconds of text left */
>  #define SYNTH_SPEAKING	's' /* synth is speaking and has a fare way to go */
> +#endif
> -- 
> 2.18.2
> 

