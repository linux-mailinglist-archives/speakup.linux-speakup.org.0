Return-Path: <speakup+bounces-401-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 81DD750CB42
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 16:37:21 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=cwQcX2+3;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24AB2380D22; Sat, 23 Apr 2022 10:37:21 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1125438092A
	for <lists+speakup@lfdr.de>; Sat, 23 Apr 2022 10:37:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8FA50380957; Sat, 23 Apr 2022 10:37:16 -0400 (EDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5F6273808D3
	for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 10:37:16 -0400 (EDT)
Received: by mail-lf1-f54.google.com with SMTP id h3so14250719lfu.8
        for <speakup@linux-speakup.org>; Sat, 23 Apr 2022 07:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xcR7lvU6SsX8iPz3YCT9GGUw9UAQMCqfruSiGxGgOwA=;
        b=cwQcX2+3rtiAS8AcVRE1iKWlPwXpoasXJPXcx8agh0lzm8mD6837JIgizSqJ1XucBz
         ZJY0gqXf3f9yphNhTX1hwxiXY04SV2HE6thbwMflRl2dRlAQ8jTG9RA+mXZ1mYUBraji
         tc7RBTmd79P917DkMFMamXsLBc1z21hM1fJCiCKS0iSziLr/PKljDkt+5gC9RlWVay/r
         gPLnaO4KJWeCJANl2Kk7Jt1HHW74Eh1M7SoEKzxA69zDEDV/D5oUpxyAMxfV8JCDf+GG
         sDuswwPXn6eY9Gtu66u9OpWcITKsnAo0sH2EYxhWX3Sm8J+Ceyex8lbQN5rWl1uT4AFv
         fd/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xcR7lvU6SsX8iPz3YCT9GGUw9UAQMCqfruSiGxGgOwA=;
        b=j8OhuKKNwJLi/2JOCc5nKRoA1MSt5qlzV+KNyMAKVegSv/bvQO0tw0QLx/rJKwAx49
         GVoAXZN6CIF0ZjEGPrGaqDo1Nh2apLSZN+CvMQl2zJD0MYf8iuBk7hxHJzqBjXXJS+eV
         4FO2p1doEbiLQQPtBp5Kmo6my5UtzIysJggMOPP1llD99EYXjLN5Lk7zMmMD0PRdS1Bh
         pmTEVhfQGNwgGoMGp4IKw7ItwUMC8BZBNwZCldTMQWI5lwUqURR6+dny2x2YQVa1pOnl
         Aqjw6etPR3LOHXRuyeBKSo9O8pDxzZoHpkAlkuEkxvWC34vctoxR59602hOGtlNPgANb
         EvBw==
X-Gm-Message-State: AOAM5338PZehF13eYtx9/aXfbj7Exue7ENXPnqJ6U6kEg/YrX4fA3VX/
	nrdBX9OmYaOSI2FfgDcvZik=
X-Google-Smtp-Source: ABdhPJxBgm+SFMZIDSB8Jvqvc6rxli4WMWIdIEHyUDDmOZ0EFy1Pok3H3o1Zwaz2x7ScFFbLZNh9SA==
X-Received: by 2002:a05:6512:3084:b0:471:a385:c2d3 with SMTP id z4-20020a056512308400b00471a385c2d3mr6871802lfd.289.1650724574303;
        Sat, 23 Apr 2022 07:36:14 -0700 (PDT)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id e3-20020a196743000000b0044311216c42sm639923lfj.307.2022.04.23.07.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 07:36:13 -0700 (PDT)
Date: Sat, 23 Apr 2022 17:36:10 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Adrian Orjales <adriorjalesvidal31@gmail.com>
Cc: speakup@linux-speakup.org
Subject: Re: Espeakup, arch and systemd
Message-ID: <20220423143610.qusgycnzz6kmwkg3@alex-pc>
References: <CAE600ubv2JZJM477hCMutMX=J4tGUzJfFg5Ata2ymQQiqN=ueQ@mail.gmail.com>
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
In-Reply-To: <CAE600ubv2JZJM477hCMutMX=J4tGUzJfFg5Ata2ymQQiqN=ueQ@mail.gmail.com>
User-Agent: NeoMutt/20220415
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sat, Apr 23, 2022 at 04:15:38PM +0200, Adrian Orjales wrote:
> Hello all

hello.

> I am trying to build my own OS based on Arch Linux, but I am having some
> problems with the screen reader.
> I have an arch linux fresh installation, with systemd, espeakup and
> espeak-ng installed with pacman.
> After installing the espeakup package, I noticed that the system was very
> slow on boot, and some times espeakup did not wake up after boot.
> After some research, I've discovered that the cause of the slow boot was
> that the systemd espeakup service unit uses systemd-udev-settle.service and
> waits for it to end to start, to ensure all hardware is discovered.
> But as I've read, this operation is very discouraged because the
> udev-settle discover process is asynchronous and it slows down the boot
> process.

to be honest, I'm not sure that the slowdown in booting is due to this.

> Furthermore, when this service ends, espeakup has the same problem,
> sometimes it talks, sometimes it is not able to talk.
> The problem of no speech is solved if I run systemctl reload espeakup &&
> systemctl start espeakup manually from command line.

did you set the default sound card?

> Now, I have tried removing the wants and requires of
> systemd-udev-settle.service and left only the sound.target. The slow boot
> is solved, but espeakup does not start properly, and I don't know how can I
> solve this.

I'm afraid it's not possible to get rid of udev-setle.target without changes in espeakup.

> One of the info that I've found says that sometimes, systemd sound.target
> unlocks the awaiting services when the first sound card is detected, but I
> have a Nvidia gpu that is detected as a soundcard, but alsa's default card
> is my onboard intel hda.
> I know that this list is about speakup, not espeakup, but I'm sure that you
> like me know that we are not much people talking about these topics and is
> difficult to find help.
> Thanks in advance

-- 
Sincerely, Alexander

