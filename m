Return-Path: <speakup+bounces-1007-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 65DF57543EF
	for <lists+speakup@lfdr.de>; Fri, 14 Jul 2023 22:51:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=quDq0UeI;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=lQDMN1Ph;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D92EB382583; Fri, 14 Jul 2023 16:51:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B910038257B
	for <lists+speakup@lfdr.de>; Fri, 14 Jul 2023 16:51:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1EAEA38257B; Fri, 14 Jul 2023 16:51:06 -0400 (EDT)
Received: from out1-smtp.messagingengine.com (unknown [66.111.4.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 37857382530
	for <speakup@linux-speakup.org>; Fri, 14 Jul 2023 16:51:05 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id F3B0A5C0172;
	Fri, 14 Jul 2023 16:50:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 14 Jul 2023 16:50:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1689367851; x=1689454251; bh=X3l3POQU/TMFMWoOcT1DPyddnhRatV1jGt1
	o75bslqc=; b=quDq0UeI4DEcyRtBuuxsCc1hzjKpq+Sf/K8v4dGa6ytlWwZvr63
	6bteN6uZc0jAg4dOpiUE3zSCvXU2EXLQsnv7aKqG9HDTMyLxRGWla0wQ42Nff24B
	uR4OLzo2Xk+/CQbSadqjcqHTFxmMxVwS7iiMz6+7PPagq4AAZDhqB6aHOASLO618
	82+K5G/Vlu8pBs8R4MF595HmSbVsauHmMKbBGmb+khmEgv5CI5+ZQLQwm5N0iN+q
	tsKGDN0SxNycpX4Nr72/kn8VIdiGDGru5FPn1YyIkDcURYx/7sH3P7983W6NqJ1D
	moZ9eqZ/D2aEf7DLiaibwK8TCgGchYEQ8fQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1689367851; x=1689454251; bh=X3l3POQU/TMFM
	WoOcT1DPyddnhRatV1jGt1o75bslqc=; b=lQDMN1Phm8Qm2L//bhlhcI8GZgjbQ
	hsstYVZ8v5vktMFE+CCP7FRGkn0NljJ76BmWwxG00TkLcLRiX4KxL+vfmEsu1eQ8
	f+e1AwX1ZLpsUdlLDPmbUiCixeL5iH6QdI8YuZMFe5x5lFqnQmGlXeu2EkjTCnjh
	k16udWv3oAozdfpmCQ76lo0nLk6rjE2kWjsvWhWG3N3VJZfNKM6CRi4cwkmayB3H
	EnAKqEkNDjTyIW/lKEngm9wewozRrs3ctcDzuCjbFD8tyMZr/QuFdvwwrVS+8wL7
	y3i44WUzr97LteKliGaMoefYH0/lfEEU80ztfPURvjSxTkUHLRvvkXrfg==
X-ME-Sender: <xms:K7WxZF4lqmmci2qdwdh1Jy3LvwjfqMsq4qi6Fskn6H3LrUHL-biVhw>
    <xme:K7WxZC55ohnex9u4i7B7txqR3tY0tSTewmWO-xlMvha_24dDu5Eyt2opA8Hl1jjCX
    ZpyFFPF7bUnpbRLzQU>
X-ME-Received: <xmr:K7WxZMdE1XTZvBT4q7d3FlCn_iwtoPnwq9xDZ97Z01a1QAv32_MuF3T1xsKMPyoXrDRm-hHycP2MD8hSklJXy_zFd8gTQ2WfPA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrfeeigdduheegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:K7WxZOJ-8JgvWg6uyVplGG5vEMtG27F4PJs-qI4VV8xb5MJaSP8uLw>
    <xmx:K7WxZJLWAGGBMKC1mgDpBz7p-QDy1cbWVAZbshD80XdtkoduiUtt5g>
    <xmx:K7WxZHwkoflfMN_kVp8n3plqh94zZNyI61_kFm1vFvnIx066iN9ndA>
    <xmx:K7WxZLyTRTctDDgVeKUOx6HVelR1sDGF1r5EsztSy1AorSSHm-HGOw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 14 Jul 2023 16:50:51 -0400 (EDT)
Date: Fri, 14 Jul 2023 13:50:48 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Didier Spaier <didier@slint.fr>
cc: speakup@linux-speakup.org
Subject: Re: Announcing pod-kast with a k
In-Reply-To: <4609d841-adef-4391-77e0-46fd8147fb47@slint.fr>
Message-ID: <b544b9f1-c4e8-0c68-0a7d-99dcc671b655@hubert-humphrey.com>
References: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com> <4609d841-adef-4391-77e0-46fd8147fb47@slint.fr>
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

Thank you in advance Didier for eventually offering pod-kast to your many loyal 
Slint users. While there, did you look at its menus or notice anythin we should 
consider in its opperation? Thanks again
Chime


