Return-Path: <speakup+bounces-1102-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BCBF28A7273
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 19:34:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=kEkCo4zb;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=QTitlY4x;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 50EDFC81C7A; Tue, 16 Apr 2024 13:34:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 33B10C81C6C
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 13:34:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BC3DCC81C6E; Tue, 16 Apr 2024 13:34:49 -0400 (EDT)
Received: from fhigh1-smtp.messagingengine.com (fhigh1-smtp.messagingengine.com [103.168.172.152])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A04E2C81C6C
	for <speakup@linux-speakup.org>; Tue, 16 Apr 2024 13:34:49 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 2238E1140198;
	Tue, 16 Apr 2024 13:34:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Tue, 16 Apr 2024 13:34:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1713288882;
	 x=1713375282; bh=FGmVCm4BUYcZrsK+jbFxGfIadXEF54+B9lKMMtfUHgo=; b=
	kEkCo4zb7FlLRHKM7nSPEP6c/5O9XzBpK7HGcC/tVwT7hr6kpEWPGLj9qmzWir2R
	VWJ2xbJ0xwUgsyBUT5NdMdP3ZXTsFKAQ2HZzgxq7MsmSLwRNjZDJEkvZVStWRTUb
	VwZhWLuxQAPg4aVizqOcjCKFwXbhn+9dpUCGzpvsEdxdquhSfCGDW7TERdf5oSMb
	ctcYgOqkHmSliqRrksPM0dovvXq5tPTTQpEsKPUUyaqt5/aMZJFhl9xToD+oSdsl
	9XBI1lUS+Mz13XVt8WUVpxGKYpw3GsSOqXJfR8Le6we+efarn0tcH+YRPhy7N+/g
	EXQffveCy+9y5WmKZk4YCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1713288882; x=1713375282; bh=FGmVCm4BUYcZrsK+jbFxGfIadXEF
	54+B9lKMMtfUHgo=; b=QTitlY4xn86ty13hRIWDidMu1H65Y6VAYEXekxhboMAE
	f7LloPHPNNsAfeTcMwuPzXbe1ywMmw6s+/wu2u0sqZDHlEQXz5SFyFFsozzH2N/Y
	6FO53xeQWlPDdyWPIRuNiJ1M40ReTGs/c8hEGDqz/sUJasueL5FgLg+Imy5pJIkN
	ifM+os2hVu3TF58AqoJ3fwJ0xGLowUzB0/z/rpcUbaIU3n+RYFIZwXt0+2apRI3Q
	MLy8zMXMyyJ2isAcNJpT4SYHll8xHZBccmzK/q7+Sv27ncy3fSOuasQeRN46Kftl
	p6iUfHfzNPnw0GfqhuLWV8oH6ATrntalnlFe2OyqHA==
X-ME-Sender: <xms:sbYeZoSjahjfEVzvW6x4ppzHCD6HflrGeJigyFsXv-ZJR61gOLmw5w>
    <xme:sbYeZlxT9rGHh7yKLdSBClKIS4xdzmCUNEewCjQcYLNbvcUVX0X7mwg1HH4-rUtiH
    tSG3S86HjIiDg0WEhg>
X-ME-Received: <xmr:sbYeZl1-9qzfd7EphhKS2ie2TaIhltDwr4s9mvi4Usp_j5SPT_eRRDuFForg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejiedgheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:sbYeZsDHGoPuyj1euR-qr641uNrceW9IoDoNL27uGyA5vJ6l8lXUNw>
    <xmx:sbYeZhhRIcOB26tZ6JBVgrt9d1l1Ifba7tvxU3vPMoliHUQay_ZRYw>
    <xmx:sbYeZoqzERceKZ9yk1UMqnDFZobrPYLmMlhurCKY5MpBSheCxxmJZw>
    <xmx:sbYeZkj_rFtf4eHPvunIUNZ1dn4PuNUiI5b8plwbu6LCxsN4IKEFSw>
    <xmx:srYeZktp7DVlFx9fvXcF7wtT61uNKpzWKTyAMCfu72qUTbxqnkZciyzZ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Apr 2024 13:34:41 -0400 (EDT)
Date: Tue, 16 Apr 2024 10:34:40 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: speakup@linux-speakup.org
Subject: Re: How Can I Enable Speakup in Arch?
In-Reply-To: <018d835d-9ff8-e6cb-1cb3-d3182c40c3ec@panix.com>
Message-ID: <44349bc7-0281-802e-b2e6-ca87886c9dbe@hubert-humphrey.com>
References: <5f590a48-de70-df83-f932-7c8b45f20c9d@hubert-humphrey.com> <018d835d-9ff8-e6cb-1cb3-d3182c40c3ec@panix.com>
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

Well, thanks Jude, I have a Voxin package with Allison, so why would I putup 
with e speak. Also, have a github DecTalk package. Thanks
Chime


