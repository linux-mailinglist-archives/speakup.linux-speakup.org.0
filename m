Return-Path: <speakup+bounces-1100-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5B10F880E23
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 10:00:05 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=UAP310U+;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3148A382669; Wed, 20 Mar 2024 05:00:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0FF553825CC
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 05:00:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 80BD53825CB; Wed, 20 Mar 2024 04:59:56 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3C1663820F0
	for <speakup@linux-speakup.org>; Wed, 20 Mar 2024 04:59:56 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V02bZ5jMMz17xm;
	Wed, 20 Mar 2024 04:59:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1710925194; bh=0/J7BCglo6BS0U8OXxOz3IcB8nagbPXX0kUfaJNXhqw=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=UAP310U+ohbsezgAb5SOj7oV2shUV5Uaj+DeLzjHXD2ZpsudbqvQFUYwvu+2PG2Hx
	 pUa/XuFVGDi9+fl5R4U1tCr0KP8tHk1bXO/33KsgRmnIiuHJem59aOQOuMPc+RFq4y
	 HquEmrsm54kVrwzo7ZPzlNFzgs5YkODM64hwE8Hc=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V02bZ5SxPzcbc; Wed, 20 Mar 2024 04:59:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V02bZ5Q27zcbV;
	Wed, 20 Mar 2024 04:59:54 -0400 (EDT)
Date: Wed, 20 Mar 2024 04:59:54 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Martin McCormick <martin.m@suddenlink.net>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Trouble-shooting a Mute Speakup on a Raspberry Pi
In-Reply-To: <E1rmkQD-000BSn-06@wb5agz>
Message-ID: <23c504ea-60e0-d2b9-c9b1-3d60404d7a2b@panix.com>
References: <E1rmffd-0009s5-0f@wb5agz> <d021a211-bbe2-7b3f-0357-40c64c707afb@panix.com> <E1rmkQD-000BSn-06@wb5agz>
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

If you enabled espeak.service reboot and see if it works.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 19 Mar 2024, Martin McCormick wrote:

> All of you have told me something that I either didn't already
> know or was hazy about.
>
> 	When I figure it out, I'll send a short message to the
> list explaining what it was so I really appreciate your help.
>
> 	The biggest surprise is that speech-dispatcher is most
> likely not being used.  To be honest, we don't learn much when
> everything works perfectly so this is a teachable moment.
> Thanks.
> Jude DaShiell <jdashiel@panix.com> writes:
> > Did you do:
> > sysctl enable espeakup.service
>
>

