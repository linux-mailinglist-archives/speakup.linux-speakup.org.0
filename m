Return-Path: <speakup+bounces-1180-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A6844955900
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 18:38:03 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=R3wlTVxt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3AABA382739; Sat, 17 Aug 2024 12:38:03 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1CF5E382500
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 12:38:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32DCE3825D4; Sat, 17 Aug 2024 12:37:56 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 163713821E1
	for <speakup@linux-speakup.org>; Sat, 17 Aug 2024 12:37:56 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WmPfq2b3Yz1C7t;
	Sat, 17 Aug 2024 12:37:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1723912675; bh=O6NYvbtgF8njj6qyn9ZgBTUkh4vgTDtHZQq49TykbSw=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=R3wlTVxtPChWrCGYDoolQfOrL7qwc7aS8670f37KoACScKVhhKxbRdy1w6L6ogeH5
	 4xCiDzEj2aR02V1bvH/ckv4L6wDkAuzvoCMw5OIJD7xfw8hritXqY5yn7fXRYweTW0
	 V3asPc9Pxl4I3YsxDi9c7yUkeNnsOqA7POF/uunY=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WmPfq2NSRzcbc; Sat, 17 Aug 2024 12:37:55 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WmPfq2MkhzcbC;
	Sat, 17 Aug 2024 12:37:55 -0400 (EDT)
Date: Sat, 17 Aug 2024 12:37:55 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Kirk Reiser <kirk@reisers.ca>
cc: speakup@linux-speakup.org
Subject: Re: speakup crashing
In-Reply-To: <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca>
Message-ID: <c152034f-942c-d477-04ab-58903eae7117@panix.com>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com> <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca>
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

It's entirely possible espeakup is crashing.  When this happens, I can't
restart espeakup either so end up having to reboot to regain control of
the system.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sat, 17 Aug 2024, Kirk Reiser wrote:

> Hi Jude: This may be a silly question, but are you sure it's speakup
> crashing? Often, espeakup dies here and so I have a simple script to
> kill it off and restart espeakup. I haven''t had speakup itself hang
> the system for quite a while.
>
>   Kirk
>
> On Sat, 17 Aug 2024, Jude DaShiell wrote:
>
> > Every so often speakup crashes on my computer.
> > I am running a recent version of Jenux so systemd is in use here.
> > What I would like to know is a procedure once the system has been rebooted
> > to locate any crash messages speakup may have left in logs.  pipewire is
> > running the sound system along with alsa here and there's necessary
> > pulseaudio artifacts pipewire uses on the system.
> >
> >
> > --
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo.
> > Please use in that order."
> > Ed Howdershelt 1940.
> >
>
>

