Return-Path: <speakup+bounces-732-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8EEB75A9DEB
	for <lists+speakup@lfdr.de>; Thu,  1 Sep 2022 19:21:13 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=UOvoDXck;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=4RtW015S;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8A3E7380A95; Thu,  1 Sep 2022 13:21:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6A7073805E4
	for <lists+speakup@lfdr.de>; Thu,  1 Sep 2022 13:21:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 509253805E5; Thu,  1 Sep 2022 13:20:56 -0400 (EDT)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7EEF53805D7
	for <speakup@linux-speakup.org>; Thu,  1 Sep 2022 13:20:54 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id E95A232009F9
	for <speakup@linux-speakup.org>; Thu,  1 Sep 2022 13:20:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Thu, 01 Sep 2022 13:20:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1662052850; x=1662139250; bh=8OMFQK4bnM
	X+f1WlBP0gdenKk/AuKZj5OzvLtpQajE0=; b=UOvoDXck2SRO8RL0npEJOJZGO9
	c5/ucJDqlr/x5Qhore8y6Nzu/aGC9UVyhNhnbn8PhjrI3zDNizt3bKiDHERE20i7
	uJvljY8cjcfpwHgoDtTHtgpChRmZPadVRD8p7Ff7sAa9FMCcUzJKBhv3yGj52mpp
	ur9HDWuVFH/tB7SEefeRhL2tSM89L1NTIgeX0KvHrkixH+AyFp6BuqvqRIOeVoBV
	w9Aqrx/KnM2sC7jMD3gJ25Vk/fSciHlOQ0qTDaOQV5Oom2CQZCLc37Zzhx53yzwV
	Cupqgg023Js66boDf0om9t/u7rQ5PQtPTJsFV6q6EqJcQC7OVclF8PevQKMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1662052850; x=
	1662139250; bh=8OMFQK4bnMX+f1WlBP0gdenKk/AuKZj5OzvLtpQajE0=; b=4
	RtW015S1Rfp16awcxxItOBxESjte0BVi/CrJ7C4rv0Xs4WNkKArmbKYKOlJ0RON3
	cBtHwHFqze2A/Za48NDV/PkN+4NXlKZM5SsV+a335x9a//HNmhqopVyUofJSVV5x
	0Zmq/4zEZgt/C+oh0/TdBFdInbvlciv3S3rNOg/u5pgQtiZCxaEnW1E35z4eaz1u
	i0E88os62alBmZ6Kb541YC/WlXMPwMh3028Htqgmrvgu2itByL/joZ8nsFo7u+Ba
	T+Tn8XhBIq1j6uWYAnd6TEUTNfXsdF+r6g8nmg4rZt9tBGItjfJXW4/Z86QPlu82
	/cFMnj1Jw0PEduiiu4img==
X-ME-Sender: <xms:8ukQY1yabv5HhTqXvAyOgGVqMEwqmqKbGJTOGdrKN7azOxRQ2XaWIQ>
    <xme:8ukQY1R9jBAUmHLLPBjbgQnFQ-aFj_EBJmz5TciRl7mFub9O3Er2pEkrg_iTLZt_-
    1Bf9vCBwFyO9l25OCo>
X-ME-Received: <xmr:8ukQY_UsO53WdeOCnDMAd59VIuYlUPt-yQ6WPbDz5-Q-v1EFqx0iDXbM_9umidrhXtkFLfTwMWEYi_1x0i3OPIjSTPymqnl6gw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekkedgudduudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtd
    eiteettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomh
X-ME-Proxy: <xmx:8ukQY3iuVUm1Fq1F78xuvNk4sVqOXqxDd81gJiE9lnEkN9w0-JBctw>
    <xmx:8ukQY3DdHlen1iHuv9iv674-7dIe2_vGCugegOLSLtDz2GzqVOXFqA>
    <xmx:8ukQYwKFPZdb_l-HQZ3r7zsFcgyhhr6x7XTDvgvy3bPHhEInSkJJKQ>
    <xmx:8ukQY6-G2xzBlnq5xo6nsW_Fhex6Pd4HkUvnQoq09iuJfw_6Ai5eKA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Thu, 1 Sep 2022 13:20:49 -0400 (EDT)
Date: Thu, 1 Sep 2022 10:20:48 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Can I Have A Speakup Kee Map with Voice-Over on a Mac?
Message-ID: <181f82aa-a2fe-8f0e-07c0-6daf95300a51@hubert-humphrey.com>
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

Hi All: I will eventually try-and-signup for classes at an Apple store-and-see 
if I can learn a Mac? Thing is, probably my favorite Speakup function is 
flat-review, which NVDA also has, but if the Mac has it, it may be complicated, 
as many items require 3 keystrokes to accomplish, although I understand there 
are ways of reducing those to 2. Since Voice-Over has many options of 
voices-and-in its graphical site it might be more friendly than ORCA. Sure many 
times I would want to use its Linux prompt. With a fact of Speakup in the 
kernel, I just wonder how much lee way I have in integrating the best of both 
worlds? Thanks so much in advance
Chime

