Return-Path: <speakup+bounces-379-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 46BDF4EB46A
	for <lists+speakup@lfdr.de>; Tue, 29 Mar 2022 22:04:50 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 11F6B380D1F; Tue, 29 Mar 2022 16:04:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 043FC3810C3
	for <lists+speakup@lfdr.de>; Tue, 29 Mar 2022 16:04:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C381B380B3C; Tue, 29 Mar 2022 16:04:45 -0400 (EDT)
Received: from sonata.ens-lyon.org (domu-toccata.ens-lyon.fr [140.77.166.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9A3E9380B0C
	for <speakup@linux-speakup.org>; Tue, 29 Mar 2022 16:04:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by sonata.ens-lyon.org (Postfix) with ESMTP id 5A23B20148;
	Tue, 29 Mar 2022 22:04:37 +0200 (CEST)
Received: from sonata.ens-lyon.org ([127.0.0.1])
	by localhost (sonata.ens-lyon.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BvxpySn1s-lA; Tue, 29 Mar 2022 22:04:37 +0200 (CEST)
Received: from begin.home (lfbn-bor-1-255-114.w90-50.abo.wanadoo.fr [90.50.98.114])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by sonata.ens-lyon.org (Postfix) with ESMTPSA id 2321320147;
	Tue, 29 Mar 2022 22:04:36 +0200 (CEST)
Received: from samy by begin.home with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1nZI4x-007cxL-MZ;
	Tue, 29 Mar 2022 22:04:35 +0200
Date: Tue, 29 Mar 2022 22:04:35 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: trix@redhat.com
Cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca,
	colin.i.king@googlemail.com, gregkh@linuxfoundation.org,
	salah.triki@gmail.com, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] accessiblity: speakup: cleanup comments
Message-ID: <20220329200435.lxunh3qcz7w2fsmh@begin>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
	trix@redhat.com, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, colin.i.king@googlemail.com,
	gregkh@linuxfoundation.org, salah.triki@gmail.com,
	speakup@linux-speakup.org, linux-kernel@vger.kernel.org
References: <20220329195401.3220408-1-trix@redhat.com>
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
In-Reply-To: <20220329195401.3220408-1-trix@redhat.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

trix@redhat.com, le mar. 29 mars 2022 12:54:01 -0700, a ecrit:
> From: Tom Rix <trix@redhat.com>
> 
> Replace for spelling
> keypresses to key presses
> bytesize to byte size
> specificly to specifically
> 
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/accessibility/speakup/fakekey.c        | 4 ++--
>  drivers/accessibility/speakup/serialio.c       | 2 +-
>  drivers/accessibility/speakup/speakup_acntpc.c | 2 +-
>  drivers/accessibility/speakup/speakup_acntsa.c | 2 +-
>  drivers/accessibility/speakup/speakup_apollo.c | 2 +-
>  drivers/accessibility/speakup/speakup_audptr.c | 2 +-
>  drivers/accessibility/speakup/speakup_bns.c    | 2 +-
>  drivers/accessibility/speakup/speakup_decext.c | 2 +-
>  drivers/accessibility/speakup/speakup_dectlk.c | 2 +-
>  drivers/accessibility/speakup/speakup_dtlk.c   | 2 +-
>  drivers/accessibility/speakup/speakup_dummy.c  | 2 +-
>  drivers/accessibility/speakup/speakup_keypc.c  | 2 +-
>  drivers/accessibility/speakup/speakup_ltlk.c   | 2 +-
>  drivers/accessibility/speakup/speakup_soft.c   | 2 +-
>  drivers/accessibility/speakup/speakup_spkout.c | 2 +-
>  drivers/accessibility/speakup/speakup_txprt.c  | 2 +-
>  16 files changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/accessibility/speakup/fakekey.c b/drivers/accessibility/speakup/fakekey.c
> index cd029968462f..868c47b2a59b 100644
> --- a/drivers/accessibility/speakup/fakekey.c
> +++ b/drivers/accessibility/speakup/fakekey.c
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0+
>  /* fakekey.c
> - * Functions for simulating keypresses.
> + * Functions for simulating key presses.
>   *
>   * Copyright (C) 2010 the Speakup Team
>   */
> @@ -78,7 +78,7 @@ void speakup_fake_down_arrow(void)
>  }
>  
>  /*
> - * Are we handling a simulated keypress on the current CPU?
> + * Are we handling a simulated key press on the current CPU?
>   * Returns a boolean.
>   */
>  bool speakup_fake_key_pressed(void)
> diff --git a/drivers/accessibility/speakup/serialio.c b/drivers/accessibility/speakup/serialio.c
> index 53580bdc5baa..3418ea31d28f 100644
> --- a/drivers/accessibility/speakup/serialio.c
> +++ b/drivers/accessibility/speakup/serialio.c
> @@ -59,7 +59,7 @@ const struct old_serial_port *spk_serial_init(int index)
>  	}
>  	ser = rs_table + index;
>  
> -	/*	Divisor, bytesize and parity */
> +	/*	Divisor, byte size and parity */
>  	quot = ser->baud_base / baud;
>  	cval = cflag & (CSIZE | CSTOPB);
>  #if defined(__powerpc__) || defined(__alpha__)
> diff --git a/drivers/accessibility/speakup/speakup_acntpc.c b/drivers/accessibility/speakup/speakup_acntpc.c
> index 023172ca22ef..a55b60754eb1 100644
> --- a/drivers/accessibility/speakup/speakup_acntpc.c
> +++ b/drivers/accessibility/speakup/speakup_acntpc.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * this code is specificly written as a driver for the speakup screenreview
> + * this code is specifically written as a driver for the speakup screenreview
>   * package and is not a general device driver.
>   * This driver is for the Aicom Acent PC internal synthesizer.
>   */
> diff --git a/drivers/accessibility/speakup/speakup_acntsa.c b/drivers/accessibility/speakup/speakup_acntsa.c
> index 3a863dc61286..2697c51ed6b5 100644
> --- a/drivers/accessibility/speakup/speakup_acntsa.c
> +++ b/drivers/accessibility/speakup/speakup_acntsa.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * this code is specificly written as a driver for the speakup screenreview
> + * this code is specifically written as a driver for the speakup screenreview
>   * package and is not a general device driver.
>   */
>  
> diff --git a/drivers/accessibility/speakup/speakup_apollo.c b/drivers/accessibility/speakup/speakup_apollo.c
> index cd63581b2e99..c84a7e0864b7 100644
> --- a/drivers/accessibility/speakup/speakup_apollo.c
> +++ b/drivers/accessibility/speakup/speakup_apollo.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * this code is specificly written as a driver for the speakup screenreview
> + * this code is specifically written as a driver for the speakup screenreview
>   * package and is not a general device driver.
>   */
>  #include <linux/jiffies.h>
> diff --git a/drivers/accessibility/speakup/speakup_audptr.c b/drivers/accessibility/speakup/speakup_audptr.c
> index a0c3b8ae17a1..4d16d60db9b2 100644
> --- a/drivers/accessibility/speakup/speakup_audptr.c
> +++ b/drivers/accessibility/speakup/speakup_audptr.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * specificly written as a driver for the speakup screenreview
> + * specifically written as a driver for the speakup screenreview
>   * s not a general device driver.
>   */
>  #include "spk_priv.h"
> diff --git a/drivers/accessibility/speakup/speakup_bns.c b/drivers/accessibility/speakup/speakup_bns.c
> index 76dfa3f7c058..b8103eb117b8 100644
> --- a/drivers/accessibility/speakup/speakup_bns.c
> +++ b/drivers/accessibility/speakup/speakup_bns.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * this code is specificly written as a driver for the speakup screenreview
> + * this code is specifically written as a driver for the speakup screenreview
>   * package and is not a general device driver.
>   */
>  #include "spk_priv.h"
> diff --git a/drivers/accessibility/speakup/speakup_decext.c b/drivers/accessibility/speakup/speakup_decext.c
> index 092cfd08a9e1..eaebf62300a4 100644
> --- a/drivers/accessibility/speakup/speakup_decext.c
> +++ b/drivers/accessibility/speakup/speakup_decext.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * specificly written as a driver for the speakup screenreview
> + * specifically written as a driver for the speakup screenreview
>   * s not a general device driver.
>   */
>  #include <linux/jiffies.h>
> diff --git a/drivers/accessibility/speakup/speakup_dectlk.c b/drivers/accessibility/speakup/speakup_dectlk.c
> index 78ca4987e619..2a7e8d727904 100644
> --- a/drivers/accessibility/speakup/speakup_dectlk.c
> +++ b/drivers/accessibility/speakup/speakup_dectlk.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * specificly written as a driver for the speakup screenreview
> + * specifically written as a driver for the speakup screenreview
>   * s not a general device driver.
>   */
>  #include <linux/unistd.h>
> diff --git a/drivers/accessibility/speakup/speakup_dtlk.c b/drivers/accessibility/speakup/speakup_dtlk.c
> index a9dd5c45d237..6f01e010aaf4 100644
> --- a/drivers/accessibility/speakup/speakup_dtlk.c
> +++ b/drivers/accessibility/speakup/speakup_dtlk.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * specificly written as a driver for the speakup screenreview
> + * specifically written as a driver for the speakup screenreview
>   * package it's not a general device driver.
>   * This driver is for the RC Systems DoubleTalk PC internal synthesizer.
>   */
> diff --git a/drivers/accessibility/speakup/speakup_dummy.c b/drivers/accessibility/speakup/speakup_dummy.c
> index 63c2f2943282..34f11cd47073 100644
> --- a/drivers/accessibility/speakup/speakup_dummy.c
> +++ b/drivers/accessibility/speakup/speakup_dummy.c
> @@ -8,7 +8,7 @@
>   * Copyright (C) 2003 David Borowski.
>   * Copyright (C) 2007, 2022 Samuel Thibault.
>   *
> - * specificly written as a driver for the speakup screenreview
> + * specifically written as a driver for the speakup screenreview
>   * s not a general device driver.
>   */
>  #include "spk_priv.h"
> diff --git a/drivers/accessibility/speakup/speakup_keypc.c b/drivers/accessibility/speakup/speakup_keypc.c
> index 1618be87bff1..f61b62f1ea4d 100644
> --- a/drivers/accessibility/speakup/speakup_keypc.c
> +++ b/drivers/accessibility/speakup/speakup_keypc.c
> @@ -4,7 +4,7 @@
>   *
>   * Copyright (C) 2003 David Borowski.
>   *
> - * specificly written as a driver for the speakup screenreview
> + * specifically written as a driver for the speakup screenreview
>   * package it's not a general device driver.
>   * This driver is for the Keynote Gold internal synthesizer.
>   */
> diff --git a/drivers/accessibility/speakup/speakup_ltlk.c b/drivers/accessibility/speakup/speakup_ltlk.c
> index 3e59b387d0c4..f885cfaa27c8 100644
> --- a/drivers/accessibility/speakup/speakup_ltlk.c
> +++ b/drivers/accessibility/speakup/speakup_ltlk.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * specificly written as a driver for the speakup screenreview
> + * specifically written as a driver for the speakup screenreview
>   * s not a general device driver.
>   */
>  #include "speakup.h"
> diff --git a/drivers/accessibility/speakup/speakup_soft.c b/drivers/accessibility/speakup/speakup_soft.c
> index 19824e7006fe..1ced2721513e 100644
> --- a/drivers/accessibility/speakup/speakup_soft.c
> +++ b/drivers/accessibility/speakup/speakup_soft.c
> @@ -5,7 +5,7 @@
>   *
>   * Copyright (C) 2003  Kirk Reiser.
>   *
> - * this code is specificly written as a driver for the speakup screenreview
> + * this code is specifically written as a driver for the speakup screenreview
>   * package and is not a general device driver.
>   */
>  
> diff --git a/drivers/accessibility/speakup/speakup_spkout.c b/drivers/accessibility/speakup/speakup_spkout.c
> index bd3d8dc300ff..5e3bb3aa98b6 100644
> --- a/drivers/accessibility/speakup/speakup_spkout.c
> +++ b/drivers/accessibility/speakup/speakup_spkout.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * specificly written as a driver for the speakup screenreview
> + * specifically written as a driver for the speakup screenreview
>   * s not a general device driver.
>   */
>  #include "spk_priv.h"
> diff --git a/drivers/accessibility/speakup/speakup_txprt.c b/drivers/accessibility/speakup/speakup_txprt.c
> index a7326f226a5e..9e781347f7eb 100644
> --- a/drivers/accessibility/speakup/speakup_txprt.c
> +++ b/drivers/accessibility/speakup/speakup_txprt.c
> @@ -6,7 +6,7 @@
>   * Copyright (C) 1998-99  Kirk Reiser.
>   * Copyright (C) 2003 David Borowski.
>   *
> - * specificly written as a driver for the speakup screenreview
> + * specifically written as a driver for the speakup screenreview
>   * s not a general device driver.
>   */
>  #include "spk_priv.h"
> -- 
> 2.26.3
> 

