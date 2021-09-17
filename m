Return-Path: <speakup+bounces-285-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B444C40EE47
	for <lists+speakup@lfdr.de>; Fri, 17 Sep 2021 02:06:41 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=cUI7G6Mv;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=AmRIT2ti;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 614C23811D5; Thu, 16 Sep 2021 20:06:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4E90D380B2C
	for <lists+speakup@lfdr.de>; Thu, 16 Sep 2021 20:06:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5C996380E55; Thu, 16 Sep 2021 20:06:34 -0400 (EDT)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D9157380B09
	for <speakup@linux-speakup.org>; Thu, 16 Sep 2021 20:06:33 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id E4E0A5C011B;
	Thu, 16 Sep 2021 20:06:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Thu, 16 Sep 2021 20:06:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=date:from:to:cc:subject:in-reply-to
	:message-id:references:mime-version:content-type; s=fm2; bh=jTHj
	i2R3I20QnHxYT5y9F57P3I8WMMBUj6JRVUQTgXk=; b=cUI7G6MvR5VMB8pNQ2qH
	Y2si8jVtV3maZnwJj4V7w3AwMTIyFsgNBcpaH9aeDGQSqWVQBFCyzwEBJNortr28
	HHaXQZSVMDUo3tSy8zbwue7PzVfF2v25HbfRBgAaxbbx3kTgjIQjsBqkinsKIucb
	GNlw3DIkU+Qw5O7wkvLKHm0inlTb6dkwcmRQx2sTOKm05MDlufTa4XkHP6BgCiAR
	ZeQIClgXUawq1iDCpiI7RDaNtB18wv5LFxpvaUY/X2zj0amsDzVmhzj4RDat/MgM
	DnJgk+MPLv6HMnkgV6qdTHHgtkp/dNwdgYWYp2ssTyRy0rk2vlLE63P44bjdgMfH
	Hg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=jTHji2
	R3I20QnHxYT5y9F57P3I8WMMBUj6JRVUQTgXk=; b=AmRIT2ti0REvV0q5rKLQWi
	NerHHM1mgB9v4OHKGOvK4Cw/dwNqR376TksQ8i02bUf+w4X4xkFkeoM+14lblkL6
	HZ77F45d73HpKMsAnXECbMPCibEU2iFzPGJ2su3XrAdmP0tF0a2fKToFBTs9f7wY
	u/uURw63qKKz1qGWXKRnlDSrcBObW5626PbZNCKcwwyl9WF7VWS1DFzvS4zZ/TeB
	UsoVLuhd8HC9L7GiM6ocwtlkIiRYXQ4xsVgilDWwMz5c4bF0AhBp5PtOZX4o0ZGY
	Xwg8W8UbcQu3cwb3yzig30c8tsxS40XCax488v5jd+gT/7kCCr1L/Tcq/TEdkJvA
	==
X-ME-Sender: <xms:CNxDYVSJsOpBR_XHHAKjuNV_mGYIoGKB7cCdOViHq_75aL90UBoWKw>
    <xme:CNxDYewM8kFPBkfOenaJiRZXZPqakp44giYZTlS_rMFUMWxfxuVIT1nRQ0LcS77wS
    H40Vx0irLWWBVws9t4>
X-ME-Received: <xmr:CNxDYa3gmxSFgirvl83BdXOoJE_56t3lUxVf0O3yHYeI5ZzL26vzpV7p6Mpy2aMsO4D4NGlZUgs76CMW7rvxCJC75oylPbfzsQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudehhedgfedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepffehtdfhvddvueeuieehvdefffeutdegueduhffgleetledvuddu
    gfelkeevtdevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:CNxDYdCDmTyxNSwZCI3-LXekRH3--6zC0nN4aGiRnKSFa55BLPSBXQ>
    <xmx:CNxDYejDzdlf6zLxxFOJLTmDaj-foAkTiz5MiK3YihKY-AYbWJB4LA>
    <xmx:CNxDYRp2ZeUDzr1DAyJu48lSW74lXdTo2-_qlBMP8dQZjaNuVWXALA>
    <xmx:CNxDYWKG8YyHcVOy-gcBTS8gzaD-_JJis6ubwOvKwF4XT9CJaAtAwA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 16 Sep 2021 20:06:31 -0400 (EDT)
Date: Thu, 16 Sep 2021 17:06:30 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: John Covici <covici@ccs.covici.com>
cc: speakup@linux-speakup.org
Subject: Re: problem with read all doc in kernel 5.10.60
In-Reply-To: <m3y27wytck.wl-covici@ccs.covici.com>
Message-ID: <bf13cd6-25d1-679a-75e1-2aadc98e71f2@hubert-humphrey.com>
References: <m3zgscyti5.wl-covici@ccs.covici.com> <m3y27wytck.wl-covici@ccs.covici.com>
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

Well, John-and-All, I have seen this for some years with my DecTalk U S B. I 
only tend to read alpine mail like this, so I cannot say what would happen in a 
browser, but yes it may garble 2 or 3 lines. I am in Debian Sid
Linux chime 5.10.0-8-amd64 #1 SMP Debian 5.10.46-3 (2021-07-28) x86_64 
GNU/Linux
Most of the reading I do is line-by-line in flat-review.
Chime


