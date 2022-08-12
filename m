Return-Path: <speakup+bounces-512-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 94D86591675
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 22:54:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=kR0x8E6S;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA33238476D; Fri, 12 Aug 2022 16:54:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BC0A0381906
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 16:54:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A4AE838190A; Fri, 12 Aug 2022 16:54:06 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 93D6A381905
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 16:54:06 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4M4GB52wybz2lG0;
	Fri, 12 Aug 2022 16:54:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1660337645; bh=o/NsnYMonWHzCuLoAZJWNSQW4O3xsy2+kadu+aSSvuY=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=kR0x8E6SyVDxjFqVHIF4olArnWFiljewBfOxB52hldBDZ74HRdDbdtzI/HkGikj2P
	 o/j6zmBNomzD0TlLYswzLsdcHG8LTedI4NqqZ2xXgEXdsutv8faY3AShdggx3IU80L
	 bHUaiLQDs/uW9kpoTPpEFDkhAKoQ/7vWIUSndj54=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4M4GB52Ry3zcbc; Fri, 12 Aug 2022 16:54:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4M4GB52BPDzcbP;
	Fri, 12 Aug 2022 16:54:05 -0400 (EDT)
Date: Fri, 12 Aug 2022 16:54:05 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, Chime Hart <chime@hubert-humphrey.com>, 
    Matt Campbell <mattcampbell@pobox.com>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: getting audio for Orca and Speakup or Fenrir
In-Reply-To: <022101d8ae8d$31446fa0$80ffa8c0@Win7VM>
Message-ID: <a5912728-3489-97f3-a956-af918d5b5e2f@panix.com>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM> <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com> <021d01d8ae8c$39e82800$80ffa8c0@Win7VM> <8295e54b-fd16-c53f-f3f7-e9a09c7a62c6@pobox.com> <022101d8ae8d$31446fa0$80ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Loose the -c0 and you're golden.


On Fri, 12 Aug 2022, K0LNY_Glenn wrote:

> Hi Matt,
> I have learned that the alsamixer doesn't feedback well over SSH, can you
> give me the proper command for alsa to unmute and adjust the volume?
> I always get that wrong, I try stuff like:
> amixer -c 0 set Master 100% unmute
> and those never work for me, I somehow get it wrong.
> There needs to be a fail safe script made for this.
> Thanks.
>
> ----- Original Message -----
> From: "Matt Campbell" <mattcampbell@pobox.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart"
> <chime@hubert-humphrey.com>
> Cc: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Friday, August 12, 2022 3:46 PM
> Subject: Re: getting audio for Orca and Speakup or Fenrir
>
>
> Hi Glenn,
>
> Sounds to me like the audio output on that board is muted. The amixer
> command should let you fix that easily. Then you might need to run
> "alsactl save" to make the new settings permanent.
>
> Matt
>
>
>

