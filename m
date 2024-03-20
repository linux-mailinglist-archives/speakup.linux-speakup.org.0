Return-Path: <speakup+bounces-1099-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 327598808E1
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 02:07:32 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=U19SrCPf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 03AE6382741; Tue, 19 Mar 2024 21:07:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D63C83825ED
	for <lists+speakup@lfdr.de>; Tue, 19 Mar 2024 21:07:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 51ED238265E; Tue, 19 Mar 2024 21:07:23 -0400 (EDT)
Received: from altprdrgo01.altice.prod.cloud.openwave.ai (altprdrgo01.altice.prod.msg.synchronoss.net [65.20.63.135])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 10D4F38205F
	for <speakup@linux-speakup.org>; Tue, 19 Mar 2024 21:07:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1710896843; 
        bh=+DwutMpq00oOj8UTtQWocZcFHf2KRE4uHJrFdv+kdYw=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=U19SrCPfvGmbQ6PVtMLnoCbCp9JWMDIsuLD4EnVvHmrx9knmW3Ez2vW+Gnwy0ZFDvAjfBx5PrC0VrLMNOBJR7ds+7fMjTFkiy4svbH5Uq3DbhvxqCe29m+i6oxQJ+r8Yc0ZQ2mr0D5AoE4kkRGNAbtsVKOluzOA0EHfqcDSTU0wshKH1X4+lYGRBjbYUybpJVZIdez/t+vtCZPiwLe/wxCCUbfMvSp2ixr9WHtrHA9NEOyAxKfzPx1Nv1BF7iyH67JE7/W6HkaFcMKOjI0dHYEbJGc4XTiNunw8eiiVvhRL5UWReWtZYk4+cEctNQshRbKmejaiGC9NsH6H4/Uwobg==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65F12348011C017C
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrledvgddtudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotddu
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo01.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65F12348011C017C for speakup@linux-speakup.org; Tue, 19 Mar 2024 21:07:18 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rmkQD-000BSn-06
	for speakup@linux-speakup.org;
	Tue, 19 Mar 2024 20:07:13 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Trouble-shooting a Mute Speakup on a Raspberry Pi
In-reply-to: <d021a211-bbe2-7b3f-0357-40c64c707afb@panix.com>
References: <E1rmffd-0009s5-0f@wb5agz> <d021a211-bbe2-7b3f-0357-40c64c707afb@panix.com>
Comments: In-reply-to Jude DaShiell <jdashiel@panix.com>
   message dated "Tue, 19 Mar 2024 20:04:06 -0400."
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
Content-ID: <44067.1710896832.1@wb5agz.lan>
Date: Tue, 19 Mar 2024 20:07:13 -0500
Message-Id: <E1rmkQD-000BSn-06@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

All of you have told me something that I either didn't already
know or was hazy about.

	When I figure it out, I'll send a short message to the
list explaining what it was so I really appreciate your help.

	The biggest surprise is that speech-dispatcher is most
likely not being used.  To be honest, we don't learn much when
everything works perfectly so this is a teachable moment.
Thanks.
Jude DaShiell <jdashiel@panix.com> writes:
> Did you do:
> sysctl enable espeakup.service

