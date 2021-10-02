Return-Path: <speakup+bounces-315-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 422CE41FDE3
	for <lists+speakup@lfdr.de>; Sat,  2 Oct 2021 21:36:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=vmRR+lKT;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CBF7F380BC4; Sat,  2 Oct 2021 15:36:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F2D44381CE5
	for <lists+speakup@lfdr.de>; Sat,  2 Oct 2021 15:36:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8EE91380BA2; Sat,  2 Oct 2021 15:36:25 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EAB733805F1
	for <speakup@linux-speakup.org>; Sat,  2 Oct 2021 15:36:24 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HMHKM60Tfz2tgQ;
	Sat,  2 Oct 2021 15:36:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1633203383; bh=yp78aEj08Qq8wCn82UXiWWBcS/aTjZn0e8Z0ahDg+u4=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=vmRR+lKTK1tQVz3gbfmTqtP+DoEjykhzdShwzzmIxwfyc5oBMFSrCUEKEqAqCEpBV
	 iwocB7TkC6dp9lr1elvQEJjIkhSfGKskI69NSBwG6aB7bLB1nLKRqiKe0s7ZHeSleg
	 wlgXWUHBtW+3DSoOFiGEiEh0K5yI7DzoWlZJoly4=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HMHKM56rBzcbc; Sat,  2 Oct 2021 15:36:23 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HMHKM4mCwzcbW;
	Sat,  2 Oct 2021 15:36:23 -0400 (EDT)
Date: Sat, 2 Oct 2021 15:36:23 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: John Covici <covici@ccs.covici.com>, Janina Sajka <janina@rednote.net>
cc: speakup@linux-speakup.org
Subject: Re: Beware: Latest alsa-utils breaks audio
In-Reply-To: <m3k0ivxmb9.wl-covici@ccs.covici.com>
Message-ID: <alpine.NEB.2.23.451.2110021534120.14543@panix1.panix.com>
References: <YVijxYMqVwRfh9Kv@rednote.net> <m3k0ivxmb9.wl-covici@ccs.covici.com>
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

Interesting, I'd try amixer set Master 100% unmute and then run alsactl
store if the alsa.state.lock file was missing from my system.  I corrected
a few sound problems that way in the past years.  Since I have arch on one
of my disks, I think I'll try this and see if I can replicate and then
correct the way I usually correct.


On Sat, 2 Oct 2021, John Covici wrote:

> Yep, happened to me in gentoo, downgraded, I hope  they fix soon.
>
> On Sat, 02 Oct 2021 14:24:05 -0400,
> Janina Sajka wrote:
> >
> > Hi, All:
> >
> > Maybe this won't apply on your Linux distro, but on Arch, where I ran my
> > customary Saturday upgrades, I find the latest alsa-utils package breaks
> > audio. It doesn't just break it once. It breaks it every time you
> > reboot. So, a word to the wise, and all that ...
> >
> > Here the details ...
> >
> > alsa-utils 1.2.5.1-1
> >
> > is setting Master Volume to 0 and Master Volume Switch to off on all devices,.
> >
> >
> > No real problem you think? Just run:
> >
> > amixer -c3 controls |grep -i master
> >
> > to find the numid and fix the issue? Nah, won't work!
> >
> > mixer -c3 controls
> > ALSA lib conf.c:5200:(snd_config_expand) Unknown parameters 3
> > ALSA lib control.c:1471:(snd_ctl_open_noupdate) Invalid CTL sysdefault:3
> > amixer: Control sysdefault:3 open error: Invalid argument
> >
> > Fortunately, if you happen to remember the relevant numid for your
> > default card, you can actually reset your volume. On my default sound
> > device, the relevant values are 33 for the switch, and 32 for the volume
> > slider, so I was at least able to get one device working.
> >
> > Sheesh, what a nuisance. This happens every few weeks/months, whether we
> > need it or not.
> >
> > I mean, how radical do we expect the world to be? Allow sound to play?
> > That's preposterous! Why, that would be like displaying boot messages
> > and a login prompt on any screen connected during the boot process!
> > Nobody does that, right? How friggen insecure!
> >
> > Janina
> >
> >
> > --
> >
> > Janina Sajka
> > https://linkedin.com/in/jsajka
> >
> > Linux Foundation Fellow
> > Executive Chair, Accessibility Workgroup:	http://a11y.org
> >
> > The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> > Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> >
> >
>
>

