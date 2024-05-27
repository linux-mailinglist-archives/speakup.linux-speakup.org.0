Return-Path: <speakup+bounces-1129-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 392C58D10A2
	for <lists+speakup@lfdr.de>; Tue, 28 May 2024 01:46:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=UXUBExq3;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=GJyJUx7C;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 307233827D3; Mon, 27 May 2024 19:46:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1300B382104
	for <lists+speakup@lfdr.de>; Mon, 27 May 2024 19:46:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CAF33382116; Mon, 27 May 2024 19:46:35 -0400 (EDT)
Received: from fhigh7-smtp.messagingengine.com (fhigh7-smtp.messagingengine.com [103.168.172.158])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A1E503820D4
	for <speakup@linux-speakup.org>; Mon, 27 May 2024 19:46:34 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 0A49C11400F8
	for <speakup@linux-speakup.org>; Mon, 27 May 2024 19:46:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 27 May 2024 19:46:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1716853586; x=1716939986; bh=Qd2jG5Ez4/
	auQxnyXxXpgZMuMxCvnUf0PXv9vF5UnEM=; b=UXUBExq3H6UsfOY0CI77GSaBuN
	RN5RhK7XVLvcQHOgJTFLsY9CqAJ9TA4B35AKgHls1F7vH3154JG9/0CDKuM3li6C
	06sfXAVtMJi5HpCesAbhwocC04Z/RMyA7UlmJ2Ie/TGcfI5xV6mewjIx3XusXcUo
	lB4I3EPaIcQe2sMYvOx5FxHyNw5Tpb1eSFePSTig4tujKHfIzfnXTXdwD/8I+mTN
	Y6jam+FscVhSJrJ9xcL7Z6LMImWEXIx7adTgw5OX5oPXQUc1MZoCG7lrvV1AHeHq
	bwrAuhbFYRbOzjpb1oQEMIJTjkRjGCrE2xrSSBktyekii6HcpicSadQ0QFfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1716853586; x=1716939986; bh=Qd2jG5Ez4/auQxnyXxXpgZMuMxCvnUf0PXv
	9vF5UnEM=; b=GJyJUx7Cb6tZUxBJyWLNmArbvLczarau9QcuxC6XgJqq3YXlxB9
	0LtTn1D24zbVRVftdZV/IzuSr6X8fZMNUXYbWdGpUkg6qN7Rz73bGuns/ycoI7WV
	Pv0GpQHnWQ3qVfR1JvNR6XZK/UncB0QiIkI5Vzr1+xBa+rAxOlblB6gGazd4KlzV
	2Uz6atD+Jj0uDJwTOPFERg2yp34fZNTiIJBBr6eaHsuUygN3mf5L3qCuterExr8f
	Y9SatM+0DHziZV0H13CF6kYhf3hnY6CM1txflh8sqG+dZl1iMuRviO/NtEG70Y8L
	6hQy2GHRLqWOIEmC30Da8NK/2x6sGdnjMAw==
X-ME-Sender: <xms:URtVZgcIaESk9hjv78clRvFgoRQrrC9oqHloAs7M8ImQXvCQUmQFMg>
    <xme:URtVZiPR61d5CKtesFN7h51rMTQ9ofvmrJ0VoWyIqphxVgoFgr-vaZHENo7ehMonw
    W9o3oEwheo-MRJjFuY>
X-ME-Received: <xmr:URtVZhjW8WqWZbXHeJAK3GSWOPVksw7HkJ-WJ7NEfzc4brfJUtgxPns4llA7U8g_H15r8zhR7Xy6LLeqg2ECT5d16dxd0X53FPU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdejhedgvdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttd
    dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
    mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtie
    ettedtkefggfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhm
X-ME-Proxy: <xmx:URtVZl8kVUIS755VXs5Qdp4nkpMW14lMITRxDoBhovmn8KXGeEJE1A>
    <xmx:URtVZsuaxeJPRkFw0Ynt9y_A9YKFaYwUO0kW7btwJt3Gb50GWbd05w>
    <xmx:URtVZsHmP1UAsCKbdt5Az5Qhu2defpMWrNUSwkMDsVY0tXAXkD3sbA>
    <xmx:URtVZrM3EECS04Gqyvxu4fZC1_v3IF3FLMGXHdxdzAlZU9BRtvAkqA>
    <xmx:UhtVZpW8oswGWIQ0E5NWoz8gQjE59akDDXtkqyk9dy2VpFVuyPJhNvIq>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Mon, 27 May 2024 19:46:25 -0400 (EDT)
Date: Mon, 27 May 2024 16:46:23 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: speakup@linux-speakup.org
Subject: How Can I Switch from DecTalk to Allison On the Fly?
Message-ID: <ce24dfea-5c36-4bae-0f72-9a2441ee7ba1@hubert-humphrey.com>
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

HI All: After trading messages with Gilles of Oralux, he suggeste I ask here. 
These days when my Debian SID machines boots, I have Allison from Voxin. While 
I have an alias to switch to my DecTalk U S B, which I think I've mentioned 
before. But I would like to switch on the fly back to Allison. Gilles suggested 
I look over journalctl. I found these 13lines which seem to have errors.
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol synth_add (err -2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol 
synth_buffer_skip_nonlatin1 (err -2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol speakup_start_ttys 
(err -2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol spk_var_store (err 
-2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol speakup_info (err 
-2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol spk_get_var_header 
(err -2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol synth_buffer_empty 
(err -2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol speakup_event (err 
-2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol synth_remove (err 
-2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol synth_current (err 
-2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol spk_var_show (err 
-2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol spk_set_num_var (err 
-2)
May 11 18:57:39 chime kernel: speakup_soft: Unknown symbol synth_buffer_getc 
(err -2)
Back again live, it seemed to devide those entries in to multiple lines. 
Anyway, I also have Didier's "talk_with" script, while when I was running 
Slint, it did work, will that help now in Debian? Thanks so much in advance.
Chime

