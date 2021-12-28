Return-Path: <speakup+bounces-350-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6EB34480D33
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 22:14:35 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=oxX6kZQI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D0ED3811BB; Tue, 28 Dec 2021 16:14:35 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E05F4381162
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 16:14:34 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D277381162; Tue, 28 Dec 2021 16:14:29 -0500 (EST)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CD1A138115B
	for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 16:14:28 -0500 (EST)
Received: by mail-lf1-f47.google.com with SMTP id bq20so43787498lfb.4
        for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 13:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nNMyU/NuWb7hjwfS0Dxs7lImJknkxrWNu2QUZ2gXtLw=;
        b=oxX6kZQIqMn3ZBTY8IxO7jBpIfxX/jUdJ2lo/JDdkOwcAspZFEXuhC3Hfi6CBhj7Vx
         HUcLkssAwc32qVjwvsnrfaQZ5ytusgtcIek0cySiwyg9kKjEGelKcEzAvBosk7LNsKNa
         9OhOZiYdsNLGBvD6FVW5s5QD5XKL+lTbD6hPeBxjljqhJKPENUz2Fnl2npy/fSbbAay4
         8FMCwrpivTlL/cJMazuImgyvmlhGMWd/7lJq0txOy0uckZd9Xun5TJ78y5+H6tYu32v/
         ThMOgEGwiGRUojNTWHTHD6uKDXZMQGxrHQ7pnLByBk2S6afHmc/igyY7LMY5+onIDeuk
         V+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nNMyU/NuWb7hjwfS0Dxs7lImJknkxrWNu2QUZ2gXtLw=;
        b=08YCiXcXekxPOuIggmESbwSfvB2nIapbQprGzJgjDDI+5WlGoikV6a9JR993DXppYs
         qRq1xZOzCdCwsFLjok6n1ugXnkv1sXxZCfS2rwmnkdj0jdIvH4JwgeveDi3CCRNLIreo
         PEZNfzX74xx4swOWtvSiTTM6FbVx9Vgc/HB/vXAFOLarRkHgXYjCB835NLWH8OTy4+Cz
         DRSh9pMjfSvMSL99ni2J9GBCyAVJ+kgUxt27mEXztNtXMmntHKS4aoURrBq459X/W1di
         Vw9KzwSK5X1K5emzQHqPG6NhyOCA/U/nbKVypowOjcdpitn3IqQOlR9WqHc99sST3SNe
         9RUw==
X-Gm-Message-State: AOAM531d4FLF1m25j9DO3NHzYIiF310DDameqRGRozVm2rOl2ZImSNjA
	Sx9cWItns18bxgoSt0HZygo=
X-Google-Smtp-Source: ABdhPJymkK4N180RnPILtcpITqan+ojLfqAVod5R9l03AhGSWRTub5Ds2orDVo5MQP9p+04E/B7rQA==
X-Received: by 2002:a05:6512:33c3:: with SMTP id d3mr20629131lfg.614.1640726005404;
        Tue, 28 Dec 2021 13:13:25 -0800 (PST)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id t19sm2018258lfq.79.2021.12.28.13.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 13:13:25 -0800 (PST)
Date: Wed, 29 Dec 2021 00:13:23 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Didier Spaier <didier@slint.fr>
Cc: Janina Sajka <janina@rednote.net>, speakup@linux-speakup.org
Subject: Re: Now Fixed: Archlinux Speakup problems after alsa package upgrade
Message-ID: <20211228211323.3f2uhc6hblud4h3a@alex-pc>
References: <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <YcNUgwlCFtiAmY3Q@rednote.net>
 <3cefe3e6-f95a-ffe9-5995-543d6e4357db@jasonjgw.net>
 <Ycs60ClBq1jcVDuF@rednote.net>
 <055e3d2d-0653-3edc-4879-484816734d00@slint.fr>
 <YctqoKAZIKdSZH9f@rednote.net>
 <86d02e30-71fc-50bd-2408-6c658ec2da29@slint.fr>
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
In-Reply-To: <86d02e30-71fc-50bd-2408-6c658ec2da29@slint.fr>
User-Agent: NeoMutt/20211029
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Tue, Dec 28, 2021 at 09:15:07PM +0100, Didier Spaier wrote:
> On 28/12/2021 20:50, Janina Sajka wrote:
> > Didier Spaier writes:
> >> Hi Janina and all,
> >>
> >> On 28/12/2021 17:26, Janina Sajka wrote:
> >>> ...
> >>>
> >>> Apparently there must be some kind of reason why Espeakup can't be
> >>> agnostic between espeak and espeak-ng?
> >>
> >> espeakup is linked against the shared library installed at time of building it.
> >>
> >> Here:
> >> dance[~]$ ldd /usr/bin/espeakup | grep libespeak
> >> 	libespeak-ng.so.1 => /usr/lib64/libespeak-ng.so.1 (0x00007f290df83000)
> >>
> > Thanks, Didier. This does make sense.
> >
> >> My guess is you will find libespeak.so.1 instead running the same command.
> >>
> >> So you need to rebuild espeakup-0.90 after having removed espeak and installed
> >> espeak-ng only.
> >>
> > Are you saying I need to run ldd by hand? I thought the installation
> > process upgrading from 80 to 90 would take care of the ldd?
>
> ldd just gives an information about the dependencies. As its man page says:
>
> ldd  prints the shared objects (shared libraries) required by each program or
> shared object specified on the command line.
>
> During the installation process maybe the program in Arch that performs the
> installation checks the presence of the required dependency (probably not using
> ldd but rather according to the information recorded in some file by the packager).
>
> If so and if my assumption is correct:
> 1) When the packager built espeakup, espeak (not espeak-ng) was installed.
> 2) you can check this running the above ldd command
> 3) therefore espeakup can't use easpeak-ng, only easpeak.

espeakup 0.90 linked with espeak-ng in arch.

> > It's true I did not run an ldd when I tried to upgrade my older machine
> > to espeak-ng and espeakup-0.90.
>
> In any case you need to rebuild espeakup-0.90 against espeak-ng. How to do that

no need to do that.
Janina are you using pipewire on box with not working espeakup?
currently espeakup hasn't work with pw. I haven't found time to debug this yet.
sorry.

--
Sincerely, Alexander

