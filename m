Return-Path: <speakup+bounces-814-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B12BE6124E7
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 20:30:49 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=k6aMVLsw;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=pP6i8dCU;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 40CF1383FF3; Sat, 29 Oct 2022 14:30:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 20CF0383FE7
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 14:30:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A5E95383FE7; Sat, 29 Oct 2022 14:30:39 -0400 (EDT)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A0DBC383FDA
	for <speakup@linux-speakup.org>; Sat, 29 Oct 2022 14:30:38 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 2FA915C0092;
	Sat, 29 Oct 2022 14:30:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sat, 29 Oct 2022 14:30:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667068232; x=
	1667154632; bh=2P2DHI9mk59yvCFASo4Vs95i4xUy3OMWMsvreT/ulfU=; b=k
	6aMVLswSBzUOuk1AetJhm4OHclZ6UX8aSsQoyqm+6OAqYbiEtumpwF+CcG3SWOeY
	abBN2c1q1vCUI+Tc/33mLxw/jKtJETNBJEkaZYYsamR1EsJG36NKyvWm9yF0FDPI
	z6qBgCRnZsuReLYcAbruKjzuvYahL6xNfbEm343dot8k93ge3/XXBaU6OOujuQJX
	urW07rzsqALf429HfZEaj/N6/++xhRmQL2bhtDZHtrRTkNIphVUgiV/1lsrV24bf
	b7c2afluKliQ4a0ypOLngXwEr4bqrmSHOwBwA8oy8IGehC7kBsPGklmCgzmXoRjE
	WHrHWZNzIie/6MItYVttg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667068232; x=1667154632; bh=2P2DHI9mk59yvCFASo4Vs95i4xUy
	3OMWMsvreT/ulfU=; b=pP6i8dCUbe7YX2/OSfA0O5DaJEFu7L7VDigtZC+AQ0vX
	fAqtSCVgiK8SyiMadez9gW6dnuH02uhtJXQS047Yqu+7h46LExbCXzVORjvc54w0
	RjJOGIltjPS8juoD/9OOIyhVeL7V7nwvh/8tyj8B7yiSJwAc76MY1gejlyyiEpfw
	CON6XNBeo7+nn5wPpFUJgtjNZrWwMkbv/voZ1LQD+BiUbRmnOZ+cMr8/p/YpujEr
	AMw+j49A1CqpZ/ucap7EQ6jopsToLAbhdMQu/DeqxlTymS7gBRcdZfrC1+huA4kY
	Q3DMsXqMmOukNlIgfC2H6TDVvRdnzg3VoKmxrIxnnA==
X-ME-Sender: <xms:R3FdYyyc0cW2MojNfhUzmta-GVKH8H79RFD5zeT0XDuBNQWy-4Qr8w>
    <xme:R3FdY-QiFfWrK__b2F1LOfvvwNQ-Ip37zEe2rMYL7s_Yh3XXryO_jwvimI93-GLr2
    pIQwKViOvTj-JzWg6k>
X-ME-Received: <xmr:R3FdY0UL6TAY7j3TG_RcADDX4l-EnvW7cw3NbTSGIKQ5pGssPb3yMDspCHOk5VdiTkM_6Nv6p1-okVTxYIKb9FuIfqCao82djA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdekgdduvdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:R3FdY4g22bFNBhCkzhStHDAMke69lWJCmOss-WfdQunD6Ft-HhPBTw>
    <xmx:R3FdY0AsHlK888jjaf2aNkJPdk7Y-DxbPLA21BUtzWJcw4YBxN_27A>
    <xmx:R3FdY5LzgN7qHrrA3s2zpw4vj6HiIxYjSuos_7USmzpYBu_rdkv0dA>
    <xmx:SHFdY3OBajW_c9nYXlIwUTrMBwMjk8p7tmNP96L3ns7QafzS2JpohQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 29 Oct 2022 14:30:31 -0400 (EDT)
Date: Sat, 29 Oct 2022 11:30:29 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org, 
    Didier Spaier <didier@slint.fr>
Subject: Re: Installing Voxin
In-Reply-To: <009d01d8ebc1$bfcf77d0$84ffa8c0@Win7VM>
Message-ID: <7cb6fde6-471d-b408-61bb-4e9c6a122b03@hubert-humphrey.com>
References: <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
 <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net> <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
 <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com> <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM> <62e3adc6-08c3-7df8-75e0-93a67a4b562a@hubert-humphrey.com> <007a01d8ebb3$01d52990$84ffa8c0@Win7VM> <ed3afead-d02f-1758-bb2c-4a454e2ecfc1@hubert-humphrey.com>
 <009d01d8ebc1$bfcf77d0$84ffa8c0@Win7VM>
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

Hi Glen: I agree, that would be nice, but I think its
sudo modprobe speakup
Chime


