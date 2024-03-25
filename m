Return-Path: <speakup+bounces-1096-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 86ECE88B2F7
	for <lists+speakup@lfdr.de>; Mon, 25 Mar 2024 22:40:19 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=Vto3LSvN;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=C3/dru4l;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 46C5BC81049; Mon, 25 Mar 2024 17:40:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 287A3C80BAF
	for <lists+speakup@lfdr.de>; Mon, 25 Mar 2024 17:40:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6CD9C81038; Mon, 25 Mar 2024 17:40:09 -0400 (EDT)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 462DCC80BAF
	for <speakup@linux-speakup.org>; Mon, 25 Mar 2024 17:40:09 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 4777C5C004F;
	Mon, 25 Mar 2024 17:40:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 25 Mar 2024 17:40:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1711402806;
	 x=1711489206; bh=qbTv2JIlGURP0jCupfSh3LqZMx4pe90a9RLRUfn9I5U=; b=
	Vto3LSvNs8+KVoIqNo5tdHQgRm/c31qyoIMGJsXGk2J02fWWAb3pMqvzPrVufvtP
	WSlw4N2/KSo1irxT7deb1YQC+91rlnOqKamZ94u39baHzPsR6kb0lhyeLHh72zrN
	9inO0/OlWEp47V7PLxQ9sCgDKBE4LInuQZ9hH8d1EEP8z29wVaEOToImTnXxBV+U
	3NaHLnGLn0xoKsGVhCZO83GWETGewXshdYt7bxzxviJ0h40S2s+DEdrWsYll1Qja
	i0Ua0xZWOzq7a2Grs48k0ugGwUo/m5vX1Jmlzh02k+Gz1dzI52xb8gAjVCtFRv4o
	rk+9DltrRqR+Emg6UJtwGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711402806; x=1711489206; bh=qbTv2JIlGURP0jCupfSh3LqZMx4p
	e90a9RLRUfn9I5U=; b=C3/dru4lQoLpe2Q8ydIBAjCZUqyVaXAZR0G69y6yHXQu
	yHtSZyp2EbHWboCLBJcwVoNiiTYXMup9JMRdugLu9Pfzp3qIskp1ZI3Jrh3FwZw3
	L6QoQQRAwjUdhzWoL4xAfy+Y6FGT1wyhHPRhnuzfsu891jzl5yhBqaj1OJvGw56h
	cT3Z1kNXEi/A46Ed6fTb/UMSLYGCGow24p/glHauGqG/YIn7hSAlyQDPon19P0bk
	8SBiH2pmXSNgjBCG2CsMiCMercigyO2yRNb3Vytzbr7FQe5IMert8z3EPXhOlTvQ
	BP66dT1k1RPCAZ4JWvnWGaoDNsJx+rPrRb1D1xaC2Q==
X-ME-Sender: <xms:Ne8BZqtwa35_bYJ0nVI1-HP7k9hleSN1GufImkWefoTCuvMJ7uSDIA>
    <xme:Ne8BZve2ksr6pW3BziTYqhKaAwJqEAhf5wuA8tJ5CtVEvCuR2A-gJAuU4Xx74UHLV
    DtN7POTREWh8N4PLj8>
X-ME-Received: <xmr:Ne8BZlwp7uXExRoYXc1qzPQJF27I0HMXKRnM6BnhLZ8Hi7w_xOXQx_s_0xYiqjJuCRQvgIpUPUe_LTdCoxD9YPPBcct0sg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudduuddgledvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:Ne8BZlOwQw2n1jS_Uo0bBjp7ZaZkV-Y9XWfwzrdbVJRdI-MZZVVPBQ>
    <xmx:Ne8BZq9pBDnRzOJgsCdE_OeX8zyyLIaRxRsO4AupOFoIECzxfe8oXg>
    <xmx:Ne8BZtXVDu4FUje_LjoQPh-KsB8ZZrRIWvn6jfxVsvugSbJ6RvhuYQ>
    <xmx:Ne8BZjf7Z_nXAxdMXE4GZLHh2nUnXSKmQZv-DvhiGLVK95g3XSFx1Q>
    <xmx:Nu8BZsJdS8tCrav8nQXqQPSfrN1cfVg_kiBAdFzfdOjFRUayN1Ltgg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 25 Mar 2024 17:40:05 -0400 (EDT)
Date: Mon, 25 Mar 2024 14:40:04 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: speakup@linux-speakup.org
Subject: Re: Is Park/Un park Broken?
In-Reply-To: <20240325213231.fdrmi4bwen2as3zj@begin>
Message-ID: <30a7cb51-bbc4-5fad-ce3b-7b8b9bf8468c@hubert-humphrey.com>
References: <ddc7825c-b7db-8820-8483-b551b898062b@hubert-humphrey.com> <20240325213231.fdrmi4bwen2as3zj@begin>
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

OK Samuel, in Speakup, you are reading in flat-review. Lets say you are on line 
71, but you want to switch consoles, so to save your place or we can say 
"freeze the screen" you press that key I mentioned. Once you come back to that 
console, your cursor was still on line 71. But now since I updated to this 
newer kernel, while it says "park" it has no affect. If I am not explaining it 
quite so accurately, maybe another Speakup user can please jump in. Thanks in 
advance
Chime


