Return-Path: <speakup+bounces-1175-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5750C94FE67
	for <lists+speakup@lfdr.de>; Tue, 13 Aug 2024 09:08:42 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6426D382713; Tue, 13 Aug 2024 03:08:38 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5246638207A
	for <lists+speakup@lfdr.de>; Tue, 13 Aug 2024 03:08:38 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8D1EA3820B5; Tue, 13 Aug 2024 03:08:34 -0400 (EDT)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 68AF538207A
	for <speakup@linux-speakup.org>; Tue, 13 Aug 2024 03:08:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id B9BA7A02C0;
	Tue, 13 Aug 2024 09:08:31 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k2IvdH6c2ZxE; Tue, 13 Aug 2024 09:08:31 +0200 (CEST)
Received: from begin (202.250.133.77.rev.sfr.net [77.133.250.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 19763A02BF;
	Tue, 13 Aug 2024 09:08:29 +0200 (CEST)
Received: from samy by begin with local (Exim 4.98)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1sdlds-00000004AHp-0gDD;
	Tue, 13 Aug 2024 09:08:28 +0200
Date: Tue, 13 Aug 2024 09:08:28 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: bajing <bajing@cmss.chinamobile.com>
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] speakup: genmap: remove redundant post-increment
Message-ID: <20240813070828.65yluzkszaurva5f@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	bajing <bajing@cmss.chinamobile.com>, w.d.hubbs@gmail.com,
	chris@the-brannons.com, kirk@reisers.ca, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20240813031753.5902-1-bajing@cmss.chinamobile.com>
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
In-Reply-To: <20240813031753.5902-1-bajing@cmss.chinamobile.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

bajing, le mar. 13 août 2024 11:17:53 +0800, a ecrit:
> In the while loop, the variable lc is unused and is reinitialized later, so this redundant operation should be removed.
> 
> Signed-off-by: bajing <bajing@cmss.chinamobile.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/genmap.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/accessibility/speakup/genmap.c b/drivers/accessibility/speakup/genmap.c
> index 0125000e00d9..836276327bdd 100644
> --- a/drivers/accessibility/speakup/genmap.c
> +++ b/drivers/accessibility/speakup/genmap.c
> @@ -72,7 +72,6 @@ main(int argc, char *argv[])
>  
>  	open_input(NULL, argv[1]);
>  	while (fgets(buffer, sizeof(buffer), infile)) {
> -		lc++;
>  		value = shift_state = 0;
>  
>  		cp = strtok(buffer, delims);
> -- 
> 2.33.0

