Return-Path: <speakup+bounces-806-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B6C0F611EA6
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 02:16:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=l+2dXhxj;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=QtmYl1DK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 469BB3840B7; Fri, 28 Oct 2022 20:16:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 24B6A3840AA
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 20:16:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9461338409E; Fri, 28 Oct 2022 20:16:32 -0400 (EDT)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 138D4384091
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 20:16:31 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id CBFAC3200903;
	Fri, 28 Oct 2022 20:16:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Fri, 28 Oct 2022 20:16:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667002585; x=
	1667088985; bh=y7y9JYjnIel4f9ka7A4Otu43DRGL5ZuHJCD40ceiNLo=; b=l
	+2dXhxj7vHjC8ioFTY1eG+BspBbi8MQyvAzMuPTtqoJbA1MU20YjY6Nc1HGeVFrY
	zS9nrpQPVUPkVuidb+i8++FnUhx9Zn4KlDvtErt0r/J9MHnJENjj51mFPTglc3sE
	P4FVJ+viNcoGwU+t6+UxaL7Sii0Lgi0n89+cBhIN8Nht2B2s8I8GG0zAXrNMeyM1
	KfLcCfZZ1n6ZmUQiwKLo32NJWVDtgAEjTkxm+X8JILTdsP+s+8EAXR8Sdo3AbOOx
	b1/Ur3XTXGI2uJT4eVakgaE5am8GU/KgwvR3pJOP+dcrJMaoDmc10mCm71lP4id2
	GR7VnaniP7yADrKrqzA1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667002585; x=1667088985; bh=y7y9JYjnIel4f9ka7A4Otu43DRGL
	5ZuHJCD40ceiNLo=; b=QtmYl1DKWuK6jOcFFOYPLBC1HbzFuMXinTTfDrVYuIs/
	CePX5Ak2lpI2l/sHRVLWB+fFXWZhDYlBe4fmfJ/Vr3Xhw9Cx1SGITpWJxRal0OwK
	HnddlzgnTXkRB0oR5bv57eckOAHuDABCejw5KCwlK+Avfe2Iuyy7lgCFU37E2QI6
	Q9SngzygOFcYrnV7uzwym2qpfRyUslN0mjSzvdvX3ChDOzEo0yziVraCrMDIq9iq
	OHnHmfkKdyuosruzadH+VQu5ryuRCgVp2qyp01NR4gqBmxTM5hiIfSS8hO3ZM2fX
	xuX8a6ov8O4N5VwpSKUXVyCY2bL1+f7lEf932WWyvQ==
X-ME-Sender: <xms:2XBcY3mj_TCAuluuuVouG9Fu0EMv9POMnqAqx13I-SUz-nDJZS4ZAA>
    <xme:2XBcY61sX6ZGZfr3qU5hYOo1r-sqCqX8WrYwzDX90GS-vvlrLOZxLfWpnvnKweGi8
    FY_bN7uy7OQH_ao8u0>
X-ME-Received: <xmr:2XBcY9oLIb8sZZ6-4qFwHwK7NvRFBfFGjZ7-lisKUIXHtJr_IpLUmf5Q1jod1z9eSyubF5ZvM3luJeuRBphYZWZRW3yBiuZqCw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdejgdefgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:2XBcY_lTk092OkzafHW163Msjqx-lyGoqjrrf6zD3J3qG6uMG23FNQ>
    <xmx:2XBcY107_NKolG4ySdEtQVqZr_YsrMIermQb7qUBhcxgHqYHOVts1g>
    <xmx:2XBcY-twXVOTugov-mAfLKeZGpggo99pwAn-nOpvbFNK453FWWtjYw>
    <xmx:2XBcYzB3nu8ksM1tPraYMyAVwhaXwJWoE8-2JjNmdunvlQjDccMSZg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 28 Oct 2022 20:16:24 -0400 (EDT)
Date: Fri, 28 Oct 2022 17:16:22 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org, 
    Didier Spaier <didier@slint.fr>
Subject: Re: Installing Voxin
In-Reply-To: <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
Message-ID: <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com>
References: <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
 <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net> <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
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

Well, Glen, there are good reasons for reading-and-contributing to more than a 
single list. As an example, for awhile I tried Slint, but now I am completely 
in Debian, but I still read-and-help when I can. I tried subscribing to Fenrir, 
but I guess something didn't work. As far as your config, I hope you created a 
user-and-system config. You just never can be sure which of these list you 
might find an answer, including Blinux, but I certainly agree with Greg, let 
your subject-line adequately represent your inquiree, even if it means 
beginning a new thread.
Chime


