Return-Path: <speakup+bounces-778-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ACF61610618
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 01:06:09 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=MYJFWPGe;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=neLzzd30;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2ACED383FE3; Thu, 27 Oct 2022 19:06:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0C5E1383F41
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 19:06:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5C2AB383FDC; Thu, 27 Oct 2022 19:05:59 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 29241383F41
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:05:59 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 2A7C1320093F;
	Thu, 27 Oct 2022 19:05:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Thu, 27 Oct 2022 19:05:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666911957; x=
	1666998357; bh=ugH+QVzG9h6V+7Ljjc7bXfuK6wEi2VY4tKpTHUGLYLc=; b=M
	YJFWPGezbBSEPCgYxTTFX8XHksXvs4rTSOIKPVa7h8Jww71MhhH/dGLjnyKbNQhS
	LIzN9yh05wOos+30+1nHVNapYYptg5QHZ2/VFQTBOJmTVM735Wtx4cMq7gb11XH4
	ai+4k4xX3288jsb0mOyvH1BfUxw8ZwQnRe4uTHFR1/eEx4cwKNPhaYwStfPEr7FY
	mq7jgm41Up2xPvEaeky2iqrgSeHaLocwuGeYqDlV8vDUNkzcTBkkUxOjYmZiLHy/
	qtlsWMlmD1mwyVaaCcRBIPwZcxTiIppnb/yguaj5gOOe/cmrJ1wUo/BsD+sgQ5iC
	xvg9g4ghVoKWJ5QF3MGSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666911957; x=1666998357; bh=ugH+QVzG9h6V+7Ljjc7bXfuK6wEi
	2VY4tKpTHUGLYLc=; b=neLzzd30JiZyso+LvgIvp/iR7h4sm/U21AKtfUYIcQP/
	wUp94dFBC0B29jHGsj5FoaWpwhO1bj+1TWtkBUsKkn3uxPuaf9xmaxaaofsEFxm+
	W8WZbxdNhEJNEXrK0K4AHqRQpSuFfyIkGK2DhfD9av6iaOASqaGNpqo2xTDzkYAd
	jHU+UYOT7ahDcsjcjWeHdjyBSC/Lk1hSf76KGTEu7/XWutoIVICKzdZMubj8H3kP
	tKmp57FWP7xL+VknnF4x4knr4eneZcpXft4yH3vikiYs4JEDm3AdjsGmuJSnyn+5
	PTs7EoMUAi09MRjI3PXCgELdJpdCyFmVr2XOyqHNgw==
X-ME-Sender: <xms:1Q5bY6nGzYb4wJeP7N81FY70ET1BT3ZleyGBy6kkl1skhO7VbUT2-Q>
    <xme:1Q5bYx2I2z8QdCeVkwxoK-jXiWoDtEEc_trUiAOQvudp3ggdad257LpfjQKN4kP3Y
    VMCUUgGnNlBzFShqe0>
X-ME-Received: <xmr:1Q5bY4pa3wRrLSrO8lY70QFGE8yIs_C2W-yBfMPNBrFNBGKZOGQUg5lhhblP2cZcacoorC1Z3qI97ueJNRfODYwaPSYALNazpw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdehgddujecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:1Q5bY-n0jCa3eR-6kdjCOLwacQ3huFzNIcR2uRNwsy66U-mb32HhnQ>
    <xmx:1Q5bY41hHR-pUbJEuB9uM52I9SqUCoqd5eWEomhlTAQ8bDTPIi5Ugw>
    <xmx:1Q5bY1vTCVoqvDu1TjGV6Nla8Qsaz4zszE1a_lmXrYvhD4p_w46Exg>
    <xmx:1Q5bY99-RU6FraCeSxipSRouVIGNNcHcXSzYqaRlwa2Fn6mjoL2eKg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Oct 2022 19:05:57 -0400 (EDT)
Date: Thu, 27 Oct 2022 16:05:55 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing Voxin
In-Reply-To: <085b01d8ea55$190b4b80$87ffa8c0@Win7VM>
Message-ID: <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM>
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

Well, Glen, I honestly don't remember how I solved that, but first try an
sudo apt install spd
Also, install locate as well as plocate. Run a locate for spd-conf 
before-and-after trying those installs. Its possible you would need to cd to a 
directory where spd-conf is located.
Chime


