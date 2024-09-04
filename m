Return-Path: <speakup+bounces-1212-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A1B9796CA11
	for <lists+speakup@lfdr.de>; Thu,  5 Sep 2024 00:07:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=uw1HtcAV;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=evAHTkw6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1D59E38235F; Wed, 04 Sep 2024 18:07:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F2E12382053
	for <lists+speakup@lfdr.de>; Wed, 04 Sep 2024 18:07:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 058D6382053; Wed, 04 Sep 2024 18:07:07 -0400 (EDT)
Received: from fhigh6-smtp.messagingengine.com (fhigh6-smtp.messagingengine.com [103.168.172.157])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7BD4E381FE5
	for <speakup@linux-speakup.org>; Wed, 04 Sep 2024 18:07:06 -0400 (EDT)
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 738661140201;
	Wed,  4 Sep 2024 18:07:04 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Wed, 04 Sep 2024 18:07:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1725487624;
	 x=1725574024; bh=lMyLnHqebuF2EST89TtjVeZb1Wzx39Np3Quc0FjMVn8=; b=
	uw1HtcAVCmhtil4J8PdCHgTNFVw9kBXEbYB08Cfs4+NSI8ttPeKnQsco8W+MJAth
	K51A0sG3FSO/or2rCkmZrQGp40KLVc+F+uC9d63Ubtvb8p328cL9ZGjpH6+b+9Eq
	fJhms/9NMv6gOxeexA5cdv61Z6HQNSYYJred0q+S/tFCkd94EWiwlIdSyxy4pQ3n
	RJZqU24fPnU8kk1ENGwqeIaIWNZTAILP/6bFgAHA08doEVM7U/p2CUZkjEX2URVI
	osQ8+7dr0cepePWrjfrFvwU1kp7NCbC5HUW5WxsDcrjCj/gqdBPKNH9t0Xt/3knd
	kvAYuh+kyFiPLP98Wqd62w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1725487624; x=1725574024; bh=lMyLnHqebuF2EST89TtjVeZb1Wzx
	39Np3Quc0FjMVn8=; b=evAHTkw629pdjBD/nQPVbMhBqH4Bmqd32dL6Cpub90di
	6vX7cxVxQzvs6GAGrqzf/XtuKi75m4dw2wjIAzwK+L7MHGE3nnNIiM+HLglzubyj
	a+p/2Fsnjq8go1d2VGvrMOF1xkEUHBbFC6zEjE9T1ADGsgL5OiSNLkrFt9v4QR6q
	/SieEZpmC0yC7oWBdCntLKCebkqTwZboMOfgAYYv+lqAZFApvWITxzn+nDgk8B/y
	HUAI+ErF3l58baNkbnf+xJGuIUvkomYttAOQciw/uEolLH58PieAie/vUXg7FQa0
	zY1lh2QG60UBklgh+NS80+SjygcQloL2G1LJf4Ovmg==
X-ME-Sender: <xms:CNrYZn4vLO6KDgsxAGPeZUfSQFtQRBZ-Ca-Rq4Dg4331Mjigkje-2A>
    <xme:CNrYZs6ImW97uX8YwO6PeYqFhoMmKS_MITFxmx1gLTwuUGsSE_53wjkxEBi2b7_BJ
    aQ8SEgKa_SYzT6Vqrw>
X-ME-Received: <xmr:CNrYZuerkC56gnv8S6DydJi29DXqDuZV5uoUuv_DsRtONySH5sglU2hcOPLPkOUMIwX9Az6PIgvNoSfXs6AO3ryi7AEmczycZcg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehkedgtdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecu
    hfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedv
    keekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgih
    rdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhrtghpthhtohepshhp
    vggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgh
X-ME-Proxy: <xmx:CNrYZoIn4t21vYprnKKBDYAcPzJ3p-XqQz5uRm_DaaYSDKoFxCLsQA>
    <xmx:CNrYZrJi5Qz6WedQHNwc8K5QZUJ5ZWHKjyvjwHsr5WQ0SJRVf98qpA>
    <xmx:CNrYZhyOVW3xTaEhitMuULSe6aWa7Go1wkStAseWTFherFbUkyqLBg>
    <xmx:CNrYZnI7iCfqOBj1H2ZyIjckxHIz9XpzyvtJdt5ufcf-XGgnK1ah0w>
    <xmx:CNrYZiVUY7BKAZiDLioqEITr7yYY27GXbQUJI1Jwh5S6GUtkfRbKLNld>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Sep 2024 18:07:03 -0400 (EDT)
Date: Wed, 4 Sep 2024 15:07:02 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Martin McCormick <martin.m@suddenlink.net>
cc: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
In-Reply-To: <E1slxjW-0001nZ-2d@wb5agz>
Message-ID: <fe4e84af-411a-6a3b-0131-75df149691e0@hubert-humphrey.com>
References: <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za> <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu> <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
 <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net> <E1slFDa-0001Hb-0R@wb5agz> <Zta33F80vCUd8tBU@titan> <E1slZoq-0004cu-22@wb5agz> <ZtduSMS0hyMMjZQZ@titan> <E1slxjW-0001nZ-2d@wb5agz>
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

Well Martin, once again Speakup garbled your comments, this time around line65. 
Anyway, much more basic, couldn't you switch to another console-and-run 
alsamixer and up-arrow to increase the volume? Also, I did find Willem's "sam 
program" helpful in maybe waking up another 1 of my 4 sound-cards.
Chime


