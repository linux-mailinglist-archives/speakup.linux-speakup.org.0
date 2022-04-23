Return-Path: <speakup+bounces-404-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E501550CBCB
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 17:27:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=PBVrJ6Kl;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 866B4380D0E; Sat, 23 Apr 2022 11:27:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 72CB1380B0C
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 11:27:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA9D7380D06; Sat, 23 Apr 2022 11:27:03 -0400 (EDT)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D23DC380957
	for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 11:27:03 -0400 (EDT)
Received: by mail-ed1-f41.google.com with SMTP id a1so8085348edt.3
        for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 08:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lmdMYHRWw/LoL18PG+ia4bYe9w7SMzJ8d8CPRghAOLU=;
        b=PBVrJ6Kl3tBP5olQfuE9ZHsPocNNx03CG6q//juKsDNnbgALJ52b9vNZGtsBvh93rf
         YeJVvXZv12s46tJh4axsioiT0G5d8qpKMB/B/9O2c0gnU5xIC9YLqaex5cGjtcQGtHV1
         v4/XE2DIx4FSdHTKU6bbynR1OyEFQor/RVZQQfJaJVVSU+1lgLGILeu/wXWa7r1vquiO
         WaL3ZQXhEpJawBD4XgmQSpJxzoB1mM9RStVQxLqGp1AqDQmZK9uA91ZYHBn58OJGFgDf
         Upt13urLOAFjU4aqxpc+XpPkbgvbq8bqWh3fqzc+PfYdhQAWlohMCPGkaA3eXGFAV5l3
         3aPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lmdMYHRWw/LoL18PG+ia4bYe9w7SMzJ8d8CPRghAOLU=;
        b=CtcrH8C00537wxwfEGrmX2CMpf6BcfBpeYU0lOZ5yJOEfbuEOWiFSE0i8sPsJ6H9Py
         ukp1ge/KFggomU2/X0+Ool6rKf0UA1sPbPNUTrF5Q3xb9Q6Pikxm0MAQajvXQd1DiZBk
         B7//EZQ9QWIirFopm6M8t066J8hoWDlDnAuswBB5Rt17jwhknHsgF740EszVzSs5GooI
         /m8fSDJ0WhBgmuGhr+9M61pXtdFslKE1MCBIG4kpq7jvplnR5ZNM9yljB/zTiSOnwADp
         J38qG6+uLEjdQHYOUZTLg1ZW7+PEn2F2PMCqVDfWD/pTcPjKYpcIIUtc/Ce+jGm3v5jd
         JAdQ==
X-Gm-Message-State: AOAM533xhibU+fLsJIwB23aA0ytO5X0eiLyZviIbNn1IeSTXVAeLTE7H
	0ogsmriFKwEhhv6RW6ak0Xo=
X-Google-Smtp-Source: ABdhPJxgsLyDCxR5BfPpT4WYVMMvitfpms1Wbb0MwiAtfMiunF3qEQxPB/TCg9H15GKTI9W9Tgyo+A==
X-Received: by 2002:a05:6402:3485:b0:423:f3fd:75d9 with SMTP id v5-20020a056402348500b00423f3fd75d9mr10760236edc.319.1650727562463;
        Sat, 23 Apr 2022 08:26:02 -0700 (PDT)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id p9-20020a05640243c900b0041facb9ac9esm2261603edc.1.2022.04.23.08.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 08:26:00 -0700 (PDT)
Date: Sat, 23 Apr 2022 18:25:57 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Adri Orjales <adriorjalesvidal31@gmail.com>
Cc: speakup@linux-speakup.org
Subject: Re: Espeakup, arch and systemd
Message-ID: <20220423152557.uvabzwrw32ks7jun@alex-pc>
References: <CAE600ubaA7q99ajYsZO+1JR9TMERSo+kmtp8U6Eg=g_at-Th4g@mail.gmail.com>
 <839C2FB5-281D-452E-98FC-54FD6EED5FEA@gmail.com>
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
In-Reply-To: <839C2FB5-281D-452E-98FC-54FD6EED5FEA@gmail.com>
User-Agent: NeoMutt/20220415
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sat, Apr 23, 2022 at 05:18:56PM +0200, Adri Orjales wrote:
> Hello again
> I reset the udev-settle service, i've found the problem with the slowdown on boot, was caused by a wireless mouse receiber

nice.

> Now the espeakup problem persists
> Only talks if i stop it and start it again

ok. let's tri to set default sound card with arch wiki's instructions [1]

[1] https://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture#Set_the_default_sound_card

-- 
Sincerely, Alexander

