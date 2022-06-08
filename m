Return-Path: <speakup+bounces-451-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 41C86543FDC
	for <lists+speakup@lfdr.de>; Thu,  9 Jun 2022 01:27:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=AMpUpH9/;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=av7/J1iO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B775C380C64; Wed,  8 Jun 2022 19:27:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 97EFB380806
	for <lists+speakup@lfdr.de>; Wed,  8 Jun 2022 19:27:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E09A1380807; Wed,  8 Jun 2022 19:27:46 -0400 (EDT)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EB1FB3802F1
	for <speakup@linux-speakup.org>; Wed,  8 Jun 2022 19:27:45 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 3C09132008FC;
	Wed,  8 Jun 2022 19:27:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 08 Jun 2022 19:27:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1654730859; x=
	1654817259; bh=VR493sN6Qhqkz40EjyznVYBCMy0MoPy9VU1F2X0Rvmo=; b=A
	MpUpH9/Diw2g8xT1207JheTzzpSoreIQFoSYfpqjjmDCW7+bj99BK4QDr6ePpr2P
	DaTT2i7m8d/CeWy2WeEwcJL5GJTypCfgIvtb6l1MEJfR/IqYIEEMLYgT5YUFe2S5
	i3/K9CSfy4WdEdQo3rIlFojHXYa8fRc/E8AQHjCCk/ygTy9UMTAqvhNviVKU9AeX
	iNm/4cgrFxDoSJHBgJboubOzMfZtCi2q3FTc4fWM8g7jUpIchV00LS2NgjU8RoUl
	VmDCx+JVO4zzWvyn1c0DbciwIqJdyyoodBXehbygMMZM0uUAXy9slXnb7E5JOrzi
	xPAq0huW5VY2m+YXpuMgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1654730859; x=1654817259; bh=VR493sN6Qhqkz40EjyznVYBCMy0M
	oPy9VU1F2X0Rvmo=; b=av7/J1iOFqAWUBq52zv3b6kuzhx49vh5BYErhpQKP/SM
	jyWkghTOyFDTG3+9Cm3SbYXidWyGslLXfXwVBDFYPv4K0SSK1lP/WA0kl2sZDhq/
	WImVsnAiNAQ081t7DCcP4uekbZ0932/dpTsE3i8UY2fr1IpQk3pM769bM6aVU6jB
	QcXrxdKZFiFOT6qQ5fjytsnWu9boYXkV0wEBnT/x0kmjJRYCKWstTAE+k2tfbwro
	Di5XO0mFIWI2Ljqk/L218vzwxjqc/DDfLzNww2zE4FCWTe46ycrqm4PGu86/xz2W
	yv4Rr6hg+1BD2dMsopSeThCwtEexozn3+aRaSpZ2DQ==
X-ME-Sender: <xms:azChYoWyBW0Xo4um1dxPxtWlRU7Sp60kem7J33yfMg0-frhj_uPKnA>
    <xme:azChYsmcYrpnllCeiDDWRaXlwqcWbhd60WwJOKrD7eHXmU6LoBRMIOEfOrU0OmKpx
    UuUQHfi0oTXsle89ns>
X-ME-Received: <xmr:azChYsavhcPx4bjzj-uyg8p2ZTFK80KYAPZozDFqGa-4MGEYcRxgLpx7cN07QgZvj5MF5ZWk45yjA_-YKf4BkJeEsKl8Y64Zmw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddtkedgvddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:azChYnUnQ1-OuRYIlKXc5qrTEqmVeoMyzOo8w_7gUT61v1cuLEAOBQ>
    <xmx:azChYimvKveC-qyU5gi3pqrsVCTMupML2Sw-GfgG4BG6mwXQsKYUpg>
    <xmx:azChYscGPh-m0oAo9rJF5_bKqJeNiFPjn_6_f873SPz4JioK-M1tjg>
    <xmx:azChYnwYA-RvunfLY3DoXpqAm5Q-jUgGrTdfSLrOF-sfqt9alLUHRA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 8 Jun 2022 19:27:38 -0400 (EDT)
Date: Wed, 8 Jun 2022 16:27:36 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: K0LNY_Glenn <glenn@ervin.email>, Brian Buhrow <buhrow@nfbcal.org>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: eMail Links
In-Reply-To: <Pine.LNX.4.64.2206081730500.1048540@server2.shellworld.net>
Message-ID: <e38d2910-f8b-f737-7962-a8591ea01a88@hubert-humphrey.com>
References: <202206082120.258LKnbn014088@nfbcal.org> <011101d87b7e$08b16990$81ffa8c0@WIN40RPKAT965G> <Pine.LNX.4.64.2206081730500.1048540@server2.shellworld.net>
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

Hi All: The nice thing in Alpine, you can configure it to click on urls in an 
e-mail. As far as any atatchments which you would receive, you would hit a v 
and look over any which you can save.
Chime


