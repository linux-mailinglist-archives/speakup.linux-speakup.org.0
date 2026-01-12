Return-Path: <speakup+bounces-1501-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5F572D14B5D
	for <lists+speakup@lfdr.de>; Mon, 12 Jan 2026 19:18:20 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=U2onWRAp;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=cRIl1+Qx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DB892381921; Mon, 12 Jan 2026 13:09:19 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BDC04381825
	for <lists+speakup@lfdr.de>; Mon, 12 Jan 2026 13:09:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CCACB3818A4; Mon, 12 Jan 2026 13:09:13 -0500 (EST)
Received: from fout-a6-smtp.messagingengine.com (fout-a6-smtp.messagingengine.com [103.168.172.149])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CB8AE381825
	for <speakup@linux-speakup.org>; Mon, 12 Jan 2026 13:09:12 -0500 (EST)
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailfout.phl.internal (Postfix) with ESMTP id 23DD3EC021F
	for <speakup@linux-speakup.org>; Mon, 12 Jan 2026 13:09:08 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-10.internal (MEProxy); Mon, 12 Jan 2026 13:09:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1768241348; x=1768327748; bh=IkNgtIYP7B
	+CZboHhB9ZcJhCbsFo76sWjtVPmyWoJLU=; b=U2onWRApI9Z4m2t+rNr2VnL632
	F7PCYtJm6aUq6EUyV8GrKaH0FSPvuFmDMaI9VsCYgtZWN6y0/gIvrASKd1Ji4P+k
	Hw9VfweO90VLHK8NpalJMNxR9vNNJYLRmzaVWiKhl1Ym+DE40SRqP5qYSyaWGkd8
	Yg4U7K0PBJ4gHG/Hp9674NDsO0FOoj9M/MkMq1vpz8e/LIjehhn3iqqn+C8fR2IB
	LLL6+4G3vDo0gvCFZESEJn3UhsqbTxvsX3lkOJTbBVChrvjL3ATRo/j5Hd/f7dFx
	SWmn24aJkGIydPYF06eMMOFphe2kkRxeQ9Byx0b6OL7LIE2/UX84+C4Uspzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1768241348; x=
	1768327748; bh=IkNgtIYP7B+CZboHhB9ZcJhCbsFo76sWjtVPmyWoJLU=; b=c
	RIl1+QxzDLVSDNo1GlYC/bAIyUo70ZD+eGsaQBU8w+vqyZuEmmrJHiyurQ9W8Awn
	9b6sMNqlNN4Xz9HZ86Ra2uCv978Z42a8dIrGZLUTG1+WSTu+X6EhzpCAPzJh3nC5
	7oetyKCC/Nv1qLmFjLC/tIpthHabLmLWJY0bla1HaWioIymGS7gxs+3CReciQJgI
	UTiZomEbmjntGUpgJzS6vpvuE1O0ienqHXRW1KwM7/zNugorUBN2bZ/N4V+mItBI
	E6/UjUiEzgFBNDG53JJFNpUOzfVfOT0i2FyvxxV7s+hCtpGrbAzOxibmuKpPZrCy
	thAlrUik5eRPvxALxcKzw==
X-ME-Sender: <xms:wzhlacF94_cBaq5tpMfaHTaYQqZnWf9d_-2V9fxFszRO7rm0mYPb4w>
    <xme:wzhlabOCYa0gmB7PiFOIOxO4cymp-38mNsHiuD36poid8A-MRFk7j4BOU39Adcf0R
    0q9cHATOQpueDRB3U-fac1GxgTv9ccJoH_UAUZmMQfgF4W2SHVMoA>
X-ME-Received: <xmr:wzhlaRNFpi3TRnJFtuUmqXVp46VCou5j1LYrO2dbM6PZOZ5BUSaPkByxRfH4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduudekudegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttddvne
    cuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhp
    hhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtieette
    dtkefggfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedtnecu
    rfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvg
    ihrdgtohhmpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphht
    thhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhg
X-ME-Proxy: <xmx:wzhlaa6P_p8GqudiJ4rrA17OmLBltXBALTNR9daGXV_B46e-nau9_Q>
    <xmx:wzhlaV7sA6kQXbOyCc0Et9jBFEOqzuN3mrEBlsBKgYK1B266Jhl51Q>
    <xmx:wzhlaS2ZJVCdhAhqR8T_ANb_-2ita18OtTjtZ645Gqqqz-vbbLXuTg>
    <xmx:wzhlaZWbQcTTX2DN_v7WkOdGDbugQDeU64cG6fhKcCOCgtn2N96ybg>
    <xmx:xDhlaT-_wTBLQtHyYEl-Kg00GrLYBMOUpXWuUmaxnjILJ6Bv_uWkv4vo>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Mon, 12 Jan 2026 13:09:07 -0500 (EST)
Date: Mon, 12 Jan 2026 10:09:06 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: speakup@linux-speakup.org
Subject: Ajusting Repeating Charactors?
Message-ID: <85030c18-3fb6-31d2-cf83-31c358c21ead@hubert-humphrey.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi All: With my DecTalk I am examining a Usenet binary group in TRN. Lately 
when I hit a space-bar for the next thread or group of messages, an only way I 
can get Speakup to read is with numpad+8  I remember Vocal-Eyes had a setting 
to ajust repeating items, but I have no idea if Speakup has? Thanks so much in 
advance
Chime

