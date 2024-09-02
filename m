Return-Path: <speakup+bounces-1197-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1E53896899A
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 16:15:26 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=pE4at3Zh;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=Q5ZwX6k2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9EADB383CC0; Mon, 02 Sep 2024 10:15:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 80A17383CA7
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 10:15:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 88037383CA8; Mon, 02 Sep 2024 10:15:18 -0400 (EDT)
Received: from fhigh3-smtp.messagingengine.com (fhigh3-smtp.messagingengine.com [103.168.172.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AE49A382247
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 10:15:17 -0400 (EDT)
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal [10.202.2.45])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 412EE1140254;
	Mon,  2 Sep 2024 10:15:17 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Mon, 02 Sep 2024 10:15:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1725286517;
	 x=1725372917; bh=vFKdsi+bC3WOJDcxa72ToH1w0DSGyk19Bw8e8A6GOZM=; b=
	pE4at3ZhnGpVLOlW7l8u1wdso+bIC9b5n+zIBDtZcDo7ndbqCKIn5rlfFoxFBLea
	gK7Ciz3LgBHSBhPTQChyC2EkAx12YikdGNACtBP2ZgsJ4zVp+bXXBivkY2kLkjp2
	j0JwwCoPA//+lpEFUOVL8nc7hHrLk1wn3XPyuFDAcFUJMGXXwiHQdXPSvd1D5xI3
	SjoHXYV3j8Mau5In9LK0RWxfhDWzIOVlQdC5CdAWRBJs1kbNZrX7p8WGEeootmq6
	aBsYQJlQ8XBP/BFl1zF0bj8aRBpiLb6Ix565brWP4/UnfmGN7cJvMVSMQTmUJgP3
	jjVCL+sz6AP8qFaRKSZiow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1725286517; x=1725372917; bh=vFKdsi+bC3WOJDcxa72ToH1w0DSG
	yk19Bw8e8A6GOZM=; b=Q5ZwX6k24KGHLHvSsrl24F2gqSFIkoz1UHi6pBSZ0R4/
	AC0P/S8E4vmLQL3DmiJ1tsmMfuus+xx7/T003lMvMe8cs/qE4n3J4rSkfQ/Yeiqk
	rQ3bMvTQE9qy4yF4Fhm1TCxQBTx6sH8xHq4zhvm4jFaIu+bTW92y7noqF0LFuDch
	Vky6bS2hh/kduXLkBVoWE0VX8F/D67yGwjuurXoN6LCGQbIaDwbZ0K6AOM/WQhGC
	v/jpmmBfOFJmbZ/qi9DqoE1UmzekZ6d2OG6okj1whmKVNMl87+L8Wv5WHWN7oobD
	K407FRN5LrmF0sjBzEkCRpoNcjLbIkWoO1snoPseQg==
X-ME-Sender: <xms:dMjVZkhNhpw7TFlJDG2hY6DFzsyJaRjMSC_agHoMoS2Uv4FvT7P5nw>
    <xme:dMjVZtCz80S0kkWDa5MuXt1qhRLTerfhP4Qd36QXIgeZFVO_0P_m4WuVpP6pUXZ9P
    N3R0lDyVwhW4yc82dk>
X-ME-Received: <xmr:dMjVZsHHcGp14GTKeV7rLbbBa7_SABqJC0xoQ2OkSSKuEztnDGQtj-ZrSYXi_awbK1u5ZCQgp9x5YFXbH66LLvXYeVCsBIpfxpY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehfedgjeefucetufdoteggodetrfdotf
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
X-ME-Proxy: <xmx:dcjVZlTfS27K6B3JfyyZq_rrF0c7dU9s714D6WDUfeuKiMxTGiaAOw>
    <xmx:dcjVZhxTpxYMz_hhjaAP5mHE3YbSm75VpUNzhXo-royJThzK4ilv3w>
    <xmx:dcjVZj4noGCK6KhzuNxUaazs2Fc3DXmWWl4Wk9ICYZSMoTe_HEj0HQ>
    <xmx:dcjVZuz6N2uo4upLybIb_4AO6hBMVX7j3loUf3XtNhU5D9uqkioW7g>
    <xmx:dcjVZs8nB_xxoSNjjyJg7SNimDg5ritF8lw3_Z4tFsT-COF_rKSfxC90>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 2 Sep 2024 10:15:16 -0400 (EDT)
Date: Mon, 2 Sep 2024 07:15:14 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Martin McCormick <martin.m@suddenlink.net>
cc: speakup@linux-speakup.org
Subject: Re: CLI Terminals with Speakup (Was howto run speakup/orca concurrently
 in ubuntu)
In-Reply-To: <E1sl7WY-0002xy-0P@wb5agz>
Message-ID: <6d05f5ce-ddce-4b8d-4ca1-82d131dcdb46@hubert-humphrey.com>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <286a75c4-4d28-f45b-fb44-65aeb7a3d358@hubert-humphrey.com> <E1sl7WY-0002xy-0P@wb5agz>
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

Well Martin, that time out of 44 lines up to your quoting, line 20 was garbled, 
but like you say, reading with num-pad is perfect. So I went to the next 
message in Alpine-and-came back to hear yours again. 2nd time around, no 
trouble. I don't think more than 1 consecutive line is garbled. I would love to 
think not quoting an original would fix our problem. In my 30year online, I 
have hardly ever included an original.
Chime


