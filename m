Return-Path: <speakup+bounces-908-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 46A5D649781
	for <lists+speakup@lfdr.de>; Mon, 12 Dec 2022 01:54:14 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=DeEJ+/Qw;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 791EB382854; Sun, 11 Dec 2022 19:54:13 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5708D382824
	for <lists+speakup@lfdr.de>; Sun, 11 Dec 2022 19:54:13 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 03369382824; Sun, 11 Dec 2022 19:54:04 -0500 (EST)
Received: from out2.migadu.com (out2.migadu.com [188.165.223.204])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 73CDA382821
	for <speakup@linux-speakup.org>; Sun, 11 Dec 2022 19:54:02 -0500 (EST)
Date: Mon, 12 Dec 2022 11:53:05 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1670806408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/7yn+RWTrIzFNaVHDgYaqAsz0PslNf17gwGccQ1KQ+w=;
	b=DeEJ+/QwMNig6ylVBe/PDT1ib5N3Vl9L60/ZweYjJlrgK3SF2QK5EdUGuyQoAjZpXXJlJA
	iurL5pP6X227FlgZPDT+/ZyK4CP4m3kQaLw9IVI9EqHGp+xS0wNnvB4MCOrtPVhmBv0KS+
	kBOKT8r6l3yg16PPLYC/VcV2iE3lmubLxLhujghL1UdY8IILaTLSABQxLqBJeU8K+lnhvY
	JYxzh27eA9XeEX7LQD5FAwA8Jsr7h4h+ihbxvhhVx1nE43sBf+5/FGFez/FLoND4ZXjgdZ
	g0856/poepfJkazLcP1ANqdHm8qxJ7aEJjLn7u0JWALPxJWg6G5ZrrbKghFspg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing Ubuntu Server
Message-ID: <Y5Z7cfzORuPgHUeo@novena-choice-citizen>
References: <000701d90dba$a449abf0$8bffa8c0@Win7VM>
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
In-Reply-To: <000701d90dba$a449abf0$8bffa8c0@Win7VM>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Is there an install via SSH option?

On Sun, Dec 11, 2022 at 05:45:24PM -0600, K0LNY_Glenn wrote:
> Hey Group,
> I thought I'd test out Ubuntu server in a VM, using VmWare.
> The first problem I noticed is that there is no way to call up speakup 
> because it is configuring a few things, like disk space to use and user 
> group and an account.
> When I have installed Windows, I didn't have trouble with this because 
> VmWare took the information from the running windows system.
> Actually, I'm not sure how one would install Ubuntu-server non-visually 
> outside a hypervisor.
> I was using:
> Ubuntu22.04 64 lite server
> I might be able to get through the VmWare installer, I thought I had it 
> using the Be My Eyes app, but I couldn't tell if I was at a prompt, and 
> speaker-test produced nothing, and the soundcard was checked for the VM.
> I also have Ubuntu Mate on the same computer in a VM, and sometimes I have 
> to enable the soundcard again to get Orca talking, but that didn't happen 
> here.
> Just hoping someone has installed Ubuntu-server and gotten speakup to work 
> on first boot.
> Glenn 
> 
> 

