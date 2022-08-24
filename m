Return-Path: <speakup+bounces-608-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A8D3659F18E
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 04:58:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=Hhw6udt2;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=E/NGXvee;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3AD913809CB; Tue, 23 Aug 2022 22:58:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 272C6380984
	for <lists+speakup@lfdr.de>; Tue, 23 Aug 2022 22:58:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 36820380852; Tue, 23 Aug 2022 22:58:40 -0400 (EDT)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F064E3807BC
	for <speakup@linux-speakup.org>; Tue, 23 Aug 2022 22:58:38 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 6FEAF5C0198;
	Tue, 23 Aug 2022 22:58:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Tue, 23 Aug 2022 22:58:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1661309914; x=
	1661396314; bh=dUc6eSrD7H+PZjsyKPS57RyGYxY44pvnIFRxRsEyB5A=; b=H
	hw6udt2Vbqp9ltfbZZA1oKkvyYRdusIUiHRcKjGMuBIPv3TCWngBly/YcnDixQx7
	92zqvkv46AILBwc3M6AeXbrcGUT9VC2YU3vV6M7+gAZxCwvMmrrU/u82Qi/pbt45
	nEG0aPF5axkGvQzXlLWj9oXbW6vFwbSVM967/E7zs/ifF2WnG/Scc5OCyr2I/khS
	ESZggAx8oSeUn2B3SG4KMD2q6vGJgvjmZvp5dBX2lYV4S0J/rgNk2U5U2owR1kU6
	0bQdSycn+ngSYM3hyoiT/kVbItYE92eaivt0C/OefD985pYNpJViXtze5y0lNApy
	gYu5dleodtSY1nEfwxAOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1661309914; x=1661396314; bh=dUc6eSrD7H+PZjsyKPS57RyGYxY4
	4pvnIFRxRsEyB5A=; b=E/NGXveelTIznynu8gjily/3O057cljFEPws0pfyCHMA
	Y4XEXKb+pf+CsCbAzZfYIrcgUX8p8cPpKyBKI6CxoXRZSO12hOw41d0eXIu0fLZb
	w182I4/zOSErx+B2DM0/3+sFHhNYFKX+7eM0jPEekO8fnQZi2HcfmtLfkHeNnCn0
	VvLIRMrWA0poctOz85VzXM3xbnQor1bdnCkU1v1BpwcLtEQEkoq0o2eDzBMVrbui
	mihBibscNNMCuND3792u2bQflF11iDYtIKqtyHNwZ/ucBZm+LmMX4OlepfRxq1wP
	ky3WMUh/4byUnHpzyTCFDey3oXCIk8zo29k/abDWeQ==
X-ME-Sender: <xms:2pMFY5Uf7y9m1pPDljNfl81HF8Ay8qsivu0IqVtZbDjDyypnl1J-yg>
    <xme:2pMFY5lsgtq9EezthsU_gsetTYZqQupFw-IKcckzb9C-CXGhO6WqFIJk3PEXpSRaG
    N2qXMT_7GQCFdAzDVE>
X-ME-Received: <xmr:2pMFY1YLhvmH42d_TPRHMsE8S0O9H83YT7n83O4vuzOx5Hfv-85vm3GkmetrtfkixVosq6P5m5LbQWv7wD7CB4A7bgZJbvlazg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdejtddgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:2pMFY8WDbfhR3cGOLHKalylH680Jkq3hGbiAyoXnrXd5X79LZ6LcGg>
    <xmx:2pMFYznd47bT5irYfS2N4g0Arj7fVAD8z6Lx4ZG6aVB7Ko_wU5W0Dg>
    <xmx:2pMFY5cDOXeF3sLP49K2dN9lAZ76Gd3qzx7z5FA37_GT9V_ppy-z-A>
    <xmx:2pMFYyv9DKE6dGAPerptd8aRkDNuYGn00wTTMrznS7CV9yUWzclavw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 23 Aug 2022 22:58:33 -0400 (EDT)
Date: Tue, 23 Aug 2022 19:58:32 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <005b01d8b764$65f690e0$80ffa8c0@Win7VM>
Message-ID: <d0e193e5-3c42-4190-e423-91eba152e0d5@hubert-humphrey.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Glen: Sometimes when I cannot find a package with an apt-get, I try aptitude 
but you would first run an apt install for that. Aptitude may show you related 
packages, which in most cases will not just install, but you would pick through 
its listings.
Chime


