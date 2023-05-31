Return-Path: <speakup+bounces-947-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1BE377189C1
	for <lists+speakup@lfdr.de>; Wed, 31 May 2023 21:01:23 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=JdZVUeOv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F4323824BD; Wed, 31 May 2023 15:01:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 520FB380FE6
	for <lists+speakup@lfdr.de>; Wed, 31 May 2023 15:01:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 26B4538241A; Wed, 31 May 2023 15:01:13 -0400 (EDT)
Received: from altprdrgo02.altice.prod.msg.synchronoss.net (altprdrgo02.altice.prod.msg.synchronoss.net [65.20.63.73])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DB5A438233E
	for <speakup@linux-speakup.org>; Wed, 31 May 2023 15:01:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1685559672; 
        bh=cCu9AFqgUxQXjKu9iGYQttejt30rGwQL84dblaZPbZU=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=JdZVUeOvyusnvnigHgIYF1KuOYwjK4WHNEo+0S8q/1ndhxuG6d69lMeukdvdhiR0rsFj4y9oyd8JGFGxE20GU3Pe53FJIcHhtnmanwS+CLWEGfTRQl7FJQYlz9SUU9he65C3E65+1CBTZz0cflPSVIvdQOPSGNgrNdA+Kk4k0HWiVBEVN7K7rDeAWRPHSmD9WrrStYo8oC5fw2Moaatpaiuajo651fkqhe/WzpGGq6/I0I7mNQqlXW/Ho0T6SvdG9WShzafpLZ7zQ6XmZ+PG5uOhiqXpJNz2aWUXN3RFQKmBNcS/6ly7pPrEx3wq+AvemmXEVOp6+24hK9lhH/h7Gw==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 643D9E0D0A90B782
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekledgudefudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidrlhgrnhdpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotddv
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz.lan (47.217.109.117) by altprdrgo02.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 643D9E0D0A90B782 for speakup@linux-speakup.org; Wed, 31 May 2023 15:01:10 -0400
Received: from martin by wb5agz.lan with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>)
	id 1q4R4C-0003ED-2L
	for speakup@linux-speakup.org; Wed, 31 May 2023 14:01:04 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Debian Install With Speech
In-reply-to: <2a1801d990c2$5c0559d0$01ffa8c0@nucwin10>
References: <2a1801d990c2$5c0559d0$01ffa8c0@nucwin10>
Comments: In-reply-to "K0LNY" <glenn@ervin.email>
   message dated "Sat, 27 May 2023 12:40:41 -0500."
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
Content-ID: <12411.1685559663.1@wb5agz.lan>
Date: Wed, 31 May 2023 14:01:03 -0500
Message-Id: <E1q4R4C-0003ED-2L@wb5agz.lan>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

"K0LNY" <glenn@ervin.email> writes:
> I am not having luck with getting the Debian installer to speak.
> I am booting to:
> debian-11.7.0-i386-netinst.iso

	Hmm.  I recently did something similar except that this
install was to a USB drive and used the AMD64 image
dd if=debian-11.3.0-amd64-DVD-1.iso of=/dev/sdx

	I may have tried the netinstall version and not had any
luck with it but the dvd image did talk with just plain old lower
case s as soon as I heard the beep.

	The I86 bullseye disk should be fairly similar.  You
might try a usb sound card and maybe it will find that.

Martin

