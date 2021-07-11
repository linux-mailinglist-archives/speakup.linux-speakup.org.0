Return-Path: <speakup+bounces-225-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AB5603C39C3
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 03:20:59 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 87122380B1F; Sat, 10 Jul 2021 21:20:58 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=PUrCy/Tb;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=Bbek5/ve;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 72E5A380995
	for <lists+speakup@lfdr.de>; Sat, 10 Jul 2021 21:20:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA997380996; Sat, 10 Jul 2021 21:20:52 -0400 (EDT)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 336833805F1
	for <speakup@linux-speakup.org>; Sat, 10 Jul 2021 21:20:52 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 99C635C026B
	for <speakup@linux-speakup.org>; Sat, 10 Jul 2021 21:20:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sat, 10 Jul 2021 21:20:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=date:from:to:subject:message-id
	:mime-version:content-type; s=fm1; bh=N9vi++FBeWRxbIOss6VusorwiS
	6CCWV7J3Ga5rrpdEg=; b=PUrCy/Tb0oVdqXxig8Qhm/U3OPU8dKt3R2NDO+Yh+s
	I0Rk8mr++b5DQj8T8n8ARHHiKg3cRdZoSWqruCHXrLy+ezKbIZ2d+W/tPQhYFvjr
	GQTEDC19jRQNDcBZmuVK/Oj/0QqFGT82Iu5C2OTQtvSjJqgftQ9bgMlJk0JD6iST
	srWtqlemP7OFQIhHMu467bVN7XYQKHgR9+h7bRh2W777aALA862vyBZsGGF8Po5e
	hgBUJKByFw+NBSGV1qtZpX5oVWAteu344g62LwtKRYxmQVRowB53PuJwiKT15WLL
	fbVFm57dmIAit8DO6b02Tkz+uYnjTGDLjWLklx64IVyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=N9vi++FBeWRxbIOss6VusorwiS6CC
	WV7J3Ga5rrpdEg=; b=Bbek5/vei0Z3WyZnbj0RGI3PbXySNZn8LYen/S1cB/dhQ
	StX7f9FATerUHIbKpakRqfeS1lFMe2w1JiqhnwV75IhGs2VvwTr6zwAxSbQOH/FM
	j42GRhEmG0FIyTHK+90BHuIWIt32tw2h7oZS48tgnkSb6/tP4zbqLIhi1AruuOZD
	HInH2P4NzTvTIOlwrXn65PRD1ATrN/Rr0sWyznnFatHTN2ERTET4ktfaKQHa9lmj
	AMnhaBF5VVjtDDJnfu4cmFCHQ/uoKy/nwZFnT388h5ftnKbx3YBDTbTXuZZFtCOY
	6/98HVC4RekgbMCCTbJgL0AwGPrRnWmVUNZ8qEZUA==
X-ME-Sender: <xms:a0fqYDNiZA8t2S_R617DheSwud0CqoICGzjFLqegHvRrso_YtC6Ztw>
    <xme:a0fqYN-98cZw1agcC80NWH4zxP5mGARG1vDok3zqythTqUyqXr2bhEfkRCAGd9EO9
    4P9bg2M16DMxFk0-NI>
X-ME-Received: <xmr:a0fqYCSKeEgyhyX-4w0ZdIOk0v2TYF9zxPMInO_3zF3X_QdSi4tIWAm1pWfppobBq1gUyAJ2F_8iG4GMnmrqqFGsrOk1kBuCgQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtdelgdegvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttddtvd
    enucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhm
    phhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtdeite
    ettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgeptden
    ucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrh
    gvhidrtghomh
X-ME-Proxy: <xmx:bEfqYHuVgv2zEvdohfPXSUYJmbH6ke5dLB6WI6tdRwcZR8N3ZUSmhA>
    <xmx:bEfqYLfrjfbIO94E-jVxQX_bWdIWjeM8Rx0nv2iEBbXJgnNqwtBlyw>
    <xmx:bEfqYD1jzvsIsgBjGNiNNw82Guy3oPK3vNGUoqDEdD8BjjIBMEl-uQ>
    <xmx:bEfqYJotFixtWF8U8TQJW__eGDcD0EPm5dX5GYd4fgDW4FzG5LgX7Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Sat, 10 Jul 2021 21:20:43 -0400 (EDT)
Date: Sat, 10 Jul 2021 18:20:41 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: No Interrupt in Voxin Embedded Voices?
Message-ID: <a983ac4d-a9aa-a592-8612-275a1d729bfe@hubert-humphrey.com>
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

Wow, after practicly an entire afternoon, we got Alicin-and-Samantha installed 
in Debian on my laptop. We needed to run "voxinup" instead of speechd-up. Voice 
sounds quite good, was about to explore dictionary settings, when I realized no 
keys, controll or anything else will interrupt speech. I must wait til it stops 
reading or catches up if you type while its reading. I have no idea if there 
are any places in Speakup where I can fix this, or would I report this through 
Oralux? Thanks so much in advance
Chime

