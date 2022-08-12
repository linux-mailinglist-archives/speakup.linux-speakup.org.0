Return-Path: <speakup+bounces-510-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 52FDD591671
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 22:47:35 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=H0okvElq;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=A+68z5W6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E5B4C383768; Fri, 12 Aug 2022 16:47:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C576D381908
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 16:47:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B6C6A3819AA; Fri, 12 Aug 2022 16:47:26 -0400 (EDT)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 972BE381908
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 16:47:26 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 770F632005C1;
	Fri, 12 Aug 2022 16:47:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Fri, 12 Aug 2022 16:47:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1660337244; x=
	1660423644; bh=qTcNEtUlNifIiHh+ex3g20n6GhQ5bjHUxes36zd3bYg=; b=H
	0okvElqWKRxiR1I8GDol6nQ9aRqVHSti3QZv/enLbhfeNMREqlDxP/+lZw95dr1i
	oWB7SpkL4Zp+KwsoLDzjEN+leSCoY2T5LsjpQqRmZy212Kow13rYZRrC7BoYHunk
	gYnlC+EzWCTmOf2rJwzuEveTkyolUGe1N9Q9hKPzC0dfLf3TaMb7Sv2oRf2yc04K
	N/V0WfvK+4cW88COrgu/iOQqIvivfbSaXmAl+Wtyh0UTVOJx5xdGRVUHX3q9p38a
	S7s+7l20IFz5niAxtCF5Gm47fXK2vcA22abm0cT3daGkL0s6iwzYAs5x1G4T6C+o
	nysbh98x3XK3eaoKdA1Ag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1660337244; x=1660423644; bh=qTcNEtUlNifIiHh+ex3g20n6GhQ5
	bjHUxes36zd3bYg=; b=A+68z5W6z+FMJq+9hzKgToPy6+NZ9gvpUlDf64SbTvx1
	wlcBA4nAB5DPJSFyCNcaBfCXXi+gFdLvTXRBKAKtMToo62feJJopbM/prkOcZArK
	z/x57cn3GlDQPf7qvPAz2JYESygqX8kHjkpl/1su3elre0tPnbiC5BA1JRUqhz8t
	Tr/BixIXOPVTirx7PtKOE3q8HF9nBcA3hPQGb0pMFPc4v7p9LjQNxdtALz72iKM9
	4a20rOr1DZkMeIciPZJpT50jzezL97X71Bl7Y7mc4GZgxhIE5mgiE8N8M1i7jIrD
	gPip4kzhdh+oq4nSof1B3aHAPikX9kdj6pjUBT1bmg==
X-ME-Sender: <xms:XLz2YmSjmx3Xjbd8kxg0fOmS2pgJ2LPden8IYndoYVYPGM-SxLusow>
    <xme:XLz2YryFNhAZQYUpXwfKnId675tNMt4vNV5pgJuFQInFSn9O2sYeg_rXb9p2MZi3u
    zHENkvFUWTMP9HyzBU>
X-ME-Received: <xmr:XLz2Yj0xDizFgWihREnNUpoz8kW09oMIHar7R79c-9p-o73dP-q9-S5NS6YGAYoh6_vFbRtH9Kwg_7dpPciQT2NMx01LWHSasQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdegiedgudehgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:XLz2YiAxZxFoWIiC_ccSljNzB98_-TYZyhDzytRE_lTwIA-muL67uQ>
    <xmx:XLz2Yvhu1mTbCq7SFg5F3iTaSTtZG5i_IVlVoRwIYkjP6p5EsQsOaw>
    <xmx:XLz2YuqrhnTUoElUieAxzMMEZfsowP2VTwoWL602wtXOfDRRYNhIwg>
    <xmx:XLz2YvJYh6dahJpT4JnhUYbMPdbinjHe_K_sjGQjngugzwFMN_jhhg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Aug 2022 16:47:24 -0400 (EDT)
Date: Fri, 12 Aug 2022 13:47:22 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: getting audio for Orca and Speakup or Fenrir
In-Reply-To: <021d01d8ae8c$39e82800$80ffa8c0@Win7VM>
Message-ID: <bb50694d-0a18-60bd-76f4-6842920b47df@hubert-humphrey.com>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM> <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com> <021d01d8ae8c$39e82800$80ffa8c0@Win7VM>
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

HI Glen: I would still try sudo before your aplay command. Also, sometimes you 
need to add yourself to a sound group, but I wouldn't know how thats done?
Chime


