Return-Path: <speakup+bounces-479-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1A66B576B72
	for <lists+speakup@lfdr.de>; Sat, 16 Jul 2022 05:27:09 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=h1I5PJH3;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=QUYUoJuU;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A1A2D3809DE; Fri, 15 Jul 2022 23:27:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8C7DF3805D9
	for <lists+speakup@lfdr.de>; Fri, 15 Jul 2022 23:27:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8D2D83805DE; Fri, 15 Jul 2022 23:27:00 -0400 (EDT)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B35483805D9
	for <speakup@linux-speakup.org>; Fri, 15 Jul 2022 23:26:59 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id C90263200319;
	Fri, 15 Jul 2022 23:26:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Fri, 15 Jul 2022 23:26:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1657942017; x=
	1658028417; bh=HHodnFgHjrn2kTiT7y+MDNmk/JswaO5C94XCiv3a0ok=; b=h
	1I5PJH3RLSgucD9Ld1cCu9ctAH7VfqmkWuf1QhmlqmLy9REwxd95e+zVLZsx00lZ
	unZUVcUhTeoDNAVrmzW8s9vzPfCw/BegwuWsLrikIJ3EXxVkdYP5INwpT0dEDO0J
	P9a61sOUFBZTzwnA/tW17nAGmT+dT7kw/W8cYFg/i7zbEVIKT2rnSx2tG+B0BTOb
	yoJjQ8l5LCr7DKDGyazIHnyuFpyGTF5cneo93zs94nzRgk8ayRs4/56LAPRrS3UF
	fw8QSEhbgUvRST/hHQzQaJ8B9aSdqGZmDAGHuZ1e2U39olpoZ+WOBcErkW3OFZAG
	naSsgGpQsE/bk/DVs1XqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657942017; x=1658028417; bh=HHodnFgHjrn2kTiT7y+MDNmk/Jsw
	aO5C94XCiv3a0ok=; b=QUYUoJuUad/ZUI10Y0KgGLj2jOddnMi8plpNomzy8fL2
	DzvcckDnDLhm/uDH4kiwVwNMxgd0DZIomVRX5fY+OTgr+mJbBYqRt8GxggHicOhm
	OurZqp1H4JnTR+GTVM4AlC9Lfxove7hF9Jnv00/RzuUTCgicqf6XWT9r3Afod86b
	OnJ5OG3Plp/WTGZ/tWKhAOSNnjI3vEQ2USOfDmOcBKGZuYIYktERe4DsGsYchXak
	WiVp+qOjvYB6p1pnqUZ+l2YLYdvRVb06l1bqnWebtLFqd1q25GNL3yqBJLTNYmXa
	sOIp3cEOlJmFHZuOzlb4tsxiGv1NyoY1RaWTJvkb/Q==
X-ME-Sender: <xms:ADDSYpU4et-Whs_iJoXLpYTa0rNPgNVH8NRDXpXpJ3BuBYmk_cZf_Q>
    <xme:ADDSYpkRMp0E94KGa-ULNwCnpMf6SHZCYUOZwljDvrftzeMyyog3SNE9v9QIEJoYL
    Ft85tQ3WNDD1DV-w2E>
X-ME-Received: <xmr:ADDSYlZMjchEq6yObNlrvphFrFbkEkQA66qBcWIXEC9PAJ-KrtmKU5chCTMluMxMfT_XFb0l1ez__vogOPGfPbXyuW2XLrW4fg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudekvddgjedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ADDSYsUw6o4DLhflCenLTeZSUq9zg437WkReMC0hSX5zguIlMRvgzA>
    <xmx:ADDSYjmGZ0kCgo_Ws7BptNdPR75hTMM2XLso0AQT2FbkGDQrdFGAHQ>
    <xmx:ADDSYpf4He-u-GdDrKCoFoAtxUc8QGoMltm55ZLPiEdEv46H2tHsYw>
    <xmx:ATDSYruvSmOdNgyMsc3dhpz2BxadC-ykK3v8nZlVruxVSoxSLu7lJg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 15 Jul 2022 23:26:56 -0400 (EDT)
Date: Fri, 15 Jul 2022 20:26:54 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Samuel Thibault <samuel.thibault@aquilenet.fr>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <Pine.LNX.4.64.2207152314490.572799@server2.shellworld.net>
Message-ID: <76aa9475-b3a3-d174-f506-83441af84cc6@hubert-humphrey.com>
References: <Pine.LNX.4.64.2207101628140.440089@server2.shellworld.net> <20220710203826.3wasqo5hnxf3zdep@begin> <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net> <b9ac0798-5749-12be-6dbb-9d05f7e48078@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101720510.441523@server2.shellworld.net> <20220710212952.oopexzb26c2kobuy@begin> <Pine.LNX.4.64.2207101803190.442232@server2.shellworld.net> <20220711035822.453lixuqfba7667g@begin> <20220711035920.yrrxc3uakze33cvn@begin>
 <Pine.LNX.4.64.2207110140001.450746@server2.shellworld.net> <20220711060626.pv44xzokg3tui4sj@begin> <Pine.LNX.4.64.2207152314490.572799@server2.shellworld.net>
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

Well, in the last several days I did ajust the niceness of Speakup-and-Voxin, 
but I didn't notice any difference. Also eventually waiting on some testing of 
Allison in Fenrir.
Chime


