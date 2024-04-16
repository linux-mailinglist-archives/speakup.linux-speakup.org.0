Return-Path: <speakup+bounces-1105-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CE2788A7818
	for <lists+speakup@lfdr.de>; Wed, 17 Apr 2024 00:49:44 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=FmXdvhvS;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=PQy/wrUL;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 39CF9C81C99; Tue, 16 Apr 2024 18:49:44 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1A6AFC80B09
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 18:49:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE555C81C7A; Tue, 16 Apr 2024 18:49:35 -0400 (EDT)
Received: from fhigh4-smtp.messagingengine.com (fhigh4-smtp.messagingengine.com [103.168.172.155])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C2765C81C77
	for <speakup@linux-speakup.org>; Tue, 16 Apr 2024 18:49:34 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 4623D11401A4;
	Tue, 16 Apr 2024 18:49:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Tue, 16 Apr 2024 18:49:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1713307774;
	 x=1713394174; bh=DORFf8x9CCRGj08nSoaY5Om/AXnC7IWsJYatmojUf8k=; b=
	FmXdvhvS6RJ02Cj+01FNL9AgWmQPNdOySS4in6YnI2F7hRQUQ+uadD4OgNfT406q
	qq7Gwex49qshXbrikODarHQtBvNRKTbisut2JgbgKqpAp2GZrwiG2XoXHvpIPKfN
	ELXeHA9nSVXiGRa9tHT5/8n3uFmF8hwEg2e9dbtex2y1TAWFTnsQ69ioQQiKyhgE
	u46+pbJrC1b2ot4r3Kbp4OUZqJ42VcNo9LzcRJ1URASN69t87M7XkJdeTVO/6yzJ
	n6yDK3vdj9mxaqLg9yC98F6ugcJ+zePG7ggXe6n9h9HL4bS126WMBNWLzl/ZYfEw
	4GeZk6F+AudSYWakuSgh8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1713307774; x=1713394174; bh=DORFf8x9CCRGj08nSoaY5Om/AXnC
	7IWsJYatmojUf8k=; b=PQy/wrULJrqC8mSiuCpCZi48JPLjs9qW9+s3xlFAhdPD
	sp1+N4L4NEvbYXE/d3Y2lCG0s51ip1YzC2STrUTMk4/FHnJsL5+Unj101Rtu03l7
	oqOVDRM/rtw4z6hU6+MJlqKJckEvBMLlC72c5cunW2pZnXvk7szlf6ruA7sK3yOj
	RarKk0Ok7EGaaxZIspUsmGLCh9nyWg25usFKLDdgwsjk/7tnlWxqtlEBGVy8OB5/
	Sqmcb7H0KtD7sxIZXNkwyjxYbzBQxtoJz0J01DkiOjC0bUd0i+WMLsQghk+2YKTq
	maBqsmCFK97jpNRNjXqUA+9TSZ6SW6ZTz6raWKEN6Q==
X-ME-Sender: <xms:fQAfZoZTVVV5xRL41ezGn3mx9vUxHGWp81-ErWIxAAl_eLyq9ISVxA>
    <xme:fQAfZjYQ3XmbwRL7bXvnhM5mggBvgwlFEm6Le6u98c79OOaAPDGqEZqVF1-vNQcCm
    L0xzVKdGeeVSSRe8BQ>
X-ME-Received: <xmr:fQAfZi_D2DwoD_BoIYjFY60LKO8KUR8dkDRmh2QFVw7SELK7bg1DxIU_yf48>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejjedgudduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:fgAfZirB3p39kSFtxdXWpJA1Xqm7OJM_OOdD4UaOZqFYw5-vSimyOw>
    <xmx:fgAfZjq_XxQmnQ2bNkSSYTOJoQOYEm9_gfryUKFuSlm1BqPnlD8QCw>
    <xmx:fgAfZgQk8cjVXwN3gP_hkEDVXpLqi_4g9-Dldbu-Eqrz9SwZMU2lBQ>
    <xmx:fgAfZjp_VVOnPGtA2Oc4l7mKH1D-Vo2LDku1fr8odX1MHQxwA8VnOw>
    <xmx:fgAfZq25SX6SOw7PhAW8DemjeBcj_REzIhtRRjwgVBdDboX-2zCqOQZB>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Apr 2024 18:49:33 -0400 (EDT)
Date: Tue, 16 Apr 2024 15:49:31 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: speakup@linux-speakup.org
Subject: Re: How Can I Enable Speakup in Arch?
In-Reply-To: <018d835d-9ff8-e6cb-1cb3-d3182c40c3ec@panix.com>
Message-ID: <1ab88af6-465e-5351-3955-27ee90bbabaf@hubert-humphrey.com>
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

Well, Jude, your 2nd command did certainly enable espeakup on reboot, but 
Fenrir says it cannot stop a service which is not running. So now much of the 
time I have both Allison in Fenrir at the same time as espeakup, unless I use 
the "you killed speakup" key. Even trying to kill processes of Fenrir they 
immediately restart. I cannot find an unstall command among yay or pacman. 
Thanks in advance
Chime


