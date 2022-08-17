Return-Path: <speakup+bounces-595-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D0EE0597823
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 22:44:54 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=uCwggaTx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F5E03847DA; Wed, 17 Aug 2022 16:44:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5A4F8383776
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 16:44:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A405B3819B5; Wed, 17 Aug 2022 16:44:47 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 82B2E381909
	for <speakup@linux-speakup.org>; Wed, 17 Aug 2022 16:44:47 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4M7Kl23v8Wz3mbV;
	Wed, 17 Aug 2022 16:44:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1660769086; bh=xTr/4UVJnFeesvi0x2hZZDI+Qdp6IA0xkt5hTbPU+GQ=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=uCwggaTxrOATsRlWKj9pRns58SpWQETenwe4hmOVrk8qoNrj5QaVXwzQUySiOEcoc
	 tB6t1KilSCJoXUStsw1HXBaZUKkLvme+U3jsQBqr1JZ3bWKz+2MndDOvH1RWCTCQN1
	 5xxPgmmpiB36OCWEtTmRCTZj9qlkKDeo+3g5zrss=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4M7Kl23TBPzcbc; Wed, 17 Aug 2022 16:44:46 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4M7Kl2394gzcbC;
	Wed, 17 Aug 2022 16:44:46 -0400 (EDT)
Date: Wed, 17 Aug 2022 16:44:46 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Slacko Puppy
In-Reply-To: <001501d8b271$55892710$80ffa8c0@Win7VM>
Message-ID: <17b1aad-cf63-6e71-93b5-5da1ae34d6a@panix.com>
References: <001501d8b271$55892710$80ffa8c0@Win7VM>
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

Never heard of that flavor.  Has the distro got any python and maybe some
form of pip?  Reason I ask is you could pip install fenrir-screenreader if
pip is available.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Wed, 17 Aug 2022, K0LNY_Glenn wrote:

> Hi,
> Has anyone here ever tried Slacko Puppy Linux?
> I just booted to it on a thumb drive in my Asus 701 EEEpc.
> It used to run XP, and has a limited 4 GB internal drive and 2 GB of RAM.
> I booted it up, and can do speaker-test, and I have read that the package
> manager has limited packages.
> It didn't come with espeak or espeak-ng, and I'm not sure yet if they are in
> its repository.
> If I can make it work, it seems light enough.
> Does anyone know of a more Debian/Ubuntu like distro that is really light
> that can run on an older computer like this?
> Thanks.
>
> Glenn
>
>
>

