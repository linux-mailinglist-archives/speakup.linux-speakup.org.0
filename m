Return-Path: <speakup+bounces-1114-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9BA2A8B6137
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 20:38:04 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=ldVJP6xj;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 95DFCC81CA0; Mon, 29 Apr 2024 14:38:03 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 77144C80BA2
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 14:38:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E659C81C29; Mon, 29 Apr 2024 14:37:55 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EC8BCC80FE5
	for <speakup@linux-speakup.org>; Mon, 29 Apr 2024 14:37:54 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VSsWv2sM6z4KJR;
	Mon, 29 Apr 2024 14:37:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714415867; bh=Ei6eOKpeOb5D3cW8Uywb5zt12+VS3AjbxRqU7tFcTn8=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=ldVJP6xjPA2MoGWz2Dqfq9sD0Zox3LECsHi4NBaNndcfei2MVM7Q6HZmAINLft+8L
	 jAhb3r3EAyg+DR3H9FMfdw06PKmQ6IYcK9kZ7PGIaJgepwxvxg6NLUBlV/77jsmcOW
	 pu9fULYxPozQo6C2AXFWpxBMJwPzEeejAuLMHMFU=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VSsWv2Q0Zzcbc; Mon, 29 Apr 2024 14:37:47 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VSsWv2Lh8zcbC;
	Mon, 29 Apr 2024 14:37:47 -0400 (EDT)
Date: Mon, 29 Apr 2024 14:37:47 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup and gentoo
In-Reply-To: <MTAwMDAwMC5jbHVs.1714396598@quikprotect>
Message-ID: <4b90f942-8d5a-b788-7c80-59d4d1fdb4ce@panix.com>
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

A couple nano questions.
1) When a file opens in nano, wdoes nano put the cursor on the first line
of the file?
If so, what should be used to get to the end of the file?
I just messed up a gentoo flash drive and fortunately I was able to
overwrite the mess so this time I probably get gentoo talking after having
replaced the mess with a fresh image.


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

