Return-Path: <speakup+bounces-245-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6EDED3CB46E
	for <lists+speakup@lfdr.de>; Fri, 16 Jul 2021 10:36:22 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3021E380E82; Fri, 16 Jul 2021 04:36:21 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1B397380995
	for <lists+speakup@lfdr.de>; Fri, 16 Jul 2021 04:36:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3983B3809DA; Fri, 16 Jul 2021 04:36:16 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 13C1A380995
	for <speakup@linux-speakup.org>; Fri, 16 Jul 2021 04:36:16 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id B0AFA18F;
	Fri, 16 Jul 2021 10:36:11 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1XaCM_XW938B; Fri, 16 Jul 2021 10:36:11 +0200 (CEST)
Received: from begin (unknown [90.96.30.46])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id F103D164;
	Fri, 16 Jul 2021 10:36:10 +0200 (CEST)
Received: from samy by begin with local (Exim 4.94.2)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1m4JK4-0001iR-TD; Fri, 16 Jul 2021 10:35:52 +0200
Date: Fri, 16 Jul 2021 10:35:47 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Colin King <colin.king@canonical.com>
Cc: array@sonata.ens-lyon.org, initializers@sonata.ens-lyon.org,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: use C99 syntax for array initializers
Message-ID: <20210716083547.sm5uzd2wsklb65f5@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Colin King <colin.king@canonical.com>, array@sonata.ens-lyon.org,
	initializers@sonata.ens-lyon.org,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
References: <20210715163122.62220-1-colin.king@canonical.com>
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
In-Reply-To: <20210715163122.62220-1-colin.king@canonical.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Spamd-Bar: --
Authentication-Results: hera.aquilenet.fr
X-Rspamd-Server: hera
X-Rspamd-Queue-Id: B0AFA18F
X-Spamd-Result: default: False [-2.50 / 15.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 MIME_GOOD(-0.10)[text/plain];
	 HAS_ORG_HEADER(0.00)[];
	 RCVD_COUNT_THREE(0.00)[3];
	 RCPT_COUNT_SEVEN(0.00)[9];
	 RCVD_NO_TLS_LAST(0.10)[];
	 FROM_EQ_ENVFROM(0.00)[];
	 MID_RHS_NOT_FQDN(0.50)[];
	 BAYES_HAM(-3.00)[100.00%]
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Colin King, le jeu. 15 juil. 2021 17:31:22 +0100, a ecrit:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The older obsolete array initializer syntax is currently being used
> for some of the array elements. Fix this by using the preferred C99
> array initializers syntax.
> 
> Fixes: 5b5140bf5182 ("speakup: Separate out translations for bright colors names")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/i18n.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/i18n.c b/drivers/accessibility/speakup/i18n.c
> index bc7b47d1876f..d62079b1661f 100644
> --- a/drivers/accessibility/speakup/i18n.c
> +++ b/drivers/accessibility/speakup/i18n.c
> @@ -90,13 +90,13 @@ static char *speakup_default_msgs[MSG_LAST_INDEX] = {
>  	[MSG_COLOR_YELLOW] = "yellow",
>  	[MSG_COLOR_WHITE] = "white",
>  	[MSG_COLOR_GREY] = "grey",
> -	[MSG_COLOR_BRIGHTBLUE] "bright blue",
> -	[MSG_COLOR_BRIGHTGREEN] "bright green",
> -	[MSG_COLOR_BRIGHTCYAN] "bright cyan",
> -	[MSG_COLOR_BRIGHTRED] "bright red",
> -	[MSG_COLOR_BRIGHTMAGENTA] "bright magenta",
> -	[MSG_COLOR_BRIGHTYELLOW] "bright yellow",
> -	[MSG_COLOR_BRIGHTWHITE] "bright white",
> +	[MSG_COLOR_BRIGHTBLUE] = "bright blue",
> +	[MSG_COLOR_BRIGHTGREEN] = "bright green",
> +	[MSG_COLOR_BRIGHTCYAN] = "bright cyan",
> +	[MSG_COLOR_BRIGHTRED] = "bright red",
> +	[MSG_COLOR_BRIGHTMAGENTA] = "bright magenta",
> +	[MSG_COLOR_BRIGHTYELLOW] = "bright yellow",
> +	[MSG_COLOR_BRIGHTWHITE] = "bright white",
>  
>  	/* Names of key states. */
>  	[MSG_STATE_DOUBLE] = "double",
> -- 
> 2.31.1
> 

