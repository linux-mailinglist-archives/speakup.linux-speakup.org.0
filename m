Return-Path: <speakup+bounces-1142-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C96F9924D25
	for <lists+speakup@lfdr.de>; Wed,  3 Jul 2024 03:20:50 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=KqsM29Ow;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=RAHAsfy1;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41D1CC81C8C; Tue, 02 Jul 2024 21:20:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 22E9FC8104A
	for <lists+speakup@lfdr.de>; Tue, 02 Jul 2024 21:20:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0CB7EC8104A; Tue, 02 Jul 2024 21:20:39 -0400 (EDT)
Received: from fhigh5-smtp.messagingengine.com (fhigh5-smtp.messagingengine.com [103.168.172.156])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2B23EC80894
	for <speakup@linux-speakup.org>; Tue, 02 Jul 2024 21:20:38 -0400 (EDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 6715711402CE;
	Tue,  2 Jul 2024 21:20:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 02 Jul 2024 21:20:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1719969637;
	 x=1720056037; bh=Q2iZ45BxQMVO3v5+Oj+7XExXkzTegk8IMSloYaNL0Kc=; b=
	KqsM29OwMg1CsIRJNon3mF3cV3vbNiCn1okn/u/fbvkA5Q6JBHdW6aIKm4PEkWzK
	3XbvHV5FqXSAxLH/EyP+X1skQkvytLTW745sze+fJSwEXA1IMAz/LkHar6bvrS+D
	mXutMEgz/2rjYcLh/Hw94SWr6IYlZpPx4FJuK4DvaVbb8kT+G5ERbQVu+0ATTkDs
	u7HFaRzclDh7Wq3Xh2ZUPJ/NIMlQ9o/mfvCk10WCIyT2Ox0oHyWlMQfDLOdBZAcP
	3IBomPgnfjHMxJCtvgNiqKsWAcb+98ZQx9YPGpGhMypkMA5UCynq0sTVDso06oF7
	mFVK+06pVk+ZgTaFQqx+yQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1719969637; x=1720056037; bh=Q2iZ45BxQMVO3v5+Oj+7XExXkzTe
	gk8IMSloYaNL0Kc=; b=RAHAsfy1VU6pIqCt/4aO4waoqQBUFyuY/XkkPH9g1JHw
	rqj20lKxCdChWx8P1UMNPAoVLk+zAauDm8uwF84NVitvNO1QUSEn716gHcsB2A44
	Hylt8c7ke+zdrWT6+VeW8uBaFPOJ3TvbLRytatxfVBvwHBj4fbLGHq+lSY+Oo43r
	/YZwssM8NDJ3zK0AGtas6Bml/V3T7dV3M3i6NmMtk9+B7Jv5R1Pl9HOLVoZVMrtI
	v3euowqwRajdKoJmBDIgmPKJppwrDNGFYxRb4hhxMN0S6yudVx+kRKniW64H/Cpm
	vGwDa4F66GRBzArVoxJV7A8ebb7pEnx74hCe5kNoEg==
X-ME-Sender: <xms:ZaeEZnRDGoL4uq9_pqXgcq7C32aiRxNyaelUaOkhxsUvAADgUGe9Fw>
    <xme:ZaeEZowMrwxkyaV8kANO_duywnvc0CaP_ebYqYq-IVAtPH6RjNIhLAUfYt7UJp3T6
    Nqup8XXumnKvMTTNP0>
X-ME-Received: <xmr:ZaeEZs13PpwS24pY-u00oz-4fEdHJZ3V3whgnMO_4ligTTVyGh_gfB0vrHpt7HB__1_oXmYXrL_xQ34tV6_wOgEgqx-_THdiKLk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeigdeghecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:ZaeEZnCcGiJyNB453ljogV1um8CHP5iGYTmFvT7YfQho5AVt2Rwoaw>
    <xmx:ZaeEZggAZQEV-bpGy3j94M6ByFXO3YojW6lr8tS4LV86jx4UzfEEZQ>
    <xmx:ZaeEZrrPTs7Z9R0wn5bgO_W9W5G-TV5GEAKrX2weWmZZxj5Gxrsc3Q>
    <xmx:ZaeEZrgfReSiCkXHBObe8JSEVAqqgZ2_bZ6mr0UxLOAabA2xWusCbA>
    <xmx:ZaeEZpuyt_yuL4YiGHA3xkaZr4xSuwA5aq-TXrVkNCnQrEDi4WWpaXSW>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 2 Jul 2024 21:20:36 -0400 (EDT)
Date: Tue, 2 Jul 2024 18:20:35 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Didier Spaier <didier@slint.fr>, speakup@linux-speakup.org
Subject: Re: Can We Use Open Mary with Speakup?
In-Reply-To: <Pine.LNX.4.64.2407022114090.3266687@users.shellworld.net>
Message-ID: <380cca27-f41e-3fa1-25ef-67c1a5388e6a@hubert-humphrey.com>
References: <74c245c5-99a9-1fe3-57f8-82dbce6cb42f@hubert-humphrey.com> <9d90552f-72c5-464c-b2cd-213b5229fb84@slint.fr> <c0edf636-7a77-656f-2b8a-140ca6946bc0@hubert-humphrey.com> <Pine.LNX.4.64.2407022114090.3266687@users.shellworld.net>
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

Hi Karen: Useing an I38 browser is a similar experience to a regular graphical 
setting. Earlier this afternoon Didier provided a direct link, which I tried 
installing, but I must be missing some components. I guess this will wait til 
Saturday when my Linux expert is here.
Chime


