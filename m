Return-Path: <speakup+bounces-297-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4AB1A41090A
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 03:19:16 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=Np3rfrKJ;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=ocilA//H;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9AC6A3811DD; Sat, 18 Sep 2021 21:19:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 87D023809AC
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 21:19:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B70AA380B15; Sat, 18 Sep 2021 21:19:09 -0400 (EDT)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E734F380907
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 21:19:08 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 984515C00B6
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 21:19:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sat, 18 Sep 2021 21:19:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=date:from:to:subject:message-id
	:mime-version:content-type; s=fm2; bh=dPwpbRDK/J4yLsBoGXQ44S3kWO
	umpF1sH4/3LyPpa1A=; b=Np3rfrKJROctpHZQeJKFIBfX6EnsqvVlJkAHhKU8Pt
	jTmxE3UkQJfYvnzG/zU77ridHosSLUH2N+udTCaHl74ACXmaRYlzoh7mziFy7iVE
	uvoB00Z5Ejs4s68tizKGZcMgfmyq/2U0HaCBulYuWc6udmMfRNMjaP+H/90/eZyf
	zS9GWHzMTOgsFZbsVv7iAHPCDQSkfMf5vWHxuG93Lbnf/FIg2fSkzyt/yBQt21eO
	AygJ/oDtHAOo5GG1NkA9HMfT/QcybOQ0Iuick33Sk9zu6rd8I8hKf/DNHq6psQY1
	LrYyXi1omnDVm+0dhi5rWklUrvdVJAu0VS7EXLn0wqlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=dPwpbRDK/J4yLsBoGXQ44S3kWOump
	F1sH4/3LyPpa1A=; b=ocilA//HXa0dkLkHPYOOJFKGymNyQSYICcdHk0yHQ+eSi
	IRfEm65n0XAxR0rh7hFxvaJ/RjJHAUMfmImtz66H7TsPl5DGU0TjXLFtVS93CVKv
	lFj+mdjeRBLZ7NTY7mgzmM8JvEsl1pfz+4tiW3oFxh21grTdTrN5KZKe+/nc+zf1
	LZoLfZWf5E2wd0UydymmABPFdwcxSWguzK8mAjo3s1k96vVZuz0DfhBoAsdKU6nZ
	zz5UB3VREuyRH+9B00m1uUrxBZDZddNU2aWblnLdsnamxPnFCg2qoDAp8+vFe8t6
	NDbpfzNfWmKYcn0QgtNj70BZhwHocBqFkOUr2e5Cw==
X-ME-Sender: <xms:C5BGYRX-7qB21Dw0itc5peDjRlBPBcugALNBdi3Bu16JjVxWp5nYVw>
    <xme:C5BGYRkpW_fofuh-BiiGX9fTYJtXTKg527rWLimPBS11sM72tpvLkoOQuu9CpzAtW
    2-8L1OGwOM3IQwuM6Y>
X-ME-Received: <xmr:C5BGYdZNKcFvkg0pD9I6rRQS42NMhQwtzor75TGI77QH5BV3yxL-VHrCX4jP9YGHGkhzfI9ZqPPd1i4ogxfyymw3eB4Wh_EmUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudehledggeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttd
    dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
    mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtie
    ettedtkefggfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhm
X-ME-Proxy: <xmx:C5BGYUXUr_SfqLa6k05S88aBG6nJBUEN3JSihOkqojfc3YQOYaXp4w>
    <xmx:C5BGYbkjc-mP81Yr7vWoZJOShwHKQh-5Lg11sMCrXzXGrBj7YfSeSg>
    <xmx:C5BGYRcIkbWuL9jccy0tsyki3pHYXCtt6n8EB_7LXbQBNoP4OG5Ovw>
    <xmx:C5BGYRQGqGhEnN_DakGJoSaHm_slXTsd5eP9HdMAbeDVz3MYRbQlOQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Sat, 18 Sep 2021 21:19:06 -0400 (EDT)
Date: Sat, 18 Sep 2021 18:19:05 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: If I am in a ScrollBack Buffer, How do I Get out?
Message-ID: <5be054a7-8835-17f-caa-7ac78af9c46c@hubert-humphrey.com>
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

Hi All: While I know by rebooting, I can probably solve this, but I would 
rather fixit in progress.
I launched vlc-and-it took over a console. In the process many consoles now 
have an awkward display, certainly not in sync with my current line. Whats even 
worse the flat-review in Speakup is 1 step behind me. When I was in 
youtube-viewer, it still thought I was reading a web-site. I've already tried 
exiting a console, as well as typing "reset" But still at times unless I hear 
an item live, I have no way of reviewing it. I am in Debian SID with a DecTalk 
U S B. Can some1 please suggest an easy way of straightening out these 
displays. My screen is still 180lines-by-240 columns. Thanks so much in advance
Chime

