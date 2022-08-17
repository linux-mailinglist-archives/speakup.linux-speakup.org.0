Return-Path: <speakup+bounces-578-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BFA80596709
	for <lists+speakup@lfdr.de>; Wed, 17 Aug 2022 03:52:59 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=OemISLOG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 84FDD38480A; Tue, 16 Aug 2022 21:52:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6D88F38480A
	for <lists+speakup@lfdr.de>; Tue, 16 Aug 2022 21:52:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 26E40384802; Tue, 16 Aug 2022 21:52:51 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DD2E33847FF
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 21:52:50 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.58.23.176])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 4FB28769
	for <speakup@linux-speakup.org>; Tue, 16 Aug 2022 18:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1660701169; bh=T5kGXCmd9O1xiQcmrgVM4mbqSTSindTb35dzq9Rl8L0=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=OemISLOGbvSBPp/iug7bf7g6t0IJqjXbffJ05wAsv9KmwNlvTYsxlvdLw+QRw08vF
	 BQb/cpEqKjOdzlkrq/QxfUMtukvHvouB0aGwHAHyxD6j6XJzk756XRi3EKiYhl/Rse
	 q4/QZiYosKVJnFUlaht54PXJDDOTSO6W6zlW6Mv/unwyqEVAC4gaNRy1zR16/9yDcT
	 Ygm+mr+KXewx3/LNjvJLMQ4UEJxzZJbIl+CMVz2MlWZBfCm4pASEX44QjTQxjimDRF
	 5xBzmCaKnBgbZqACD9HW8QaVzypWnj0D1xMDhFEfKirUxMP6+NaduupRbKZaQal5ns
	 jWUrV8472N6Cw==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 6AFA1C300; Tue, 16 Aug 2022 18:52:46 -0700 (MST)
Date: Tue, 16 Aug 2022 18:52:46 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: other screen readers, was: Re: "Accessibility in Fedora Workstation"
 (fwd)
Message-ID: <YvxJ7vIpvuDP2KK+@gregn.net>
References: <62c8f9a5-aeec-58a5-8c5b-59734dab334e@math.wisc.edu>
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
In-Reply-To: <62c8f9a5-aeec-58a5-8c5b-59734dab334e@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Tue, Aug 16, 2022 at 01:26:48PM -0500, John G. Heim wrote:
> I believe I was using Speakup and something
> called Nupernicus on Linux at the time.

It was actually called Gnopernicus. I recall building it from source
when Marc first released it. I remember it crashed a lot, and wasn't very
usable, but I was thrilled that I was able to use Gnome at least a
little bit, and get a feel for what it was like.

<https://en.wikipedia.org/wiki/Gnopernicus>

Since android came up in this discussion, I will point out that
talkback isn't the only screen reader option on android.

<https://blindhelp.net/software/csr>

Since google is introducing restrictions on side loaded apps in
android 13, I don't know what this means for CSR down the road.

<https://www.androidauthority.com/android-13-sideloading-apps-restrictions-3161162/>

Speaking of JAWS, there's a screen reader user tester training course
out there. The first prerequisite for that course is ... experience
with JAWS for at least three years:

<https://carroll.org/screen-reader-user-tester-training-program/>

I guess that means the cheapskates using NVDA, Narrator,
or those who don't use
windows/JAWS as their daily driver aren't worth certifying. Makes me
wonder if the VFO group had anything to do with setting up this course.

In the spirit of staying on topic, we remember android runs on the
linux kernel, yes?

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

