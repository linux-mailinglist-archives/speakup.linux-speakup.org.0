Return-Path: <speakup+bounces-1031-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 48F967D1CA8
	for <lists+speakup@lfdr.de>; Sat, 21 Oct 2023 13:03:13 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=tD5gfYFX;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=pb5EIpXI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DAD453826A5; Sat, 21 Oct 2023 07:03:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B99CC382351
	for <lists+speakup@lfdr.de>; Sat, 21 Oct 2023 07:03:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 42C02382351; Sat, 21 Oct 2023 07:03:04 -0400 (EDT)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 63E25382335
	for <speakup@linux-speakup.org>; Sat, 21 Oct 2023 07:03:02 -0400 (EDT)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.west.internal (Postfix) with ESMTP id 4CE113200B1C;
	Sat, 21 Oct 2023 07:02:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Sat, 21 Oct 2023 07:02:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1697886169; x=1697972569; bh=/mUBcdE3wynUWdAC6YMhlCGzpME5CPCf4Km
	n1Ry9h/c=; b=tD5gfYFXcQlobx11mAke9TlE6MP35zWY8Dmr1iq03Man4tnNYH8
	dckuZ2tX2iTfR0RKEzSa3+Pb0ol95R6uNDqFntX4ovP/KtJu/j+CPlKmljNRYGxn
	CTKd5vnuuGybrrRS7sqbgsrrh0/ShAxbVFPbBRQE/W3Z485POXugGf3YtPyI/w8F
	hBEmKnQBC95fINf3x4gdHlJusE0gyGGNPVupD46kN9tfE4eoiHD5qt5OG9vCiv0F
	59vpo4aOnjVsEgo5Tqwm8o/67T2iArre167gH5l1HTEqE8ywW+CFtDu+L7NeBTMK
	GxO/COyILuQZhvIEXYmYAlh7wQ4v5S4jVxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697886169; x=1697972569; bh=/mUBcdE3wynUW
	dAC6YMhlCGzpME5CPCf4Kmn1Ry9h/c=; b=pb5EIpXIiXhOM2nPEnPegh8WDOvPR
	aFkNunMvBjw6ZRRQXSFZYAyOHepbbzz8oV8yvpB51IkDYc1eVLS4dl0f89CfzOJT
	es0YDaNxOf+3hcFrBgrcL9PD1g6wYKaQFgufP7H7nOZAakGDwKxRRTzMFq0gJmdE
	H8T/0vntZ6iELVCRkbxk6W5ND1Mnq6p7mjKiR/tdO0o494sPLUDluioSwG4OLuJ2
	6V690a2RBGZz9HXiFmYwx6khZ1XwYSI7a8wrALV6V2XAkvTAXbMj1cLd+D+9tY8w
	0d7wa0QZ+yUkrAChJRnB6sOuuVfCCfxMtvRuqaXWdiVmWC+XtAbLbHERg==
X-ME-Sender: <xms:2K8zZUX1fbBsdPlGqHeoyCmaZx-5KYI6qv51oaDwHyWoPdQNDCu1BA>
    <xme:2K8zZYmIj4kQP42oZFCWvLFRhKBm4j1p9PBBVEXV-Ux-HXAGaUaT36RifbkW3CoSs
    44azt-iU5F2_Rj44EI>
X-ME-Received: <xmr:2K8zZYaQdCruVK5R3VM-4ipJ98Wx5a5B6pQyIagC-lmsTcTJPRRr-Z74sux5IcI4ng9gCyamNl-tEdx_PSQWhaaScPaRRXxDtQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrkedtgdefudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:2K8zZTVZ5YFafBP0o37NyAVVM0u5I1qMMfOlAsOJgSYqZJEtiwxQew>
    <xmx:2K8zZeld7MvEDWfcerjVm3TFEjrFFju8yldXo0oPUwAFcTBItohojg>
    <xmx:2K8zZYfutVEZhE84Jm3ZmbV8n3LzyQR3dMbqTcynoEiD6mN9T6KFZw>
    <xmx:2a8zZSt2-BtLbz2YtxkXm3k0b55ign_S9Jq2nVQcJZlY4xFJ5q0wew>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 21 Oct 2023 07:02:48 -0400 (EDT)
Date: Sat, 21 Oct 2023 04:02:46 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Kirk Reiser <kirk@reisers.ca>
cc: Jookia <contact@jookia.org>, speakup@linux-speakup.org
Subject: Re: Announcing pod-kast with a k
In-Reply-To: <713d8ae9-392c-6b59-74c0-d869a1a35953@reisers.ca>
Message-ID: <4a429ec9-babe-86d3-be0f-ce4489773ad6@hubert-humphrey.com>
References: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com> <m31qhczy5s.wl-covici@ccs.covici.com> <b0e002e0-265c-109e-66a9-3e346efccb17@slint.fr> <ZK-YSWJQLIBTcJgu@titan> <86fdef3b-126b-2846-8775-045c952da6fb@reisers.ca> <ZTNl4To3mGEFMPpW@titan>
 <713d8ae9-392c-6b59-74c0-d869a1a35953@reisers.ca>
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

Well, Thank you KirkFirst of all, in 2017 I changed my first name, but yes I 
was an author of the concept, but Marc did the creating. For any items which 
you find inconsistant, please either let me know or post in his github page so 
he can work on them. And yes, I agree about the search feature. Thanks again
Chime


