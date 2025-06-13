Return-Path: <speakup+bounces-1302-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 59369AD83A7
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 09:08:16 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=the-brannons.com header.i=@the-brannons.com header.a=rsa-sha256 header.s=hurricane header.b=FnqmAiWD;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7662B3822DB; Fri, 13 Jun 2025 03:08:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 56FEB381913
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 03:08:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7AB22381FD3; Fri, 13 Jun 2025 03:08:06 -0400 (EDT)
Received: from hurricane.the-brannons.com (hurricane.the-brannons.com [216.252.162.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 94E7338190F
	for <speakup@linux-speakup.org>; Fri, 13 Jun 2025 03:08:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=hurricane; bh=QVqgpbVjPA
	FfV7093dIVSBGJjKsrs22IyEwDxJY26SE=; h=date:subject:to:from;
	d=the-brannons.com; b=FnqmAiWDdc4DJzTaZsRVFJxXW1X28vyNRnDFoASgx9wG+G9Q
	m9W5VhhCtbMVvOBALbLZDQHiWPxc1UX9bM9QF8lwrswP1cv3TX3JXOLEqaBdtDgKC4r4y4
	H7x28An2btSL8P80nczNLnwc6BlMRjEPPriyVyGcJNglYWtkI2YQg=
Received: 
	by hurricane.the-brannons.com (OpenSMTPD) with ESMTPSA id 2c23a5c3 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO) auth=yes user=chris
	for <speakup@linux-speakup.org>;
	Fri, 13 Jun 2025 07:07:53 +0000 (UTC)
From: Chris Brannon <chris@the-brannons.com>
To: speakup@linux-speakup.org
Subject: my very public goodbye
Autocrypt: addr=chris@the-brannons.com; prefer-encrypt=mutual; keydata=
 mDMEX37pCBYJKwYBBAHaRw8BAQdASkFrVm/MHGNpj7Oa+nq4b7eBg5LX5qnvS6ojH04ZE9+0LENo
 cmlzdG9waGVyIEJyYW5ub24gPGNocmlzQHRoZS1icmFubm9ucy5jb20+iJAEExYIADgWIQTFfzWT
 HzF7+QWPg09oJ1i8YNj4egUCX37pCAIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRBoJ1i8
 YNj4esVsAQCJXDxhj5gZjcrNMmSH6Z+X5RDdbvsTRvS5wwQXM3g4kAEAjOrdx/fvZDiKL8dylDhU
 YUVVSkwWeOD2UtmYjm/QtwG4OARffukIEgorBgEEAZdVAQUBAQdAOMaQorDR8QUdM34/Q9mUyBvS
 9WFK0Mb76dHyNkERx2kDAQgHiHgEGBYIACAWIQTFfzWTHzF7+QWPg09oJ1i8YNj4egUCX37pCAIb
 DAAKCRBoJ1i8YNj4eo/8AQC4AX6NMv65KQQU7s95T/1Y4E+Z7KTbvhKJeSjdDfj88AEA/qzPnDvl
 dLmqqNTqsfZCK81teOxSoNhRlhWcQ8QQ/wY=
Date: Fri, 13 Jun 2025 00:07:53 -0700
Message-ID: <87h60kxgom.fsf@the-brannons.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,
This is now very public knowledge, and I want to say goodbye here, since
I've been using Linux exclusively for about 25 years and I contributed
to Speakup in the late 2000s / early 2010s.  This software and the
community around it has been really important to me.

I'm dying.  More accurately, I've been dying for a while, but later
today, I'm going to receive medical aid in dying AKA death with dignity.

I wrote a blog post about my situation here:
https://blog.the-brannons.com/post/Medical-Aid-in-Dying-My-Health-and-so-on
Somehow it made it to the front page of Hackernews on Wednesday, and
the denizens thereof proceeded to debate it.  I found the whole thing
absurdly funny, but I also appreciate that this stuff is being discussed
openly, frankly, and honestly.

Wishing everyone the best.

-- Chris

