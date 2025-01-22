Return-Path: <speakup+bounces-1229-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 548F0A1998D
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 21:15:53 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=o+pS0uyW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E417E382620; Wed, 22 Jan 2025 15:15:52 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C6B043818EC
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 15:15:52 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 10D3E381902; Wed, 22 Jan 2025 15:15:46 -0500 (EST)
Received: from altprdrgo03.altice.prod.cloud.openwave.ai (altprdrgo03.altice.prod.cloud.openwave.ai [65.20.63.38])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 62B7D3818EB
	for <speakup@linux-speakup.org>; Wed, 22 Jan 2025 15:15:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1737576945; 
        bh=ycRGKmGGNxWFm9m+HNd902mKYJ9UleUmCUsD8PJe0h8=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=o+pS0uyWzkKJPv0BHKX1AUG4jHU9fEvNNmOVXMeZETZLNexeUkAmWmaLk9Wy+VDfTrHtvTFtWIX7Znm2/E7wQ4aWhHWfQihvy2JQMWXU/IyWsr8S0Kmv+zYXWWT1s7nWWFDFC+4PvtgcL8Y94ym1eZZ0ZlSO0UwUC6qMKz+VKoW5JaOibGbZJFAsEQZ1H4wy2FOquSA4IMvsvTZUN2UvD1FSf6Sv8mKIcn53iy0tjkMRyyj6Nl0+kq2rpHffNsvR0nPm8e9H4t226ozta2ludSs8t6deKMGp0mSncycVadjtujOHa2lXXdr0W/ELfs8epCk/085OQiG0S5zZBGqB+g==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 678F9D790040E439
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudejfedgvdehkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdef
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo03.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 678F9D790040E439 for speakup@linux-speakup.org; Wed, 22 Jan 2025 15:15:45 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tah8U-000FwR-3D
	for speakup@linux-speakup.org;
	Wed, 22 Jan 2025 14:15:38 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Good old Speakup
In-reply-to: <Z5E_N9tz2YgWRsLz@titan>
References: <E1tafn8-000EhT-0P@wb5agz> <Z5E_N9tz2YgWRsLz@titan>
Comments: In-reply-to Jookia <contact@jookia.org>
   message dated "Thu, 23 Jan 2025 05:55:51 +1100."
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
Content-ID: <61280.1737576938.1@wb5agz.lan>
Date: Wed, 22 Jan 2025 14:15:38 -0600
Message-Id: <E1tah8U-000FwR-3D@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thank you so much.  I thought this should work but it's nice to
not have a warm brick sitting here and espeakup is functioning on
5 command consoles while orca is quite alive and well.

Martin
Jookia <contact@jookia.org> writes:
> Hi Martin,
> 
> speakup and espeakup don't conflict with orca, you can use them both at
> the same time. :) Maybe try removing fenrir and seeing if things just
> work?

They sure did.

