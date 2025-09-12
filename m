Return-Path: <speakup+bounces-1345-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 80605B5548F
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 18:21:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=sw0OYAxx;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=QbU8xx5U;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EB1F4382C5E; Fri, 12 Sep 2025 12:21:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CD90F382BE9
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 12:21:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8995E382BE1; Fri, 12 Sep 2025 12:21:12 -0400 (EDT)
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6A4BB382BD8
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 12:21:12 -0400 (EDT)
Received: from phl-compute-09.internal (phl-compute-09.internal [10.202.2.49])
	by mailfout.stl.internal (Postfix) with ESMTP id E276F1D00240;
	Fri, 12 Sep 2025 12:21:11 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-09.internal (MEProxy); Fri, 12 Sep 2025 12:21:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1757694071;
	 x=1757780471; bh=ZK7TRagJq63KOvyRCkLSX1cySwonM3dG+5wKRj5Cuk4=; b=
	sw0OYAxx2LPTU1m06Oq1JYmvKa0UAdxkq7YmTxxB1Twjhsd5/P0T9eEnpU3mA14i
	vZVQ8wBOog+3PElv4Gdi3LWENJIJnXsJX9xmH+PngrAPY/F9uAfYq6zsJsqrJRQS
	ZMjUl+FRfvUh7NiJbLbcxrVpPHRqLmuZ6ZuuMEsaBAhzQnOLuMr+ILtmz4z4uXJt
	DR8pnOouwW6dGMx1RZUnhJ12VpZkPp4VbVBXWkbP1T7KOz0OlpW5JCob+IFZHk91
	Y59DBE8gTR0oTrFIdp2zmweI904rFJRNf0Ef70Bsqii3sWzrT9ZIuhN3voJYtWLa
	DW206q+CVrF/rIQjYpRKng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1757694071; x=1757780471; bh=ZK7TRagJq63KOvyRCkLSX1cySwonM3dG+5w
	KRj5Cuk4=; b=QbU8xx5UracdMcjSyhv/rTabXA3En60oFgNkxUzIJ7fYb6LGqEk
	+pRNHlN7Zzg0vnixUYIDEsHd2omgB05x0Ydsi7LHb7rkQBuQ3I6Wjf82W9XeQwig
	zUrIfPq6nOBJwFC0+/3eb4x4DsoWhjGM/UVG+5OpYMAFScfESLA9+UfmAEeM4F2h
	MXIcZSRNNLgE88LmykBQ6EREVBGEbgvsEFoH8NGbOnA2MR2Usbd+cJQcgU1hvXl5
	OGzGfzbXlERsJ5jKKgEx2+grKqLwZDmeAfaPVHkVP5I8WfM3KQxXa7/9fl5gVupR
	TgmQEzwqZTXyzxqMC5ZUoUuj2CndiYnIUGg==
X-ME-Sender: <xms:d0jEaJMVavhaGqOOGbqm6eS_IfB233c1tKwXbExs8o71sHFaDQlMRg>
    <xme:d0jEaFn0pU3HiZp3hhREuHS5hvSeLR1bNC2764YhtdgFoZSnru0Dg2PxDpg69LRRG
    O5HD_TRc51AV4xhpQI>
X-ME-Received: <xmr:d0jEaIT3DkvzRCvEZnzb8iNv4RX1RJnlzFL0Up6Syj173z4yZEflPUVGer6CeObdCTY9EYGLTEOWtbU99KPCiTvTvyKaLWgX2pQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvleehudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepsghuhhhrohifsehnfhgstg
    grlhdrohhrghdprhgtphhtthhopehsrghlthesphgrnhhigidrtghomhdprhgtphhtthho
    pehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhg
X-ME-Proxy: <xmx:d0jEaJAD7kHA2U5dGNiYE0PjFqE_5FvcLEnkY_IofMKJYEFUfQgGgA>
    <xmx:d0jEaPRnFfsTgb4kF8x7nF605Y28BvlvdSjCPjGyJaqi6_UwiSTO9w>
    <xmx:d0jEaHr20_pUjp5U-bCBWDQpxiMB9y_vwKFZWOlkNSA5EMZNP0MtjQ>
    <xmx:d0jEaBwPu0pQPIQnm4zUkXfdRajz1NGPtaHprRMvtMzUN_xLoyd0_g>
    <xmx:d0jEaNXEbm6L_yQq8IHeUoUFzhnV4OappWnnC1AQ_Sii_g-1CTn-bzQ1>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Sep 2025 12:21:10 -0400 (EDT)
Date: Fri, 12 Sep 2025 09:21:09 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Brian Buhrow <buhrow@nfbcal.org>
cc: Rudy Vener <salt@panix.com>, speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
In-Reply-To: <202509121609.58CG9HoH010921@nfbcal.org>
Message-ID: <055a111b-fe1a-f6f6-e119-b5dc082ea5dd@hubert-humphrey.com>
References: <202509121609.58CG9HoH010921@nfbcal.org>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Brian: Not sure if you were asking me, but I just go to duckduckgo.com and  
link #2 I type a search, link #3 is submitt. Somewhere around link #7-16 
results are found. I have not tried a commandline version yet.
Chime


