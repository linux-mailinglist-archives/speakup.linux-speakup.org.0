Return-Path: <speakup+bounces-1177-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9A990951421
	for <lists+speakup@lfdr.de>; Wed, 14 Aug 2024 08:01:17 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 39A553830C3; Wed, 14 Aug 2024 02:01:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 254C83825D2
	for <lists+speakup@lfdr.de>; Wed, 14 Aug 2024 02:01:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4D3A73823A9; Wed, 14 Aug 2024 02:01:13 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8DECA3820D0
	for <speakup@linux-speakup.org>; Wed, 14 Aug 2024 02:01:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 93568A03A1;
	Wed, 14 Aug 2024 08:01:10 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1_HODT1NJdd; Wed, 14 Aug 2024 08:01:10 +0200 (CEST)
Received: from begin.home (apoitiers-658-1-118-253.w92-162.abo.wanadoo.fr [92.162.65.253])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 536CAA039F;
	Wed, 14 Aug 2024 08:01:10 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.98)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1se74H-000000072JD-3ON0;
	Wed, 14 Aug 2024 08:01:09 +0200
Date: Wed, 14 Aug 2024 08:01:09 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: bajing <bajing@cmss.chinamobile.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	nicolas@fjasle.eu, masahiroy@kernel.org, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: genmap: initialization the variable
Message-ID: <20240814060109.sh34huizfjramdce@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	bajing <bajing@cmss.chinamobile.com>, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, nicolas@fjasle.eu,
	masahiroy@kernel.org, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20240814030243.2138-1-bajing@cmss.chinamobile.com>
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
In-Reply-To: <20240814030243.2138-1-bajing@cmss.chinamobile.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

bajing, le mer. 14 août 2024 11:02:43 +0800, a ecrit:
> The variable lc is not initialized before use, so the initialization operation on it is added.
> 
> Signed-off-by: bajing <bajing@cmss.chinamobile.com>
> ---
>  drivers/accessibility/speakup/genmap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/genmap.c b/drivers/accessibility/speakup/genmap.c
> index 0882bab10fb8..a1ea0ce45c20 100644
> --- a/drivers/accessibility/speakup/genmap.c
> +++ b/drivers/accessibility/speakup/genmap.c
> @@ -48,7 +48,7 @@ static int get_shift_value(int state)
>  int
>  main(int argc, char *argv[])
>  {
> -	int value, shift_state, i, spk_val = 0, lock_val = 0;
> +	int value, shift_state, i, lc, spk_val = 0, lock_val = 0;

You have already sent a patch that does drop the use before
initialization.

Samuel

>  	int max_key_used = 0, num_keys_used = 0;
>  	struct st_key *this;
>  	struct st_key_init *p_init;
> -- 
> 2.33.0
> 
> 
> 

-- 
Samuel
 Cliquez sur le lien qui suit dans ce mail...vous n'avez plus qu'a vous
 inscrire pour gagner de l'argent en restant connecte....et puis faites
 passer le message et vous gagnerez encore plus d'argent ...
 -+- AC in NPC : Neuneu a rencontré le Pere Noël -+-

