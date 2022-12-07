Return-Path: <speakup+bounces-906-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 32DA964581F
	for <lists+speakup@lfdr.de>; Wed,  7 Dec 2022 11:46:19 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D754382AEF; Wed,  7 Dec 2022 05:46:13 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ECCD0382A1C
	for <lists+speakup@lfdr.de>; Wed,  7 Dec 2022 05:46:12 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CE049382A28; Wed,  7 Dec 2022 05:46:07 -0500 (EST)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A6379382A10
	for <speakup@linux-speakup.org>; Wed,  7 Dec 2022 05:46:07 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 8ECD920152;
	Wed,  7 Dec 2022 11:46:04 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z0b3ieXArZz6; Wed,  7 Dec 2022 11:46:04 +0100 (CET)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 14E212014F;
	Wed,  7 Dec 2022 11:46:03 +0100 (CET)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1p2rwB-000kuI-1Q;
	Wed, 07 Dec 2022 11:46:03 +0100
Date: Wed, 7 Dec 2022 11:46:03 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Colin Ian King <colin.i.king@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mushahid Hussain <mushi.shar@gmail.com>, speakup@linux-speakup.org,
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] accessibility: speakup: Fix spelling mistake "thw" ->
 "the"
Message-ID: <20221207104603.awjfxnv67yhzdanv@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Colin Ian King <colin.i.king@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mushahid Hussain <mushi.shar@gmail.com>, speakup@linux-speakup.org,
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221207095202.2282567-1-colin.i.king@gmail.com>
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
In-Reply-To: <20221207095202.2282567-1-colin.i.king@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Colin Ian King, le mer. 07 déc. 2022 09:52:02 +0000, a ecrit:
> There is a spelling mistake in the module parameter description
> for say_word_ctl and an extra space. Fix the spelling mistake and
> remove the extraneous space.
> 
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/main.c b/drivers/accessibility/speakup/main.c
> index 4733fd6334ab..56c073103cbb 100644
> --- a/drivers/accessibility/speakup/main.c
> +++ b/drivers/accessibility/speakup/main.c
> @@ -2490,7 +2490,7 @@ MODULE_PARM_DESC(punc_level, "Controls the level of punctuation spoken as the sc
>  MODULE_PARM_DESC(reading_punc, "It controls the level of punctuation when reviewing the screen with speakup's screen review commands.");
>  MODULE_PARM_DESC(cursor_time, "This controls cursor delay when using arrow keys.");
>  MODULE_PARM_DESC(say_control, "This controls if speakup speaks shift, alt and control when those keys are pressed or not.");
> -MODULE_PARM_DESC(say_word_ctl, "Sets thw say_word_ctl  on load.");
> +MODULE_PARM_DESC(say_word_ctl, "Sets the say_word_ctl on load.");
>  MODULE_PARM_DESC(no_interrupt, "Controls if typing interrupts output from speakup.");
>  MODULE_PARM_DESC(key_echo, "Controls if speakup speaks keys when they are typed. One = on zero = off or don't echo keys.");
>  MODULE_PARM_DESC(cur_phonetic, "Controls if speakup speaks letters phonetically during navigation. One = on zero = off or don't speak phonetically.");
> -- 
> 2.38.1
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

