Return-Path: <speakup+bounces-462-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6D4D456D006
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 18:21:50 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=donbiJCd;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=leYE2x0o;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9C972380BB5; Sun, 10 Jul 2022 12:21:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7CC4438091D
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 12:21:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C5970380A9E; Sun, 10 Jul 2022 12:21:41 -0400 (EDT)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 087CA380584
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 12:21:41 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 627835C008E
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 12:21:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sun, 10 Jul 2022 12:21:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657470100; x=1657556500; bh=7vPQ/v71Xz
	rCG8kSyYUYeZkvE94TmzVHt52puPuPNfM=; b=donbiJCd0HLWPGt8dxCe70c+n9
	7nWMmopNMe1cTuDMjMqI2e1v6+rPzsViOx1Y6fh236ToBOsfFsYLNR96zJuyR4LY
	G60G5Yb42u3V5JeRKlsrjBlJ0tZ0dPMq22uZ0TzWIna72zrA0qzXbbGdKMATrVWx
	JKI2tTDRthgCzEsEQXwQEgyQGZ/LDX7QI8xRsF1r9nOP/xTSqbJDbCPkGVaNLPbI
	T7ovF2cr3saLepelh0ZRz37Gab1Hy3TN4Tk2YV/vtYMY5m4TaO6wgPpx7xa6Eqt3
	3JQE3VzZsv8ZBW8662Vb29/eZTdr6nS2jRy8GnrYHVAMfo13h6drO7ZY4Mwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1657470100; x=
	1657556500; bh=7vPQ/v71XzrCG8kSyYUYeZkvE94TmzVHt52puPuPNfM=; b=l
	eYE2x0ov8gErRPzKFR+idPdrZi4V9G1ydNFvA6sbttrETPb7HOLNc3WhSeRb6kew
	plFzXfewCelN+zALCPbZ+Lce+vHunUTmGwCsyWNbrKJ9ozI2rtJFTbgVxcnV+rLC
	cd81dc3njk5263BJJDvSKJWPLzTyGCClyc/TJ8n7N3xzDLgo1gtW7/56byoroAQj
	P4ir6183u1eUeIgsEk5P6XlcrfCaHHim7P1UpA3rKT4ZqtdTK1XCL8VxYtOZyemy
	IjVsu7us+hzk6nI4aG9PgCMuhnUCypE9vHR+AzvlYM/vlCUeJW2vpso54h+A/bx7
	D1BhHxBYpzTUgoATI5DGg==
X-ME-Sender: <xms:lPzKYg81BKEKGPiubzsZR-a9kxU4kA7S5qAeG-hG_1h64-bE2sWefQ>
    <xme:lPzKYostQIpNghliNJbCmaFOZ8rrXXbqiGi-ZKFTLpT8E7lzMAakhhl80XhQKQiL2
    YKvtLnhp7fEpNIdMbU>
X-ME-Received: <xmr:lPzKYmCewgO65Ft99GHgHbVi40IsdfZd1KfcMeWkq-AQo5GNewIEw9XT3UQYuNQmnwS1I4h_LcNi1C0FQJXJbnH0y8AupjtvPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejuddguddtvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepleehhfeukeduteefheekff
    dtjeffheeludevkeekffetiefgvdfgleejteehgfdunecuffhomhgrihhnpeefqdhrtgeh
    rdgrthenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:lPzKYgcbi_n_FOU3hE8-_QJScUlqGzLQL_bEjdMsdwlrA9HyEWBg6w>
    <xmx:lPzKYlOQOnN9iPlFZ9l6EvmEBZBWTmMTUffCg5fbF-pf5Aw6xrN1BA>
    <xmx:lPzKYqmhBDVRM8DNdjemjpjAlT5dOGVnR_LKFgZZ8hWJEN3cR59mZA>
    <xmx:lPzKYsZmaghhA79CVCWZ_zfIaCKGWWcRbGqIjasDaUCaLkno3DEf_A>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Sun, 10 Jul 2022 12:21:39 -0400 (EDT)
Date: Sun, 10 Jul 2022 09:21:38 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: About no_interrupt?
Message-ID: <e12ad8db-3330-1eb3-bd02-65800c170ea9@hubert-humphrey.com>
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

Hi All: Now, this is seemingly really strange. We installed Debian Stable on a 
laptop, eventually switched from horrible espeak to Allison, an embedded Voxin 
voice. Even on rate1 she sounds like normal conversational speech. Only 1 major 
thing wrong. Once she reads, she won't stop until she's done. On my Debian SID 
desktop machine there is a file, "no_interrupt" set to 0. However, on the 
laptop there seem to be no speakup config files such as bleeps. Also, on my 
console desktop machine, speakup settings are in /load as well as dot speakup. 
What would be an easy way of getting these type of files so they are 
around-and-available on the laptop, especially "no_interrupt"? Side note, I was 
surprised getting Allison working with a much older version of voxinup1.5 
instead of the current rc3.3-rc5. At times I wouldn't mind running Allison 
instead of a DecTalk on my main machine. Thanks so much in advance of any 
guidance.
Chime

