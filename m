Return-Path: <speakup+bounces-500-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 924BD590A70
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 04:57:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=kVvVDjCV;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=wzNg5wD1;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1D7963819AA; Thu, 11 Aug 2022 22:57:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F2A03381900
	for <lists+speakup@lfdr.de>; Thu, 11 Aug 2022 22:57:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3B72F381901; Thu, 11 Aug 2022 22:57:09 -0400 (EDT)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1987B3818FE
	for <speakup@linux-speakup.org>; Thu, 11 Aug 2022 22:57:09 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 10A3A3200902;
	Thu, 11 Aug 2022 22:57:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Thu, 11 Aug 2022 22:57:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1660273027; x=
	1660359427; bh=LSCZdcuqtymGLtCTPkx1is9bY+pk5+642As8Ei/av+Q=; b=k
	VvVDjCVnwAS0/GiVWmb/U12tkPlB7jUKJM8OQbfrew8D0/jm5fykZseTXntifojA
	hmvYV2eewmeWV1Eey/v7BFN6aYSKuykm5mJbO4Mf2guAcAXKzWx00+5xAVtX7OjN
	V2nFQSkUBllvrd56OSrptzdORB9Su3DYw9hxdsloTFw1wDXtqhfSouvuED3OJxYm
	CN3CFB28RkJ7l1P4Ut1vvpFKcjmKIO+7XPixl2PCWZrr3BzIN97k/lgzmmMLQf9m
	sCi2jiTfR+DKVPhyj1es/sS9SJQDuqssncERDY0ADLfGn/9YgSk4v6zxungiRGya
	2BohOf1StRqFJMTKmyLyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1660273027; x=1660359427; bh=LSCZdcuqtymGLtCTPkx1is9bY+pk
	5+642As8Ei/av+Q=; b=wzNg5wD1MCqDpYOFn5Q5YtdKP2XnvZ9uMeo2p5xBQCOl
	DC45ZmE/rwITkg7ufMvEgedzjGgx7GR7JMHWTQC6rxKMb8zqhOMq4H1b+CkMan4+
	H2GoxYjrPzbd9emSRyx9Z5z5DyyqJuhCNX+EoABjPAQW9RVKfeG99OCfCWt9MUXA
	v6+jHA6ZEtX2WeD3e26m3iHP5w38GdG3xiuUkcoOo+avp+jyGC07y81f25W5EXbQ
	ELBiJ7n/uPtcR01F6sM72nS9maYGNauQKqJW4OWqFfqLR/8gI0XHBu7MjADuplPB
	Kdzc4al3p1AxAqGpsa77YmTTUr0MOBdCV700eTPlHg==
X-ME-Sender: <xms:g8H1YkFkly0sitQdtokKPAJrZCA7Xlz50WZiHj3x5CAFfwOMAZbRfg>
    <xme:g8H1YtUxan_NR0kCcLS83RAYRmSsYrIptz4QshsLt6-3i4lAPU5gFyifggknYvXpW
    uOpILD4zGCoMpofLn4>
X-ME-Received: <xmr:g8H1YuLtuEYiwTcaqJRJy0y9IYg5ss45Uh5kbgeHjVVUod1-ARHc0njQBLoDr6eGcDJjsgT4G45dgOf4PJ2px0-2VqXhkZ3PWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeghedgieehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:g8H1YmHBsc9L28MQP0q1J07ht6ur5ft-PuCqgCEg14WIYmH5QctK2Q>
    <xmx:g8H1YqVAHMKzdy7Hl92iS6MYgKlKaqcSyiUoFAOz29VCKjUMASBcpQ>
    <xmx:g8H1YpNgHjdBn_Rk34T9qNHb7vu0ahwV6Ejzp_Keyquap7a8TLjbiA>
    <xmx:g8H1YjcljeGGm-zK-K4IoW5Hlm2Li88DZiTI4k-aCgX5pOyFU6riEQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Aug 2022 22:57:06 -0400 (EDT)
Date: Thu, 11 Aug 2022 19:57:04 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: help finding a folder
In-Reply-To: <018501d8adf5$8eb85ef0$80ffa8c0@Win7VM>
Message-ID: <ab19e971-03bb-c638-5b95-62cc74287204@hubert-humphrey.com>
References: <017b01d8adf2$e34cc620$80ffa8c0@Win7VM> <2ee5e7ec-1929-e613-49b5-ca822a0e5b85@hubert-humphrey.com> <018501d8adf5$8eb85ef0$80ffa8c0@Win7VM>
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

Hi Glen, yes I mean update db as 1 word, but first, see if you have it 
installed by typing
updatedb --version
Chime


