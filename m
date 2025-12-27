Return-Path: <speakup+bounces-1479-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 521CDCDFEC6
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 16:58:26 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=fgYJ4ncf;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=AfSvRpN+;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 50969381811; Sat, 27 Dec 2025 10:58:25 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 31FFA3817DA
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 10:58:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 402043817DA; Sat, 27 Dec 2025 10:58:19 -0500 (EST)
Received: from fout-a1-smtp.messagingengine.com (fout-a1-smtp.messagingengine.com [103.168.172.144])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EB5D13817D8
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 10:58:16 -0500 (EST)
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.phl.internal (Postfix) with ESMTP id DCBF7EC01B7;
	Sat, 27 Dec 2025 10:58:15 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Sat, 27 Dec 2025 10:58:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1766851095;
	 x=1766937495; bh=iR6FLjbXhpRFR2YBjKqz7Qk92oNgdlvbxRXijtTFZ/o=; b=
	fgYJ4ncfEcenu+661/h9Gyt7d+eGfq7mZXEsgoNFGIHs0JWauV2OO3pEFOE7WGNp
	HIKCPrbfy7fIMcBeN8VZzlJTQiTaRCQQcFo1k/55SvCMohKY7Oo/Qa0Lf0+gEEUK
	KNr/19De/sWCpG9IkV7AlboAenw4Y2kfeqEoTqhFfHQ77G+2Cje4v+fIi+Q5ZnHR
	ZjNrp3p0tKS9KZHfJhLu1Fu+7Jmc3k8J5aOYg8vVykB0mVOzyYXV3pf3hItYrMae
	V9oF2J7gxm7ysJVKZLxT9FjUlBlKXmsVV/mQDiRgnQKxrsAEV9H0y8DwX6Cg69a/
	x0vOy+BHx3cMHVfkAPz2fQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1766851095; x=1766937495; bh=iR6FLjbXhpRFR2YBjKqz7Qk92oNgdlvbxRX
	ijtTFZ/o=; b=AfSvRpN+LIWylxrmLN9WSV/Gcr47HKEwBs99ADSjxK/vG9ce9n2
	RPyRxKEe1VPHUlVaotb9ASaD1ZJR8cj6CrrX6k8cE7y//D/lXB+7GhuOBRPH2tyQ
	K1FlsKUyUuTAdlHuclhcK0jVOgOe0xouhGQjCC2uJKEaL2uR4jxYs8zYBuXLjQvE
	dPplufLaI0GYQPZiJYlPeNa4qAtNaSBw6MwCKN/4+nndilEV+tzzH6r2AManOThZ
	C4yGpQigKURK6dOjBy2KM+9xDnIkiujPbZZ0Ho6h4tMiaO6deYIxoLlfsQuZRQVk
	ygejHx4Ion7aQj4xrA++7tqT4wPK8J+XaXA==
X-ME-Sender: <xms:FwJQaVapHgH8o5lOQOruH55MoPGK-GZkkOG_kbca4iuUyD_sUM3dqQ>
    <xme:FwJQaT1VS2dB8IusEGbBl_0j-x3us-SmqwJdpc_Tt6xwGqNGEZ2OoN3fDX0MwM9JN
    66cVPTn9OoWDTLlx-2mVDWrHXuMz5kjGbZapV8jKPiKHUrRVnoc9g>
X-ME-Received: <xmr:FwJQaVUhYlg0zl6Myg1Rs8NjGbHBm_aS7Hga6lFIcJlMfzUD-aleCGFO4l6w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdejudejlecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepjhhhvghimhesmhgrthhhrd
    ifihhstgdrvgguuhdprhgtphhtthhopehkihhrkhesrhgvihhsvghrshdrtggrpdhrtghp
    thhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgh
X-ME-Proxy: <xmx:FwJQadUS4SSD9m1e6rC816vxwYxVjzl4L2nhU2keQzQcLOb2Hsdm9A>
    <xmx:FwJQaUfefWcQz-Mc_6ShxkuCnFEvl9EIEleMhpLvUwdQzBHrIhkGrw>
    <xmx:FwJQaWXvUKySZzlwgsYXkbHqbTjQve5UUtwHbOfPhqii0BvIB-0fLg>
    <xmx:FwJQade1ecoL689vuFYjjZ9w4bekCVIK0K4hV75a96LdJJXrUnA61w>
    <xmx:FwJQaZZRt9kSF19-T65TZ0tharMYlEimm79EAUee3qL5cpA8w2vp-Xc_>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 27 Dec 2025 10:58:15 -0500 (EST)
Date: Sat, 27 Dec 2025 07:58:13 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: "John G. Heim" <jheim@math.wisc.edu>
cc: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
Subject: Re: I'm losing it big time!
In-Reply-To: <c33c28ff-e17f-4ec6-a49c-796e39b77405@math.wisc.edu>
Message-ID: <818b2e1d-43c8-e016-7a45-49d7e54c77c8@hubert-humphrey.com>
References: <dae41d81-e038-41fc-e2c6-39d079283819@reisers.ca> <c33c28ff-e17f-4ec6-a49c-796e39b77405@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

So I would guess the list wouldn't catchup with any topics any of us may have 
tried posting?
Chime


