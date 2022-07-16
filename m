Return-Path: <speakup+bounces-483-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 70EAC576E00
	for <lists+speakup@lfdr.de>; Sat, 16 Jul 2022 14:42:49 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=fNyhhrJw;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=C4t55fbi;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F08DF380A41; Sat, 16 Jul 2022 08:42:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D19E83805D9
	for <lists+speakup@lfdr.de>; Sat, 16 Jul 2022 08:42:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2DD933805DF; Sat, 16 Jul 2022 08:42:41 -0400 (EDT)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 385513805D8
	for <speakup@linux-speakup.org>; Sat, 16 Jul 2022 08:42:40 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 83541320082A;
	Sat, 16 Jul 2022 08:42:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sat, 16 Jul 2022 08:42:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1657975354; x=
	1658061754; bh=IdCgCjJDEPiGtnmLyKvdRYQPj+JgVWFdT/xN+xDljmE=; b=f
	NyhhrJw8jkkYlTLYIN6Pt0gbZafi2LnX06Fant/+fYSYCzxtTs7pLoLiCc/7nz3I
	xNxcV0kIL2v+ohBpdMQnnEFyXpq62dagyk4OQAx9UO4xzsJoB/p0oTt3YF4K1jFw
	/F+scNkFu1Jh6ghfpSWQNOSD8beERL3czQm9PprhS0w+CV+DykXb22SP3t6UtQqy
	zw/PrFOtNmS/ZwZkFfRF8t7vlhWqYQoSqjuaUGIBgRSXp16rNRhOfzdABS6SyCQF
	vJTHzwhuDRUa4u15jtYhmuKXSVbxpZ6B8c8vCjXkWIjCQZPOIRis5gNEg9Y0m+AU
	gKcPBFLyZKixB0nMk6coA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657975354; x=1658061754; bh=IdCgCjJDEPiGtnmLyKvdRYQPj+Jg
	VWFdT/xN+xDljmE=; b=C4t55fbi3WjUglGWjD/6KI5PcwSgB78yux7GCt1ubmF0
	e3IdfkrYGQAiU57wPzh6CxtiZCRNlGTEAJiUdktPaOrQj6vCL+03QRmM3ivHO04r
	adOyh53IsskgI5iQijo6iW7WovJlhYvbq0nF0DcQFZHse2Uuq8pTrqbG2RNPkGVR
	kjNHPYZBN0ifYAIuCOjhg5IxZwiO4HrLqqP45TxbH70X7tS/wKU/udWeYn5dr0UW
	Iaj7E1t6+vwqFrrc6d6/WSbJGU9blmG2rq/7helU8z+KRNjFQEp2stn5ceK5Ix5g
	CkhOuuIn2qa0DPazDn7dpytB+LS7B3socx2AcGxzMQ==
X-ME-Sender: <xms:ObLSYvCce4Tb1nsPvI0rdzRmEwxxH6xl6vqaLLUNWtCcGY9KlXb_vg>
    <xme:ObLSYliO14y9eL2PMhicDDggNbVb5fu50yNEFlEVqqGFDKLrWThg622lKZ6uAyX-o
    NyhNitGHlBMOkOh6hw>
X-ME-Received: <xmr:ObLSYqkDKyKERQ0Z9hGC-bn6oP2IeZHJchKGaK0twpsFFwx9BRJlFC_r__G_pHn3FGdo_6krFwA8OzlDdVCvgLW-voa6CqvTmw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudekfedgheejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ObLSYhzRSWRie7V2K-UXtST1CyZj9MG1GDDC0bulk__n9MptG-40tQ>
    <xmx:ObLSYkT1YE9xk7ZUruSYpYkDdC891uePF7_7SGQOcN8npNaWk67Asg>
    <xmx:ObLSYkYiOnxsGk3FIT-GIDhCn-3wBb5YwzZjIjReCvot8sS6Xri0MQ>
    <xmx:OrLSYvJjx36phw-a7bIJCfGQuMqk-Ne01gE4kA_vjYVivPC1dTiHCg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 16 Jul 2022 08:42:32 -0400 (EDT)
Date: Sat, 16 Jul 2022 05:42:30 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Samuel Thibault <samuel.thibault@aquilenet.fr>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <Pine.LNX.4.64.2207160818090.581166@server2.shellworld.net>
Message-ID: <6953ca45-ab5f-a5e8-626a-063664a13b87@hubert-humphrey.com>
References: <Pine.LNX.4.64.2207101628140.440089@server2.shellworld.net> <20220710203826.3wasqo5hnxf3zdep@begin> <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net> <b9ac0798-5749-12be-6dbb-9d05f7e48078@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101720510.441523@server2.shellworld.net> <20220710212952.oopexzb26c2kobuy@begin> <Pine.LNX.4.64.2207101803190.442232@server2.shellworld.net> <20220711035822.453lixuqfba7667g@begin> <20220711035920.yrrxc3uakze33cvn@begin>
 <Pine.LNX.4.64.2207110140001.450746@server2.shellworld.net> <20220711060626.pv44xzokg3tui4sj@begin> <Pine.LNX.4.64.2207152314490.572799@server2.shellworld.net> <76aa9475-b3a3-d174-f506-83441af84cc6@hubert-humphrey.com> <Pine.LNX.4.64.2207152351300.573529@server2.shellworld.net>
 <50545017-deb9-5e96-4730-682dca9521b4@hubert-humphrey.com> <Pine.LNX.4.64.2207160818090.581166@server2.shellworld.net>
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

Good Morning Karen-and-All: I suppose Voxin is packaged-and-sold by Oralux. As 
far as how much interaction Samuel would have reguarding Fenrir, I honestly 
have no idea. Once I can narrow down whether this issue happens with Fenrir as 
well, then it would be a cause for filing a bug with Oralux. We know both 
screen-readers can interrupt older Voxin voices, but now its an issue, at least 
in Speakup, with embedded voices.
Chime


