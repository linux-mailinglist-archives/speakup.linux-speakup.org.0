Return-Path: <speakup+bounces-303-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 78E4F410C80
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 19:03:02 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=qIlUAIBt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DFFE5380EC9; Sun, 19 Sep 2021 13:03:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BB6A3380982
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 13:03:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E4568380C5A; Sun, 19 Sep 2021 13:02:55 -0400 (EDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BCCC3380982
	for <speakup@linux-speakup.org>; Sun, 19 Sep 2021 13:02:55 -0400 (EDT)
Received: by mail-lf1-f48.google.com with SMTP id e15so18359738lfr.10
        for <speakup@linux-speakup.org>; Sun, 19 Sep 2021 10:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6D99qqcdcoLeKr2cd2Wzp2DvNfjm16yhw13HQYbeKoI=;
        b=qIlUAIBt0FN/jPPoqVZSNHoovt4nVTmJmmxLs98P2nOTeZG2lpGbeWkeTteLg2NWVb
         zFn3uTvCH6CDoZJbI04Fpe8qbBWLPJXpLVlgcJBgUbVCtpORheQbXJsYgkGEW1RD5Ay2
         RuWJKhIKElUOpWsRv3SNQ7bKDgIRWnBb4PgHyMPKtKsL3HzbzWqQf9/yj46jjHDdC2dt
         5QPajcM4d7hrKPFkV3oUC+3qdQnDZxBI963Q14zObraGiP6zYNuTQq8PR24EAxOlYxuB
         JUxRqVh4h81GXkzpEGaEc1hXe4ezTDm76F7RfOIQ6utB79JEuKnJ2Fa6yM89Okoxsti+
         2kKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6D99qqcdcoLeKr2cd2Wzp2DvNfjm16yhw13HQYbeKoI=;
        b=wtOWZdA2wnbt+RfurIh5lpldeyG4JNedlbUE/OjhajKIJQS94QdG8DgV9J+SrU2b8H
         X/44r0JNuP3RPwqOXLcZxR3prvBIaDcsnUN3eirO9Zaixg+Ol2idn0XP+sVLKe6JJzOz
         KP2XPqmi5jn7q26+y9oY2C5sF/l5FiSmLwWntwNTu30sb3bWLsz5Wylcrlu53hWpnirM
         Ur71qQZL4jSSP98GogTOpm44691D387Fg6liBMVykFf51bQX5IbW+M4Fkrbz8WWSx14O
         HGwRi21UqspCjw5haIoSOSks23a2t/S41tJlLR1E8c2sGC7Nd4QbzEVwi4Z+sskegzKv
         geaw==
X-Gm-Message-State: AOAM531V5bpVX1yVRHOEL6bA8dsfm/vLaVEIcaoTO0m610qKuhLFNUXY
	EATtvdH7WWZ53lp+EpKnVLNuBrcmsyg=
X-Google-Smtp-Source: ABdhPJxZAWH94k5Jx7kKd9VSdzdeFjVfCPwDiDRLZ4rWYnbT5WY/3Qo5zZSixklrCXjXAzs1J+YDog==
X-Received: by 2002:a05:6512:3d0a:: with SMTP id d10mr15995690lfv.481.1632070912154;
        Sun, 19 Sep 2021 10:01:52 -0700 (PDT)
Received: from localhost ([91.77.167.245])
        by smtp.gmail.com with ESMTPSA id x20sm1051201lfu.242.2021.09.19.10.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Sep 2021 10:01:51 -0700 (PDT)
Date: Sun, 19 Sep 2021 20:01:50 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Gregory Nowak <greg@gregn.net>
Cc: speakup@linux-speakup.org
Subject: Re: loading speakup_soft, was: Re: Broken espeakup on debian sid
Message-ID: <20210919170150.pp3u54hbqfjidy7y@alex-pc>
References: <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
 <20210919035755.GA11947@gregn.net>
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
In-Reply-To: <20210919035755.GA11947@gregn.net>
User-Agent: NeoMutt/20210205
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sat, Sep 18, 2021 at 08:57:56PM -0700, Gregory Nowak wrote:
> On Sat, Sep 18, 2021 at 03:26:02PM -0400, Kirk Reiser wrote:
> > I noticed in the espeakup build systemd
> > services that it loads speakup_soft when the systemd service is
> > started.
> >
> > I'm not crazy about that being the way to load speakup particularly
> > but I'm not that familiar with various distros way of doing things but
> > it appears the espeakup maintainers figure everyone is running
> > systemd.
>
> No, not everyone is running systemd. I wonder where the espeakup
> maintainers got such a notion from?
>

answering as an espeakup maintainer. I understand that not everyone
uses systemd and respect their choice.

unlike other init systems, systemd encourages upstreams to provide systemd
units on there own, I see no reason why we shouldn't do this, especially
since it's all optional.

I have plans to integrate more closely with systemd, but I will do my best
to maintain compatibility with other init systems.

testing is encouraged in any case.

> >
> > That's one of the reasons I mentioned getting folks opinions in my
> > last message to you. For people that don't run systemd it will
> > certainly break things.
>
> Great. Something else to look forward to fixing when devuan 5 is
> coming out, sigh. Fortunately, that's a couple of years from now.
>
> Greg
>
>
> --
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your contacts.
>
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>

--
Sincerely, Alexander

