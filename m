Return-Path: <speakup+bounces-1187-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 39CDF955A87
	for <lists+speakup@lfdr.de>; Sun, 18 Aug 2024 03:31:05 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=J/3NkuXO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AFF873825EB; Sat, 17 Aug 2024 21:31:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8F4D4382508
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 21:31:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A10643825D2; Sat, 17 Aug 2024 21:30:57 -0400 (EDT)
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 75D393821E1
	for <speakup@linux-speakup.org>; Sat, 17 Aug 2024 21:30:57 -0400 (EDT)
Date: Sun, 18 Aug 2024 11:29:44 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1723944623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P3VItI2HXlal7IESpG6Tk/z4EqjvG7XQQe0WYlgLzXM=;
	b=J/3NkuXOX7ohG6AcWn1tYhJ6CiuhGC3dB7eC9T+MPp2XK5MP6xAKwBlBAJMlS016Ap26ds
	MV4VuxSI1UTaJ43/0rMpgu61NI3e7iozdFnmZoStqEV7Vos1qCvUVTzpTyEBE0lCbMkinP
	a0SWGU3qKEVs39D8S6GIXMZwNsbTuiVsaMxVu8K1MSFWboBxxYo2PInHTiIkFsmVlT3Gn4
	pH5vx6yi5nLf3vTS9C1/PIyMWujVck1hokplB+8rqdaZuwHd3er9ctNJvntWtnUmmI5lwz
	C7baC4hygo/O7ZILhlyGtq5ujqoa2unntMQ3Njoxl0kayqEKH0WGsJJnR9VQ2A==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Kirk Reiser <kirk@reisers.ca>
Cc: Jude DaShiell <jdashiel@panix.com>, speakup@linux-speakup.org
Subject: Re: speakup crashing
Message-ID: <ZsFOiMs3Vt_KrtrK@titan>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com>
 <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca>
 <c152034f-942c-d477-04ab-58903eae7117@panix.com>
 <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca>
 <ZsEQBh0EshF4Y9Dn@titan>
 <31dc8d77-3c27-ed83-1a48-cd7577a3d7d6@reisers.ca>
 <ZsEUoeCSciVaSALS@titan>
 <c461630e-ab14-a966-0d29-08960033f630@reisers.ca>
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
In-Reply-To: <c461630e-ab14-a966-0d29-08960033f630@reisers.ca>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Kirk,

I have posted them on my list and linked to them multiple times.

https://www.spinics.net/lists/linux-speakup/msg63445.html
https://www.jookia.org/wiki/System-wide_speakup

Jookia.

On Sat, Aug 17, 2024 at 09:27:52PM -0400, Kirk Reiser wrote:
> Zookia: I invite you to post your scripts here on the list please. I
> know a lot of folks that have faught valiantly trying to get their
> systems to come up talking unsuccessfully.
> 
> I myself prefer that things that can, use userspace instead of root,
> other than speakup_soft....
> 
>   Kirk

