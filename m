Return-Path: <speakup+bounces-1118-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F024A8B62BF
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 21:43:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=O51AH8W7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 18B2BC81CD8; Mon, 29 Apr 2024 15:43:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EF392C81C67
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 15:43:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C4E6BC81C67; Mon, 29 Apr 2024 15:43:23 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A9143C81C65
	for <speakup@linux-speakup.org>; Mon, 29 Apr 2024 15:43:23 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VStzR6HmSz4PQS;
	Mon, 29 Apr 2024 15:43:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714419795; bh=ANSIjUv4Mpb4N077qqj2EdvPc0bDNLxnsP11ZTP+eLY=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=O51AH8W7EcFnGgQYJA9d8sew7v3mGvUcX/G8/NL4sMjAEx5q+6U5bAfSgfphIp3lq
	 DVetcJX+wpwFLZn2VEITFbvWbqtv0NEufzT9zd0DKUBPmzAnSg5dkz6ul6hZZhdxGT
	 /Fx/H9DuA+7tp7p27lQjfbtbBkXrJiIQBX4KdfrE=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VStzR61NQzcbc; Mon, 29 Apr 2024 15:43:15 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VStzR5yFczcbV;
	Mon, 29 Apr 2024 15:43:15 -0400 (EDT)
Date: Mon, 29 Apr 2024 15:43:15 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup and gentoo
In-Reply-To: <MTAwMDAwMC5jbHVs.1714396598@quikprotect>
Message-ID: <a6d1eaf5-6342-3709-c232-5c8173f22c3d@panix.com>
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

I imported all gentoo keys as directed in the handbook and ran:
gpg --verify install-minimal...iso/asc
and other than the key not being trusted no errors got generated.
There were additional files like with .DIGESTS and .CONTENTS I downloaded
but don't know how to use yet.
When I ran sha256sum -c install-minimal..iso.sha256
There were 12 lines came back as warnings for incorrect formatting but the
sha256 came back with no errors.
Did I do all of the verification correctly or do I need to do more?


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

