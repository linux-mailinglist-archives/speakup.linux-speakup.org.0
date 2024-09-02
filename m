Return-Path: <speakup+bounces-1199-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C74BB968C17
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 18:38:38 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=fDdXYSuF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C3CC2383CC0; Mon, 02 Sep 2024 12:38:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A7A81383CAE
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 12:38:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A6589383CAF; Mon, 02 Sep 2024 12:38:30 -0400 (EDT)
Received: from altprdrgo06.altice.prod.cloud.openwave.ai (altprdrgo06.altice.prod.cloud.openwave.ai [65.20.63.52])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6D439383CAA
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 12:38:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1725295110; 
        bh=ekqETwgVv+uIXzmLvnRB0uEe+6BLDxkCLSSajo+dd5Q=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=fDdXYSuFV9E0GWTPx3z7dqc9XCkybPc1BEI/YULjTcHrWGxPyp9ypHODOV1ud9WV0jXzuV2JUas/a/Z51ulq4kXBMTsvxzIHviJnzImqJeHCWTjP1+Fcr1os2fTvGeIRUYz9jZJG9dpdosOhypcQJL+lvEgjR8M5bFmw8Ua6MmlVydk3O7SwdhkoLNeqETWrLBX5CLWxna1ibx0tdtFPe+VN1ofXNUiHCzaJZXgJD8ie7D26Z7Zcg7aXnKOAf52lQtJ65PihdBk110KjHaVowZFL4dZDz9ygD9fLfLVYkSU4loD5wqNFh0dfSeBbXzClXayu4L2jtE3GOMZ4qQRcpQ==
X-RG-VS-CS: clean
X-RG-VS-SC: 10
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 66CF3E2A00B68281
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeftddrudehfedguddtfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucgfrhhlucfvnfffucdluddtmdenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhgpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtie
X-RazorGate-Vade-Verdict: clean 10
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo06.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 66CF3E2A00B68281 for speakup@linux-speakup.org; Mon, 2 Sep 2024 12:38:29 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1slA4N-0003Eg-2R
	for speakup@linux-speakup.org;
	Mon, 02 Sep 2024 11:38:23 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was howto run speakup/orca concurrently in ubuntu)
In-reply-to: <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
Comments: In-reply-to Willem van der Walt <wvdwalt@csir.co.za>
   message dated "Mon, 02 Sep 2024 14:55:46 +0200."
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
Content-ID: <12440.1725295103.1@wb5agz.lan>
Date: Mon, 02 Sep 2024 11:38:23 -0500
Message-Id: <E1slA4N-0003Eg-2R@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

There never was pulseaudio on this system but I do have pipewire.
Willem van der Walt <wvdwalt@csir.co.za> writes:
> Get rid of pulseaudio and change your speech-dispatcher config to use alsa

