Return-Path: <speakup+bounces-757-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A285C606826
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 20:23:27 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=a0JA2xCV;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=P1pUAOgX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2A60A383FEE; Thu, 20 Oct 2022 14:23:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0D33A383FBA
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 14:23:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BECBC383FDE; Thu, 20 Oct 2022 14:23:17 -0400 (EDT)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 03CD8383FB6
	for <speakup@linux-speakup.org>; Thu, 20 Oct 2022 14:23:16 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 5760E320046E;
	Thu, 20 Oct 2022 14:23:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 20 Oct 2022 14:23:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666290191; x=
	1666376591; bh=Kvqj3LveuolXKE1cuI+Yb5hYg/egb8Jm655GTww1xLQ=; b=a
	0JA2xCVDSvXbNR7umGjQjcrZ54m+2912M3C5t7mj/XiLi93iUHWYgb52uocJcQB9
	qVks299BhdOONHoxFjV3F+HxxRZzkszFJHCdtQmJNRlDhACWcfexDPe4njz9CSGN
	8XpelDtCmkavdq3Xe7fCJ7VTaAy/3OsuR4Qv52AdzxKpzx74W1QYBGtxLbH6tK+W
	nXPB0ATZAMefwSwudF4f5ttuybnCJ4iqsqrMvSwcvqL83w7R+1W2n0CddatuqegO
	qHi5WqZu9fLh7utZYkcvmlp2DxximNT0/w1v1zQDtf6rVD0escMzdD37nBc9vbu2
	zbsj4ohwj5X0Q1aOsuNUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666290191; x=1666376591; bh=Kvqj3LveuolXKE1cuI+Yb5hYg/eg
	b8Jm655GTww1xLQ=; b=P1pUAOgXuKAljebrSTHtr0cS3cjox3zeHSXJMyn6LYo3
	kKZlxZ2qnKtp2QfSohGVjZaRRpKi3g6PikkF+02S/pU9EfZlv15+pxLb9UYGEY1W
	BMyihMCBFHyF2jeHOKbUZbqCSQf7YCqGumO5CPBAB4pqH2X1xovldoMY6D6WGXq3
	n1/AVg29OeO4L7DJwPbeUI9Ca5jQIHJBUa1sONMCifojaOW78MydJ3CL2hckDNTk
	HCU6gqsB6OTXmWt+gSuKlRsGR3R2iEMAkd3NHdQS5vZqPTKM1HC/xgJCmO0VH4Hw
	kyJrHsUzPCOBURD99yHXeqHxZIlUOnF1zrU8hfyH2Q==
X-ME-Sender: <xms:D5JRY_dXlSchl2FuQvhT_vC70-tgcX_Pko3fJk3h64eTvfcFxanIbw>
    <xme:D5JRY1N6SJmDW2imGmK2rszxeFw7GwlgPu6z5Lmayz9gUTgphK5pWqMLZQhBwNHh6
    f3zxqD7LatkgJVQsRc>
X-ME-Received: <xmr:D5JRY4j_pheIupgGphxMr6-ylTri3Ru8S7XatsmI5r2xUmRTsuf9VYff89o8W1ifr9Sq5246YFKyw4fRwa5rW2BMyCimIIh4kA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeeliedguddvfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:D5JRYw9p8uG2P5gzZt1DUCaw1xjZ_7I9pVrtsciKLfQWBw2wxQ6xcg>
    <xmx:D5JRY7v5sRYytVfF2gjhiLKx4O0PIrkbyo7xSH66qxpJe7S6sX6sbQ>
    <xmx:D5JRY_Hyb3MAJK_EVpoWSo1xcQMBfdp_BQLLZgZOMYQxm2tKbDHCSQ>
    <xmx:D5JRY0XnAUtMVgQ33W-7r50Z56nHRqSE-InJCfQspcYf3M9ND42lkQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 20 Oct 2022 14:23:11 -0400 (EDT)
Date: Thu, 20 Oct 2022 11:23:08 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
cc: Rudy Vener <salt@panix.com>, speakup@linux-speakup.org
Subject: Re: spelling words with military letter pronunciation
In-Reply-To: <20221020181216.o5rpkuy5tgdcmgyo@begin>
Message-ID: <2a1d5948-d1b1-f210-42e8-e0919f21394c@hubert-humphrey.com>
References: <20210105173502.GA17449@panix.com> <20221020181216.o5rpkuy5tgdcmgyo@begin>
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

Well, Samuel, Rudy, and All: If I understand this explanation, I hit numpad5 
twice with a DecTalk, it just spells a word, but not phoneticly.
Chime


