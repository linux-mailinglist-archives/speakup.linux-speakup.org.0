Return-Path: <speakup+bounces-787-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 937DD61068D
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 01:52:37 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=UhKizWTY;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=dAB2oCwt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A3D038403A; Thu, 27 Oct 2022 19:52:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DE3A0383FF7
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 19:52:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 39DF738400B; Thu, 27 Oct 2022 19:52:24 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 05213383FF7
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:52:24 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id D3CE53200941;
	Thu, 27 Oct 2022 19:52:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Thu, 27 Oct 2022 19:52:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666914742; x=
	1667001142; bh=DUjwSjnhjklLoAc1+F8KuXsnu0kRrzzC8Je/LIlMdao=; b=U
	hKizWTYtKLuSEa0D958axfw/dSNsflC9ogh+/RGEobd4z7T8YUtquhOr9OOP2R7j
	WTBZdDRcgnNC5GeJ8gIe343EEayE3NxqSO7TNk7fQ8CrfnozyRgqdJnRGrrhEA04
	RAxoAEAnuxNCCIMjWLX6FZEWXzGXL9uT2cd7CmWPZq90aJQ7RCdqsENdKsXyZhZS
	X0fCkNx2xH2dkI50jmqlLXYqe7D86QnK5uKH0RuG0l9pLnfmEhtU5v7q7Fp60OcZ
	lCJ3GPoic2BRjXYtcU7rJ3UAFP6nYOJphwZ58YA6drH+Af1RjL1dqlx1gDMgg8cg
	nZud/TbOLHDIthzxCJQgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666914742; x=1667001142; bh=DUjwSjnhjklLoAc1+F8KuXsnu0kR
	rzzC8Je/LIlMdao=; b=dAB2oCwtmOB6H0OZPsmQ1BugDS5xplRpmB+seTdpkSOE
	eJ3WoFKK0iAcfWe6XIqM8fh87vhcoHjFfrjmkJggJoc+cp9sj8Nj1je1aVKk4v6F
	XgyEKx6ssYqa3EtY5JplF87Bv/bw48ZJHwyFaR9ErnjYWNIYfWBKBbGqBW1kEoe3
	OQGFx1N5ZcAzyQSxR08BuYiHdp2E1517K96yFufLbvlF6qoET8eUNWZ2qhMclXW2
	qq+dfdq9L0BwzMjOMmvB3dgyqAY+I3A3oxXAxu1v8DGWRXGhjOglLNbDjxY2uPVa
	n/VvDQoXyibbYehHdFQfsHlfI0aK77Qf5CyPqwPpgw==
X-ME-Sender: <xms:thlbY073n28UJe5N0rU4WBQfzP5GkBEqrlxPcAt8qvFPvV3ibQUc1g>
    <xme:thlbY158KifolEeQp8x6L4Bg_GgkX2b9aesDDEjq_d7dbhm461YjY9jhDQyUy7hKG
    t0DsxNxdJakcYcbHBE>
X-ME-Received: <xmr:thlbYzfA2_pxnEC5Dnv5RUaFMb7gnsZDV0PdIEl2FZfZEEIqNm351Q59-fuYrXJAz-nT0LBS0qROdo71VgIwuymWKT5hnpQUZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdehgddvjecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:thlbY5Kt2WcMBtZODrO5bF2u6RoLqeGWzza9CGZB0R-KUsi_mZwAAA>
    <xmx:thlbY4LXe6Ts0lDWHfhoS1NVpITth4CinATFgC1iwphwC9PU5drn9w>
    <xmx:thlbY6wqGDUkIBkU37R8kSM_332c4fPgC48I1kAyqVX5tz8PuobEow>
    <xmx:thlbYywN9uvQrltFq3vtzBd653rroQN4AIhIV4HoaiPCKT9__Z7tJg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Oct 2022 19:52:21 -0400 (EDT)
Date: Thu, 27 Oct 2022 16:52:20 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing Voxin
In-Reply-To: <088501d8ea5e$9033f820$87ffa8c0@Win7VM>
Message-ID: <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM> <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com>
 <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM> <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com> <088501d8ea5e$9033f820$87ffa8c0@Win7VM>
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

No, Glen, trying ibmtts will not help, you must type voxin, and yes, try alsa.
Chime


