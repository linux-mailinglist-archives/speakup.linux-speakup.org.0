Return-Path: <speakup+bounces-465-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EA03B56D130
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 22:02:49 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=GM5g1pu/;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=Uy0dUvht;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 79277380BA3; Sun, 10 Jul 2022 16:02:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 634CA380ABF
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 16:02:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B82B8380ABF; Sun, 10 Jul 2022 16:02:41 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 961573808C1
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 16:02:41 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 855C63200319;
	Sun, 10 Jul 2022 16:02:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sun, 10 Jul 2022 16:02:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1657483360; x=
	1657569760; bh=V/9ktgHSFPtIL/n2L06xC//nHJvXj+3OCmm3P+A+/Po=; b=G
	M5g1pu/XlyDJYemi+W45zuCdPGX6c+BLPjmShcnD+4uGM9uNSn+pDeYc82aFfFhj
	UivCUjEArNHzuNsr8To4FwlfkpQWKQCDg0vjxZRjP20nC4tzs2T2+qntVn6Gexgx
	SeCxC7RUCRYa+46xeftHb86zdQQcRKV06E2HzdbWIQETJXwbfdsbsu+UMt9D3MFn
	CkpjXC5k+QD5gDmEAV0KwIGWex2ufLm+mT1MHhoPZSv4prQ+ihOqSVGsHZUHW/GZ
	CewmrCYL7gxroeILDBQhKrDZCNo32hyQHsjrRuQQDhd88/ajqUpY1G0RYGT0UIFT
	mPbnkc/2DDcCohKiYvInA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657483360; x=1657569760; bh=V/9ktgHSFPtIL/n2L06xC//nHJvX
	j+3OCmm3P+A+/Po=; b=Uy0dUvhtt0Iv7FE4tqurr25sVMYPnRSc26/tswbMVR9N
	lyVdkhw+YO6kgA/ODHjFchTKM7Dpd4qGeCGpEzC66bZ/mO/w9Ps21YQe4Kpm0N7J
	XxSQS3C/bLRf9cockrEP6Jk2OwsJPTI9cG6Rf/lVXwSJe6U2P0FjEJgpGA3SxAA8
	q3GW2slgSgSoWIkwTn4hqVElaIcft8+twjUwRipP5lMG3yGOGL2lgBG3pW2VPViX
	qFOQjTZcVh/bb7erKc3+KgOV1IJV1+GHxkqi05G7FfVuCn5BW2fkWUQbzBMpzj4D
	F2pShXyLWiYNRqzfyi+tuyYdb+4UFK16bxhguvueuQ==
X-ME-Sender: <xms:XzDLYiECDMrTh_sFRJ5oc2YtEwkQqSIrMLJBK18WOHaT0-qfWfsGIw>
    <xme:XzDLYjWqaK0MuFvNrpdI7LmplEr_GphYxM2yVS644Iv4AtIFfRSdYIHCMiWxQ9MIX
    ZtyYgKH3ZfmKIiXA3g>
X-ME-Received: <xmr:XzDLYsJuuLQNsJDd7U9V8X-pASWTp-uVstsxpc0ABNbLBc32Va_s9q1z48K3t4b1BoPjw2cBz9jyVdKiVdchOoF81Pg6qKl5yA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejuddgudegjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:XzDLYsHgxEEu_X9SYj8TBhooDBaKUf8eOyjChw_FRdfOJL1GcUpS6g>
    <xmx:XzDLYoXc8K5BxaKS-j2_T3NdGyhDmhbb30rgPfMask7qAqEgKCpjMA>
    <xmx:XzDLYvP-LwTFhPN53J4odbWrKdvtBPvioK_1NHsqbjPlQI7JtEywBg>
    <xmx:YDDLYhfi54CjyW1R-KXhXf8qSyH0sQU9lUVu3EUbC_5ouThbypPM5Q>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 16:02:39 -0400 (EDT)
Date: Sun, 10 Jul 2022 13:02:38 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <221ddb78-9ec2-6f00-b249-50dcbb7e57ef@hubert-humphrey.com>
Message-ID: <a029ad61-468a-0daf-e245-fc679f1a8dab@hubert-humphrey.com>
References: <e12ad8db-3330-1eb3-bd02-65800c170ea9@hubert-humphrey.com> <20220710191638.ifp4speglszs3hm4@begin> <221ddb78-9ec2-6f00-b249-50dcbb7e57ef@hubert-humphrey.com>
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

OK, just did an "ps -A" sure found speakup, also, voxinup, and voxin-nve 
whatever that is? So, I did a renice -20 on all 3 of those, made no difference. 
I know of 1 other user from the Slint list who has used these voices, will be 
interesting to know any other experiences.
Chime


