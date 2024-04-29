Return-Path: <speakup+bounces-1116-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B1C138B6169
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 20:50:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Spt3vEYH;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3083EC81C94; Mon, 29 Apr 2024 14:50:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 129CBC81C59
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 14:50:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BA0D4C81C5E; Mon, 29 Apr 2024 14:50:34 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2CEB5C81C59
	for <speakup@linux-speakup.org>; Mon, 29 Apr 2024 14:50:34 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VSspd5pXmz4LMy;
	Mon, 29 Apr 2024 14:50:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714416633; bh=BjlEl1i+f+DfpkKqgH0xjS9KTKromVyjDZz4eWvkJSA=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=Spt3vEYH5Cwyk9RhkRzr30fIaZOmDbh8PS2hVGeoLvjhktbOiQoQ93ggOj+zLjrbY
	 t7DvEoZJoaYJ0KUw8dbbq8FpntOYqfvu5RODp8XAu8UeGU16rwhVhxaN/N2EExUdva
	 uFetbiDY1NHdDZQN8+iaYVdd/siuVmSF42WoGmnI=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VSspd5WQnzcbc; Mon, 29 Apr 2024 14:50:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VSspd5S1PzcbC;
	Mon, 29 Apr 2024 14:50:33 -0400 (EDT)
Date: Mon, 29 Apr 2024 14:50:33 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup and gentoo
In-Reply-To: <MTAwMDAwMC5jbHVs.1714396598@quikprotect>
Message-ID: <943dd2ed-540a-15bf-b453-e41a5eddac19@panix.com>
References: <10acd4eb-8872-1669-0086-fb591ee6cad4@panix.com> <m3y19026je.wl-covici@ccs.covici.com> <8c2f3044-4655-7dbe-a06f-5cf5ae148126@panix.com> <MTAwMDAwMC5jbHVs.1714396598@quikprotect>
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

Nano starts files on the first line.
Have no idea how to get to bottom of file in nano.
Is ex operational on install-minimal disks?
That I can use.
echo command could be used except for alsasound since echo uses quotes and
yes at the end of that SAVE_ON_STOP equasion needs quotes around yes.  If
alsasound can take a 1 rather than yes, that problem will go away.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 29 Apr 2024, Cleverson Casarin Uliana wrote:

> Hi Jude, I've installed Gentoo several times, and the following commands
> related to setting up speakup, which I ran during installation, never failed
> me. Try them please:
>
> nano /etc/modules-load.d/speakup.conf
> # add the following line to this file:
> speakup_soft
>
> emerge espeakup alsa-utils
> nano /etc/conf.d/alsasound
> # Add the following line to this file:
> SAVE_ON_STOP="yes"
>
> rc-update add alsasound boot
> rc-update add espeakup default
>
> Cheers,
> Cleverson
>
>

