Return-Path: <speakup+bounces-749-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AA4985FFC02
	for <lists+speakup@lfdr.de>; Sat, 15 Oct 2022 23:30:22 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49EAB384006; Sat, 15 Oct 2022 17:30:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 348E3383EF3
	for <lists+speakup@lfdr.de>; Sat, 15 Oct 2022 17:30:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32C27383FC8; Sat, 15 Oct 2022 17:30:17 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0C121383EF3
	for <speakup@linux-speakup.org>; Sat, 15 Oct 2022 17:30:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id EA3FB2010E;
	Sat, 15 Oct 2022 23:30:12 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r8jX9eZX9SiD; Sat, 15 Oct 2022 23:30:12 +0200 (CEST)
Received: from begin (lfbn-bor-1-376-208.w109-215.abo.wanadoo.fr [109.215.91.208])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id B0B1A20109;
	Sat, 15 Oct 2022 23:30:12 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1ojojU-001Tsz-1S;
	Sat, 15 Oct 2022 23:30:12 +0200
Date: Sat, 15 Oct 2022 23:30:12 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Osama Muhammad <osmtendev@gmail.com>
Cc: gregkh@linuxfoundation.org, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] Accessiblity: speakup: specifying the default driver
 parameters among the module params
Message-ID: <20221015213012.zctcugroxehxtjim@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Osama Muhammad <osmtendev@gmail.com>, gregkh@linuxfoundation.org,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
References: <20221013223024.22708-1-osmtendev@gmail.com>
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
In-Reply-To: <20221013223024.22708-1-osmtendev@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Osama Muhammad, le ven. 14 oct. 2022 03:30:24 +0500, a ecrit:
> This is an enhancement which allows to specify the default driver
> parameters among the module parameters.
> 
> Adding  default variables to the speakup_soft module
> allows to easily set that at boot, rather than
> setting the sys variables after boot.
> More details can be found here:
> https://github.com/linux-speakup/speakup/issues/7
> 
> Signed-off-by: Osama Muhammad <osmtendev@gmail.com>
> 
> ---
> 
> Changes since v1:
> 	- Added NB_ID as the last member of enum default_vars_id.
> 	- Added NB_ID as the size of array vars.
> 	- Made sure that that the enteries in vars are in correct order.

Thanks!

It looks almost good to me now.

> ---
>  drivers/accessibility/speakup/speakup_soft.c | 57 ++++++++++++++------
>  1 file changed, 42 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/speakup_soft.c b/drivers/accessibility/speakup/speakup_soft.c
> index 28c8f60370cf..5d8e2c1e7f4c 100644
> --- a/drivers/accessibility/speakup/speakup_soft.c
> +++ b/drivers/accessibility/speakup/speakup_soft.c
> @@ -33,21 +33,30 @@ static struct miscdevice synth_device, synthu_device;
>  static int init_pos;
>  static int misc_registered;
>  
> -static struct var_t vars[] = {
> +
> +enum default_vars_id {
> +	DIRECT_ID = 0, CAPS_START_ID, CAPS_STOP_ID,
> +	PAUSE_ID, RATE_ID, PITCH_ID, INFLECTION_ID,
> +	VOL_ID, TONE_ID, PUNCT_ID, VOICE_ID,
> +	FREQUENCY_ID, V_LAST_VAR_ID,
> +	 NB_ID
> +};
> +
> +
> +static struct var_t vars[NB_ID] = {
>  	/* DIRECT is put first so that module_param_named can access it easily */
> -	{ DIRECT, .u.n = {NULL, 0, 0, 1, 0, 0, NULL } },
> -

You can now remove the comment, since now the ordering is not important.

Samuel

