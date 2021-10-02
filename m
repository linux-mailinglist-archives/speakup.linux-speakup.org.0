Return-Path: <speakup+bounces-316-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A8C1941FDE2
	for <lists+speakup@lfdr.de>; Sat,  2 Oct 2021 21:36:31 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=VhWcysEM;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24060381D7A; Sat,  2 Oct 2021 15:36:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0553938118B
	for <lists+speakup@lfdr.de>; Sat,  2 Oct 2021 15:36:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3362E381D2C; Sat,  2 Oct 2021 15:36:28 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2AB353805F1
	for <speakup@linux-speakup.org>; Sat,  2 Oct 2021 15:36:27 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 3A9B9FA268;
	Sat,  2 Oct 2021 15:36:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1633203384;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ofynz0OoW4KhPvcvIuy1yb2gWZcr0iMj/iYH0nlQt+g=;
	b=VhWcysEMAJYxxhwMwPYRT/g9P9ioNUSI9FmZT5kt12cj68kGvmXU+koGCWWgqqLatC7C+l
	+5JD0kaQA9SNDWp8vLWzft8b+bah20DTHDUK9Kvj+2N7kHmIetzx0gVlfiwtw5i2aws8rT
	JKtieacfce8y+DrC/miRVdzTj6E0aLs=
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 3A9B9FA268
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 192JaNUA020620;
	Sat, 2 Oct 2021 15:36:23 -0400
Date: Sat, 2 Oct 2021 15:36:23 -0400
From: Janina Sajka <janina@rednote.net>
To: John Covici <covici@ccs.covici.com>
Cc: speakup@linux-speakup.org
Subject: Re: Beware: Latest alsa-utils breaks audio
Message-ID: <YVi0t+36X0ZbVo4f@rednote.net>
References: <YVijxYMqVwRfh9Kv@rednote.net>
 <m3k0ivxmb9.wl-covici@ccs.covici.com>
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
In-Reply-To: <m3k0ivxmb9.wl-covici@ccs.covici.com>
X-Operating-System: Linux opera.rednote.net 5.14.9-200.fc34.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks, John. Glad to know I'm not the lone stranger! <grin>

I can understand bugs creeping in as packages are rev'd. What I con't
understand, though, is the same kind of bug showing up every few months.

This is at least the second time this year I've seen this--or something
similar causing the same nonfunctional audio as a result.

Janina

John Covici writes:
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
> -- 
> Your life is like a penny.  You're going to lose it.  The question is:
> How do
> you spend it?
> 
>          John Covici wb2una
>          covici@ccs.covici.com

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa


