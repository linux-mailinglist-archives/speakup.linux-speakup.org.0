Return-Path: <speakup+bounces-484-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 63D715778C2
	for <lists+speakup@lfdr.de>; Mon, 18 Jul 2022 01:22:23 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=ITXBYsrE;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=quE2KRKS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1052A380AE0; Sun, 17 Jul 2022 19:22:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EDF0C380804
	for <lists+speakup@lfdr.de>; Sun, 17 Jul 2022 19:22:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 474CF3808D3; Sun, 17 Jul 2022 19:22:14 -0400 (EDT)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9CFCA380069
	for <speakup@linux-speakup.org>; Sun, 17 Jul 2022 19:22:13 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 5911A5C0069;
	Sun, 17 Jul 2022 19:22:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sun, 17 Jul 2022 19:22:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1658100129; x=
	1658186529; bh=PheIOixTMyOFdXSgTIq1CFaodUy+toPT4IxB+nRvcwY=; b=I
	TXBYsrEbRqLwNh/02gZsjk4VKe3IHgL4cUQWZHYvsYPPz0Ra3obZPMBEK3pMTK1v
	Lz/103vEjMhAudx1Cy8qH2wuok7d8nkn9tdbBYiP7VpaD2ZNwFxg64N+lGrHfSub
	mvJGBfUiv+vOJ85p5sG9Z4Hre5cluYw+p+TpTL8IhbFeuMySfuzmz64DG47ph3d6
	+cKfcM5Q3OohJamlyDs707f5wjLVzghLXCxvZg8/0qgtG10ZAgmM7wHb6qwtRU91
	Sr6bcjqlRgefaNJHK2ldzpjD8xLyzWD2HmMWhtG64yx6Yyj12C0jg5q87eXYvAOt
	f7jTm18cmR4pfU9SnPXrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1658100129; x=1658186529; bh=PheIOixTMyOFdXSgTIq1CFaodUy+
	toPT4IxB+nRvcwY=; b=quE2KRKS2HQ30T8riBQ4lTJ6xd2EC7yJUGU7wAoXsVnS
	BdbFRkTJJYI0iK88/yv4UC5nSmbvDJpu8jBmHuxJvFE4k+zzK7Z38Tbs9BITaJEG
	ThsZ9YxPq1kMfN7vRi+kljo6TfYrz92kWN+uHoebFyuXngpnGrYsl+uydIxEob4K
	sx0EaQ/33LxoIpQ5ThmZ23gDg7VLP54UGLdyy3PNA0Ml8KiZBdoZmLeK09W7GaEM
	iOOkJA+86ixLncYPhvUWe0Huuaa+fpgNoPm3ubXwiSUMbyrLTUmwojLG+eO+FsYz
	cwjBTwqs6uU8G2bIy/SgnofrbtyoJ8uZzUR9SmO2Fg==
X-ME-Sender: <xms:oJnUYvwkaP_woJEoa2HaU5ZLafB9JP0j4PThO0RRmvV7wpZq8IVSyQ>
    <xme:oJnUYnRD2DiZORbjf4QeHo85s_EeJMb75LY8BiFFXf9lp3fJFbiOV3nr48PfeQlc2
    YjwkynnrX85kPMSglA>
X-ME-Received: <xmr:oJnUYpVI_z6DBEzS0pmsLqePWpJswIqWfsJFZa922NfplOTF3e7VdnirJMEqlARv1adlyy6qSntpjhXANRDFLHkvApz-e359MA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudekjedgvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:oJnUYpgxJ5Lhx_g54RRte-gyztPrlcWpcnUdUgcQa9kxUrLq_1jgxw>
    <xmx:oJnUYhByojWEOTf2EYsLPCLDGslguQh-3QtNqzMuQQGaWLdcwDXJ2A>
    <xmx:oJnUYiKNS1Biw1wUN4QIty78z1MLyRdolgMDk-Wmkp16uURPa4E02g>
    <xmx:oZnUYu7XKd0AbTHa9zv51WNyoQ_9_ZYwuBFgbX9plZKCVZtlHuYR6g>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 Jul 2022 19:22:08 -0400 (EDT)
Date: Sun, 17 Jul 2022 16:22:06 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: Karen Lewellen <klewellen@shellworld.net>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <20220717225255.oeguk3xrrurqjorq@begin>
Message-ID: <70af5c96-4980-8fc1-1b41-021ece0a8341@hubert-humphrey.com>
References: <20220717225255.oeguk3xrrurqjorq@begin>
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

Hi Samuel: Well, now struggling trying to get Allison talking in SID. The way I 
understand, Oralux wants us to use "speechd-up" instead of voxinup? In Debian 
stable, unless I am doing something wrong, voxinup is an only way I can get 
Allison, but cannot interrupt at all. I `need this laptop in a working Allison 
before an August 18 trip. Thanks in advance
Chime


