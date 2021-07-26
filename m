Return-Path: <speakup+bounces-259-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 17F203D5BAF
	for <lists+speakup@lfdr.de>; Mon, 26 Jul 2021 16:30:50 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8AF84380F7C; Mon, 26 Jul 2021 10:30:49 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=t0kDUGy0;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 782EC380B21
	for <lists+speakup@lfdr.de>; Mon, 26 Jul 2021 10:30:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8276F380BD1; Mon, 26 Jul 2021 10:30:44 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4939C380B21
	for <speakup@linux-speakup.org>; Mon, 26 Jul 2021 10:30:44 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GYMm251gqz3kjD;
	Mon, 26 Jul 2021 10:30:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1627309842; bh=+gaNPCnPUNGOO1/zaGUgwcryirj9r6DUjODJkdnC6ug=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=t0kDUGy0doURkUYPFDjZhSHCWfavm37IOaWaIq6vUbM/iqtNvQqDOq1iyqpDRz2F5
	 EbXJ9uH/yCO4558TwTLUsvcf2l3hepP5+aIgVz3i52dnOiVJFGrMiuaBK0KU4kLX1T
	 3eO0vEu/Y/+g/OlXfLSmXdwWS3JX8hsWUMZ2hXNc=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GYMm24gy6zcbc; Mon, 26 Jul 2021 10:30:42 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GYMm24J5tzcbP;
	Mon, 26 Jul 2021 10:30:42 -0400 (EDT)
Date: Mon, 26 Jul 2021 10:30:42 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>, 
    "Joseph C. Lininger" <joe@pcdesk.net>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speakup on Arch Linux
In-Reply-To: <fe3be461-d437-f7ba-d255-0253f3349d14@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107261028310.6785@panix1.panix.com>
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net> <YPwaIT2oJm+7+Hpl@rednote.net> <a98d3dd2-75d4-0542-54fb-7eb7e2f2f245@pcdesk.net> <fe3be461-d437-f7ba-d255-0253f3349d14@gmail.com>
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

I found one thing out last night.  pulseaudio prevents mpv mplayer and vlc
from operating.  It also puts lots of other pieces in other places so I'm
going to need to reinstall without pulseaudio in order to get media
players working.


On Mon, 26 Jul 2021, Alexander Epaneshnikov wrote:

> 25.07.2021 22:59, Joseph C. Lininger ?????:
> > Thanks Janina. My experience has been similar to yours. The difference is
> > that I can get speech with later versions, it's just that it drags a bit
> > when echoing keys and it hiccups sometimes at the when it finishes talking.
> > I had to restore my system from a BTRFS snapshot after upgrading (the pacman
> > solution didn't work because I didn't have old enough versions) , but I've
> > done similar to you for the moment and excluded alsa-lib, alsa-utils,
> > alsa-tools, espeak, and espeakup. Hopefully they fix this so that we don't
> > eventually have a situation where we can't, for example, upgrade the kernel
> > because of an incompatible change to alsa.
>
> hello Joseph. I think your problem would be fixed by new pcaudiolib release[1]
> you can unignore all packages except espeakup.
> I will try to prepare a new version of pcaudiolib as soon as possible,
> would you agree to test it?
>
> > Joe
>
> [1]: https://github.com/espeak-ng/pcaudiolib/issues/7
>
>

