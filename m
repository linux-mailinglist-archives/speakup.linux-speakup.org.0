Return-Path: <speakup+bounces-481-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 641DC576B8C
	for <lists+speakup@lfdr.de>; Sat, 16 Jul 2022 06:01:55 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=SqLDFavQ;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=Odekfh0T;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 09824380995; Sat, 16 Jul 2022 00:01:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E63A33805E3
	for <lists+speakup@lfdr.de>; Sat, 16 Jul 2022 00:01:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9DE6638093E; Sat, 16 Jul 2022 00:01:47 -0400 (EDT)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7D01438020D
	for <speakup@linux-speakup.org>; Sat, 16 Jul 2022 00:01:47 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 621363200319;
	Sat, 16 Jul 2022 00:01:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sat, 16 Jul 2022 00:01:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1657944105; x=
	1658030505; bh=F/0wHFL3ax1eP/CZzCbLp8cRYx+NiFOul6UTWuWXmso=; b=S
	qLDFavQO7iOE2zrx0VeBtgcSxybkQaKdSPrCVi6r4U/6hjeNquZAt9vnUXNqenYm
	dTXMlpxdmonMP2Yu8RX8sbCGjGlFVCb9HGQUVeLg57cPKbFlqG5RrNEaZflXz4wL
	ZNuxAAUaBa86TdooZOuBfGr+9dtFXS6xn83Tg5L7nQHA0hh6SChz3Nqb9GGvFJe/
	htDkL3/rJhzsdl8gM5Ci1Gi9KH8OCint2qGqUOdWsaHjdcNSA4nUGCB22W0aW0H7
	5JqvKBW+yfPdcj8aFuJtOtel8pEZTMMfFtQdQQPzpv26pFQVgHhSzB01YCj7Scka
	Gjsy80fKs6nszUb8HMwvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657944105; x=1658030505; bh=F/0wHFL3ax1eP/CZzCbLp8cRYx+N
	iFOul6UTWuWXmso=; b=Odekfh0TDGIf4rpmxYOgc+HYIv8IfPngMMprCw4SqjPa
	BzS/JhpYvd/+WzaeSC66WhEXKTUiBq5Lyk2Oo/sW7yploOd6lL9abF8fIKBxVqLc
	CGCFv7/iYTts0913s0dPhC9QKyjQuhxG0CXaf1tlWAnuQcGpk9cwcjWRsxxX9QdT
	oxw+SwGNXiT999VQfTEwu1eR9K8fqldVMu0Z2yk/fISWqmNJq3AuXrECx+HqJC00
	GtRgpfewPpH3YGaMqC6jZiUlBahzEsKi1ZFGasIv0MfRarurDHv5plAWvpg4pqg5
	pM+YaAmVbhacZ0EJhr/2b3yC/LaXquGqsY2FoTLuPA==
X-ME-Sender: <xms:KTjSYhc9Y0p5_ctbN1wZZJ1Rn7j40Ri3pFGKoiLyBWEy1Hq6OgnjpA>
    <xme:KTjSYvPITWBbmQyHXMrD2NIi8JMK1E-30lMRPnAsjSPXwy_78ZawBn53_mKbk9meu
    THYkXOWLpMigiJ3KGc>
X-ME-Received: <xmr:KTjSYqg5DdUBx0TgUkqbKt27YY33Ek6ib-v8l0jGztBGWyksHjZtuxNb8E9CGhBBvcI3x0JAtb7X6pvCEheBRC1se-TlENYaQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudekvddgjeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:KTjSYq_oMbRgQjl8F-wsOZQYgX1K3ld6MjML56uxRjbNuCtFGZs3YA>
    <xmx:KTjSYtsQ5Q-NU4EEnEhTBLdb_zhFP5jXCMvS33eAkZaX3A5ga_0iXg>
    <xmx:KTjSYpGLd4aMO_eqjWdOzCUt0unJ3_FxxWXRAjlqJG5vNrt0b3jHew>
    <xmx:KTjSYuW6laeIxYiRu5Wd-jmoBaVw-ezMzmjkaT2vhY1edGtv4vMFag>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 16 Jul 2022 00:01:44 -0400 (EDT)
Date: Fri, 15 Jul 2022 21:01:43 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Samuel Thibault <samuel.thibault@aquilenet.fr>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <Pine.LNX.4.64.2207152351300.573529@server2.shellworld.net>
Message-ID: <50545017-deb9-5e96-4730-682dca9521b4@hubert-humphrey.com>
References: <Pine.LNX.4.64.2207101628140.440089@server2.shellworld.net> <20220710203826.3wasqo5hnxf3zdep@begin> <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net> <b9ac0798-5749-12be-6dbb-9d05f7e48078@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101720510.441523@server2.shellworld.net> <20220710212952.oopexzb26c2kobuy@begin> <Pine.LNX.4.64.2207101803190.442232@server2.shellworld.net> <20220711035822.453lixuqfba7667g@begin> <20220711035920.yrrxc3uakze33cvn@begin>
 <Pine.LNX.4.64.2207110140001.450746@server2.shellworld.net> <20220711060626.pv44xzokg3tui4sj@begin> <Pine.LNX.4.64.2207152314490.572799@server2.shellworld.net> <76aa9475-b3a3-d174-f506-83441af84cc6@hubert-humphrey.com>
 <Pine.LNX.4.64.2207152351300.573529@server2.shellworld.net>
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

Well, Karen, if you mean Oralux, who sells it, I have written several times. 
But considering Samuel thinks its a Voxin issue, I wanted to try-and-test with 
another screen-reader.
Chime


