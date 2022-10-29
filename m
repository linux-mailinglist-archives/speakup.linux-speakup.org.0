Return-Path: <speakup+bounces-811-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F22D7612474
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 18:31:03 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=nQ3gEB9H;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=S94iuQCI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 778B9384068; Sat, 29 Oct 2022 12:31:03 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 57734383FDC
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 12:31:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B9202383FFE; Sat, 29 Oct 2022 12:30:53 -0400 (EDT)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9E874383FDC
	for <speakup@linux-speakup.org>; Sat, 29 Oct 2022 12:30:53 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 48A6D5C00BC;
	Sat, 29 Oct 2022 12:30:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sat, 29 Oct 2022 12:30:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667061053; x=
	1667147453; bh=0bLKIaaGeDB4NaLRDQdgZemkq8WR312chg4tZ0BrPMc=; b=n
	Q3gEB9HmYtKOZdLprHcO/13G2IIBZN0DxY1AjNIjyYH2nDxKEQAJaNxmSgzEm3EF
	uDneL2Ws7lUrDQUhcbayUYBuc1eeO7EX0zMtjItoeWblDjL8mdb8V+IaZ+4qkHeM
	VzzGZcZ9Mv91Pw6avOEXe9YFumVkxZbckRxzYnwZung6i1VUsrttXljZhMz3SyvX
	qLl/hIPKoYVF3ZNt/OdrcQ/FVoekdbzh0r+uOqciFgnMLy4KX01gJFM+NQ3OvCdY
	chmCNezOevyXefyx9qsZ9xJuNXQCsRTA93Vgiun/njoK1D77/uvi9WV16s+zsVP5
	r50bQNnUYwy9oKzq67b2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667061053; x=1667147453; bh=0bLKIaaGeDB4NaLRDQdgZemkq8WR
	312chg4tZ0BrPMc=; b=S94iuQCIbKeBZ9eD6gl9ByUGNSm4SOyzJQWdTQLEmbBl
	ltek2NmWbbJWE2uum7r0n5WxKMqHJqNNn3hajzQnT6s3yjn4zYxERGYHhPCFFB82
	YF4Qj0NqPdVu3MoUGZCTp3WdGLZH6TczhbTl4jBzQ45kC1typMflPuPMCQreXKFu
	fhXtTsUmKFLOXiO6dOejG533G6ylpHaen6PiEdDpjBHmLvJgjLK88wdBpiNi7giA
	zdFOUm2dgt1IV7q3ekwItSkJa/GAAtnkV4MQeJJz+Kon3gkJ8vs3tLz89ox534G6
	JbseIaXOhX2TwNb7go1awmGZHCkDwmD1DBYQhv1BAw==
X-ME-Sender: <xms:PFVdY14VLkfDc7_GWToDtiGCHuZ7M-Ki4LrKbbJZZvsTyBT07YUlgg>
    <xme:PFVdYy6pbzS3Bh3CSNFC69eYuoYePuwY6ST3L3uGnpYoVK0XWHby5ozuL2-2yXtNN
    iBIWh65XdHY1wEGkx0>
X-ME-Received: <xmr:PFVdY8e0Und-sVuxI_gUgPad-eM9d2rmuV9xykpCSIMLeUWdnFIcqxEO4lgHJAulsiB9zoX8V3vm5jqcF7pvKyZkbauPVMzBEA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdekgddutdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:PVVdY-Iu-ZoX_6H1uM1cpc2G4lQusoIU2xhMyoHK3ObODhD8BJoKAw>
    <xmx:PVVdY5LG00zyulnkYAY1Y3xh6L0GkiEgQy7XNfhx_Y192hWiQ8bz0Q>
    <xmx:PVVdY3xUESapYTcFt7BTIerueWBZw9LV05Tg6sR-X4kQWzOvhArSlw>
    <xmx:PVVdYwVUho3-Z7RBx6fUC3LYcbMBbBn8Z7fb6rIRjLUAGoSPlVLryA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 29 Oct 2022 12:30:52 -0400 (EDT)
Date: Sat, 29 Oct 2022 09:30:51 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org, 
    Didier Spaier <didier@slint.fr>
Subject: Re: Installing Voxin
In-Reply-To: <007a01d8ebb3$01d52990$84ffa8c0@Win7VM>
Message-ID: <ed3afead-d02f-1758-bb2c-4a454e2ecfc1@hubert-humphrey.com>
References: <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
 <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net> <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
 <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com> <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM> <62e3adc6-08c3-7df8-75e0-93a67a4b562a@hubert-humphrey.com> <007a01d8ebb3$01d52990$84ffa8c0@Win7VM>
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

NO Glen, you first run a
ps -A
Look over the list for speech-dispatcher and espeak as well as other 
speech-dispatcher related items. Write down or remember those process number. 
Then type
sudo kill -9 followed by those numbers.
The minus 9 is a switch. Good luck
Chime


