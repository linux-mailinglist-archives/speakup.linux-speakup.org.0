Return-Path: <speakup+bounces-488-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 170C157858E
	for <lists+speakup@lfdr.de>; Mon, 18 Jul 2022 16:36:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=YAZQHfCK;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=jr2lMbQl;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 94A07380A90; Mon, 18 Jul 2022 10:36:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 75C0B380916
	for <lists+speakup@lfdr.de>; Mon, 18 Jul 2022 10:36:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E5CDE380A13; Mon, 18 Jul 2022 10:36:09 -0400 (EDT)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D9FF03808D7
	for <speakup@linux-speakup.org>; Mon, 18 Jul 2022 10:36:08 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 80D2C5C00D7;
	Mon, 18 Jul 2022 10:36:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 18 Jul 2022 10:36:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1658154968; x=
	1658241368; bh=LqcNVkPOKpecB/1D8CGPzCbQZGsc/vi9AdzMfQAZO5I=; b=Y
	AZQHfCKO1PlKrN6JENje1RA9HgYvUd96+8wN0K8DLQeDCVcY7hnqsJPTbbTjJEi8
	7QSyCrIpqK1HBqyomq0KrgVnb276/4IYk0w9jTtj9L7bguB7sTL6iVdlq9DNNHqL
	zeBdcgJT3/2yFjPdwSozmIXEy8mVyBJRLjqOH8aPR7+GOJQABtsoHilrSVohIw59
	tqUU5f+/jot1YWD1DzI0QImyJGOay4+k6md2eZUjbuLqZ2qu5yNgSAhDVFgsc+Yy
	JC8CZKzsyrJyHY4kg6H2s2rO6SttTyA9SvY/yKxkZJOBTcj2Z8mMwZCV2BaYP6/Z
	bD7NXhcC/MPaArlwgMcMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1658154968; x=1658241368; bh=LqcNVkPOKpecB/1D8CGPzCbQZGsc
	/vi9AdzMfQAZO5I=; b=jr2lMbQlLRJpqKs6i8Oh2V3yYfpImtVxLzqQ/vGuUHkY
	8GkhQ8lfhuBKFQj/midqLNyQmLYCLCTXX+vNf1AlS+Lz8JBdh+c7NOHsY0kf9tD5
	VTKgC3YAwWmHxNeV/pa3POOWcncXpEoawm6SHPGXVeRw+uJNGNj/0aqXi0P3Qjo6
	6eEMFhe9zFJasC02h2TwAxRkOhOFA7917XCpoRj4qxmg8A7xRC2sBuVQBT4GKg9S
	S4X33DLq1izkaYcK11WyonKGbpuAkM9PQaaTFv3Mj7/T0fiOLMaR+Be/HKmxVC/S
	xJvKOuYqs1DLh1adgP73Yhq0kbaxGt91JpFMgzvtsA==
X-ME-Sender: <xms:2G_VYlEKhhV8Zu4LNLQmVyXyhJrYSVFjqF75z_LxiImhMlD72T8AgQ>
    <xme:2G_VYqVG-Z_AffzMoJIlkxQqaWkucUl13UD6cFSLSE3ksL7K9rmcr7zD5kRuSWDLn
    nXbNUAMxfGAzRJbGlg>
X-ME-Received: <xmr:2G_VYnKqF0CCiTJRKO8iLdMZa1esEciSTdnQIzohW3YEaKqhlHey7NrNnddiZ_oZgH1TcQyyxh-0zltbV1t5L1BUk1UNPXW1wQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudekkedgjeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:2G_VYrFqMc-TREyBzf-lsgvnhsUWlKNCNO5dWWj4DxoHqj7f7yr68w>
    <xmx:2G_VYrU3VbNrCXDanSxT2AYYrxcA-a2IZ6cGILDv1P1RaG7IqRsSnw>
    <xmx:2G_VYmPyF72ZVw0xoCdJv_BeYV0RP7b7_4MN5qaO8sxQ62Vm-H9EvQ>
    <xmx:2G_VYie7jtx2wiEebAVWNK1T3JUYTMtSwS80MgOJFSMXlANYZTOGbQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 18 Jul 2022 10:36:07 -0400 (EDT)
Date: Mon, 18 Jul 2022 07:36:06 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Samuel Thibault <samuel.thibault@aquilenet.fr>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <Pine.LNX.4.64.2207181022550.632244@server2.shellworld.net>
Message-ID: <25e2d627-0639-8b2d-fc70-5936bf68f468@hubert-humphrey.com>
References: <20220717225255.oeguk3xrrurqjorq@begin> <70af5c96-4980-8fc1-1b41-021ece0a8341@hubert-humphrey.com> <Pine.LNX.4.64.2207172215550.620269@server2.shellworld.net> <20220718062510.rd7cwpemm4slpyd4@begin> <023d5fce-6ae9-3104-9b0f-ca4103009c85@hubert-humphrey.com>
 <Pine.LNX.4.64.2207181022550.632244@server2.shellworld.net>
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

Well, Karen, I've written a direct contact for Oralux, but its probably been 12 
days or more since he's written. My Linux expert says we need a step-by-step 
guide to install. Another words, which components? So, I figured if it were a 
Speakup issue, some1 who's an expert would experiement. Meanwhile, eventually I 
may get to find out if Fenrir has similar issues? So at this point I've 
contacted every1 I can.
Chime


