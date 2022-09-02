Return-Path: <speakup+bounces-734-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E40B45AA457
	for <lists+speakup@lfdr.de>; Fri,  2 Sep 2022 02:26:41 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=mwhLLCLe;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=FcBM6LTI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1952F380A30; Thu,  1 Sep 2022 20:26:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F03643803A0
	for <lists+speakup@lfdr.de>; Thu,  1 Sep 2022 20:26:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 08E233803A0; Thu,  1 Sep 2022 20:26:32 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7FCC838033A
	for <speakup@linux-speakup.org>; Thu,  1 Sep 2022 20:26:30 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id BC0DA32009D8;
	Thu,  1 Sep 2022 20:26:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 01 Sep 2022 20:26:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1662078388; x=
	1662164788; bh=LZI1ma1vVPkrIv5HtG4dkTKlmqklZ/aumlqaK62QYqw=; b=m
	whLLCLeNfPiMwdGMFDC+JTsgWdTzSVKbZGJ2ucuNqfkbGEnMlmd+zM4r4P/DrmHJ
	dzN0rwOzdbqTrH1m1a/D3khC+MHyuXkk8p/Dify5GaTt67dcvnOEynydlrQh5wHa
	3LA1WBwb8KF3gYWOIAMQcAVuEiRul0PGYwKwPGftxIC3EK4yxtjFFZDIPNxsJw2k
	AQGa5tR9OFyUgvJl3QakKP38EWLM2TqgL9S+Vec8Sl1KXbK42o2Q058tuP7OUiZO
	103Den8EJMp2sec6mSGwlFJO9tUidzoTohYBfWZJNqhKFJ2VNd0mephpS8tsibK/
	HZmYNTib+ZaqcxrJHUXEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1662078388; x=1662164788; bh=LZI1ma1vVPkrIv5HtG4dkTKlmqkl
	Z/aumlqaK62QYqw=; b=FcBM6LTI3OlPhOCVoo3xFb0ovQf27QJ24vkQ1ckfAUfB
	rZqE7R2Q6Li48WdgOH+cbugohcye69aESCdm53GW+K4LkZ4VJ7WPH5kxVDDqDtmy
	vwgsIQh1/QIFbXGloGBtxf+nf6z4TN7MKIkx1MYgxusETY96tzVTZqQOtcRfKM+F
	QXwX8C8EVSYaDBAMtxZDQ6nRFUHWemFfemy1AOkZ69S7DRbBX5HAopA+qxmYqnsp
	9CuueYT52Bwas8svF05CTnnbBikPZV0aniHil0hfZ4BiMbSXqbG1fDOhV2MKMgtD
	uIgjsU/7Lj4bMxx7JFt0BBS88eVwlzMJ8vuaGAFhkg==
X-ME-Sender: <xms:tE0RY_lpXpkNB7QXsJosXGamMLaHBXGSMMyV_QnupbYJ795H8q9LEg>
    <xme:tE0RYy3x6gdxgBveyMsW3WIEE1rU1tgCnGGz42Sv7pP2hh0GD7883PdY--MiD0Nvx
    h1IYl2ruwI2JIUwTyA>
X-ME-Received: <xmr:tE0RY1p2k8bNWPX3Vvqp7KucuD2Sf5VkZ9v8s5QuiJAJGSdJJxUJQab-b6r2QmCKDwEnk_2_N82PYm1hlRqmVefERI1m3zxcvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdekledgfeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:tE0RY3ms-XTc_0HAn-Y_UepUfuUgmGBbvLmq2pg0tEcCeiA0aXSiSg>
    <xmx:tE0RY93pEklTGzGivn1Cx3APbLISuieUi1TGfT1xBOAfBSt-WAo18Q>
    <xmx:tE0RY2u9zNk9qsICszRi7lTrc4m4xAyfkQXNTIjkqiJkVlUy3gRWpg>
    <xmx:tE0RY69E01huLMYyhVOaKuaajracetSZBXJqN3aN8qTpugOtTsHj6A>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Sep 2022 20:26:27 -0400 (EDT)
Date: Thu, 1 Sep 2022 17:26:25 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Gregory Nowak <greg@gregn.net>
cc: speakup@linux-speakup.org
Subject: Re: Can I Have A Speakup Kee Map with Voice-Over on a Mac?
In-Reply-To: <YxFDfYuG2MxGc2H0@gregn.net>
Message-ID: <781a7a7a-5804-da8c-6617-dadabfdd074a@hubert-humphrey.com>
References: <181f82aa-a2fe-8f0e-07c0-6daf95300a51@hubert-humphrey.com> <YxFDfYuG2MxGc2H0@gregn.net>
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

Thanks Greg for an interesting history. Really, whether its BSD, Linux, or 
UNIX, to an averaged user, they feel the same. Just like a Mac, my Chromebook 
has linux-and-I changed the sources list to run Debian SID. And yes, I need to 
find out if or what the numpad roe is used for. Thanks
Chime


