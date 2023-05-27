Return-Path: <speakup+bounces-934-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 05DF771352C
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 16:30:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=git+5Tbx;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=N9BHeQV4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8E7EF382473; Sat, 27 May 2023 10:30:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6F659382442
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 10:30:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 23D89382452; Sat, 27 May 2023 10:30:42 -0400 (EDT)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5DED738242C
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 10:30:41 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id AB28B5C00B0;
	Sat, 27 May 2023 10:30:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Sat, 27 May 2023 10:30:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1685197838; x=1685284238; bh=7UC9HIJlgeb18XeBSBucrIEAe3KhA8Jt8Ow
	UlkVb0JY=; b=git+5TbxgvJus4hBAOaMgLoSwef/sbsnfo2K5I1Z/eUYEczsKjW
	oJqgMy47vYkBS30+ku1jDOLQ7ST+6aTjfp+Bq0CMmrmxYRT56hKR3eFfnuPdWIyF
	o53m035P8+qClK7eBSMLJVAk6yNDIdWzFfUdAM4jnnLJ0uDO5w4XO3TsTtSP6D7X
	2TrzQvYOEk8WfiU4wwYfXrWnGgosoDe940VdtW8K4OAw4FpHyrjGO+3IRDLNvuOQ
	yjPFFBTiyqB3umhQvzNjDS6TeC7C9F4GdL0FPGaR0auZeO6yPrtEDH3AGgdgrl0u
	AGR+zRPbdssJx8KQc2hK3rySKB/0BDJsmsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1685197838; x=1685284238; bh=7UC9HIJlgeb18
	XeBSBucrIEAe3KhA8Jt8OwUlkVb0JY=; b=N9BHeQV4UvDi3pXYQidXrwajDsVBc
	Qr0sxImW592Vnt70pzBWG+ZW1osN3SxxxyQbwFfhhYCEcslhBV2RQWxJyKNxRRvL
	+JVk3vvgmlUU7n2Idw5fJojoCu33DhcvxYgBkzfpFM8fP0Xc0xlBU4nfn0L3skHd
	rdSMZ3KSz48DhZ476pZ7ZzYh9jEHRgmi9EwuYI0Co05+lcK3Sh/bXShNSCH8+MgA
	tmLmWyJgW69HGlPyHWsqXPEQ1eTvqYE0XQQn529SchPZrNONOSZh80ZPhOPxm6WX
	gF0EZ49+no9RCQCWvZQgkbnYia5OsKnBUVR7BSPb6+EsUIzcBYngQSSGg==
X-ME-Sender: <xms:DhRyZDgglpDtxUluKfso5bKpzCSDiHODGdzbZEM4W0ber7KsK_cikg>
    <xme:DhRyZAAkdPwh9h7Un-H3n2JewpF0HiVT6f9WG7ethrfzPPuNI15_DCC2iqf6EDtAH
    DUuO1o9iUrgCH0LMOM>
X-ME-Received: <xmr:DhRyZDGsK_0iz8Rgc8eslDtXbJfe0mcgL_21u4hRhIyxQHJ79mQpLY_5KMfSnLhxqtNkCrpyNWzdlZGFpjosMoO3kqmaV6lw_82syA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekuddgjeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:DhRyZATDW4gtLddnFp8mwYsMFYQipopRFaxQbUjd_LvK_4Cf_9Lbow>
    <xmx:DhRyZAxlO_wXs1qs4K8qRA1nbdefnx7hvMmC5pknHekjxu0cLvuH0A>
    <xmx:DhRyZG5qCdJUVuDMkNJDcZdE754g8L79tymUdzfYtiYM4aimWglvyg>
    <xmx:DhRyZL-H8TKhV2-F6FEG4rbyHCk9EKAgp5gSRL1c7jTGSobW3tDVhQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 27 May 2023 10:30:37 -0400 (EDT)
Date: Sat, 27 May 2023 07:30:36 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Janina Sajka <janina@rednote.net>
cc: Samuel Thibault <samuel.thibault@aquilenet.fr>, 
    "Joseph C. Lininger" <joe@pcdesk.net>, speakup@linux-speakup.org
Subject: Re: Beep on Backspace in Console Sessions
In-Reply-To: <ZHINne5OJCQnDMVf@rednote.net>
Message-ID: <ddd034ac-1a67-a8b3-d11c-04babbe98c59@hubert-humphrey.com>
References: <ZHGmQFwqgliD6p3X@rednote.net> <d9409a2a-457a-0427-0535-b5e5c2816ee7@pcdesk.net> <20230527090519.wmilxntbwgtfqdge@begin> <ZHINne5OJCQnDMVf@rednote.net>
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

Thank you Janina-and-others for bringing up this topic-and-hopefully solutions. 
Whats interesting, when we first got this laptop, nuked windows, installed 
Debian testing, I had a beep on backspace, but no speech. Eventually got Voxin 
running, but have not had a backspace or tab-completing beep in quite a while. 
That command Didier mentioned returned pcspkr 16384 0
I did just install abeep, but so-far no change, or won't I notice until a 
restart? Thanks so much in advance
Chime


