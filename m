Return-Path: <speakup+bounces-1374-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 16C70B82BCD
	for <lists+speakup@lfdr.de>; Thu, 18 Sep 2025 05:18:50 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=Y9rtRX3J;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=A9pg8u3N;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A476F382B96; Wed, 17 Sep 2025 23:18:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 83705382AD6
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 23:18:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24BF1382ABC; Wed, 17 Sep 2025 23:18:41 -0400 (EDT)
Received: from fout-a1-smtp.messagingengine.com (fout-a1-smtp.messagingengine.com [103.168.172.144])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 940BD3821AA
	for <speakup@linux-speakup.org>; Wed, 17 Sep 2025 23:18:39 -0400 (EDT)
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id 1DBA5EC028B;
	Wed, 17 Sep 2025 23:18:37 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Wed, 17 Sep 2025 23:18:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1758165517;
	 x=1758251917; bh=pUSHb6ILRdutvGuytyRI/g0heLDNrMOMSJYQ2AKraFQ=; b=
	Y9rtRX3J+VD0Nos+eSuz6TkfYp1YMhwEUx6NTcThertM2i6w9VZi2jLeJjoNQTAR
	F72RoQCWiFZUqn7eaVZwzehXi38Na9pBprgGK0ocosSVD/sMnpAmRv8W1VLUfu6s
	psdR1rBLeoOEz3AQPgBtKbKIdacyY7ZMHiARJzSxq3MxURlEegJo+4a6OK7dD7iL
	ofR7xyRmgl4zYlMrYChjkjEfcRWoxsNGxBytAeu2qeDyfyHYesA2q1l/A1Kx1XYa
	BxvDMeXBS03LB/XIG69okWhScpYhB4osJCAdXN7HKWRNinisItOHlrn1U8yBZQPq
	CFH+fSdq/k8M5mGxCWnJuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1758165517; x=1758251917; bh=pUSHb6ILRdutvGuytyRI/g0heLDNrMOMSJY
	Q2AKraFQ=; b=A9pg8u3NQFFh2Yh2Xi4UHJOS0zRcSXf4wa7jmXPwLUH+Grx7reC
	SMDxlG/t3jgQiBAiUMgn8pFUjxafNF1YgcSTnmOYC2Yiv6HsJ2URFis5Ne5k4b3K
	u0Ay1Fk+g8EBbtYHWRmCAKnHJwpUA8FI2CmZO7W8j87EdXGOFAj38dou+0EqoRTP
	iipKrUzPNda5gpR1+E/unqMgy3Dpk0A8k3HlZCtylWRrRjDf1D4W89qt56KYcZIi
	q9LRd63UTj9yRZD3qSRBCzsGaFVcitas+xoOS7VS0nj9Vu40mCblGPSo/2kyY0Vf
	NRwvXbGtn6KEBRUuSyXDG3QkWe/dAt8Fsag==
X-ME-Sender: <xms:DHrLaEmSQMMyaGxTc69YacK7k91bvlWLbviZto-DwHcAnq1sOg5SEg>
    <xme:DHrLaNeRzCqNDlWPLmp4TtlOoNBSHCeD-OXJHTJC9l1xuPKkOZrpa-ltFFkDBKWoz
    6udwdKP4nBQCmDKZ0g>
X-ME-Received: <xmr:DHrLaCo6J5q35OL8Zmox8nqTsoIzj6HBYD-iPG50x7KQscxL9H8LmEonuDVaTB-_3enSqeKNg3KsY48cq-ZO6lygG52wCrn8b_4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeghedvfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepkhhlvgifvghllhgvnhessh
    hhvghllhifohhrlhgurdhnvghtpdhrtghpthhtohepshgrlhhtsehprghnihigrdgtohhm
    pdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgh
X-ME-Proxy: <xmx:DHrLaD6IKyAs_clMJC8ZEvVcfHwxD7Pyeek3uxdfjDjLMVaosjn1Ug>
    <xmx:DHrLaAo64xQ865bUTlmgeEHXO8lEmoxeus2b6vMDqsPHj87jCd_9Bg>
    <xmx:DHrLaNgtfqLsi-viKFXM_AaLdrhDNvDQhfkGmgcBy0rqJNSrTY6QVg>
    <xmx:DHrLaCIWmypVT7O19--RZ6TeHdqzCQbFg1aM8kn-lHNfSj-uCUwCmw>
    <xmx:DXrLaHqQbzgMjy3qL1SKLSKDnXNbRcskXViFaG9ouX1lBGRHffoItjBD>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Sep 2025 23:18:36 -0400 (EDT)
Date: Wed, 17 Sep 2025 20:18:35 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Rudy Vener <salt@panix.com>, speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
In-Reply-To: <Pine.LNX.4.64.2509172305390.3965817@users.shellworld.net>
Message-ID: <761b02c8-85cd-0ba9-48dc-a45b4f3f5a2f@hubert-humphrey.com>
References: <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com> <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net> <aMOwSwrEWTBtFn60@titan> <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com> <aMsF4T_1FAbaFEHz@titan> <aMsboMhBL4klsYZD@panix.com>
 <Pine.LNX.4.64.2509171823280.3962820@users.shellworld.net> <aMs6TdEMXhkXkkJP@titan> <Pine.LNX.4.64.2509171937230.3963832@users.shellworld.net> <17e1af06-81a0-40c3-a0df-19bab0242cfe@crosslink.net> <aMt2KmWOCT_waaDM@panix.com>
 <Pine.LNX.4.64.2509172305390.3965817@users.shellworld.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, earlier Jookia asked me about an inconvenient change in windows. 
Windows95/98 the desktop was mostly just up-and-down, fairly easily go 
in-and-out of folders. Maybe it was around the time when insert+f6 stopped 
bringing up the desktop. No, windows+m wasn't so bad, but then came windows 
explorer where you had to right arrow to open certain menus. Thats certainly 
when Microsoft lost me. And unrelated, I got my DecTalk USB in 2005 from I 
think it was Axsol Solutions.
Chime


