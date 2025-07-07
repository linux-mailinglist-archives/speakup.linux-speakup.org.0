Return-Path: <speakup+bounces-1314-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7A673AFBBC5
	for <lists+speakup@lfdr.de>; Mon,  7 Jul 2025 21:35:27 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=ceKg4J8s;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=mLlXUR8o;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EF74A382497; Mon, 07 Jul 2025 15:35:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D0B0F3822DD
	for <lists+speakup@lfdr.de>; Mon, 07 Jul 2025 15:35:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E51C73822E6; Mon, 07 Jul 2025 15:35:19 -0400 (EDT)
Received: from fout-b2-smtp.messagingengine.com (fout-b2-smtp.messagingengine.com [202.12.124.145])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 981F83822DD
	for <speakup@linux-speakup.org>; Mon, 07 Jul 2025 15:35:18 -0400 (EDT)
Received: from phl-compute-12.internal (phl-compute-12.phl.internal [10.202.2.52])
	by mailfout.stl.internal (Postfix) with ESMTP id A8A001D00256;
	Mon,  7 Jul 2025 15:35:16 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-12.internal (MEProxy); Mon, 07 Jul 2025 15:35:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1751916916;
	 x=1752003316; bh=QSuJ50yuv7QK4U0lAXM9eKf74yIHsoT3KmD6eLUiWz0=; b=
	ceKg4J8sRoDxC54N1no7Iw+YlawrGt9n3ClsB4y4QXAK+AAD/iIwJCEWEu8ToG4K
	UTUW2eUOYu7depZooqnz1JtuBeLnlz7MP6qcGcWWXy9bp0q4PMwm2vX1b+RsSosV
	jRZ4aYMiktbDU0/sygHpDfoqY07VREWJKd1q31qew8t1wGdFO9C7W0l/0sXYx3B8
	W/ulmCBfWXqk9wDkH/5hRtvPWbPlj2W+EKUyzulqKycUpMNjPkuXm8gQFyZ7854H
	AH8rQPhUe2tVatnbpYFF9QW83cnxw3VgklRTlcceZW04MgeZ8LV7nGvW64YhRrNZ
	KrwysvyjUUtfYw3b7jPxXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1751916916; x=1752003316; bh=QSuJ50yuv7QK4U0lAXM9eKf74yIHsoT3KmD
	6eLUiWz0=; b=mLlXUR8opGDCtESycD1YMq3V5GHbbcZNJkLxSv9dhUmIVdBpSd+
	OVnSQiUUc5L9RhPUEtMVfaViMZJlcZECVy3kUzCxiMsJSmySjj2+T2mZKMGVBdxN
	dcADcOVFh26vftuHYACDhbxMJNcDcLpTMVvrO3SWq421pE5oRKQ3AstWYKcuH5By
	Td4Jm06/y8O9iKD8Hnlu3CYnNtZ2hB/bs35HnZygO8Ji9BorAe2EojLjmlGGajE7
	mn2knodpViRLR8ue8SQCKXU8yrdBMJaImP3dpi68v9LmKHeHCgT9dSiNdYHlkR3E
	gkVK8Xi2had4QZ7saoU/miR3gQS8VLhFDcg==
X-ME-Sender: <xms:dCFsaM9jVG7yAnk9VO8dvvTFS4UasxIg-BRcpapYJFeEPqU5OUxvdQ>
    <xme:dCFsaJ-CbV9iHunX9qkTs2BZ8Vp4Zb6LL7xaSTII63X4lm3E9QLQaE8WxxXAdh8Yw
    AS2IAiAphowpvTBCFc>
X-ME-Received: <xmr:dCFsaDsXIyp25ayONMxd_Y02yxExCr-3kBx90LA2QjpKVWj4MKjuLt54jLGplQ-n0cNSVyHi4C0C8GyDSyWDvoArRFiXhHOT3P8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdefvdeiiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepghgvnhgrsehmtdgvsghprd
    hukhdprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhg
X-ME-Proxy: <xmx:dCFsaErcfECKQArw_3zBdaL4L3hP_lLBE9DzIyC5J95vi6eHT2sSxA>
    <xmx:dCFsaImQJgu9ZOQw_eNDEEtwlD5I2w4_k2Bp3KLkk9k7cXexj7xncw>
    <xmx:dCFsaAweWVt2b1XJstM1D6FBCb5HDILSmy0Cv5Q8unV0R3D88woppg>
    <xmx:dCFsaIl-mK4fNy6hAJvXJBaHdiabQBXHMkmWyhi42ezx0Op29xf3Gw>
    <xmx:dCFsaM7JvB3NRf8EvsYezvoieNm66I-0IakTCYQ-ipZLGoXM_x9ZAcDA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 7 Jul 2025 15:35:15 -0400 (EDT)
Date: Mon, 7 Jul 2025 12:35:14 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Georgina Joyce <gena@m0ebp.uk>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: debian update killed speakup
In-Reply-To: <8BEF2F60-C508-44B0-B8B5-68268D196FCB@m0ebp.uk>
Message-ID: <5203cf08-b4f7-0f45-8944-0e56b2c7eb83@hubert-humphrey.com>
References: <8BEF2F60-C508-44B0-B8B5-68268D196FCB@m0ebp.uk>
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

Well Georgina, while I cannot comment about simlinks, here's what I would try. 
Run a "ps -A" look through all those processes, kill any which have to do with 
speech. Then type "sudo speechd-up" That has worked for me in the past.
Chime


