Return-Path: <speakup+bounces-1154-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E76BF927F6D
	for <lists+speakup@lfdr.de>; Fri,  5 Jul 2024 02:39:48 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=bJadB8AG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1113CC81C68; Thu, 04 Jul 2024 20:39:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E8187C81C5D
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 20:39:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 029D4C80A68; Thu, 04 Jul 2024 20:39:40 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DD01BC80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 20:39:39 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WFZQy4R0tzHPV;
	Thu,  4 Jul 2024 20:39:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1720139978; bh=i75rVmNd84oEB6o/S6OTeKdRJbtGv5IJqesKxZU9urU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=bJadB8AGGdrWhf5rRBOXKMH954nSlNqN0xdjfHPKFyoSVNoGlbibDml6KL6o3Loj8
	 6e60FGpwcdQAxXBX+0QForByF88iizAYLZxGNoh/3IDBVbbBRH8H1HMT8JIRFkZQYh
	 xx/771fV/GlABJ4aWKpa2h4egsxLhyue9LXjMUks=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WFZQy3yzdzcbc; Thu,  4 Jul 2024 20:39:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WFZQy3ngfzcbC;
	Thu,  4 Jul 2024 20:39:38 -0400 (EDT)
Date: Thu, 4 Jul 2024 20:39:38 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Gregory Nowak <greg@gregn.net>
cc: speakup@linux-speakup.org
Subject: Re: devuan daedelus and speakup
In-Reply-To: <Zoc405+OrKfT1Qkk@gregn.net>
Message-ID: <dcfd2aae-c1ac-fa20-900e-a32c8c838b1a@panix.com>
References: <14439926-6631-5be8-ae20-5349f21b480b@panix.com> <Zoc405+OrKfT1Qkk@gregn.net>
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

How many people can open an iso to read that boot help file before trying
an install?


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 4 Jul 2024, Gregory Nowak wrote:

> The boot menu for Daedalus was modified. The options in the boot menu
> are as follows:
>
>     1 Install - the default and easy installation mode.
>         2   Expert install - tediously considering all choices.
> 	    3   Rescue mode - run rescue shell with the installer
>         kernel.
> 	    4   Automated install - hands-off mode installation.
>
>     5 Install with speech synthesis - easy install with screen
>     reading.
>         6   Expert speech install - tediously considering all choices.
> 	    7   Rescue speech mode - run rescue shell with the
>     installer kernel.
>         8   Automated speech install - hands-off mode installation.
>
> To get the equivalent of s enter in debian, type 5 enter. You can also
> arrow down four times and press enter. I wrote up documentation on
> this which should have been included in the Daedalus release notes,
> but Ralph decided that including a BOOTHELP.txt file inside the iso
> images would be enough.
>
> Greg
>
>
> On Thu, Jul 04, 2024 at 09:45:03AM -0400, Jude DaShiell wrote:
> > What is to be done to turn speakup on in devuan daedelus so it can be
> > installed with speakup talking?  I got the minimal iso and don't know if
> > this one can install with speakup.  I used the s parameter at the grub
> > beep and that didn't get speakup talking.  If that is supposed to be how
> > it works I downloaded a corrupt iso.
> >
> >
> > --
> >  Jude <jdashiel at panix dot com>
> >  "There are four boxes to be used in defense of liberty:
> >  soap, ballot, jury, and ammo.
> >  Please use in that order."
> >  Ed Howdershelt 1940.
> >
>
>

