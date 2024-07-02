Return-Path: <speakup+bounces-1136-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D0F50924737
	for <lists+speakup@lfdr.de>; Tue,  2 Jul 2024 20:21:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=pedNmUBT;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=hIHodmIl;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A114C81CA0; Tue, 02 Jul 2024 14:21:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5B818C80879
	for <lists+speakup@lfdr.de>; Tue, 02 Jul 2024 14:21:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 62ABAC80894; Tue, 02 Jul 2024 14:21:37 -0400 (EDT)
Received: from fhigh8-smtp.messagingengine.com (fhigh8-smtp.messagingengine.com [103.168.172.159])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C3AC6C80879
	for <speakup@linux-speakup.org>; Tue, 02 Jul 2024 14:21:36 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 7103D1140149
	for <speakup@linux-speakup.org>; Tue,  2 Jul 2024 14:21:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Tue, 02 Jul 2024 14:21:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1719944494; x=1720030894; bh=b+eAPow4Jg
	Jkx99xWc7XoReLl9KorPr+OyqFOXSUeF0=; b=pedNmUBTnC2LnsjVvnLDv7H7mj
	8VlrUTlKQxiJGj0v3r38kcGP10IF1aZRk2NQNp92l7PcFMLMRvljXhJ1Faix4RhT
	CgaG/btwwtMU7A5suWG+tiufz0+/zBAg5Ogqioj7vIx5ImRrUZL8GYkdDSsAo8Y/
	x1RENd1x7YJIBGyq/TiVMWZu4eD9EO3j3mrWFlUtJqXbOXfYklcznd9YDdA0bjv3
	N+0vzakC9T3jMzG9gCdk7WqdEAbva9ZYuU8+shwhs6qXnnj6J0LyBEB70hNbeck7
	cK/ClPMo3/330jKKmEfQrGNJxiOUNVX5KJfKQaSoGjL6trVwRGCR9Y1ZFsCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1719944494; x=1720030894; bh=b+eAPow4JgJkx99xWc7XoReLl9KorPr+Oyq
	FOXSUeF0=; b=hIHodmIldJHzmOjecUMt7UIU6mMhZgktEIBEsrg7PFGCMUjgEn3
	nfW8TjVbtds/33jM3XCJiAB3Aiy7YaqU6rzvtjHIIXIXObbkwUZdu0Y/8kXV42Of
	v4FfIRvZX+6x4PERAJAxl6nafqlPo66Ha/G6yyoxVBf1h/sSfYR8x4uaZ0+Dht1m
	DQrW4eLB0vqqx2E937KLLAU1KtOUn54UFPjOBMSg1dcvXK29G99tOuCgF3kokJ3D
	ZzANnIrRwAX3+wYHfce/5z9MxhuRoDo2L37jZBSIEaVDbqDsmwKJwnMEEIS3VNrc
	krJthNhrKbfj5gPa/Ac93yM7qoyTKaaK8EQ==
X-ME-Sender: <xms:LkWEZtt-6XgEVVmhE9bUNy_3h1xiACz6KsRf6hjf36jce5HXxVZ3ww>
    <xme:LkWEZmfhPWe5QNad1aovuRKW2d7DwNrkb32rBGEuEIHxq3um9C8i6jxkHFg68PFFg
    gM9F5kRLe1-hpcepfE>
X-ME-Received: <xmr:LkWEZgzbL6Isiiu4jNo36HtWDMzYrhlKFD_gL5uaECMgoJ_oHotXOshN6f_9yC0EvBfDab5-FdP8DKEKLjlXfpsYmHGeyddfseE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehgdduvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttd
    dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
    mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtie
    ettedtkefggfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhm
X-ME-Proxy: <xmx:LkWEZkN4IKkzR1kDSl_8PJU0XE9I6yKzJYv7Vb4DGU_BDk2mJXdYyQ>
    <xmx:LkWEZt8q52LvC5_BqHLrbGi_zoRGM4bbjvHdJPGZIEQw0_RE0qKA_A>
    <xmx:LkWEZkU3bDVMKjEOXlXCQKMGX0nmfZGbH7gCp3PE1tc-y1MEulJTWA>
    <xmx:LkWEZucX9TSsihCI4Rf0KprL3-kwk9DkuetdhcjIsNzhfSIaPwnsfQ>
    <xmx:LkWEZvko5xEGcwhl_SM1fduYNtFATZSFpfx59GYdWE3inlidSkx35cyx>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Tue, 2 Jul 2024 14:21:33 -0400 (EDT)
Date: Tue, 2 Jul 2024 11:21:32 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: speakup@linux-speakup.org
Subject: Can We Use Open Mary with Speakup?
Message-ID: <74c245c5-99a9-1fe3-57f8-82dbce6cb42f@hubert-humphrey.com>
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

Hi All: First of all, I want to thank Chuck-and-Samuel in 2009 for creating 
"talkwith" so I can now switch among my DecTalk-and-Voxin Allison. While both 
have plusses-and-minuses, I think a more perfect sounding speech is Open Mary. 
Supposedly there are versions for Linux, but looking around, Github is quite a 
challenge if a creator doesn't have a direct download link, especially viewing 
in L Y N X. So, forst, can some1 please inform an easiest way of 
grabbing-and-installing Mary? 2nd, would it just be an entry in 
speechd-up.conf, or would speakup need an additional driver? Thanks so much in 
advance
Chime

