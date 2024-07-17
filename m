Return-Path: <speakup+bounces-1166-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 56A8B93404F
	for <lists+speakup@lfdr.de>; Wed, 17 Jul 2024 18:19:48 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=v9vDsd2A;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=uMCBD4k2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BA8613825D2; Wed, 17 Jul 2024 12:19:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9B0233820B2
	for <lists+speakup@lfdr.de>; Wed, 17 Jul 2024 12:19:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9529A3821E5; Wed, 17 Jul 2024 12:19:36 -0400 (EDT)
Received: from fhigh5-smtp.messagingengine.com (fhigh5-smtp.messagingengine.com [103.168.172.156])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AC943382057
	for <speakup@linux-speakup.org>; Wed, 17 Jul 2024 12:19:35 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 7BF8C11400EF
	for <speakup@linux-speakup.org>; Wed, 17 Jul 2024 12:19:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 17 Jul 2024 12:19:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1721233174; x=1721319574; bh=macsSvqLdv
	NGZrU2v+fuVncStCJZErl2EX4wansidTE=; b=v9vDsd2A/+UIj4DW9Z33V4Uk5j
	E9yifNZ3XONsU9D/vcCE3seye7fz5mnnhIsWBGCQCqg+Eh+PdRspbpsSl/LDXMkF
	o0tMePQDI1WceXWl4dMaXD3R5YvAQSjoCsbuvLRN/hSCGBQEzXCfH2Fn9gad32Sc
	xyLAlm1bq+I1i0IMusYOA0dDxgk90y1UO/Rl1wmQEyI7BHmS4G68j6Mdyc4yl0Vf
	W1qznpQAmIO+AIoq/IMH2xivDjhuGoxywea4cnVKKDRjFM++rFqvVGRpxKLB1vCG
	lROhYXGUzuQruHs1h8LtW4YaXkK2A5yYZi1W2LDrl9b9uc5nMuXNWq9/OJOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1721233174; x=1721319574; bh=macsSvqLdvNGZrU2v+fuVncStCJZErl2EX4
	wansidTE=; b=uMCBD4k2AEvaPtYRlBkXqDgUM+8Ceha0S3i4YK/EtUsnL43MiSu
	Zwv0bAKw1rM6nMrrajnMHDsJWdnVHQZnpFAE8ccUgnWmdUyrIgwaXC1Pts2d3UKv
	SCVaTwN3ySNIr6MOC0tkXCWf8zYauVbRE8ccVJ2uRddV9knYFWbiPmZz1u0xn1RO
	PZd6q/ebNxM0fQBvHP+E7FPdnBMBYAQVfftdJphkuiobFhlosy/gT0vJDsPSaN8y
	98GPFkAjmw6hNFAOP/EE2xGOgtR1BKbTbqp3iiTy3OKM+d+EiH0a0Ot4K4kW5vsw
	cAm/2xCa9HoD2j0nUKJwEbMFsp8THtUwNvw==
X-ME-Sender: <xms:Fe-XZk6UhtvzlpszH3HAq3qWH3LZdhi-Sl_lzTyvVe18Q7_V9IR6nw>
    <xme:Fe-XZl5VaQVSnGCp5UmPp7carXoxgeG9ybqXS9IVKH8oMJK3Oxf1hQ5PU3-jJ9z5j
    9n-VmNVndA_XwfwUR0>
X-ME-Received: <xmr:Fe-XZjcllB6jiseiXG7wRDs643QxJB_9tw2ZcHKgV_610EMGAcplAlbYeU1LWGq7koHon07qaCOMeh6qXy2UiMN-6i1LdmWvZkA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrgeejgddtlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttddtvd
    enucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhm
    phhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtdeite
    ettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgeptden
    ucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrh
    gvhidrtghomh
X-ME-Proxy: <xmx:Fe-XZpKuGmRTBxwoW4q3foh_fWEYdDILNH8vDNgWUEdSCF1bc8EEjQ>
    <xmx:Fe-XZoJED1-F7toVQpNQWDAm0yTgrrJx6wnCvtlOFuy0QxpAD8xcZw>
    <xmx:Fe-XZqyTy5VNies8TwM1h0x9EWi4tddaBVO2Pl_lLnOozthlkHWTsw>
    <xmx:Fe-XZsL5h2swxvVFMebAAQ3iWhJ1qA0HbINElB2YJxiMrRNA_F41GQ>
    <xmx:Fu-XZig6Tn6z8Ccu1UcAh0Q9qgwT8XVG6Ghc8evY4nb85U1nycQtTZm1>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Wed, 17 Jul 2024 12:19:33 -0400 (EDT)
Date: Wed, 17 Jul 2024 09:19:32 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: speakup@linux-speakup.org
Subject: I Would Like to Run Piper TTS?
Message-ID: <d02e54a3-831f-ae1b-6a9c-e2d85ce4ad21@hubert-humphrey.com>
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

Hi All: Since it looks as if I cannot run "mary tts" Storm had informed us of 
another fine sounding engine called "piper" The voice I really wanted was too 
large, but another reasonable choice was installed. We made changes in spd-conf 
as well as creating a piper.conf. Meanwhile if I run
talkwith spd
it still plays Voxin Allison. Can some1 please outline steps to run Piper with 
Speakup? Right now talkwith will switch among Allison and my DecTalk. Thanks so 
much in advance
Chime

