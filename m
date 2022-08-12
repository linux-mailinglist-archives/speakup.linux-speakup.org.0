Return-Path: <speakup+bounces-496-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4E807590A53
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 04:37:16 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=Ws7I/gVj;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=PQFMTjSx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CD44138190B; Thu, 11 Aug 2022 22:37:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B8FA93818F4
	for <lists+speakup@lfdr.de>; Thu, 11 Aug 2022 22:37:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 88BE13818FC; Thu, 11 Aug 2022 22:37:07 -0400 (EDT)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6ED603818F4
	for <speakup@linux-speakup.org>; Thu, 11 Aug 2022 22:37:06 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 0C53732001FC;
	Thu, 11 Aug 2022 22:37:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 11 Aug 2022 22:37:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1660271820; x=
	1660358220; bh=nKWbWruv7QpIAHnUs6TXR0Plu6tROSp2EX1hhjI53Y0=; b=W
	s7I/gVj801KDDcUnAyVrEgwcEMNAxIIv2pOD2s2htXo3/aKXaRxXeLWPxOKdK4UY
	qcAemK1imt3B1Tbo1i/2qvO5QJodXBOVcT946mqUwtFuhvSmiIslyWYCqS+UYuFN
	Z+E+8Y8XN1hqNtF5yWsQRYhkmq8E1SmLtrhPnAeMCTmtHFytQcCLmIMV9IffZ+pk
	BJVuDM5OVCvWCaHgrB9tO3Un0wdHjWcvRolAx4rASqfr0v9swkSXgk1WzPm/Q2f1
	o3wo2KvE2mw8avtV3jUehDW0t2AdgYy9Az1eComwlZCryISYGvqFwqG5n3zs+L8U
	aPXO/KGCxQMTF8zw9dg3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1660271820; x=1660358220; bh=nKWbWruv7QpIAHnUs6TXR0Plu6tR
	OSp2EX1hhjI53Y0=; b=PQFMTjSxSP0R58q2NrtqZus/eEx3WDjJLUqAPQW0+BS1
	BGKFKlRQTLZCAjoLcnx8U38ngR0g67ybFchZPphhZWzoa5NOG7cMglK6ywf6ogeq
	ItlObIZ0lCrTv3SLz8isXIqphwyusb4lf2pyyaDbYGw+n27ezfwtU4vuyw2A+hiF
	SE8GhsLEcCvPZ7BEcQKWP69A/CYi9obuv9XRd2d31Tw7iPoUCvVm1nsw42vl4zDD
	CLBYwRGWsGuRAYDDU6n1BwczKh4LsFCT3y/9slva9wL2jxbYDBnNHsP2MDlFqpLe
	3A7xrbrtRsQivKMdqpmwQ/8Xb65BiH5rhsw5P3qNEA==
X-ME-Sender: <xms:zLz1YsrCxvMnEi4ZEYfq1CPBC_t28z6iCQcJ4KgyxGiVTTtNDSm4Bg>
    <xme:zLz1YiqI0GSPfnOkZL3KUsXDOxf8_yWmmzjglI7NlM65xVNWvhrOBjcwjF8x-uVpd
    zA1CEO_5VEtOSYgtO4>
X-ME-Received: <xmr:zLz1YhMOODGW2IP-RYuruzdTsoun6coM7ir_-HBMTcHQOd9RM0WSZkqvfFpv0C7Kn9lYPvRxuY8t-cEgRD-gUmFmAOIS_4KEBg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeghedgieduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:zLz1Yj586gnTPFvZukvRVUA-fkJii59uwBOjZ48UeVWq6oDtEtr1pA>
    <xmx:zLz1Yr5e4m1j7B03iJlvbd9iQ2snPQ-dJbJ8Q0JBEIhJ0b78BVtczw>
    <xmx:zLz1Yjinj8bj0cGNK_csY2G-5W4fNaGqVGx1cJvBkWi8R23CG8xazQ>
    <xmx:zLz1Yoi6AyfzsmeRfOoCG8vZwf6KH54q1oy6PeFDb_zNbjCquWq95Q>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Aug 2022 22:36:59 -0400 (EDT)
Date: Thu, 11 Aug 2022 19:36:58 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: help finding a folder
In-Reply-To: <017b01d8adf2$e34cc620$80ffa8c0@Win7VM>
Message-ID: <2ee5e7ec-1929-e613-49b5-ca822a0e5b85@hubert-humphrey.com>
References: <017b01d8adf2$e34cc620$80ffa8c0@Win7VM>
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

Sure Glen, depending on which shell you are in, first run
sudo updatedb
Then install or type "locate rhvoice" Since I am in TCSH, I must type rehash. 
Also, sometimes I've seen .tar files which extract to some generic directory 
which by name has no relation. Anyway, hope all of that helps.
Chime


