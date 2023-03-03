Return-Path: <speakup+bounces-924-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C89676A9848
	for <lists+speakup@lfdr.de>; Fri,  3 Mar 2023 14:23:11 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9D41F38370A; Fri,  3 Mar 2023 08:23:10 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 89A4D382804
	for <lists+speakup@lfdr.de>; Fri,  3 Mar 2023 08:23:10 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 747C0382938; Fri,  3 Mar 2023 08:23:05 -0500 (EST)
Received: from sonata.ens-lyon.org (sonata.ens-lyon.org [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 361DC382804
	for <speakup@linux-speakup.org>; Fri,  3 Mar 2023 08:23:05 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 7BF9820149;
	Fri,  3 Mar 2023 14:23:01 +0100 (CET)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qQ-QzzLQ2TTo; Fri,  3 Mar 2023 14:23:01 +0100 (CET)
Received: from begin (unknown [77.241.232.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id E58C520146;
	Fri,  3 Mar 2023 14:22:59 +0100 (CET)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1pY5ND-009i2p-1A;
	Fri, 03 Mar 2023 14:22:59 +0100
Date: Fri, 3 Mar 2023 14:22:59 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, kernel@collabora.com,
	kernel-janitors@vger.kernel.org, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] accessibility: speakup: remove linux/version.h
Message-ID: <20230303132259.u25cnuh5u6d47koo@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Muhammad Usama Anjum <usama.anjum@collabora.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, kernel@collabora.com,
	kernel-janitors@vger.kernel.org, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20230303125152.2030241-1-usama.anjum@collabora.com>
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
In-Reply-To: <20230303125152.2030241-1-usama.anjum@collabora.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Muhammad Usama Anjum, le ven. 03 mars 2023 17:51:51 +0500, a ecrit:
> make versioncheck reports the following:
> ./drivers/accessibility/speakup/genmap.c: 13 linux/version.h not needed.
> ./drivers/accessibility/speakup/makemapdata.c: 13 linux/version.h not needed.
> 
> So remove linux/version.h from both of these files.
> 
> Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> ---
>  drivers/accessibility/speakup/genmap.c      | 1 -
>  drivers/accessibility/speakup/makemapdata.c | 1 -
>  2 files changed, 2 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/genmap.c b/drivers/accessibility/speakup/genmap.c
> index 0125000e00d9..0882bab10fb8 100644
> --- a/drivers/accessibility/speakup/genmap.c
> +++ b/drivers/accessibility/speakup/genmap.c
> @@ -10,7 +10,6 @@
>  #include <stdio.h>
>  #include <libgen.h>
>  #include <string.h>
> -#include <linux/version.h>
>  #include <ctype.h>
>  #include "utils.h"
>  
> diff --git a/drivers/accessibility/speakup/makemapdata.c b/drivers/accessibility/speakup/makemapdata.c
> index d7d41bb9b05f..55e4ef8a93dc 100644
> --- a/drivers/accessibility/speakup/makemapdata.c
> +++ b/drivers/accessibility/speakup/makemapdata.c
> @@ -10,7 +10,6 @@
>  #include <stdio.h>
>  #include <libgen.h>
>  #include <string.h>
> -#include <linux/version.h>
>  #include <ctype.h>
>  #include "utils.h"
>  
> -- 
> 2.39.2
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

