Return-Path: <speakup+bounces-1058-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8840F7E1055
	for <lists+speakup@lfdr.de>; Sat,  4 Nov 2023 17:18:45 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=RFoFJsKQ;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=hFKGdMvx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0977B382728; Sat,  4 Nov 2023 12:18:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D9BD738271C
	for <lists+speakup@lfdr.de>; Sat,  4 Nov 2023 12:18:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E501138271F; Sat,  4 Nov 2023 12:18:36 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3339A3822E0
	for <speakup@linux-speakup.org>; Sat,  4 Nov 2023 12:18:36 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 37D973200936;
	Sat,  4 Nov 2023 12:18:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sat, 04 Nov 2023 12:18:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1699114710; x=1699201110; bh=Z6L66yb+KiTCWOhOQEMzdlD9gdVu5BESRwj
	Q8OEJx1Y=; b=RFoFJsKQgMxmp4Y3jIZ6ibCH8Qy7e5gWi3Yg/MGCV3O4+okHHZ8
	BZQ1CaAPxcZhl3Bdztijc+Nurwkv6L94QMPRWp+f1ltiOBwR3g5kjAph/Zmgd6uc
	rT7kO9XpBc2v63tgT8/ON6B8s/iP2XA6yHRC0oWHyAxH2S7ShelY0pfMLRuqK4B0
	A90khX1sn7anrNAt5Rr6VYdz0zyp3JxdmajMnZNmyZBECMwDzrPD5vuOnJwMWImN
	ESfuxsIInbBKTEzV70Ngpxgy/Hn0KpX+zRW5t9h+Zdlr1R7C+/+Dm981yxDgq1da
	6SGh4CMP0Uy3HVWojlDDMYNUrOnv+6rQbAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1699114710; x=1699201110; bh=Z6L66yb+KiTCW
	OhOQEMzdlD9gdVu5BESRwjQ8OEJx1Y=; b=hFKGdMvxzXqAOJgn/zo8lFJnsobuS
	svzidDzmyoEMsrkRuJZzp8nojr+K2WceCE0ojYm8JziktgsAU2JD79o+S2r37xpH
	0VfD44q6dajj2ucZY+Sd4jm0irhAAIDuUqDu11rBCzVzkHrJznh4tMcPHG+8zwSN
	EYYZyJNqU2uP84ElWbOdPQWA4ATPJ/wjArHT1sgB8un75l4mcZbDFeYI2v10tlv5
	UWM7VY12+2SikOPsEqS9R6b0vAm8lKy+YL4OcuRk9w0L34JNnBalmidf3Vle+6Rp
	mxlwbIA0OcDu/huRQLvqmA/xg5upUl1nhmVb0ytZSGNCqT6XcSoRm53lw==
X-ME-Sender: <xms:1m5GZX5VKiDXW7l7yOSvgSPruyXT0Q9s9uO3J98oLBbO3W5ZzIHPyg>
    <xme:1m5GZc628xY-s8AKgMeaPqZAR72ijv7u-6DLR6-veVQpToK6QK-6OKUOYB4WQdWAW
    sgGKqV1GmuSGWjQfC0>
X-ME-Received: <xmr:1m5GZedBSt34cDig1ATVsYAzJQnaAZG1h_gYZ9XBjGmyYYesf55OSMTB0NoEfuzvdJrfj445hrZ27mKtCsMJ782bJ8nklORk2w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedruddutddgkeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:1m5GZYIFq0eIhe2gPDqxAcbXrKMcgP7PF_lpWGCSeFR_wJIzL84NeA>
    <xmx:1m5GZbLo3zbyxG5ztsgqjYjMqeq9yOpShqCYbPCNesZEkSRbKLjoMA>
    <xmx:1m5GZRycZOlyQmViUHbzL96aQA12ThcFgpG0hfpVeKbhHeGxv8K2PQ>
    <xmx:1m5GZT3poWzo0lOBRWvRkcQxoG2P5t3A_mbE7lW6Eyjlm8eJVaaBpw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 4 Nov 2023 12:18:29 -0400 (EDT)
Date: Sat, 4 Nov 2023 09:18:26 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Brian Buhrow <buhrow@nfbcal.org>
cc: Butch Bussen <butchb@shellworld.net>, 
    Karen Lewellen <klewellen@shellworld.net>, K0LNY ?? <glenn@ervin.email>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: slightly different dectalk question.
In-Reply-To: <202311041608.3A4G8XV7016338@nfbcal.org>
Message-ID: <fabfd7e5-974b-75ae-4cdf-d314ceaa7c68@hubert-humphrey.com>
References: <202311041608.3A4G8XV7016338@nfbcal.org>
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

Well, I would just arrow to an atatchment field-and-type a full path. After 
Brian's comment, I tried control+j   here in alpine, it says "message number to 
jump to"  What I really wish that alpine would handle tab-completion of both 
addressbooks-and-files.
Chime


