Return-Path: <speakup+bounces-926-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 109A66E5049
	for <lists+speakup@lfdr.de>; Mon, 17 Apr 2023 20:33:39 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B7C3F38292D; Mon, 17 Apr 2023 14:33:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A405F382762
	for <lists+speakup@lfdr.de>; Mon, 17 Apr 2023 14:33:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7C5AE3827C9; Mon, 17 Apr 2023 14:33:31 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 45F1E3806EB
	for <speakup@linux-speakup.org>; Mon, 17 Apr 2023 14:33:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 19C5B20161;
	Mon, 17 Apr 2023 20:33:29 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hr61X2M0I_RQ; Mon, 17 Apr 2023 20:33:28 +0200 (CEST)
Received: from begin.home (apoitiers-658-1-118-253.w92-162.abo.wanadoo.fr [92.162.65.253])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 69A5720147;
	Mon, 17 Apr 2023 20:33:27 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1poTfK-005f4r-2Z;
	Mon, 17 Apr 2023 20:33:26 +0200
Date: Mon, 17 Apr 2023 20:33:26 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Colin Ian King <colin.i.king@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: Fix spelling mistake "windo" -> "window"
Message-ID: <20230417183326.ylyd5xpog7dydw55@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Colin Ian King <colin.i.king@gmail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230417183203.54388-1-colin.i.king@gmail.com>
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
In-Reply-To: <20230417183203.54388-1-colin.i.king@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Colin Ian King, le lun. 17 avril 2023 19:32:03 +0100, a ecrit:
> There is a spelling mistake in a literal string. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/i18n.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/i18n.c b/drivers/accessibility/speakup/i18n.c
> index d62079b1661f..554bf81f2c1c 100644
> --- a/drivers/accessibility/speakup/i18n.c
> +++ b/drivers/accessibility/speakup/i18n.c
> @@ -31,7 +31,7 @@ static char *speakup_default_msgs[MSG_LAST_INDEX] = {
>  	[MSG_CURSORING_OFF] = "cursoring off",
>  	[MSG_CURSORING_ON] = "cursoring on",
>  	[MSG_HIGHLIGHT_TRACKING] = "highlight tracking",
> -	[MSG_READ_WINDOW] = "read windo",
> +	[MSG_READ_WINDOW] = "read window",
>  	[MSG_READ_ALL] = "read all",
>  	[MSG_EDIT_DONE] = "edit done",
>  	[MSG_WINDOW_ALREADY_SET] = "window already set, clear then reset",
> -- 
> 2.30.2
> 

