Return-Path: <speakup+bounces-470-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 005B556D1AD
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 23:49:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=gptaCJod;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=fnZQ0Cse;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8D424380B9C; Sun, 10 Jul 2022 17:49:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6DFFE380B61
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 17:49:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC9DE380B61; Sun, 10 Jul 2022 17:49:26 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CB0F2380B5A
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 17:49:26 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id AC2BC3200645;
	Sun, 10 Jul 2022 17:49:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sun, 10 Jul 2022 17:49:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1657489765; x=
	1657576165; bh=7hiU1Z9pK5HEj+VfABD5RJdYicUU0QVzGQmLVQbeLvM=; b=g
	ptaCJodt3dsHKUpVXjeJVASHABhmlsMXshYOTWvK5s5ueaSy6WZ4GQEdnE7v04XV
	m3NFYWLMPEFuPaCIJcCfwMWsdr9buahrrjm7Wu5KLe+EQJUR4IpF2fOy4XizM8oG
	i28UZ2bzD+7ckLS7NQ2CPLDNUK0lUZsSQow18yYp1VWOGi6v5zGY6ZFcFEAO+IFJ
	GEAI4+iKApsdvHYvhTyohsSdZpYXgArWh94NsWJ9vsboolyUUuh6+H8jRZB2OG0E
	hRlkDfxaL7eFs7lyqjqCap2AioSFcF64R1JpNTQ/lp7D78Yx/jpruoKiuKqZesVv
	smEb3noCX+xXU1UpMM9zg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657489765; x=1657576165; bh=7hiU1Z9pK5HEj+VfABD5RJdYicUU
	0QVzGQmLVQbeLvM=; b=fnZQ0CsecN8/rbm4z/+tqMBmsUdUf3dBLD4tBQbWXWHF
	vXlfD4mqbfwncHjgg5y6T32mS/Ck12zDVlm+EXsFyPPqqTfiKC7Y+6y53Fx7/aYK
	oVvSt/yQZmP2MaXVikaFCtY3gT9JmXQFMkCb5jqJiCHFRKoAH5O2M7P511iMCyXU
	UIO/g8GSt3dGLRA8GXxMsEG3j89d8iSoWKxfItLPOi5KAq+dn9aj4u95jOK0o8Gi
	LKvL2qLOz/G8bVjgMCVrrpUwSvDYhv0kT7dYa8uXcFNC4nirndchijPPOk5CONG6
	P0E+rFFTIHgfqTduPBBqCxnkE9eNc6WwbOmo8yvC+Q==
X-ME-Sender: <xms:ZEnLYkanEzOg1Z8JRttO3QIU_tVNDC5x6F-1kPgrPrVj46NQjkjOug>
    <xme:ZEnLYvY4JZjNOmnwQxsgMnIM1Dju4SVUV3h0pGwE3PUfe6m2avKlzYpFLNkXrZb0Y
    nePyCQfpn_bpV4OaLE>
X-ME-Received: <xmr:ZEnLYu-cLgdQJsQ1JuYNqvNkS3BYT9XrUXWffN7gN-ZVl7MgFWF9mWHtFWI26G4aBBFkneOCF6C90k4hMgCwBbcMflyJV8xx8A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejvddgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ZEnLYur3DiOvEU-h8OFLUq8rJRiotdby3IS2A-xRUVv9GvQeIbGLqA>
    <xmx:ZEnLYvqOFxTAegIhnEhKtF2LYycXHaZsKScDwDBY9-PHzjoeYb1-Iw>
    <xmx:ZEnLYsQY29NjAozOGpCm8TzFpo2j2B8nqB9-1sSygRyeBaYV6RV_iA>
    <xmx:ZUnLYoBWERcDEY1-AaxaAogrCmFHy1MImi5ErmwbmSZhACM4rYWocA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 17:49:24 -0400 (EDT)
Date: Sun, 10 Jul 2022 14:49:23 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: Karen Lewellen <klewellen@shellworld.net>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <20220710212952.oopexzb26c2kobuy@begin>
Message-ID: <03473d41-4ce4-860a-2bbd-88e16f748aa1@hubert-humphrey.com>
References: <e12ad8db-3330-1eb3-bd02-65800c170ea9@hubert-humphrey.com> <20220710191638.ifp4speglszs3hm4@begin> <221ddb78-9ec2-6f00-b249-50dcbb7e57ef@hubert-humphrey.com> <a029ad61-468a-0daf-e245-fc679f1a8dab@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101628140.440089@server2.shellworld.net> <20220710203826.3wasqo5hnxf3zdep@begin> <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net> <b9ac0798-5749-12be-6dbb-9d05f7e48078@hubert-humphrey.com> <Pine.LNX.4.64.2207101720510.441523@server2.shellworld.net>
 <20220710212952.oopexzb26c2kobuy@begin>
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

I think some of the older DOS screen-readers had a setup the way Karen was 
inquiring? I think ASAP may have had it, but while I used Vocal-Eyes for maybe 
12years, I don't remember such as keystroke, but certainly, it would be a nice 
addition in Speakup.
And lastly, I just dabbled in the Fenrir settings file, will 
try-and-experiment.
Chime


