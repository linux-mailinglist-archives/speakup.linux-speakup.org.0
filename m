Return-Path: <speakup+bounces-741-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C64C65BF4E8
	for <lists+speakup@lfdr.de>; Wed, 21 Sep 2022 05:43:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=vh2rvmVC;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=Aex6sxsy;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 423483809AC; Tue, 20 Sep 2022 23:43:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2219138093C
	for <lists+speakup@lfdr.de>; Tue, 20 Sep 2022 23:43:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C47BA380926; Tue, 20 Sep 2022 23:43:41 -0400 (EDT)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C05CA38065C
	for <speakup@linux-speakup.org>; Tue, 20 Sep 2022 23:43:40 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 3AEE15C0111;
	Tue, 20 Sep 2022 23:43:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Tue, 20 Sep 2022 23:43:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1663731815; x=
	1663818215; bh=7LjuiDCfD1SQytqymWCQq1MESQBJQ022oKQKiHx8s8g=; b=v
	h2rvmVC8BcfBF4Ok944w1HzJcTLp1So+NpW9+onXomcj20hVV67nC57Wol8Wfw+9
	yE68jYw+H8onrGSqVUPhziK7/8hkYstpNWMvYWkm1ETYjOnRu5P/39XNvIFHfwhu
	GohSR9gmI5f7K5qUPJl3CQVKse0JaD0QK4mgdQ8WuUo7R4ojTysuru1RmOxUE6sC
	6KHmylnupyA/yAO9RYcXwVad3Yxu6kWuRP4ylYT+Zl9hRgh6UMxMo8OssSYwQmy6
	R49OLBtWRUygzsRtf6AMvOMlnr9zdJTozvgYRmLx4d7V3x8MdWhEMv8ov+Ge4JEL
	y8uSerSfJHzV3Ow9stPpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1663731815; x=1663818215; bh=7LjuiDCfD1SQytqymWCQq1MESQBJ
	Q022oKQKiHx8s8g=; b=Aex6sxsyiUg+SNxs5efrvrCqrTRQDDby2oSRIY8X5fer
	k30M45NONmiwWbC+b3zMDwuOSU5gkg+QAGnoUnaIHmoyLs8Vz6lO7kG+9h5P3DI+
	f/KZQTh0Elcw8M4DwXCF1o/4S1YVeylDPHkdlmKJLRptyobxPrTtJNRbNqpusgrk
	2ZWw8i/L8u0nIuCALaX4DRTmKb75cKLfeA203dW0imyl5yuOWaG/uW7i83AI+sZw
	D8/F+43TR1xg5hYSTz+2RajcuHtCZHmY4ZD3vRK9d6A1xZK81LGrmkl64iPuFz3l
	4lfWyu00J+kNHfSEPsSq2AM8o97e3Do/zGf5B6Oh9A==
X-ME-Sender: <xms:ZogqYzXZBl6ldgQ5SxaKgfmeGWg37ij8cW2S4-KYjP2d3DXgKo-92A>
    <xme:ZogqY7k14qptuRr322jcnrZB5am05v8WY6NLiX5oM_1t1JOK11ILNEUAKtmU0DAjP
    zw3aLfr2vScbGKR9SQ>
X-ME-Received: <xmr:ZogqY_Ztgeq8gaRcpCvMZfls6pisbUrtE-_3KLGLguhtfsTM4HWa-7XsdUoix5Mn1wVdU5ylhPofsOmZ1hSd4Z2PGaYV_YWSeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeeftddgjeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:Z4gqY-VBkhnPWTiAMb0JmX-r56o8RqyJYLm3jWMTv2P4DiDIpSmMIA>
    <xmx:Z4gqY9mQ2dsAZsv4ZGxF-7jdsFXUKmk2kBCJXGNOcodL5dbrI_Nj9A>
    <xmx:Z4gqY7c-uEqI_DAtlTOY3-ygF_3zJea4XS9Oxe4yKxLyWLaYkUYDPw>
    <xmx:Z4gqY8sT1nQ2q3FfBYx6qdstLoy31zkSu1GQ77yZAXBrG2MF_xiayg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Sep 2022 23:43:34 -0400 (EDT)
Date: Tue, 20 Sep 2022 20:43:32 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Gregory Nowak <greg@gregn.net>
cc: speakup@linux-speakup.org
Subject: Re: Are Their BiPass KeyStrokes in Speakup?
In-Reply-To: <Yyk90Ychfb1SkCyM@gregn.net>
Message-ID: <5062cee8-a86c-c419-f94b-190a566118f7@hubert-humphrey.com>
References: <68c7b66a-d07e-1966-db37-d148eb221bed@hubert-humphrey.com> <Yyk90Ychfb1SkCyM@gregn.net>
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

Hi Greg-and-thanks for your analysis. Your synth direct gave me permission 
denuyed, no matter tcsh or bash, also even with sudo. And lastly, would you 
mind if I would post you answer in a DecTalk forum? Thanks in advance
Chime


