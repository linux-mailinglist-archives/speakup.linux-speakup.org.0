Return-Path: <speakup+bounces-325-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9C5CF44CDF6
	for <lists+speakup@lfdr.de>; Thu, 11 Nov 2021 00:38:46 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6BF0F38115F; Wed, 10 Nov 2021 18:30:59 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 56E07380A17
	for <lists+speakup@lfdr.de>; Wed, 10 Nov 2021 18:30:59 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 71A94380C02; Wed, 10 Nov 2021 18:30:54 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4C5743809FC
	for <speakup@linux-speakup.org>; Wed, 10 Nov 2021 18:30:54 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 4B5E6259;
	Thu, 11 Nov 2021 00:30:49 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lJ3lmmwPk29I; Thu, 11 Nov 2021 00:30:48 +0100 (CET)
Received: from begin.home (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 084A31F3;
	Thu, 11 Nov 2021 00:30:47 +0100 (CET)
Received: from samy by begin.home with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1mkx3H-005xLf-8g;
	Thu, 11 Nov 2021 00:30:47 +0100
Date: Thu, 11 Nov 2021 00:30:47 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Colin Ian King <colin.i.king@googlemail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: remove redundant assignment of variable i
Message-ID: <20211110233047.iuyndyfae4n3xaef@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Colin Ian King <colin.i.king@googlemail.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
References: <20211110225301.315573-1-colin.i.king@gmail.com>
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
In-Reply-To: <20211110225301.315573-1-colin.i.king@gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: hera
Authentication-Results: hera.aquilenet.fr;
	none
X-Rspamd-Queue-Id: 4B5E6259
X-Spamd-Result: default: False [1.90 / 15.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 FREEMAIL_ENVRCPT(0.00)[gmail.com];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 TAGGED_RCPT(0.00)[];
	 MIME_GOOD(-0.10)[text/plain];
	 HAS_ORG_HEADER(0.00)[];
	 RCVD_COUNT_THREE(0.00)[3];
	 RCPT_COUNT_SEVEN(0.00)[8];
	 FREEMAIL_TO(0.00)[googlemail.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 RCVD_TLS_LAST(0.00)[];
	 FREEMAIL_CC(0.00)[gmail.com,the-brannons.com,reisers.ca,linuxfoundation.org,linux-speakup.org,vger.kernel.org];
	 MID_RHS_NOT_FQDN(0.50)[];
	 SUSPICIOUS_RECIPS(1.50)[]
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Colin Ian King, le mer. 10 nov. 2021 22:53:01 +0000, a ecrit:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The variable i is being initialized a value that is never read, it is
> re-assigned later on in a for-loop.  The assignment is redundant and
> can be removed.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/speakup_acntpc.c | 2 +-
>  drivers/accessibility/speakup/speakup_dtlk.c   | 2 +-
>  drivers/accessibility/speakup/speakup_keypc.c  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/speakup_acntpc.c b/drivers/accessibility/speakup/speakup_acntpc.c
> index c1ec087dca13..023172ca22ef 100644
> --- a/drivers/accessibility/speakup/speakup_acntpc.c
> +++ b/drivers/accessibility/speakup/speakup_acntpc.c
> @@ -247,7 +247,7 @@ static void synth_flush(struct spk_synth *synth)
>  static int synth_probe(struct spk_synth *synth)
>  {
>  	unsigned int port_val = 0;
> -	int i = 0;
> +	int i;
>  
>  	pr_info("Probing for %s.\n", synth->long_name);
>  	if (port_forced) {
> diff --git a/drivers/accessibility/speakup/speakup_dtlk.c b/drivers/accessibility/speakup/speakup_dtlk.c
> index 92838d3ae9eb..a9dd5c45d237 100644
> --- a/drivers/accessibility/speakup/speakup_dtlk.c
> +++ b/drivers/accessibility/speakup/speakup_dtlk.c
> @@ -316,7 +316,7 @@ static struct synth_settings *synth_interrogate(struct spk_synth *synth)
>  static int synth_probe(struct spk_synth *synth)
>  {
>  	unsigned int port_val = 0;
> -	int i = 0;
> +	int i;
>  	struct synth_settings *sp;
>  
>  	pr_info("Probing for DoubleTalk.\n");
> diff --git a/drivers/accessibility/speakup/speakup_keypc.c b/drivers/accessibility/speakup/speakup_keypc.c
> index 311f4aa0be22..1618be87bff1 100644
> --- a/drivers/accessibility/speakup/speakup_keypc.c
> +++ b/drivers/accessibility/speakup/speakup_keypc.c
> @@ -254,7 +254,7 @@ static void synth_flush(struct spk_synth *synth)
>  static int synth_probe(struct spk_synth *synth)
>  {
>  	unsigned int port_val = 0;
> -	int i = 0;
> +	int i;
>  
>  	pr_info("Probing for %s.\n", synth->long_name);
>  	if (port_forced) {
> -- 
> 2.32.0
> 

