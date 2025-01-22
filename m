Return-Path: <speakup+bounces-1230-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 04CACA199F4
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 21:41:27 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=TlHqqoeG;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6E67A38261D; Wed, 22 Jan 2025 15:41:26 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5093738073C
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 15:41:26 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 754913818ED; Wed, 22 Jan 2025 15:41:19 -0500 (EST)
Received: from altprdrgo02.altice.prod.cloud.openwave.ai (altprdrgo02.altice.prod.cloud.openwave.ai [65.20.63.73])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 225C03818A0
	for <speakup@linux-speakup.org>; Wed, 22 Jan 2025 15:41:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1737578479; 
        bh=a3TcA+NOxlQkk8GIJ4VZgXDXTBcGx/sNE5D5RqrER7A=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=TlHqqoeGyJuBxFYUI96CKREtTtssLqDGHDWe6EVA7xAI2ZiK2Xn532g95EqODM/dO6jUwUjTALh6iFlWAN142b79+Q7hjStlISZp9mA41ME6BKZ9CRj/plRePmed88SRKS4h/5P+w7n2ixAC68dB3ZQ6SGtin14V1KWJD71pqW9UP2SILSCw+qfw36VJN+8l6Z4Z0/zRtwt6nVImAWXj2dnUWuuU+7c83/AFVKbaDwrsc3e7FzNimLl85mDNdyA07ahnOGIEoMLS8n6f2LtFNImM0YRVWNsZTbcULgs2uIxSxfhVBGwTLPB1BORExWOrvmvey4zVbZJN3kk6D8MUGA==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 678FBEA8003B85D7
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudejfedgvdeifecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotddv
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo02.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 678FBEA8003B85D7 for speakup@linux-speakup.org; Wed, 22 Jan 2025 15:41:18 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tahXE-000GAf-2L
	for speakup@linux-speakup.org;
	Wed, 22 Jan 2025 14:41:12 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Good old Speakup
In-reply-to: <1f0cb61b-9235-a9cc-f9b5-b30e82ca5198@reisers.ca>
References: <E1tafn8-000EhT-0P@wb5agz> <Z5E_N9tz2YgWRsLz@titan> <1f0cb61b-9235-a9cc-f9b5-b30e82ca5198@reisers.ca>
Comments: In-reply-to Kirk Reiser <kirk@reisers.ca>
   message dated "Wed, 22 Jan 2025 15:13:40 -0500."
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
Content-ID: <62163.1737578472.1@wb5agz.lan>
Date: Wed, 22 Jan 2025 14:41:12 -0600
Message-Id: <E1tahXE-000GAf-2L@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks to all.  That reduces the number of computers that have to
be turned on by 1.  I was using that system as a talking terminal
in to some raspberry Pi's and my main Linux system.  The I86
system has two working CDROM drives but it's power supply fans
are starting to make occasional bearing sounds and the CPU is a
good extra source of warmth in mid Winter but unwanted heat in
Summer so now, it can serve as extra resources when needed but
doesn't need to always be on, shortening the time the UPS can
keep things going.  Again thanks.

Martin	WB5AGZ

