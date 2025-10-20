Return-Path: <speakup+bounces-1455-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DDFC6BF2F34
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 20:35:12 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=TKNIn66g;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=lJ5aEX/T;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 556D1382BA3; Mon, 20 Oct 2025 14:35:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 36040382A45
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 14:35:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A839A382A5F; Mon, 20 Oct 2025 14:35:04 -0400 (EDT)
Received: from fhigh-b3-smtp.messagingengine.com (fhigh-b3-smtp.messagingengine.com [202.12.124.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DAC49382A5E
	for <speakup@linux-speakup.org>; Mon, 20 Oct 2025 14:35:02 -0400 (EDT)
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 60D8C7A00C8;
	Mon, 20 Oct 2025 14:34:59 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Mon, 20 Oct 2025 14:34:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1760985299;
	 x=1761071699; bh=vmrsVBeAvEdPvSoPRd52/0BZCFdqqw5wG1ELd40r8FQ=; b=
	TKNIn66gTq3MKo922wF1Oxl1A2NmGzxPKbyv+vrOoEqD3xexUBByZcsb/uQNH/Vz
	gU1qvBBQc7tD7ZjuwZX76bOhCcAISOPZYQoY+i+/wAlvP5AEOw7GrAbK3c4c2996
	Zodac2L0ZSCfNCkSDMnGyhQz/1dMlyBbSGOl65PO0+43C9nOoNJKsLHXch5rziib
	sN7xVbECLuSOUQ50FDxHz3TFVw2yTl+sOah+pSHG6e2G0jeGQCmR4g2R8TXKDk8v
	wFPJe1FO6nPqdcq0caUckkjx4s+WccZBSpeH8ryWD4AAZgsiFrTzM3m89blLT3HD
	NtjgCzb6DEvt/7nztMOong==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1760985299; x=1761071699; bh=vmrsVBeAvEdPvSoPRd52/0BZCFdqqw5wG1E
	Ld40r8FQ=; b=lJ5aEX/TX+XZQgxX8zIG3A35y5+Qrpmrws6+Zn1bM28h0wfxTbB
	RaqTe4a/SdP/NLhUZ0PqUl5KBe1MX0DLh60XFKoPywUdWxQq9K0KsoU4//fpJBaF
	HiDHkUiBQt2KmeBL0+sMfm9icdqK4Cq+p/0CXY+ErPNmjiBY84YKcxTfPvQJIfTe
	9en8dTQam5qRCO+UOD39M4nKYZ/grtLNwsEJtE297XSWZ7yQ1R5wxfThr2o92z0O
	+hWqu6ji/NrgNKHjMLn2w3OlO6Zc61jH2En1E8gX2hCAPyrlJZL3gld4n+Rs8MGF
	QY/1tgWMK+PbJ9KQQRWhMKJO8iCpWylL/rQ==
X-ME-Sender: <xms:0oD2aOOOlOyCzAZF4xR3iMJHQoPeszqqN8q88G8XSJaRd4h1Q7NMbA>
    <xme:0oD2aBS0fGS1racBOegDT6bkjcmljCfcO-ivVK0_VMRpJnbXMqCHxSUsdY9iKSRqQ
    OxXn7hguAgTRRTDXu5JcrN9MiTngik3gBAYy8jIdUwp_fnbpqzdKLA>
X-ME-Received: <xmr:0oD2aEZX5wgmOPiLZrpGXGhJz4fhiTw2qFE10FoKpGxZTK2XMwVC5bA8Ugf0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddufeekheehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfj
    rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
    frrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffef
    ffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphht
    thhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehglhgvnhhnsegvrhhvih
    hnrdgvmhgrihhlpdhrtghpthhtohepkhhirhhksehrvghishgvrhhsrdgtrgdprhgtphht
    thhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhg
X-ME-Proxy: <xmx:0oD2aG0EQ31GzEJfHatVuGMZ0Tdh8jpu80KFFf6Q7XmHhsr46KQ1Zw>
    <xmx:0oD2aMXYfFoApseqAkKKM35NCFc5kTzuBnMp5_Uy-IR_YigZudwUwA>
    <xmx:0oD2aIXNT0aDqV0KIx7eJCsLNGEtFNFDLtQw7DreIKLwdtQ4grnfEg>
    <xmx:0oD2aDd7ndlH2R7tNqwLwflwDE0m4bduyn-BGDrTKNeJ8boIIofXnw>
    <xmx:04D2aJG2Wq3m_A2oFHPtK5SeCnJnICnv5b9QvlPZkfq18azoqwZzsH4s>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 20 Oct 2025 14:34:58 -0400 (EDT)
Date: Mon, 20 Oct 2025 11:34:57 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: K0LNY ?? <glenn@ervin.email>
cc: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
Subject: Re: Voxin With Espeakup
In-Reply-To: <0b9001dc41ee$fd34f380$01ffa8c0@nucwin10>
Message-ID: <7b79b410-05b6-c547-ecba-59cd1be2cb9f@hubert-humphrey.com>
References: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10> <925db357-1d21-2b65-7882-45d0a49911cf@reisers.ca> <0b5701dc41ca$5edf3d40$01ffa8c0@nucwin10> <ca477f4f-952d-93c0-fc67-56a7c24f8f24@reisers.ca> <0b6401dc41e2$13de43a0$01ffa8c0@nucwin10>
 <981a2802-0dd0-5a10-3b4d-9fb4dc8ca8bb@reisers.ca> <0b7001dc41e5$edf14300$01ffa8c0@nucwin10> <c92501f4-a4ab-08d9-420b-aac383162dfb@reisers.ca> <0b8601dc41e9$06ff1cc0$01ffa8c0@nucwin10> <0b8b01dc41e9$b49d8600$01ffa8c0@nucwin10>
 <0b9001dc41ee$fd34f380$01ffa8c0@nucwin10>
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

Hi Glen-and-All: Have you gone in a voxin3.4 directory-and-run its installer? 
Otherwise, like you did, there have been times I had to kill-and-restart 
speechd-up. Last time I traded messages with Gilles, he was going to resume 
working on Voxin this Summer.
Chime


