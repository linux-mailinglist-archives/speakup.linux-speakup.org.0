Return-Path: <speakup+bounces-791-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 015106106EB
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 02:40:39 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=iMd/g8Fs;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=p+zlA7Ln;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1D3F6384035; Thu, 27 Oct 2022 20:40:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EED7238400E
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 20:40:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 46A3838400E; Thu, 27 Oct 2022 20:40:25 -0400 (EDT)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 88458384006
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 20:40:24 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 3EF4F5C00E2;
	Thu, 27 Oct 2022 20:40:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Thu, 27 Oct 2022 20:40:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666917618; x=
	1667004018; bh=lAjtTMzRAurT60Sx1GABkA2IFzt/qjp1rLQ1xVxxlsk=; b=i
	Md/g8FsUpi8e5roYt8PUcl3ZLiQhsYdjGP573QDqQvrufqanL88yGQeEEDp7kyMU
	KpaMWaRIBBhAYn6OIoyQqR29kaGRi5sW6bQ4Ayx32edQhxBcTKFnZQxP12VoNCeX
	Ku5c5UpPmdLnxCedRuQYP1vRAYyRGYbENtZjGpLxgpII0RQ3T4IFJx9ZKCLN/AF7
	UPddybGx9Ph5vy0flSTfhnZF3n9PE3ybIjT2NspQU13teGS3N0HDAOIstYqEpPHB
	Jyl6BujlZceOdX86WRHOTbJqm3xE0g+2UiP3ed0rk45SPm1ZC2XFDkSLh6vmIbc8
	Dtx10XkM5jKyNh3m3EIow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666917618; x=1667004018; bh=lAjtTMzRAurT60Sx1GABkA2IFzt/
	qjp1rLQ1xVxxlsk=; b=p+zlA7LnhW5laoLJ7zD3LMedOyen/2649Tt3KJo5PlYX
	tUK2OI79uyx964H06jxoFU7MtDsUh7xtiMKADHL3XAPLVYFEQRxZOepDOU9C5n0C
	V3WWBbyJQzjS0aLfwJv4FTag9d/KBVB/mgq48A6SDV71NK7HNBonxreZLSXUczvg
	JVS2Fu/yjCrWJJGi/UBU0HC3M+FNtV3PnT5IirJEf0VHqz8ew1yGNmlT4CDN8eaq
	lR67/3HmL9l3nA5ndAlWmNP1HpX7tPdTSAAjJCOamz7LyjGJxmWvdyucKHJGvz4t
	k6jlsldo03J+Y/Ag2dWCCgHQyJYbvzWTorMkIRSeVg==
X-ME-Sender: <xms:8iRbY6FEqmugeim0czcf1HvRkqdv9OfSiENRpVK-03nuEsr-dEVmug>
    <xme:8iRbY7X6ifvKpM0R9ETFOQahsmGUi6EoaKN8oG9dWe8q_IPdidigzgov2PJqB5MTY
    gEoRK8RrN_8C8eXtYs>
X-ME-Received: <xmr:8iRbY0K1Oh0d6stY9Q5u4i3IyR9FxmwsM2Q2IWu5x4vYZusNZf8OYFtCRVNEIPe_M4BGwmcAeIRf-6qhK0yAIROJxlNAmdcQ_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdehgdefiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:8iRbY0Hlk8puylQshws_iUMwBqRomboyEZCFYNPXFqJLwAfH4y_E9Q>
    <xmx:8iRbYwXHIBPCRbb3tCZhpDFmAUqvl6GNpzI1I0DZK0QXXnsl1SOaUA>
    <xmx:8iRbY3PXRec848HMly6BB5Aj9DZsdT7jxdz17AGhFUXUaTWHD1fKhQ>
    <xmx:8iRbY5d4_JPLgxy1Nx0B-H1IDnnKjXKmESpjFcNFozNXmqTD6grKGQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Oct 2022 20:40:17 -0400 (EDT)
Date: Thu, 27 Oct 2022 17:40:16 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing Voxin
In-Reply-To: <089101d8ea60$a48a59c0$87ffa8c0@Win7VM>
Message-ID: <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM> <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com>
 <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM> <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com> <088501d8ea5e$9033f820$87ffa8c0@Win7VM>
 <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com> <089101d8ea60$a48a59c0$87ffa8c0@Win7VM>
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

OK Glen, while this won't fix anything, try-and-run
spd-say -L
also
spd-say -O
Those are both capitalized. They will list modules. Right now I have no other 
suggestions.
Chime


