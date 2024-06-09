Return-Path: <speakup+bounces-1134-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 38C6890187F
	for <lists+speakup@lfdr.de>; Mon, 10 Jun 2024 00:20:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=m8lInzwf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 62C4BC81036; Sun, 09 Jun 2024 18:20:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 44D6FC80FFC
	for <lists+speakup@lfdr.de>; Sun, 09 Jun 2024 18:20:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 43688C80FEF; Sun, 09 Jun 2024 18:19:59 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0EB53C80FE8
	for <speakup@linux-speakup.org>; Sun, 09 Jun 2024 18:19:59 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Vy8W44KDSz13M0;
	Sun,  9 Jun 2024 18:19:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1717971584; bh=nsUagMqyrlt/g9zaF1FhJm0/yRt2ERWFgOILLa8ZU08=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=m8lInzwfNHbXMz4KCtmsrbIRMmXD6Kvt6DF8hRt8Y4yaoeV4lXf4yTmLaOOOOaETj
	 Pt++mqXPy6KEMpOqxU6c/AMRP+mzCSXpgxpubaFu7Fb1OV/PAnj+fJrp2Jirr4fRRM
	 Clm8oxV/AGbltEpk/SjeWQpwlHPssm7I7x852pCo=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Vy8W43wLDzcbc; Sun,  9 Jun 2024 18:19:44 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Vy8W43rXKzcbC;
	Sun,  9 Jun 2024 18:19:44 -0400 (EDT)
Date: Sun, 9 Jun 2024 18:19:44 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    speakup@linux-speakup.org
Subject: Re: gentoo dracut puzzle
In-Reply-To: <MTAwMDAxOC5jbHVs.1717947444@quikprotect>
Message-ID: <7e945c59-8b40-6a07-e67c-357dbe70b1a4@panix.com>
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com> <MTAwMDA0MS5jbHVs.1716645692@quikprotect> <a5a6e2fd-fbd9-8c1f-87d2-ecf227d3f402@panix.com> <MTAwMDAxOC5jbHVs.1717947444@quikprotect>
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

Earlier today I wiped debian off the system and tried booting into gentoo
directly.  Result, total silence.  It was as if no disk had been booted at
all.  Should I have run grub-install before doing that or did the dracut
process take care of that detail earlier for me?  It turns out
/dev/softsynth was created by this morning.  End result, the only
operating system now on this computer is Fedora 38 mate and it took most
of a day to clean the computer to get this installed.  Score one more for
gentoo.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sun, 9 Jun 2024, Cleverson Casarin Uliana wrote:

> Hi, in principle, if the speakup_soft module was loaded, it should have
> created the device. I'm sorry for not being able to help, as such problem has
> never occurred to me.
>
> Best,
> Cleverson
>
>

