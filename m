Return-Path: <speakup+bounces-507-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6DA0B591652
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 22:30:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=ZQhjOzbY;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=tl0tOqc5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 013B83819B0; Fri, 12 Aug 2022 16:30:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E0EFE381901
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 16:30:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2FC28381901; Fri, 12 Aug 2022 16:30:12 -0400 (EDT)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 48B463809FF
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 16:30:10 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 1CD7532008FF;
	Fri, 12 Aug 2022 16:30:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Fri, 12 Aug 2022 16:30:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1660336207; x=
	1660422607; bh=JDENZ5HXp1pUo0JxM+DO7vNQAr3ASzHH23H920366jg=; b=Z
	QhjOzbYkbeVSiEKDHwSSsImKNwgsD1rlJam1dloOf1w/vOYXDQ4Ag51dDCga/R8A
	UapMqI8ej0u8ZMwXmzm5sR+f1AAsYjaNYXxLO9+6mbABG1IIMSPzX/Bm9qoZXW0W
	CvGSxqdyoiRf2ZhgxUzO2/q7OuvJqonB7x1TC/JjzQZ+0S5cLDMp+XaQ0Uj2Z696
	mvJrEDzFLDhEq+XJp5CQTzZcgOi6I1atyyJq+Fo3N/rZmlqv0ls6jzcvlu2EMt+H
	MaeV0e/XUyh9arPF9AlaTgxeC5dL3SwqffIyLf2pg8NsH9VS0OYSi1W3B5XEWwWa
	epU8nZnkIRo59IyVJ9fVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1660336207; x=1660422607; bh=JDENZ5HXp1pUo0JxM+DO7vNQAr3A
	SzHH23H920366jg=; b=tl0tOqc5teaaMWyGXIgjc4+wczmErJ6fkFmpUVv0WhRK
	2c5pYerRdvDrHYrpv2ZhRlQBYfH1LwKcqeU/qgy3wGc/Fj13lgDrN8iYNXfHFBsA
	rDH3AVB46jLNBdAAdLB2ZndnIXCOMY/8jca0q/wfitRYFeaYoSI1hyLugXXJ/UyF
	/kqs2pM9boyuI4tBxqqoLfdn6ebLAjpKRvbMtqRp+XQhsuuvOfXrXf7XzcPmhOA0
	9tCD0pentWBtCZdfxsJEpQmKbtJLCdm6IJjJRcTUKXX5XHWI+o1KvzXXHou+lyPX
	klhNkg5emp9HRTXTMagIveTf24661YKBuy/wGmPjHQ==
X-ME-Sender: <xms:T7j2Yvm7g_3gcc13k_JCgYbnzV4WXvjoI6srY9S6CGZOmZ4PP1q2kA>
    <xme:T7j2Yi3besuty0Hucwldjdxbod7kVLUQePfjGD0alOw-ZbnP0SMwwIBJ9Yl_aFD8Q
    6dVgxYfYrhHNZo7Ucc>
X-ME-Received: <xmr:T7j2YloYFg9RKxaJ5HOrRH0nwn75YfNS0t2zB8shNid1TqaH2sEu0W28sKBe7VO_pQVTlXgOT6wLx1qgipUbYrAqHbZx1OzWqg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdegiedgudehtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:T7j2YnmmJAp3ZyNRjg_X0oGTyRQ3aolCBixpeogP66_3wvdxSGeU2g>
    <xmx:T7j2Yt1b--AjktqvXMESFDZeFZ5EWtFR01EqS-v_9IvOj4MRMaJEoA>
    <xmx:T7j2YmtHMXZABWVz4MX90ABJc4Eaxa1K2vVJ8WWtKt0Tkdrd1o9TbA>
    <xmx:T7j2Yq8mSD52ZP8-9vkVr8guNNlKZQ_pTuLZzTILZKKNzO-Vc-xiCQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Aug 2022 16:30:06 -0400 (EDT)
Date: Fri, 12 Aug 2022 13:30:05 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: getting audio for Orca and Speakup or Fenrir
In-Reply-To: <021801d8ae89$220560c0$80ffa8c0@Win7VM>
Message-ID: <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM>
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

Well Glen, I would try-and-install speechd-up and or speech-dispatcher. Also, 
can you copy an mp3 to that drive-and-try-and-play it with mpv or mpg321. There 
is a chance you may need sudo to play an mp3, especially if you have software 
speech. You might need to enable deb multimedia in your sources list. Best of 
luck.
Chime


