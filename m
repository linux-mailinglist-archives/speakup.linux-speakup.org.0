Return-Path: <speakup+bounces-475-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5BB7156D205
	for <lists+speakup@lfdr.de>; Mon, 11 Jul 2022 01:23:59 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=eaX5Rzo+;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=W3tg3vuD;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 971BE380C62; Sun, 10 Jul 2022 19:23:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 76F44380800
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 19:23:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EE3E1380B8A; Sun, 10 Jul 2022 19:23:50 -0400 (EDT)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D51B9380AC1
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 19:23:49 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 909083200982;
	Sun, 10 Jul 2022 19:23:44 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 10 Jul 2022 19:23:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1657495424; x=
	1657581824; bh=MHXW3PNgcTqDv1WQpla3uTyFc4YWhiO/suK05o9D8Xw=; b=e
	aX5Rzo+THB4LSRrcAfLP5Y4XaMninDivO1yoM9skra/JTx6WPFo28yoq2qoDUG+/
	R/kgTo+HdGPAlMnfJxof0d03RVlWFuum6+JAz2TtNCn4XHY08fWJk7CHJIvMcjjk
	F9WR03SbeILybehPnzMO82tOV8IUk+30OUAycl3TFZTeY9fKQ+GWPIP1Owgsi/tz
	axulC8yWGOTEDbswv/fUYLM+g4qztvuMUTVN5nxrL0xe5KUfqixHhJg+KyznF2qY
	5sia8UFg2AA54Izn3YSXYMsJff3iH1sBGJI5i1xKFAHGLZEf91kYSm6qQUoTaees
	Al/0Jm29kFRAs4Rz3B3RQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657495424; x=1657581824; bh=MHXW3PNgcTqDv1WQpla3uTyFc4YW
	hiO/suK05o9D8Xw=; b=W3tg3vuDC4eZgamU/ZrsCRMtSL00Wd4bEvD/4Sk3LZ90
	OaC0JYh2Nw6FeoUEnyRooGDl+kcFYoodnQbMKiTOYqau3e4zokzwCwGqgE0XY3C9
	YtoXn9vfVzfCP81kgL42hB+/FLHjkEInWX/hTYdHfT7kL0S2vkZAtU1FwqzTt6J0
	HMqjoPv3lY2M7YAFUy3UPKitDaKcdst9lzaCrA4NI3YZqoD7oVE7DRLNqWb3By4f
	IZqw6e+zXjnN300VS51n9ohazNe750jLLlV8azUqGhno4Gz+UK0IjOUXxYuh8/Ed
	8nMd3nov2jATELXD+BnZQcX97NUua3bMXfqV/rXxpA==
X-ME-Sender: <xms:f1_LYo1GSWdn_ucC2LiIDCNwQ8Ou2l-WiyonEf60r1XhXAIK9Apc2w>
    <xme:f1_LYjHUh2f9KAaF8RfQ29yqYyF7a2_zlMOwYhm9jVw-7a3i0Zen48Hfwe8Mb--yl
    Q043PcG8MnWmgbz7no>
X-ME-Received: <xmr:f1_LYg63BTALVbW4-347hyr23YibN8QXMQ2D55F7kAIM1Ao00-Om_JIND9EQPMv73uZRUfpRjNIaOSOoShiSXsfu9b_vX_t28A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejvddgvddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:f1_LYh3xsL7TzdI33q6ry1aaoxLWMmlVcXx08muFoUDHQ6mN79KqXQ>
    <xmx:f1_LYrF79tKXBXA-02CzVUCwnJpKtZBQXO3K56_Dqre6xX9G01LMbw>
    <xmx:f1_LYq9MJkz_IET3GNgAc35BxVp0s97YjA4pW962ez7hfcBQvaCtxA>
    <xmx:gF_LYgTu-NQGa9u_ZgWKLJma74YCZkKV57fnsvjwVF0DbHe46FtjIQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 19:23:42 -0400 (EDT)
Date: Sun, 10 Jul 2022 16:23:41 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Didier Spaier <didier@slint.fr>
cc: Karen Lewellen <klewellen@shellworld.net>, 
    Samuel Thibault <samuel.thibault@aquilenet.fr>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <01ad6914-5266-6d87-240f-072aa572a7e9@slint.fr>
Message-ID: <915d001a-5216-dce4-df84-f7c37483b208@hubert-humphrey.com>
References: <e12ad8db-3330-1eb3-bd02-65800c170ea9@hubert-humphrey.com> <20220710191638.ifp4speglszs3hm4@begin> <221ddb78-9ec2-6f00-b249-50dcbb7e57ef@hubert-humphrey.com> <a029ad61-468a-0daf-e245-fc679f1a8dab@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101628140.440089@server2.shellworld.net> <20220710203826.3wasqo5hnxf3zdep@begin> <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net> <b9ac0798-5749-12be-6dbb-9d05f7e48078@hubert-humphrey.com> <Pine.LNX.4.64.2207101720510.441523@server2.shellworld.net>
 <01ad6914-5266-6d87-240f-072aa572a7e9@slint.fr>
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

OK Didier, basicly with Voxin Eliquence voices, I can interrupt speech, but 
`certainly  not in either Allison or Samantha embedded voices with Speakup. And 
Karen, doesn't matter which keys I press, Allison will finish reading, no 
matter how long it takes.
Chime


