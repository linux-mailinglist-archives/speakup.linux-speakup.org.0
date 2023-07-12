Return-Path: <speakup+bounces-1001-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4B9207511D0
	for <lists+speakup@lfdr.de>; Wed, 12 Jul 2023 22:29:01 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=FvpBnRec;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=eSZYwydq;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D31DC382592; Wed, 12 Jul 2023 16:29:00 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B346E38246F
	for <lists+speakup@lfdr.de>; Wed, 12 Jul 2023 16:29:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F3C80382472; Wed, 12 Jul 2023 16:28:52 -0400 (EDT)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0A341382464
	for <speakup@linux-speakup.org>; Wed, 12 Jul 2023 16:28:52 -0400 (EDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id 4B4D95C0181;
	Wed, 12 Jul 2023 16:28:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 12 Jul 2023 16:28:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1689193728; x=1689280128; bh=EPpUrXhx33dwL8O9YMV8juGKNJzRBU6QNOW
	bft60zTs=; b=FvpBnRecVjirO1FKvr2yAKD1vcH2gE5KhSbKxOKnBvd4PL/psDj
	m/Q47xhNC0eHOUnzK47zVYwIsvedN5VTSc5Rtigym44nDiv8Zlc/wdgQvagsrtLX
	sItkjkzSW7NfUy4Njb2MEh2pHGGpXuy5GyFxwY9lVvIBPAUlQOWgHTUwPeltwn7a
	IEY7wzSlVCork/SNZgCefhDQwPDBXRDoq9fvTBDoCIqMZ4U099M/OsSOALoKXOYb
	YzrutK6dmiJxJBO155bZgtB8PR46N+3PVcKmDD4bP40JxyCVjOnXpHvxRWS9nZot
	4n9PI+VaQ3Vfwq5fBvu1iZsn5g3v7bjxLYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1689193728; x=1689280128; bh=EPpUrXhx33dwL
	8O9YMV8juGKNJzRBU6QNOWbft60zTs=; b=eSZYwydqYDeCGgIC4fB5y0EhDxzrk
	V2wNQ5NJN5zvbPuVY9w8VH/1lQjelRcfWfi4pXqUZx/UbO3I9CRcizNhaPBFQW0R
	mEOS6Q6vAQkypMXFXytJqM/HL0VD0FaTTMJM9ooJ0227NeJ5imvTk9XOzDfba0nI
	hCjnumSoInzQ1kUs4RN+CtWyHLWJnUupRY3WCTK7Wn5bR013acAxCwnh0lKliCMA
	peJ9cZxMr8H1eAU2LBgjcFJK4PgNTixAvcOsuO9RGXifNyl4qGUuonwq3zOeQSjc
	3d5rKBVZxMZMBei40vZgKxboNOtFay9jesar57Gio4/XRByIyNLoqE4kw==
X-ME-Sender: <xms:AA2vZI8CguIJUJ2aZuG8zUzs9oSOHcate7AJIkp4Gf50NTeg2EwHfw>
    <xme:AA2vZAutceUrBsc7GtQOe8UT4k7kjVdYg6De2Ly3ixLCz1WgJGc1ZBQvPGKES11KV
    0jmuWNh_wi2EON1T-o>
X-ME-Received: <xmr:AA2vZODnYtpNAoNhjJoY-tUp680lQK77Y9VVQ9ftcQSw82tZktfDT3zsG9uCHsIgqcw__25-6zmqmq_HmT44Flac7q4e92wW4w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrfedvgddugeelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:AA2vZIdm0x_K05E0vRdg1WlgakcDWbx7tLmJiVrHHtunfc7rQyOTng>
    <xmx:AA2vZNO1103PxTbhvmLAkacJrDeP0rMuH2FhXkttamho-166D0EwSQ>
    <xmx:AA2vZCmZnguN1mD3BpvF1daRnC-mfhOK7u-0mOMDHxnSsB0kbHkTWw>
    <xmx:AA2vZPUgcWBxNWDENBWRBx7PDdNpIW-qzr1BiN6pFuYnVkb_914QMg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Jul 2023 16:28:47 -0400 (EDT)
Date: Wed, 12 Jul 2023 13:28:45 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: John Covici <covici@ccs.covici.com>
cc: speakup@linux-speakup.org
Subject: Re: Announcing pod-kast with a k
In-Reply-To: <m31qhczy5s.wl-covici@ccs.covici.com>
Message-ID: <7f9bb5f9-dc62-dd03-cd93-dce7a6ec2581@hubert-humphrey.com>
References: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com> <m31qhczy5s.wl-covici@ccs.covici.com>
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

Hi John: Those are great questions, which I will send on to the author, 
hopefully he will get back with you. And thanks for a first reply.
Chime


