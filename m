Return-Path: <speakup+bounces-1200-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8773D968D1F
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 20:14:12 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=YtrEw/XP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A49D4383CB6; Mon, 02 Sep 2024 14:14:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 858ED383CAE
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 14:14:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9A653383CAF; Mon, 02 Sep 2024 14:14:04 -0400 (EDT)
Received: from altprdrgo02.altice.prod.cloud.openwave.ai (altprdrgo02.altice.prod.cloud.openwave.ai [65.20.63.73])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DBC3C383CA6
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 14:14:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1725300843; 
        bh=WWX/pKZSk2EcoJfTNj4Qp6ool15cFyclHAFHVNsauVk=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=YtrEw/XP5zvkMTJkt51cj00HLbB3PhrguMl/bR09cHAX0K8GnFSMUyBIrrzKM6PIiBjbtX7Mg+rXQP+OmtEoZFHRzffpb3xDyZMncvvP6rTdm9RPzXlAWq1DcC+1h2YMm7kohZsGvfb1oT/u/Su7wgTCc0EjdCNhE2GomE/M2HMTIBTS7hKT2ca5y8MPpSLF116D8PwnjrIHrGL13e/hmAHFNejA5AJAuNLwZB5jOkBJ8hLO8AfxcYdqp1iHpM3A0yAmJBB+oZ/cAkmArU+3HTEciDiyaa7Qlp5I5snnAYHwnWy3ckomrla11Z5UbErcGgB8k02CcJBwDQ2Mw9rRyw==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 66D1055C00842D9B
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeftddrudehfedguddvvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhgpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtvd
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo02.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 66D1055C00842D9B for speakup@linux-speakup.org; Mon, 2 Sep 2024 14:14:03 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1slBYr-0003js-0w
	for speakup@linux-speakup.org;
	Mon, 02 Sep 2024 13:13:57 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was howto run speakup/orca concurrently in ubuntu)
In-reply-to: <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za> <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
Comments: In-reply-to "John G. Heim" <jheim@math.wisc.edu>
   message dated "Mon, 02 Sep 2024 09:55:20 -0500."
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
Content-ID: <14374.1725300837.1@wb5agz.lan>
Date: Mon, 02 Sep 2024 13:13:57 -0500
Message-Id: <E1slBYr-0003js-0w@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

It looks like speech-dispatcher is running and was started on
boot and is serving all the gnome terminals that is, the first
two consoles.  They both talk but behave identically as gnome
consoles.  The remaining 3 consoles are not GUI so are mute right
now except for the beep which comes from the sounder on the main
board but sound does result if I play noise, tones or anything
else through sox so, if speakup was in the output path, it should
speak.

	As I said, I don't want to mess up orca speech since it
works fine, just switch inputs to speakup from gnome while I am
using the text consoles and then go back to gnome when needed.

	This installation started as a debian install a couple of
years ago in which I got speech going by typing the s character
to get a talking installer and then went from there after
installing the gnome desktop.  I didn't even know that pulseaudio
is not the sound system of choice but pipewire is so I'm getting
smarter by the minute.  I'm still not sure what I am learning,
but so far, so good.

Martin

