Return-Path: <speakup+bounces-775-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BC24B6105A8
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 00:22:50 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=uNpScN5u;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=XiUvnRPR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 590E5384023; Thu, 27 Oct 2022 18:22:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 393C9384007
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 18:22:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8992A383FF0; Thu, 27 Oct 2022 18:22:40 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5D431383FE8
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 18:22:40 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 48D3D32002FB;
	Thu, 27 Oct 2022 18:22:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Thu, 27 Oct 2022 18:22:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666909358; x=
	1666995758; bh=pIw+0Cccd/W9eOSlYhh5iWljUcL0IQVRhgsqLSM85cY=; b=u
	NpScN5ujiM/6XyQOi7KJPIzw/g9PN+lDwdiQGaoesU6N2g0DsOM1gEyQ96n4w6Mc
	Mh2d1a4IdmpZomnuOfdBQwpnRqpGFIWnzl8kGzxRj7fKXy/ptdxvnxMjDbiGHeJ+
	DEBJhd+Guls935ySmhq8gg/8b1M2vLpN4Wz5MuIEE4HaDTKewPjCIJoOuGHQJNj9
	LNRuzl2vU+yBn/0jQrZm8+3XaYR6nUD7T7uzUBSCZ32OGJVnq/V7N1bMYK93CEcI
	6Eo5/S73zkdA+XrTRcsZxCxBAxHLu8iksLyQD4bx2QxPYkoCHKFrgz5rc8LmeKF1
	GQncYPtC3IoEPYPN1OqlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666909358; x=1666995758; bh=pIw+0Cccd/W9eOSlYhh5iWljUcL0
	IQVRhgsqLSM85cY=; b=XiUvnRPRwKqcLPs4oXawVPK+SUf2xogc8kl4rQ3hgAzd
	4+OusqGSqtyFk2A2IbK/cF6ECUrFVX/gpxG6E5oEnN7zh7VK1oHqMLkOmC+HeQqj
	RaDDN7SmBZFX070WXlfXToHp+dBe4EWru/jfizpoI5+K/9/saUkYzxiQbgOx/6+g
	7152NE2+N61hDtJStM9dyVJrOgOC+MG2eFkpGRLO/CnoLwOp/+SUBGjRy3EuYQCB
	5u4xufyiPal+Xb11OmTglOhCqkBFlfZk/ltNQ2r7GqmR9hdHNsaP3FibivRLmAYb
	NFTD/KD/mavkJjNic//TAl6no5YDmlPiEjXnbWYsRw==
X-ME-Sender: <xms:rgRbY9KIzDV_6dO_5T6V_5Az9KdQ2MKWrkcdo33FOItLFJkLf9vdng>
    <xme:rgRbY5IJkTCN-oHGBdZM5M4GSMC6-bueFQT2G1spnTp0ALjO8fEnZcOBxv1EsZZ4d
    iryr1MHeQvvinUb-5Q>
X-ME-Received: <xmr:rgRbY1uXUmJoEBuoeEhiwDR5I5LXnBHhHjyRhz0eEV1RE1QPzsgmikYvVpLJtkH-7SMcTLXRgUgA64_qsjv1FeRJd5rx5IqW-g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdehgddtlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:rgRbY-af7ceXE0NjGyUrVXDNuoom0Xjzr5KOlxC_8P88AzQVTf3bQg>
    <xmx:rgRbY0Z9IbaZ7tkc85b0sKxecFEK-osVm3zd7MD62j5OKLdcHgn_KA>
    <xmx:rgRbYyDXPVSb1QYal-ELZGEfRmnz7rXLOd7XBk72acxlRsrGFVxhwA>
    <xmx:rgRbY9AkG4ZWwBXjnM8UtsB9MCD9K1c0ttZ_YQ23kxu8M1bcugBWfA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Oct 2022 18:22:38 -0400 (EDT)
Date: Thu, 27 Oct 2022 15:22:36 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Didier Spaier <didier@slint.fr>
cc: speakup@linux-speakup.org
Subject: Re: Installing Voxin
In-Reply-To: <b7dc2bd6-13e7-3b7a-5651-a1a7e7cc3f11@slint.fr>
Message-ID: <8e0c5fe0-48cf-c28b-40bf-a0846c59cdee@hubert-humphrey.com>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <b7dc2bd6-13e7-3b7a-5651-a1a7e7cc3f11@slint.fr>
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

Well, Didier, sure Voxin works in ORCA, but eventually you can get it working 
with Speakup, as I've been for many years. Right now on my laptop, I have 
Allison 1 of the newer embedded voices.
Chime


