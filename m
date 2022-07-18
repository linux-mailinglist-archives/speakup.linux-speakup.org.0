Return-Path: <speakup+bounces-486-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E83A7577E8A
	for <lists+speakup@lfdr.de>; Mon, 18 Jul 2022 11:23:37 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=GRTzy0Gb;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=svPit9hI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 22B7F380AE8; Mon, 18 Jul 2022 05:23:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0399C380804
	for <lists+speakup@lfdr.de>; Mon, 18 Jul 2022 05:23:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1A1CC380937; Mon, 18 Jul 2022 05:23:29 -0400 (EDT)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1868A380584
	for <speakup@linux-speakup.org>; Mon, 18 Jul 2022 05:23:28 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 620393200923;
	Mon, 18 Jul 2022 05:23:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 18 Jul 2022 05:23:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1658136201; x=
	1658222601; bh=K1bRptauKHAVDnoRQXfQ5v3iq0VU7d3lpJwf+ENbPIs=; b=G
	RTzy0GboQJkdsXiSG3xqHVCqILHHo1ArZBUejbVFuQsxhhxKRCbQmZf3/k85h2DS
	74zyRXRtVPooIHgFZdkk5E5la5iTE52Oft09I2yF+BSI+Q+Y0fUGciQv6PPvSr1r
	kgy1VNUXSmbYcs8Dt66KdSE4f3YnpryTyPhvY+jw4OxVPumGe0emQ2ndwYC0XxZi
	y3pePHkTGMM11eHzFKMwShehlmg+07WDmCvBrEvecfcixrfub+PelVfiagcBAObF
	ddDY4+LuDE40KSDHVQ10oCRKo18vSUuF9mI3u/H27Gpyh3fsxH9ve7Y7dzoiEMax
	C6S5XLKq/AhC7lwzxtzyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1658136201; x=1658222601; bh=K1bRptauKHAVDnoRQXfQ5v3iq0VU
	7d3lpJwf+ENbPIs=; b=svPit9hIACIfHZ/W/P+PMKz5kQjX5vmn5qgqwcW7thhR
	FVkLrp+Art9dVUCUY8syypzSdsPa2RI4kNMpvfxvvwpfkBwEx1FprNIxdalRQCzm
	rjTxRCHu4dZBLWsSjqsBs2dwBGWQFkZp9L1yN360R/aepYkjCnoqS69sYAa5pSEz
	suE9CUph2OWsnJgKn5xkuLo0fPgusmjRUYmyNU5JZc8fjJr21zESXIxO1kYnfRJj
	z81BPbQl3/kbgfFv/B9GT6sV+dSZ5g4eo7FJjk8HvGoZTi6oOztL0lHuO/of2sq2
	5afHolKbyq3HG4s4lNJKmreV+NLMeYh/yvEyq2lnAw==
X-ME-Sender: <xms:iSbVYs8uvqo_2EmrWDrwYUXflMXPjQ_AEV9OhRIseFl21tBuMFlqBg>
    <xme:iSbVYksE0oG8duI6Wn8rPIEFIwDZtum2NOvSQUYvSFb2vptik-W1gJBS9fdGoLTMj
    2GxRGBFOHYMaBzK16A>
X-ME-Received: <xmr:iSbVYiCOy-xPHDAxS3hj9xo8DzETViUnTEOQnn-PVfkAiboqE5etJkzwdOBCf2BB8_B2BeJta5VJc_nGQS9lP7XZJDRI_h8LzQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudekkedgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:iSbVYsevv77aPkhvTxe1rtDch_5XuDft3Fb3oOAK74hzpqnRZJDZqA>
    <xmx:iSbVYhNmQkk6XoyT2R9y9B-kZL9rTE_zHUJfbh8B6_TlAtMIlPSFPw>
    <xmx:iSbVYmkkZe1YYmKbN9yKaWGSGlaOlIixkEkSSpOem-YjR3Mq2M446w>
    <xmx:iSbVYv1M_MCSsPMYu8d8NakG1RMzYG09xNMgi_stzMjhjml0bHp4vw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 18 Jul 2022 05:23:20 -0400 (EDT)
Date: Mon, 18 Jul 2022 02:23:19 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: Karen Lewellen <klewellen@shellworld.net>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <20220718062510.rd7cwpemm4slpyd4@begin>
Message-ID: <023d5fce-6ae9-3104-9b0f-ca4103009c85@hubert-humphrey.com>
References: <20220717225255.oeguk3xrrurqjorq@begin> <70af5c96-4980-8fc1-1b41-021ece0a8341@hubert-humphrey.com> <Pine.LNX.4.64.2207172215550.620269@server2.shellworld.net> <20220718062510.rd7cwpemm4slpyd4@begin>
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

Well, Samuel-and-All, In the 9days since I asked about this, here, I was hoping 
that folks involved could have tested to prove for sure where remaining issues 
are. And Samuel, lately we are not receiving guidance  from Oralux as we were. 
Somehow I must get some great quality speech on this laptop in the next month, 
with quite little guidance. Thanks in advance
Chime


