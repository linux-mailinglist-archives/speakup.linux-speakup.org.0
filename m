Return-Path: <speakup+bounces-1520-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F0AB5D3BB97
	for <lists+speakup@lfdr.de>; Tue, 20 Jan 2026 00:14:31 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=gpbbiXbD;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=NGnzDG7N;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6DFB03818F6; Mon, 19 Jan 2026 18:14:30 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 524D53818E2
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 18:14:30 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 47C123818D9; Mon, 19 Jan 2026 18:14:24 -0500 (EST)
Received: from fhigh-a4-smtp.messagingengine.com (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C3AC7381846
	for <speakup@linux-speakup.org>; Mon, 19 Jan 2026 18:14:23 -0500 (EST)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 98D571400372;
	Mon, 19 Jan 2026 18:14:22 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Mon, 19 Jan 2026 18:14:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1768864462;
	 x=1768950862; bh=SvWm3LMgiqqfnWEO20tx3BnDuSleCHm4n4rIuxUj++g=; b=
	gpbbiXbDfWiMl3fini1NexFawxtMgZ3aQvLUkRqYiQq8/lEvbioGF96kU3vwtsG8
	UxCOr4i8EDuM6DTns2pQMVOZY1xi7pkvJiVTRDKSg9HI96dxc51e59Ya2wOMLCXo
	sODt9ZcAJdNijzhNs9G7CHhYqhJP5BEbe9d9EOBng+aT79zJKEiZdne2PoXmtiUN
	OpL5/fDpQtxv1cLAewr9/O28IdtAuvpGGoHrdEl2QnKN5786HE++cbCQS2c1rqtj
	7Tt1/tAMI3knj7vTwaNe0Yv8QdUPVYOaElbclWqCQo6qbUCG79fD8L2iHO5z2aRQ
	gVa/T6+GOFMpDRTY4rkYdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1768864462; x=1768950862; bh=SvWm3LMgiqqfnWEO20tx3BnDuSleCHm4n4r
	IuxUj++g=; b=NGnzDG7NCHVFc9D9sYqGPmjo7yrpjDQpzB+9+zyoznKaHF7g+6f
	g7hdlK9sMjthL2GP61p/QvTzx46l2Ga2cvSdceN7l4J6IkDRvUXZ5QqlQWVPvnBa
	AwIAW20e3htqeWqaJxykFwNRStRJRmcOkPaDOCXjgreVFe+B/fXOQZs8FLQG67KC
	Hv+0JLvN2IuQU/737UEf7LxLD5dKc9xt5f9GHAEHfWspmUzJcLOyIvBVO0R8+Nr5
	bRZ3J9Dz3yt5NPI88PWl2eZ+9m0FvoUWQfHl9L4nqQR2uSFG5r6XRNLyzmyREQ89
	nV83bcrP+jmwfu3CSgqQtbsfB1FyzYNV9jw==
X-ME-Sender: <xms:zrpuaQRt_ZtvmGLm1DWFdxuGkKAeyHvuj2-ZpUVbL3BE9B43anMR6A>
    <xme:zrpuaVP6WsSnYhxGK3tYtLE8O_VYKbSS1PCovsIv6oUi0-HthBovNOjLpfxdHz0tW
    _dZgKNeCTTOOxDNelioRnh6Zxrjm6weg80rPcnfboY1hAuBoj6SC8Q>
X-ME-Received: <xmr:zrpuabMvpUqnp1RJwPY-Fe4fycyGpkdh7qY4vK3SRquEZ8ZkSGarQlBv1V-_>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufeekkeehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfj
    rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
    frrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffef
    ffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphht
    thhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehgrhgvghesghhrvghgnh
    drnhgvthdprhgtphhtthhopehjhhgvihhmsehmrghthhdrfihishgtrdgvughupdhrtghp
    thhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgh
X-ME-Proxy: <xmx:zrpuaduk_kzD8d2ooR8eM9ggC2fOqycXJyTg9jX43rwR1ClqGKb1EQ>
    <xmx:zrpuadVuzt4v3uTDBCaOo77ZCJDVaCKym1hVh4XdCiIQY1Zd1Ga5Jw>
    <xmx:zrpuadsPZkI0h5pF6ZvVALy1d3zp4naKZHMtuhNZfKhTEzN6lyz-Sw>
    <xmx:zrpuaRWMau0HFdbuCXN9gKBtJb7VsdBk8jeMz7gVVKgxKKnI0clVHA>
    <xmx:zrpuabPSeich4NhHSGoIHqI53wjLEZNDUinVcaozh8gaIA7nzRykPflx>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 19 Jan 2026 18:14:21 -0500 (EST)
Date: Mon, 19 Jan 2026 15:14:20 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Gregory Nowak <greg@gregn.net>
cc: "John G. Heim" <jheim@math.wisc.edu>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Emulating a LiteTalk, full_time problem
In-Reply-To: <aW65n-zrysEL1_nq@gregn.net>
Message-ID: <6460143b-3c25-a4fa-5c4f-4392aaff3b23@hubert-humphrey.com>
References: <bbd7c5a2-ee29-48a9-b1d2-3d33e2fb8497@math.wisc.edu> <aW65n-zrysEL1_nq@gregn.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I would suggest maybe its time to alter that 40000 setting to either 0 or 10, 
considering a couple of us with 2 different synthesizers are running in to 
this. Thanks in advance
Chime


