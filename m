Return-Path: <speakup+bounces-669-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 403AA5A2D8C
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 19:34:26 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=o5GgXv7n;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=MCZS2c6B;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 506BB380F55; Fri, 26 Aug 2022 13:34:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 31213380F2D
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 13:34:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8A766380EC8; Fri, 26 Aug 2022 13:34:18 -0400 (EDT)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E2A74380E54
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 13:34:16 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id F0DCB3200657;
	Fri, 26 Aug 2022 13:34:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Fri, 26 Aug 2022 13:34:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1661535247; x=
	1661621647; bh=sWSwsMN+JO0WSGdfZAHGUqB2SDjlHbGIlLXicVkJj/w=; b=o
	5GgXv7nD2ZRmS8T6NYmW/vh+XX3Vg7/b2qrkQpbvn2FOYMFq93bOnVOc1SvooNRe
	IdHwAW8emFEdmISUvaQp4QpA9tgyA2hVlMaOgkXGMXPWuLT9+NmA69fR+78rijOa
	EfnNdzULXivmPanFdTrnmesGUMDSgx6XBA+27lqWmimyJRc1RZJr7PTDyYw8Lklc
	SFcnfQwg+G2NqyvPUkoG89xBWeX9M9IicimkfXvLgtV6cPHKwrka7dHe1UVTk6J/
	DGUCH16CoBvmf9TUcvTbHRZFBh9N1FYmK/aalIRHq9Xfn31a/+XbhkxifcIQm92m
	Zg8duXNNuPWnl+qc97NNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1661535247; x=1661621647; bh=sWSwsMN+JO0WSGdfZAHGUqB2SDjl
	HbGIlLXicVkJj/w=; b=MCZS2c6Bf+a0VU4sDpOZyWKPC+XObNA/Trs6BkAZzplY
	cgXx+pBjYZYyGsk2oFt9gAM/tcUIhbjXqzGCASKFmTZXCXdeH6qz/owisdD3lpUA
	xt4gYf/Z/Ii3CnFy1KO1aLrKd5YT3T5aOyMj71ZarawkE4o3/Q7kkMo6Jr9eaz8G
	eySjUa7wIIhzdr3SBQoj3i+4hLmw1o9j4ax/j9OuoBjU9GPJao+ZTA73U8Vzbi7N
	17PHRbxFOVyI7PtB+WNYCBIxswgXT+VqBHdauO7/t0k6dTFulZhApjnO+PLf/55b
	2ciSN1QuBJlD7rpr0X4XTFmz3/q2c0vtW5tV9oHhsg==
X-ME-Sender: <xms:DgQJY_v5X6_KHLU4lGLXTFpnIoPDE79b7qVBUBduflApB9_pjvP_Mw>
    <xme:DgQJYwcOz0s6G55Qm1mxbaEPIwQirUNy3mo0nkniT4Q6VOBUD92mpXRowgMnecHsm
    qJZfq8-RBOLTsXhWYE>
X-ME-Received: <xmr:DgQJYyybl0WGLog7eGqND0RX1gB_80Jg4_RL9QxJvZPLFspXgX-bpHtM0J5_UF4KQURMTUjJyXZi_3Gt5LpTgOBJL_6To9q0Hg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdejhedguddufecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:DgQJY-MFalDCZFEPAahp5eIpAGG5qvye9oFI142v4IJBFzh7kdnJZw>
    <xmx:DgQJY_839gG_BSQA5CJK7G1cYFwKddvo-9uv4rl9INSQBxezb0Os-w>
    <xmx:DgQJY-WNH04oq9EEm2HZy2LcUwNyPMRBf8nSzb0LPjlKqbVsR4rwVw>
    <xmx:DwQJY5nKeCncKJdWQBz_W2GfUFcm2S7m0dFSm7hxp6w6205aV8nlRA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 26 Aug 2022 13:34:06 -0400 (EDT)
Date: Fri, 26 Aug 2022 10:34:04 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Willem van der Walt <wvdwalt@csir.co.za>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <003c01d8b971$2e85bff0$80ffa8c0@Win7VM>
Message-ID: <6afb1313-1ac7-4efc-123d-49f1dfaca2f3@hubert-humphrey.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za> <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za> <020a01d8b8b9$97365310$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208261051420.318@willempc.meraka.csir.co.za> <029801d8b94e$09c913b0$80ffa8c0@Win7VM> <afe9ca5e-fcb2-8764-d9e2-0d5123c4adec@hubert-humphrey.com>
 <003c01d8b971$2e85bff0$80ffa8c0@Win7VM>
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

Well, Glen, those are process numbers, but maybe your screen-size is not 
showing names along with those numbers? It would be interesting if there were a 
way of just showing names.
Chime


