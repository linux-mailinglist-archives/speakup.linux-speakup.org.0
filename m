Return-Path: <speakup+bounces-222-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 03D773AF64F
	for <lists+speakup@lfdr.de>; Mon, 21 Jun 2021 21:42:24 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 91D82380EAA; Mon, 21 Jun 2021 15:42:22 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=uBW//4He;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1F408380EA1
	for <lists+speakup@lfdr.de>; Mon, 21 Jun 2021 15:42:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 88DC1380E17; Mon, 21 Jun 2021 15:42:15 -0400 (EDT)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 32AAE380B0C
	for <speakup@linux-speakup.org>; Mon, 21 Jun 2021 15:42:15 -0400 (EDT)
Received: by mail-lf1-f47.google.com with SMTP id h15so13508712lfv.12
        for <speakup@linux-speakup.org>; Mon, 21 Jun 2021 12:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=ce1M0Nq3dwcUfhwMts9BmyBOnGQavzVyGqBb4iQzF5g=;
        b=uBW//4HekhlUTNDuTp4e6uGKw3Hv/jPZs7T9jWutFDVln/YqPxV0i0G+nueg9KYXAN
         /yQEaYEWlDKTtklMNLD0Tv6wlcJrOlyxz0fExifepL2bae9B86VysPDD2nkMYUNS3fvL
         COPhfnfeEZiowT/GwBHzYYJ6oSCkk+TeqWk84iSu6o6cgsPGCjECF8JSAMWUzPTDTDtT
         KKblnbRsh48DpxjOzU0Fq5a3Pu7zCGXTqhIbOh5EN5zBY+Sh0d43BlsW6nNDUbQjUv6i
         PC/DZXPiqVWeVesj9RKVDixg33v7FnrX+boPcZRpJ0qGV3l/jqiMMzcvb5nNVxmKu6QM
         woig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=ce1M0Nq3dwcUfhwMts9BmyBOnGQavzVyGqBb4iQzF5g=;
        b=aIAA0TUeHhZ1Hbq+bvRvuDX26iX9lDbYclfxyDKXQGX+KV4c2ApejgQorJC4bZxfPw
         TO7gqZslsdf+TmLR+IYRQmLPSjBwvSvo/0cdIagbVx0kBYSNQl8T3CtZKUN60fMR2+fQ
         dso0mU93WLz1+984ZGhJp/UzyhqenIcOoqu4Z478ZvigMTz89pCsFWGT482DtK773wA7
         Q5EkA+GcrdxNMs8ivfVjtGjJCcNfgujsgctkGV4dNHKYIDLBj+UVFC8FXKjYPsf70jah
         WzqGvEffPdnVxIAkuRh513tIrKL9zqmUF0/tWf/vfMKzeZquX8RbbjttlTCGJkd1pQa+
         hsnw==
X-Gm-Message-State: AOAM5309mY59+AjgQXy0Q7WCP9G5lJYp9v+510XfPVnkTcZcN5H/QZmg
	lOH10dtlRW4xsYjI/EQysGoUcHKAbsgOAiPU
X-Google-Smtp-Source: ABdhPJwrA97fDISK9/tTP4+KdunOcftr8WVJ5I0ihNT0OB6QofpKy9i3gE11DE8vvWtj2QecIy6WwA==
X-Received: by 2002:a19:e20d:: with SMTP id z13mr6191220lfg.538.1624304471532;
        Mon, 21 Jun 2021 12:41:11 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id x1sm1962626lfa.21.2021.06.21.12.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 12:41:11 -0700 (PDT)
Subject: Re: Archlinux Speakup problems after alsa package upgrade
To: Janina Sajka <janina@rednote.net>, Kelly Prescott <kprescott@coolip.net>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>, speakup@linux-speakup.org
References: <alpine.LNX.2.22.411.2106082204570.1927@io.coolip.net>
 <20210609072927.3igbp7jvopq3c6f7@begin>
 <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Message-ID: <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
Date: Mon, 21 Jun 2021 22:41:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <YMdZA0DL4BgCAShe@rednote.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

14.06.2021 16:26, Janina Sajka пишет:
> Hi, All:
>
> Just returning to this topic to add my own experience on updating my
> Arch Linux installation on two machines over the weekend.
>
> I also ran into problems that rendered Speakup unusable with espeakup.
> Reverting alsa-lib fixed the Speakup issue. As we don't know how long
> the problem may persist, I've added the following to my
> /etc/pacman.conf:
>
> IgnorePkg   =alsa-lib
>
>
> I also discovered problems with alsa-util packages. A command as
> straight forward as:
>
> amixer controls
>
> returned meaningless results. Further, several of my audio devices were
> silent with volumes set to 0, and the switch set to "false." So, I also
> added a line like the above for alsa-utils.
>
> Not sure how to be helpful to anyone interested in debugging, but I do
> have two machines and am willing to try. Please advise.
>
> Best,
>
> Janina
>
Hello everyone. please test espeakup 0.90 with laytest alsa-lib on Arch Linux.
I will be happy to hear the results.

-- 
Sincerely, Alexander.


