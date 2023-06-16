Return-Path: <speakup+bounces-957-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C87B07333F8
	for <lists+speakup@lfdr.de>; Fri, 16 Jun 2023 16:50:46 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 684DB382372; Fri, 16 Jun 2023 10:50:44 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 53070380FBD
	for <lists+speakup@lfdr.de>; Fri, 16 Jun 2023 10:50:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 499BA382372; Fri, 16 Jun 2023 10:50:39 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 92B78380FE6
	for <speakup@linux-speakup.org>; Fri, 16 Jun 2023 10:50:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 2D6EE20135;
	Fri, 16 Jun 2023 16:50:30 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h_zPkR2w8rQC; Fri, 16 Jun 2023 16:50:30 +0200 (CEST)
Received: from begin (nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr [194.199.1.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 80AA220107;
	Fri, 16 Jun 2023 16:50:29 +0200 (CEST)
Received: from samy by begin with local (Exim 4.96)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1qAAmS-006jR9-2M;
	Fri, 16 Jun 2023 16:50:28 +0200
Date: Fri, 16 Jun 2023 16:50:28 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, kernel@collabora.com,
	kernel-janitors@vger.kernel.org, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] accessibility: speakup: remove linux/version.h
Message-ID: <20230616145028.7rzrbqfj7wmoenj6@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Muhammad Usama Anjum <usama.anjum@collabora.com>,
	William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>, kernel@collabora.com,
	kernel-janitors@vger.kernel.org, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
References: <20230303125152.2030241-1-usama.anjum@collabora.com>
 <fb6121fc-101f-0779-b752-ac8202eb761e@collabora.com>
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
In-Reply-To: <fb6121fc-101f-0779-b752-ac8202eb761e@collabora.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Muhammad Usama Anjum, le ven. 16 juin 2023 17:53:12 +0500, a ecrit:
> Soft reminder.

It somehow hadn't appeared in my inbox.

> On 3/3/23 5:51 PM, Muhammad Usama Anjum wrote:
> > make versioncheck reports the following:
> > ./drivers/accessibility/speakup/genmap.c: 13 linux/version.h not needed.
> > ./drivers/accessibility/speakup/makemapdata.c: 13 linux/version.h not needed.
> > 
> > So remove linux/version.h from both of these files.
> > 
> > Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Thanks!

> > ---
> >  drivers/accessibility/speakup/genmap.c      | 1 -
> >  drivers/accessibility/speakup/makemapdata.c | 1 -
> >  2 files changed, 2 deletions(-)
> > 
> > diff --git a/drivers/accessibility/speakup/genmap.c b/drivers/accessibility/speakup/genmap.c
> > index 0125000e00d9..0882bab10fb8 100644
> > --- a/drivers/accessibility/speakup/genmap.c
> > +++ b/drivers/accessibility/speakup/genmap.c
> > @@ -10,7 +10,6 @@
> >  #include <stdio.h>
> >  #include <libgen.h>
> >  #include <string.h>
> > -#include <linux/version.h>
> >  #include <ctype.h>
> >  #include "utils.h"
> >  
> > diff --git a/drivers/accessibility/speakup/makemapdata.c b/drivers/accessibility/speakup/makemapdata.c
> > index d7d41bb9b05f..55e4ef8a93dc 100644
> > --- a/drivers/accessibility/speakup/makemapdata.c
> > +++ b/drivers/accessibility/speakup/makemapdata.c
> > @@ -10,7 +10,6 @@
> >  #include <stdio.h>
> >  #include <libgen.h>
> >  #include <string.h>
> > -#include <linux/version.h>
> >  #include <ctype.h>
> >  #include "utils.h"
> >  
> 
> -- 
> BR,
> Muhammad Usama Anjum
> 

-- 
Samuel
---
Pour une évaluation indépendante, transparente et rigoureuse !
Je soutiens la Commission d'Évaluation de l'Inria.

