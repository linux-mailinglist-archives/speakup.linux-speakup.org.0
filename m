Return-Path: <speakup+bounces-882-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 69C53641D95
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 16:13:31 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=HCCcQyVX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DB8B7382A72; Sun,  4 Dec 2022 10:13:30 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BD808382A43
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 10:13:30 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A9343382A4E; Sun,  4 Dec 2022 10:13:21 -0500 (EST)
Received: from out-7.mta0.migadu.com (out-7.mta0.migadu.com [91.218.175.7])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 79A5B382A43
	for <speakup@linux-speakup.org>; Sun,  4 Dec 2022 10:13:20 -0500 (EST)
Date: Mon, 5 Dec 2022 02:12:33 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1670166797;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=US9xUwWS8H2RLqdaORqhfP6R4sO5fvaeNR7mUfe2gMI=;
	b=HCCcQyVXV1aYg8ipFWYypuDgUKwGrlrpzfgqmN+SIdqP5Yib9t4Cw+ETYiBA05B+/jr3GT
	2UVKgPXwyfDEAYGDQyitFqm7qJFpsNOBiFQOQChqJG4imV3xfYCEmX/x/qDaRtCLlANgGG
	tgHOpWqGZlwRCu5yC5PJku+OJA/OY40YL3If9FjTvBHFIFnFuhwjkhtEOJ3Tf0mMvkVe7y
	D6r//l3Nsxopx12lA/7ftmv00lxGtG9ajV9Imit9Cqhj0INoUDdo0hCs1vkcIfZ4ygq9sZ
	EAWWzj3cUOTZEbtUc0IOb9lFkfXv8V0Ey67yowJIAX6sSQrHnsekoHVx8KTP8Q==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Georgina Joyce <gena@gena-j.me.uk>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Is it at all possible? Speakup on an embedded linux system.
Message-ID: <Y4y44RYsHp7gIzBX@novena-choice-citizen>
References: <3B13712B-BFF1-473F-AE27-4DD195822306@gena-j.me.uk>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3B13712B-BFF1-473F-AE27-4DD195822306@gena-j.me.uk>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hey Georgina,

It's perfectly possible to get speakup working on an embedded Linux system. You just need to kernel modules and a synth, possibly espeakup. If the root file system gets replaced you may want to use an overlay system and immutable root.

Jookia.

On Sun, Dec 04, 2022 at 03:09:54PM +0000, Georgina Joyce wrote:
> Hello All,
> 
> I have a radio that is in 2 parts. A embedded linux system and a Software Defined Radio. The embedded linux is very slim but easy to access. I can log into it via a terminal emulator. It is using anArm processor. As I have several Raspberry Pi boards, I guess I could build a kernel or its modules on a Pi. Because I probably wouldn't be able to build a development environment on it. As it is rather buggy there are frequent updates which appears just to replace the root file system. So any settings are just written over. I think it would be rather easy to mount the update on a loopback and rebuild it when finished hacking.
> 
> So how would I investigate any possibility of getting speakup working? Or am I just barking again!!!
> 
> Thanks,
> 
> 
> Georgina
> 
> 
> Call: M0EBP
> DMR ID: 2346259
> Allstar: 52178
> Locater: IO83PS
> 
> 
> 

