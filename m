Return-Path: <speakup+bounces-1123-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 08DF38CF463
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 15:36:01 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=B+U/we0e;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4AF1A3828E1; Sun, 26 May 2024 09:35:59 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2B6F8382713
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 09:35:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DE38D3827D0; Sun, 26 May 2024 09:35:51 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BEB33382707
	for <speakup@linux-speakup.org>; Sun, 26 May 2024 09:35:51 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VnKXq3BLnz14Dc;
	Sun, 26 May 2024 09:35:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716730539; bh=oOhTJ+o96globPrh+0gJT5UEuek7T0IgaGMBiPO3vtQ=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=B+U/we0e5NBFDt6fTiu8iSXg2JtYt+P24qVfPCCc+FzP+w4Vj7nEHLNgCqOjf6N5C
	 C1v6AsKoUEOmiBtQiwHkmQVqqr+vMUo5A3wVzEkyq9bOTuFLJ0vnKeGClnLMC+OGqh
	 WykHd0KvK1ubvFB3AHbJzHyY804qx/4FHZ32kd5k=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VnKXq2nZGzcbc; Sun, 26 May 2024 09:35:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VnKXq2kc1zcbV;
	Sun, 26 May 2024 09:35:39 -0400 (EDT)
Date: Sun, 26 May 2024 09:35:39 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    speakup@linux-speakup.org
Subject: Re: gentoo dracut puzzle
In-Reply-To: <MTAwMDAzNC5jbHVs.1716723135@quikprotect>
Message-ID: <96300f65-968a-48e0-644a-0e2663e22717@panix.com>
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com> <MTAwMDA0MS5jbHVs.1716645692@quikprotect> <91bea563-a99b-e67e-5b2b-94d8b918be3d@panix.com> <MTAwMDAzNC5jbHVs.1716723135@quikprotect>
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

I got /mnt/gentoo/boot created and mounted /dev/sda1 to that directory.
emerge linux-firmware still complains about me not having a separate /boot
partition.  I don't know if that's a problem or nothing to worry about.
my make.conf file has:
KERNEL_DIR="/boot"
in it now.  I could put another slash after the t in boot if that will
help.  After that, I'm out of ideas until next coffee refill which happens
later today.
One thing this work on gentoo is good for my blood sugar; Friday's score
was 243 and Saturday's score was 125.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sun, 26 May 2024, Cleverson Casarin Uliana wrote:

> Hi, by reading the script you wrote to install Gentoo, I notice you created
> /boot inside /mnt. You should create it inside /mnt/gentoo instead, since it
> is in /mnt/gentoo that you are installing the System.
>
> Best,
> Cleverson
>
>

