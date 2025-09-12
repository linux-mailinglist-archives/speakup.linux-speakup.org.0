Return-Path: <speakup+bounces-1338-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 80252B540B1
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 04:52:55 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=vFyi/UEd;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=MUWBu/zh;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E2817382BE5; Thu, 11 Sep 2025 22:52:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C4C18382B97
	for <lists+speakup@lfdr.de>; Thu, 11 Sep 2025 22:52:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 82CB1382BA2; Thu, 11 Sep 2025 22:52:47 -0400 (EDT)
Received: from fhigh-a5-smtp.messagingengine.com (fhigh-a5-smtp.messagingengine.com [103.168.172.156])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7F472382B96
	for <speakup@linux-speakup.org>; Thu, 11 Sep 2025 22:52:46 -0400 (EDT)
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 615AA140000F;
	Thu, 11 Sep 2025 22:52:43 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-12.internal (MEProxy); Thu, 11 Sep 2025 22:52:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1757645563;
	 x=1757731963; bh=0xrb+rGQ7UU/i5hlv9yhHfIAIgUvR8Uiaa2a1JyfuM8=; b=
	vFyi/UEd6axuSkF5KTV37WhxpOtMjpc/GwGS3Jo1B4UD88Px4WvEmh7V+Z18BbFl
	vdPn8yZ9Bue3knyidj5YzjAm5jmYrEtM9ovO3X3CKOKFw4wmk/svI386j7zCyOp/
	RB9eiyaC6DbaSEEQ53QGOujqwtem/8AfnKPDHB/e333RVmODv4GpLMNbTQFMQsoB
	9ig8WM/fLI8oIwBjqYw/xV2BQm8afSvfCtVYfb9+0yLrRtBiayRX4E0vRQbNG1Lt
	70JfyLQx8uU3kIMTl99qvGemnX0jh1DtrtkqCTzrdpe921sYCple5CrCFHmBg0CQ
	YcQhRSlIqvvY5asMQkiHAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1757645563; x=1757731963; bh=0xrb+rGQ7UU/i5hlv9yhHfIAIgUvR8Uiaa2
	a1JyfuM8=; b=MUWBu/zhUSyP2VnoW7n5xggBhf4qQysIBOnpMcoe6oPpMqobmh0
	q4MgXEG1vTaQI1R1iV6RySqE2cOyBpo6ldFKOh56Dfk1UhpgsuaKcrnjQgPLOuxh
	z3rF1gZ4/4pGP1IpQZhPjQ7q4ks2qvtMm9zknGrYxGwijbfWVeKDjALONCxnSm9R
	aF9+OaXKUqwhuexecnmNMjOdfGTWQwwy9rUFcgtRBR9Dwily7ggklnj0dZyxapyI
	yy4upI3q5Sofoa1J2wZfbjD3zVwK9soxJRZvytDXxbpgmmAN+Sl2rRlLASoyw5xO
	Nf8dVlFBKVPiPKGFpwd/WcJF1skx0/A9sKA==
X-ME-Sender: <xms:-orDaJbTMaYWTSTazDOLHQs24lGt56Y-uz7rbhLz25M8w43_Jx_3lQ>
    <xme:-orDaDrjFd7EGPQqV43-9sgMDFOcRY-mf8wGJW5jZqEagTylxH_CwLYqQ0DEJUrht
    Gh_BPM88UmCZ_46ds8>
X-ME-Received: <xmr:-orDaFZfuucyTuJiABzET4E2aXJ_FItv97Q7CjyzfmOks5weBTwWuAChrCcSfSEye3_S4qz3sbL8GUOevrnaD7aNURHAv0-sV6c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvjeeltdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepheduheeihedugeekvdeihfetledtveeiffduhfdutdektefgjefffeev
    kefgffegnecuffhomhgrihhnpeguohhgphhilhgvrdgtohhmnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouh
    htpdhrtghpthhtohepkhhlvgifvghllhgvnhesshhhvghllhifohhrlhgurdhnvghtpdhr
    tghpthhtoheptghluhhlodhsphgvrghkuhhpsehpohhsthgvohdrtghomhdrsghrpdhrtg
    hpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgh
X-ME-Proxy: <xmx:-orDaDRXq_06pcSonHAHRefRjm1RvpUFD7v_NtiHSAO7hyIQCcd9kA>
    <xmx:-orDaE5aznhIpzwHLC758hCQ0aWcb6VgaCN9dSJGN6EJEUXVi7zj5g>
    <xmx:-orDaAyRuSZY3DP-Icw7u-N7N0eUDCuiP_Tovsxv_svaSApJL-rnMw>
    <xmx:-orDaLRKkrc9wLFZGUbhODYcGc5xvY8vDtXmDpelPZgNK3oEHRb1DQ>
    <xmx:-4rDaHiZRyhebmpwtYnNGtElsTEX56oTbMbbCeBc7IsW_ePGbRvrVUV_>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Sep 2025 22:52:42 -0400 (EDT)
Date: Thu, 11 Sep 2025 19:52:41 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>, 
    speakup@linux-speakup.org
Subject: Re: "your browser is not supported anymore" both lynx and elinks,
 what now?
In-Reply-To: <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
Message-ID: <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
References: <202509111603.58BG3W3p018143@nfbcal.org> <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net> <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br> <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
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

Well, I just tried that searx site. I like duckduckgo much better. Searx seems 
cluttered, first a link with an url, then a short description, but its cashing 
google anyway. Just tried an old favorite
www.dogpile.com
Seems better results, as I tried a similar search in all 3 engines.
Chime


