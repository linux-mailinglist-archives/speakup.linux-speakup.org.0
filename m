Return-Path: <speakup+bounces-1106-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9FD3F8CECF7
	for <lists+speakup@lfdr.de>; Sat, 25 May 2024 01:36:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=iJS7HEI1;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F24C6382715; Fri, 24 May 2024 19:36:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D27B83806DE
	for <lists+speakup@lfdr.de>; Fri, 24 May 2024 19:36:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BBB7C382242; Fri, 24 May 2024 19:36:30 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 71F6B3806DE
	for <speakup@linux-speakup.org>; Fri, 24 May 2024 19:36:30 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VmLyn38BCznmF;
	Fri, 24 May 2024 19:36:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716593777; bh=Tshgh7ic3w/HcSMzx8lWOH5ldwfGgYO6SMKTU+W7KBc=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=iJS7HEI1n/aYVpSB/WKZaeEFeFLJH+iJrFyLAqYeUQCVkVB51IS1KMe7zyq7IggnZ
	 TpPUGzHtUzHNgkyaAfSiO/Ijx0oWxFKOZGtQcmjlDa03g4IC8vlUMKGxsqjPV2IVme
	 UhVksnr9mrQ880bYJJQwlpOLPzGqMlBSVQRmwzBE=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VmLyn2jWMzcbc; Fri, 24 May 2024 19:36:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VmLyn2fPxzcbC;
	Fri, 24 May 2024 19:36:17 -0400 (EDT)
Date: Fri, 24 May 2024 19:36:17 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup and gentoo
In-Reply-To: <MTAwMDAwMC5jbHVs.1714396598@quikprotect>
Message-ID: <76be843c-0e87-abed-ff24-940b113acbe5@panix.com>
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

When I installed espeakup the /etc/modules-load.d/ directory didn't exist
so I configured espeakup in /etc/conf.d/espeakup by adding speakup_soft to
espeakup_opts.
I don't know if that will work.
I haven't installed kernel or grub yet.
What I'm curious about now is if a distribution kernel can be installed
then have espeakup come up talking.
All other instructions worked.
I need to check the default USE flags and add accessibility to them if not
already present.


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

