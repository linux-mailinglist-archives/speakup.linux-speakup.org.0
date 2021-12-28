Return-Path: <speakup+bounces-352-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E215C480DD0
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 23:51:34 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=DIATTXFP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7CF9F381190; Tue, 28 Dec 2021 17:51:34 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 67FC138116B
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 17:51:34 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9A47B38116E; Tue, 28 Dec 2021 17:51:28 -0500 (EST)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5C02A38116A
	for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 17:51:28 -0500 (EST)
Received: by mail-lf1-f53.google.com with SMTP id i31so44088407lfv.10
        for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 14:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=exVvFKAOLx+qoRXm9V++oi+zpyIqWcMweIOwga9U0zo=;
        b=DIATTXFP2eM3kOtD2+68+o+Wh1dAALXFAr/Kbd6sFRtL5srVjbgsr6geySiS8akg+f
         LCdbVsM1VQGLxG6pCo/e/skIDyeKLb0TBfBRDsYWXfYivdJ6fRtBY7uy14MgvVn+oWDQ
         mBdAQzTpuRns9EDobLuMHhGE6c2BM97GZkAkpsaGgJyKvTqRT1JNRc66haoGiKxyLvLn
         zsWMnLvw829m67XpvTZAkmHYjLWlqTKHgheRU9pgiG90eaFUcwOBRZHLnUxR2W0HoDWE
         Fe942iywbWCjTuRUYp931gZbt057ovDiNYVXGY7kLNCaLnbMdHlicXv3h6u8Plw/758j
         L+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=exVvFKAOLx+qoRXm9V++oi+zpyIqWcMweIOwga9U0zo=;
        b=g3w65dA+nNzUcO7VZeyumkF7k4TTZEL7OYW1SIXMYuoF8DPJGTxw2XQQhcm6azF3te
         wEkk+v+MKL6Q5WHHhj/L0vOesW34iizLpnOcm/lVaW8yIwHrl3I94UTP+ZtcJixN9+4v
         t3yxNRkRqErtTWaDAf7fXYcrSwd9n66itcr5BNU0HUFH7HkS8w7dBzuG4NIt1czH5F1Q
         x7ji/M3dPDBcMhiVV8qaRm6GVKsfGT1tMv6hJkubI/vTHL7pClEIZzZhh4IUBHc4o3Ac
         Uca/w3EHbFphbK2VGJ3W8Z529Uz/zGHQNA/wU+/nIVq7iNk6HVQxQa3HGvW6+lNmc5Wt
         +b8g==
X-Gm-Message-State: AOAM531ZWtogtI2h+qeZTKurmfvYIsHvWyjzr3ocJQXiMWUnwjUOFLw9
	rhRDurRZIrM29e0SAfmsHpU5ZOtF14o=
X-Google-Smtp-Source: ABdhPJwALAGU43OzaA7FNYZvQoHnLNFkpWdKAfT6J8ykGfZFs40zrq36ptymiC4bAfqs7yASoW/AiA==
X-Received: by 2002:a05:6512:2216:: with SMTP id h22mr20203709lfu.155.1640731826718;
        Tue, 28 Dec 2021 14:50:26 -0800 (PST)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id y4sm1971972lfg.118.2021.12.28.14.50.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 14:50:26 -0800 (PST)
Date: Wed, 29 Dec 2021 01:50:25 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Janina Sajka <janina@rednote.net>
Cc: Didier Spaier <didier@slint.fr>, speakup@linux-speakup.org
Subject: Re: Now Fixed: Archlinux Speakup problems after alsa package upgrade
Message-ID: <20211228225025.xdkkmkow6io4kcml@alex-pc>
References: <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net>
 <YcNUgwlCFtiAmY3Q@rednote.net>
 <3cefe3e6-f95a-ffe9-5995-543d6e4357db@jasonjgw.net>
 <Ycs60ClBq1jcVDuF@rednote.net>
 <055e3d2d-0653-3edc-4879-484816734d00@slint.fr>
 <YctqoKAZIKdSZH9f@rednote.net>
 <86d02e30-71fc-50bd-2408-6c658ec2da29@slint.fr>
 <20211228211323.3f2uhc6hblud4h3a@alex-pc>
 <YcuSVelJCeOX5Vg0@rednote.net>
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
In-Reply-To: <YcuSVelJCeOX5Vg0@rednote.net>
User-Agent: NeoMutt/20211029
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Tue, Dec 28, 2021 at 05:40:21PM -0500, Janina Sajka wrote:
> Yes, I seem to have a full compliment of pw on the older machine, and
> the same set of pw on the newer machine.

strange. I think espeakup will not work if pw is inuse.

> Interestingly, the files in /etc/alsa/conf.d/ are different. The new
> machine shows only two files there:
>
> 50-pipewire.conf
> 99-pipewire-default.conf
>
> On the older machine, earlier today, I tried renumber my alsa devices
> via /etc/modprobe.d/alsa.conf. I ended up putting things back the way
> they were, because the builtin Intel HDA device doesn't work as card 0
> for some reason--very strange, but I adjusted some time ago to start
> numbering my three devices as 1, 2 and 3.  So, after I put things back,
> a see much more pw in that directory:
>
> 10-samplerate.conf
> 10-speexrate.conf
> 50-arcam-av-ctl.conf
> 50-jack.conf
> 50-oss.conf
> 50-pipewire.conf
> 50-pulseaudio.conf
> 60-speex.conf
> 60-upmix.conf
> 60-vdownmix.conf
> 98-usb-stream.conf
> 99-pipewire-default.conf
>
>
> This suggests to me that the conversion to pw is still a work in
> progress!
>
> I've no idea why the above is the situation, though, or what packages
> handle what aspect.

you can use pacman -Qo /path/to/file to check which package owns this file.

> Best,
>
> Janina

--
Sincerely, Alexander

