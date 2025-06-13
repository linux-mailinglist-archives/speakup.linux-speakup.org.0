Return-Path: <speakup+bounces-1303-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3B911AD89F7
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 13:06:06 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=r+Mifvat;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7BCF03824AF; Fri, 13 Jun 2025 07:06:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 56F4838199F
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 07:06:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 591E7382039; Fri, 13 Jun 2025 07:05:57 -0400 (EDT)
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 48918381913
	for <speakup@linux-speakup.org>; Fri, 13 Jun 2025 07:05:54 -0400 (EDT)
Date: Fri, 13 Jun 2025 21:01:34 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1749812741;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6RDVbjtDX23tBBHrmpZHm7kreew20HD+xPeHQUj3pFk=;
	b=r+MifvatoJdvXi4ENIU/D1nxRe0bJ5LoDf5Iyt/op0KJbF9RiB8wCFcMMHV00ZuwcPF1Hx
	GdzkNZxqfROvc+RXeRjO+ULYtgmCrS8pJMPx8FuH8WC5gHnGW5cEsksn4pAgjWKsigsxwS
	NJMNF1hMZruqQXXyy6Pt9q8XIuJ0zp7Aavk9vfEWM7IhtanPI/kfr29xWz4jUBNlD3BHPf
	7twFUteQFiYpOCH+dXejLawhzzBe0mFic4wojGcnoPSn2AjwAapQJHexhMw5AY7dwQoKI5
	TaY5mqpkXRAOutCHXYBn2LD1kJOi49kNwrKn+/FhtrnEt9Fy5x0P2DDlVcGX4w==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Tripletalk mini
Message-ID: <aEwFDuQX7iT3xmzY@titan>
References: <73297c7e-9945-483b-a9d3-e347ab217d59@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <73297c7e-9945-483b-a9d3-e347ab217d59@math.wisc.edu>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I belive speakup does support USB serial devices nowadays.
I don't know which Speakup driver you'd use for this.

On Thu, Jun 12, 2025 at 11:06:42AM -0500, John G. Heim wrote:
> I've been poking around to see if there are still any hardware synths
> available. There is something called a Tripletalk Mini on the Blind  Mice
> mega Mall.
> 
> https://www.blindmicemegamall.com/bmm/shop/Item_Detail?itemid=5323293
> 
> It does not seem to have a serial cable connector though. Correct me if I'm
> wrong but that means it would not work with speakup, right?
> 
> 

