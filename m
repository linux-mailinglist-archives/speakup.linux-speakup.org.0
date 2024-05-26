Return-Path: <speakup+bounces-1124-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E2EF98CF464
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 15:39:39 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Mb8btFBF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 59AE03828BE; Sun, 26 May 2024 09:39:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 383973827FA
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 09:39:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E29563827D5; Sun, 26 May 2024 09:39:31 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C323C382713
	for <speakup@linux-speakup.org>; Sun, 26 May 2024 09:39:31 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VnKdH2s1zz148B;
	Sun, 26 May 2024 09:39:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716730771; bh=+0NOS9f4e978cusdGWrhTc2Kg6fg8Gyu7bTetKO/v4Y=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=Mb8btFBFOwk1TeAbEoCQdZpcwUTklfnQCQnExUJ/Ldxp5hjpUGQ/1loM6T50EMGS2
	 oO730mEQCiX7XjfaeYSEoA2C9T1K0dHw/4qxNNCXJtSLo8FdWKMoL83M1F4sbsDrbL
	 PdB54C+cRCA/oF3lSVAizvBpPB/1DFXPRrIu7h0Y=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VnKdH2bdXzcbc; Sun, 26 May 2024 09:39:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VnKdH2VktzcbV;
	Sun, 26 May 2024 09:39:31 -0400 (EDT)
Date: Sun, 26 May 2024 09:39:31 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    speakup@linux-speakup.org
Subject: Re: gentoo dracut puzzle
In-Reply-To: <96300f65-968a-48e0-644a-0e2663e22717@panix.com>
Message-ID: <e00c70e3-013b-999c-c42b-8d32bfd2c7b1@panix.com>
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com> <MTAwMDA0MS5jbHVs.1716645692@quikprotect> <91bea563-a99b-e67e-5b2b-94d8b918be3d@panix.com> <MTAwMDAzNC5jbHVs.1716723135@quikprotect> <96300f65-968a-48e0-644a-0e2663e22717@panix.com>
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

This time boot directory I created and mounted on /dev/sda1 has got
content in it so that likely worked.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sun, 26 May 2024, Jude DaShiell wrote:

> I got /mnt/gentoo/boot created and mounted /dev/sda1 to that directory.
> emerge linux-firmware still complains about me not having a separate /boot
> partition.  I don't know if that's a problem or nothing to worry about.
> my make.conf file has:
> KERNEL_DIR="/boot"
> in it now.  I could put another slash after the t in boot if that will
> help.  After that, I'm out of ideas until next coffee refill which happens
> later today.
> One thing this work on gentoo is good for my blood sugar; Friday's score
> was 243 and Saturday's score was 125.
>
>
> --
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
>
> On Sun, 26 May 2024, Cleverson Casarin Uliana wrote:
>
> > Hi, by reading the script you wrote to install Gentoo, I notice you created
> > /boot inside /mnt. You should create it inside /mnt/gentoo instead, since it
> > is in /mnt/gentoo that you are installing the System.
> >
> > Best,
> > Cleverson
> >
> >
>
>

