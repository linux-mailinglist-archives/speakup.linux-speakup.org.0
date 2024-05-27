Return-Path: <speakup+bounces-1128-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A41848CF700
	for <lists+speakup@lfdr.de>; Mon, 27 May 2024 02:29:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=cx5FqosP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 830B038286D; Sun, 26 May 2024 20:29:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 64255382703
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 20:29:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3012E382713; Sun, 26 May 2024 20:29:35 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 148DB382703
	for <speakup@linux-speakup.org>; Sun, 26 May 2024 20:29:35 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Vnc386ZrNz4Pm;
	Sun, 26 May 2024 20:29:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716769764; bh=wz6nfEHZ7f6FBhm8eExpcAM4QsjFtTSVL/eHq3RtOz0=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=cx5FqosPwG5HlzyGaLVRdbTIFxFUy/Y3dLtYJ5vynfZdjuNrSulWITtPJ8QLOJVWe
	 7rxruLQSq2obqGXvWXjmHLpIrR9wz0Vq2jAyZpPkB3Q2J0kl0QlAIixGDWqUymtGaa
	 Na27tyY9cP0f3olvykzYNGmFUjLWhKywdmKInMwg=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Vnc3866dbzcbc; Sun, 26 May 2024 20:29:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Vnc3863JPzcbC;
	Sun, 26 May 2024 20:29:24 -0400 (EDT)
Date: Sun, 26 May 2024 20:29:24 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    speakup@linux-speakup.org
Subject: Re: gentoo dracut puzzle
In-Reply-To: <642f4f62-0f76-ee6a-3cfb-053a755e92a7@panix.com>
Message-ID: <d503086f-7d5b-1f3b-aef0-b51cc083638e@panix.com>
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com> <MTAwMDA0MS5jbHVs.1716645692@quikprotect> <642f4f62-0f76-ee6a-3cfb-053a755e92a7@panix.com>
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

It turns out the license file had a mistake in it which I fixed the at
sign should not have a space between it and the B in
BINARY-REDISTRIBUTABLE.
The emerge gentoo-kernel-bin
needed dracut use allowed so I added that to make.conf's USE= line and the
kernel compiled and got saved in the world file.
Now I need to make me a boot loader with grub and have it play a tune when
it loads up and then it should be about time to test this system.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sun, 26 May 2024, Jude DaShiell wrote:

> emerge: there are no ebuilds to satisfy "installkernel-gentoo".
>
> emerge: searching for similar names...
> emerge: Maybe you meant any of these: sys-kernel/installkernel,
> dev-vcs/gitolite-gentoo, dev-python/installer?
>
> Which of these to install?
>
>
>

