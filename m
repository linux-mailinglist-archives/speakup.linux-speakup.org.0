Return-Path: <speakup+bounces-705-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C0BC45A386C
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 17:46:26 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=O6PCEqd0;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=TZzoMsDo;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5BC0F38576A; Sat, 27 Aug 2022 11:46:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3D7FA385748
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 11:46:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3C9C838574A; Sat, 27 Aug 2022 11:46:16 -0400 (EDT)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2EEAC385747
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 11:46:15 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 1E48C3200904;
	Sat, 27 Aug 2022 11:46:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sat, 27 Aug 2022 11:46:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1661615172; x=
	1661701572; bh=pFYi/dppCJcMF1mmc3LlaqDl7ohzFDk7fGNCYwEGfpI=; b=O
	6PCEqd0wGWh8r0LShgj3K2zZN8ofQx0ZEGwYXOfbqxVaeKG0XFjNvx3xvTpjogg7
	cIyk4FpUIpTxInZucSbqu3SwPWKJyPTaPavI02m6I8j296ucae2G36OhF6gECL2z
	WM05/nEj4cIwocFrFk7L+lRA7rwPTmKsE+mgobFwlziBPxQEdaS1oAo7dpJrOjAd
	Uo5XNNmHngb0SplzizNeHNACNQRiMU2Cz2nSpkfnPDkT86JwL26u795C+pH2uPI8
	gpZhZH8172YDVPAK0nnvgcQmKbL8BLEQxV7kl5mc8P29myrlwo8zMzwk3VEKAmtP
	y+ClJ5xIeT7hnnWGfYblw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1661615172; x=1661701572; bh=pFYi/dppCJcMF1mmc3LlaqDl7ohz
	FDk7fGNCYwEGfpI=; b=TZzoMsDoW5n5nVso7Qv2vIGAf3bksO7fBr+xlrfxUIxX
	MRl4skach0MoL6hJg4deY/3NcwBqXOGbRVGhRtJ0BaQq0evvOl12npOq4S85b4H8
	qqScZTKal1yVegooeOBGMEM+oP/kg9IJV9bOPtmYJFw454h37FpTg8/3K8X6Fobs
	8XWax20JwS8PWP3Dlln8xOElueRk0Yy9OUZk6VQuq0tvvhP9OK9vwICw4NZG6w9k
	bgwXpu86YlMK4/jeVtL89KicH9HsF36na/KnhL5Si3f48mf09WD3xM4x0ylZ/WM/
	iBqV7J/rnSfGmpq/WWxI150ocNmKCq5Dtb+W2go4RA==
X-ME-Sender: <xms:RDwKY_3niB838hCyTgXqoNjq_4g-TaIgMQQgGmdK0o62tEWgZCktmw>
    <xme:RDwKY-Ew6viwUn3yY9jxFw3W7o0sgaItbPQmaYvN976bMwAViMqhbxgrnfUlcpokb
    ABoaGTiuOF8sqoaM4c>
X-ME-Received: <xmr:RDwKY_5NbYglEeJpwJ_0EXd07FlxNWaYR-LpRzkb6nN4k3THWuO_TFlp_qjyS_Yk_jLraHU39_Pul0Ai_w1AdFcVoqg9MAKZ2Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdejjedgleeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:RDwKY03Vp7kepfEobtBtP6rPo2QP83v6G1RfUcwEDQNo-qLk72qlFA>
    <xmx:RDwKYyHEWHswUZCUw7slJNotVdsqXB3SrffpL2RHFEDscInFsev57g>
    <xmx:RDwKY1_EUzL_iZcwF3i6olTt2vu3977WrBzN_Se_8NWIIV_zX7T-5g>
    <xmx:RDwKY0Ndle5LdTDvIAxF6HsKfKXR2BQrrmTNRLEnM00whblmcmm2mw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 27 Aug 2022 11:46:11 -0400 (EDT)
Date: Sat, 27 Aug 2022 08:46:10 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: speakup@linux-speakup.org, Didier Spaier <didier@slint.fr>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <013201d8ba2a$d97bed80$80ffa8c0@Win7VM>
Message-ID: <65860510-8772-38af-f285-6055e124dfa3@hubert-humphrey.com>
References: <202208261512.27QFCDux008176@nfbcal.org> <02b101d8b963$7d039fc0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208262017280.8190@willempc.meraka.csir.co.za> <006201d8b97a$ff989cd0$80ffa8c0@Win7VM> <006601d8b97e$e9f9a6e0$80ffa8c0@Win7VM> <Ywle3kA6oGDCREfZ@gregn.net>
 <00b601d8b9a9$5c664f10$80ffa8c0@Win7VM> <acd2012-2ab5-5ff2-4fa6-4e518867727a@panix.com> <00bc01d8b9aa$824f8ce0$80ffa8c0@Win7VM> <127b4a87-d4a5-f669-4d33-534e114ecb8@panix.com> <010401d8b9bf$7da53220$80ffa8c0@Win7VM> <bf5df74c-7111-ad54-c9b-6b9c926ad2f@panix.com>
 <012301d8ba23$c9927530$80ffa8c0@Win7VM> <012601d8ba26$85aada80$80ffa8c0@Win7VM> <cf3b8e9e-3efe-6118-7e86-40272a7614ec@slint.fr> <013201d8ba2a$d97bed80$80ffa8c0@Win7VM>
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

You know, its funny, maybe 2weeks ago I tried joining the Fenrir list, but 
never was confirmed, even though there are others forums on that platform where 
I am receiving messages.
Chime


