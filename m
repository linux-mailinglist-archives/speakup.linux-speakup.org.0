Return-Path: <speakup+bounces-1095-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C6B0B888C8E
	for <lists+speakup@lfdr.de>; Mon, 25 Mar 2024 05:24:18 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=ZKc3/1bH;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=ZL75cXrX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 42698C81C1F; Mon, 25 Mar 2024 00:24:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 238FFC80FE2
	for <lists+speakup@lfdr.de>; Mon, 25 Mar 2024 00:24:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B9B34C80FD8; Mon, 25 Mar 2024 00:24:08 -0400 (EDT)
Received: from fhigh2-smtp.messagingengine.com (fhigh2-smtp.messagingengine.com [103.168.172.153])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 34108C80B90
	for <speakup@linux-speakup.org>; Mon, 25 Mar 2024 00:24:08 -0400 (EDT)
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id E4C121140097
	for <speakup@linux-speakup.org>; Mon, 25 Mar 2024 00:24:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Mon, 25 Mar 2024 00:24:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1711340643; x=1711427043; bh=+z4G0/7yxQ
	xOjvU04M49229E6R7FdbWg6oM8ZFO20jo=; b=ZKc3/1bHntng5rCjrj4CLPGdAY
	mESFjNUGtcFm9kevZ6TTWgu3I1fuw7vqGdSiur2U2jbc9HHBheKpxz9VaGPsacig
	UmcEZNjwlhm3GT/+m4mURuKy91EeZOlQ/vxqXJgqc1KIRZ6KuragTKL4gJW2OId0
	M6t87nW/DtWdmWXY10J7IRJZTSdCmT/L+JMtb/wwJYi+xY8x4GIBRc9ViUdNxi2o
	8BWWA1byZBPqPV5KktIXOQErAodxvwXkEHDWPI7OWxnaseQns0XKf/1P5oS2+Hv9
	hAg5USnkCFJhbWonfAVJY1kn2tVMWOaze8IKA3/Rie7z8xPRiTSjaYCpPXYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1711340643; x=1711427043; bh=+z4G0/7yxQxOjvU04M49229E6R7FdbWg6oM
	8ZFO20jo=; b=ZL75cXrX3wPdCl/BD4oJq2ByJbYtfys9uhBLRSKcTEKJPJYbRpQ
	9DNK/WzyWosNdXigpsiatvetLt4gM/YfXp7xA2ONviGRcDgA9rBJ7N5nqeLH58R8
	f+tGhytPxklRBjNJCyNnL7MayrHX9no8GgDhHOkkUrm9m2Z4Bz6gj7qrQO52TIaO
	IrStoXeckA3rO3qucDQKaU9EMI2HrhEzXqWcBO9eBCh8wPzw8FiALnbWip3LSjRr
	ZgPGqJ4He5erDhqJ15JUGIySzVYN8zicAEPMhMebkqeVqUxEWZHKgJ0g0ZB7ww8b
	npqbMUfe/XGWAulb5Nk6NxpnC6vCcvvFX4A==
X-ME-Sender: <xms:Y_wAZuDgKfc8qsExjci4TeMY4KmMYso3mxBuQb_NYjdoyiKarEci-Q>
    <xme:Y_wAZogbVLNPcpgSA1o4CupKrZ5WzFHpb7VwDvRORJyQ5jdFxjXw8cDvfjgbtlCvP
    CTyVRCsHwzsgUwa6YA>
X-ME-Received: <xmr:Y_wAZhlBTDSJ4F98oBcyxJFjBVA5TLUtuj5NlZ7BNmh4zbyjH-PwuZHwl_RplY-tP2GqN5UMe9TzaDxDnsWBmYbPO2s62w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddtkedgjeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttd
    dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
    mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtie
    ettedtkefggfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhm
X-ME-Proxy: <xmx:Y_wAZsyZ47y5RM6aBSYUZmg7bisnYkxIu1zQ-iB58qhtx9nEmjBmlw>
    <xmx:Y_wAZjSIadWbl3vODeFDnNBw6lsrY6XNFjSEPEQ32v26o5rp9Qek9w>
    <xmx:Y_wAZnZSJNes8nrplvnYhGEiyyA4Qg6jhgQ28l3bFpxGvlP4ZuJybg>
    <xmx:Y_wAZsSx8gfr2sbpbgH1QNKZPPjuZejAg4BceFDZ-T2Zxrwqd5hypw>
    <xmx:Y_wAZufngcZuc5xPK6XcUsz5fCu1aBY0x9-Lydo4UDp33CkyvKw3kg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Mon, 25 Mar 2024 00:24:03 -0400 (EDT)
Date: Sun, 24 Mar 2024 21:24:01 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: speakup@linux-speakup.org
Subject: Is Park/Un park Broken?
Message-ID: <ddc7825c-b7db-8820-8483-b551b898062b@hubert-humphrey.com>
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

Hi All: Yesterday after 104days I restarted my Debian SID machine. Among the 
minuses, my console fonts directory went away, had to re-install. I finally can 
have spd-say working as user along with sudo. However, a surprise, when I hit 
that top right key on the num-pad, it says "park" but it doesn't seem to work 
any more in my kernel
Linux chime 6.5.0-5-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.5.13-1 (2023-11-29) 
x86_64 GNU/Linux
I guess if that option were removed, it wouldn't say "park" or "unpark. Thanks 
in advance
Chime

