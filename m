Return-Path: <speakup+bounces-1215-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7AB4796CBF9
	for <lists+speakup@lfdr.de>; Thu,  5 Sep 2024 03:02:19 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=LCsjt+39;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ECC3A3822A5; Wed, 04 Sep 2024 21:02:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CDD6D382068
	for <lists+speakup@lfdr.de>; Wed, 04 Sep 2024 21:02:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EBF3B382064; Wed, 04 Sep 2024 21:02:11 -0400 (EDT)
Received: from altprdrgo06.altice.prod.cloud.openwave.ai (altprdrgo06.altice.prod.cloud.openwave.ai [65.20.63.204])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AFFF9382053
	for <speakup@linux-speakup.org>; Wed, 04 Sep 2024 21:02:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1725498131; 
        bh=jextHMhNArinDLL7VJe4cN7dWOcf3QVGbAr8H+D3hyE=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=LCsjt+39Zm/qNGeCJEyya/FhBM21QnVjGQ8EhfPvapXFDljfcdGlsgUpD48fKKy6Js7/pS8goxVztLHQ11MFMY9H26QQ24IBtiMBi15+TSicLFrpfoGs0b+PD4EQVWpxQa/1NCy/MHdkSQQINGgjIik1TVxQDJ/KJoSM54PtrVCSeU1kTX7vlT+ZsuKDoYSqhNh4pNHLy5Xz2PLputEyU3q2Cm008fvT5K5IrEx6pRNzOnMSjieiAfPXJ+p42GCkp+o0pRZvNzy1wH5WXXxN5uFIqtZWQoaQmDgg8dDU9ZuITlyMgDxOyvipdE2oNaJb0E+Yw6/7uF074YuLHZzpEw==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 66CF3E2A0119360D
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeftddrudehkedggedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdei
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo06.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 66CF3E2A0119360D for speakup@linux-speakup.org; Wed, 4 Sep 2024 21:02:11 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1sm0sv-0002Gf-0u
	for speakup@linux-speakup.org;
	Wed, 04 Sep 2024 20:02:05 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was howto run speakup/orca concurrently in ubuntu)
In-reply-to: <Ztjd01MJ4P4u7Zuz@titan>
References: <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za> <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu> <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca> <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net> <E1slFDa-0001Hb-0R@wb5agz> <Zta33F80vCUd8tBU@titan> <E1slZoq-0004cu-22@wb5agz> <ZtduSMS0hyMMjZQZ@titan> <E1slxjW-0001nZ-2d@wb5agz> <Ztjd01MJ4P4u7Zuz@titan>
Comments: In-reply-to Jookia <contact@jookia.org>
   message dated "Thu, 05 Sep 2024 08:23:15 +1000."
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8719.1725498125.1@wb5agz.lan>
Date: Wed, 04 Sep 2024 20:02:05 -0500
Message-Id: <E1sm0sv-0002Gf-0u@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The truth is that I was kind of stupid on several counts.  Read on.
Jookia <contact@jookia.org> writes:
> Did the non-GUI consoles work when you followed my instructions?

No they never worked and here is one reason why.  I was
confused/stupid.  Since speakup and espeakup both have the same
text-to-speech engine, I thought that what was installed which is
espeakup and serves orca was going to somehow get input from both
the GUI and non-GUI environments especially since only one speech
stream would be active at any given time.  As I think about it,
that's not a good design because one of the GUI terminals might
receive some text while one was actually on one of the non-GUI
consoles so at best that would be confusing to hear and at worst,
it would just be a garble of junk.  You continue:
> If so then it's probably that you needed to blindly login as espeakup was
> running as your user but you didn't have Orca running as your user, it
> was instead running as the system user.
> 
> The short answer is that you're not going to be able to have speakup and
> Orca read login prompts. You have to pick one and blindly type in the
> other. There's no easy way to fix this on a modern Linux desktop.
> 
> Jookia.

	My thanks to everybody who contributed ideas here.

	My first experience with unix or a unix-like operating
system was in the Summer of 1989 when I was transitioning from
being a repair technician for the university's Audio Visual
Center to a worker in what then was called the University
Computer Center Data Communications Group.

	Just to remind everyone, Unix with an upper case U is the
original AT&T operating system that Bell Labs spawned in 1968 at
the dawn of what became the internet.  What I was using in 1989
was DEC Ultrix which was Digital Equipment Company's
implementation of AT&T Unix and, if memory serves me, it was more
BSD-like as in Berkeley Software Domain.  FreeBSD is probably
closer to that than Linux but all these versions of unixen are
called unix-like OS's because they look and feel a lot like the
original AT&T product with the capital U.

	I can say I have 35 years of experience with unix but
since it is used in so many different ways by so many different
people, many of you know far more than I do so we all have our
favorite things we like to do and other areas where we don't know
enough to stay out of trouble.

Thanks for all the help.

Martin McCormick	amateur radio call WB5AGZ

