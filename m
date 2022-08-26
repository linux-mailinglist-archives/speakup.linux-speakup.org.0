Return-Path: <speakup+bounces-665-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F2C855A2CE3
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 18:53:59 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=d7d5JfGX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 95166380F55; Fri, 26 Aug 2022 12:53:59 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 81745380E54
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 12:53:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5BDA7380E1B; Fri, 26 Aug 2022 12:53:53 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 185E3380C60
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 12:53:53 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MDmBR4YmNz3rM2;
	Fri, 26 Aug 2022 12:53:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1661532831; bh=NXmQ7oZA4cRxaXp/XKxzkq1iWsxQEw+cXJFNXh0R+RY=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=d7d5JfGXlTnPbydvte7aS/q5t4/pJ9wl9cLcXAYblGa6OHN1+yQLpLMr/ZZ1nzl+q
	 SBmSoGGv+Yv3pkrF4NftyskWKSIRjD3iK/Jadoeudxl7d8+L5bWHLZu2T25T42sjc8
	 BBXoBthJcL5ZrFCb4otghTnE17iFf1JHal+lkwcI=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MDmBR3j9vzcbc; Fri, 26 Aug 2022 12:53:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MDmBR34rjzcbP;
	Fri, 26 Aug 2022 12:53:51 -0400 (EDT)
Date: Fri, 26 Aug 2022 12:53:51 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, Chime Hart <chime@hubert-humphrey.com>
cc: Willem van der Walt <wvdwalt@csir.co.za>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <02a301d8b94e$e393c6d0$80ffa8c0@Win7VM>
Message-ID: <24a12350-b6ed-5a3a-a0e5-27d8b8e6434@panix.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za> <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za> <020a01d8b8b9$97365310$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208261051420.318@willempc.meraka.csir.co.za> <029801d8b94e$09c913b0$80ffa8c0@Win7VM> <afe9ca5e-fcb2-8764-d9e2-0d5123c4adec@hubert-humphrey.com>
 <02a301d8b94e$e393c6d0$80ffa8c0@Win7VM>
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

Better, ps -A|less if less is available.  Alternatively replace less with
more or most.  That way one screen at a time gets shown and you don't
loose output.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 26 Aug 2022, K0LNY_Glenn wrote:

> I may likely try something like that, but if there are a lot of items read,
> the OCR on the iPhone may not get it all.
> Glenn
> ----- Original Message -----
> From: "Chime Hart" <chime@hubert-humphrey.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Willem van der Walt" <wvdwalt@csir.co.za>; "Speakup is a screen review
> system for Linux." <speakup@linux-speakup.org>
> Sent: Friday, August 26, 2022 8:19 AM
> Subject: Re: hopefully some help with AntiX
>
>
> Well Glen, why not run
> ps -A
> to see what's actually running.
> Chime
>
>
>

