Return-Path: <speakup+bounces-1182-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6772D9559C9
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 23:03:37 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=PRNtTZmy;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 03987382653; Sat, 17 Aug 2024 17:03:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D7999382500
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 17:03:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E5692382500; Sat, 17 Aug 2024 17:03:29 -0400 (EDT)
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com [91.218.175.185])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8244C3821E1
	for <speakup@linux-speakup.org>; Sat, 17 Aug 2024 17:03:26 -0400 (EDT)
Date: Sun, 18 Aug 2024 07:03:02 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1723928603;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NvdMs466m0eTQH74dFJzMtnfgA12+S25ATnybvazK3M=;
	b=PRNtTZmy8zH+tO4oT7sk9HcDVWbjubnaPJ3P+Gdkv5O/u5W6dZ1rpvYdUGV5YwsNRqeS2H
	1RZbKVsd8c5yZHEFuVTA6NUeaCH5xnyMvSluMpbiTG9NzZVfJ3gaPG2+HTz6w5or5+rAEk
	W5YYgk+Yj/zwEOQPjUps54AtOy7UDf5gaiOMObvFL+5JXifVUq5DlciTeYWVIKSIV9tCa1
	RjSILGCqe5uhu8jnHB71lOo2qf1DjB16WyJ0r0V6aqc7Un8+BhCPpDIK6CabB9Jp1vI2u6
	hDo2dm6YxKXXyrAS3w0TAm0/1tMqmHv1ureHVC3m9hYyWi5Bl7RGFH4MPCR2rA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Kirk Reiser <kirk@reisers.ca>
Cc: Jude DaShiell <jdashiel@panix.com>, speakup@linux-speakup.org
Subject: Re: speakup crashing
Message-ID: <ZsEQBh0EshF4Y9Dn@titan>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com>
 <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca>
 <c152034f-942c-d477-04ab-58903eae7117@panix.com>
 <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca>
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
In-Reply-To: <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On systemd system you should use

systemctl restart espeakup

or

systemctl kill --signal=9 espeakup
systemctl restart espeakup

This will ensure the service manager knows what's happening.

On Sat, Aug 17, 2024 at 04:46:34PM -0400, Kirk Reiser wrote:
> Okay, try this it's basically a one liner. The reason you can't
> restart espeakup is because it doesn't actually die, so it has to be
> killed off before restarting it.
> 
> ```
> #!/bin/bash
> 
> killall -9 espeakup; espeakup
> 
> ```
> 
> My bash script is named respeakup but you can name it anything you like, of course.
> 
>   Kirk
> 
> On Sat, 17 Aug 2024, Jude DaShiell wrote:
> 
> > It's entirely possible espeakup is crashing.  When this happens, I can't
> > restart espeakup either so end up having to reboot to regain control of
> > the system.
> > 
> > 
> > --
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo.
> > Please use in that order."
> > Ed Howdershelt 1940.
> > 
> > On Sat, 17 Aug 2024, Kirk Reiser wrote:
> > 
> > > Hi Jude: This may be a silly question, but are you sure it's speakup
> > > crashing? Often, espeakup dies here and so I have a simple script to
> > > kill it off and restart espeakup. I haven''t had speakup itself hang
> > > the system for quite a while.
> > > 
> > >   Kirk
> > > 
> > > On Sat, 17 Aug 2024, Jude DaShiell wrote:
> > > 
> > > > Every so often speakup crashes on my computer.
> > > > I am running a recent version of Jenux so systemd is in use here.
> > > > What I would like to know is a procedure once the system has been rebooted
> > > > to locate any crash messages speakup may have left in logs.  pipewire is
> > > > running the sound system along with alsa here and there's necessary
> > > > pulseaudio artifacts pipewire uses on the system.
> > > > 
> > > > 
> > > > --
> > > > Jude <jdashiel at panix dot com>
> > > > "There are four boxes to be used in defense of liberty:
> > > > soap, ballot, jury, and ammo.
> > > > Please use in that order."
> > > > Ed Howdershelt 1940.
> > > > 
> > > 
> > > 
> > 
> 

