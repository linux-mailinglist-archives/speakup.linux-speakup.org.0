Return-Path: <speakup+bounces-1317-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6610EB389CB
	for <lists+speakup@lfdr.de>; Wed, 27 Aug 2025 20:43:09 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=Y/0fDWCj;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=nzF11dPB;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5E33638272F; Wed, 27 Aug 2025 14:42:59 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3CAFD382272
	for <lists+speakup@lfdr.de>; Wed, 27 Aug 2025 14:42:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C6E3138225B; Wed, 27 Aug 2025 14:42:51 -0400 (EDT)
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A0B5338194D
	for <speakup@linux-speakup.org>; Wed, 27 Aug 2025 14:42:50 -0400 (EDT)
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailfout.phl.internal (Postfix) with ESMTP id 64EF7EC032D
	for <speakup@linux-speakup.org>; Wed, 27 Aug 2025 14:42:49 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-12.internal (MEProxy); Wed, 27 Aug 2025 14:42:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm2; t=1756320169; x=1756406569; bh=qnz7CB9uwD
	pTNqtnw/+22V4fpxG8hsI0UmjGq64s1/Y=; b=Y/0fDWCjFFSgk+qWodfuSwYzYW
	My0sxpAiBS+cwXfNvMnwOViYxVPcEbpfD4r9kVuA51guNQ58svL0irtPE5Whq5xy
	uKYvnZNvxmVqfFkEUSHBijUX+YkwK3U64FF63noKP8J0LXGLMHWpfvuwK7O4MUaa
	QDNACExPkkw0oz25NmllLEN64oy5r9NXs5rudqLI3vstuqWdztHuWHzdTIXDw/iQ
	AxaHcZ2PR8oJUzyDKtFWwlN4e+WTP/vW6p5jlHFXaJBF9kTWYqgwD3WhVoi90Wkp
	SeeFcfIj99rQrQGRisUWOHppSDpzWBqHb/saEG1DxUHPtcGHKPWNUJDbDBZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1756320169; x=
	1756406569; bh=qnz7CB9uwDpTNqtnw/+22V4fpxG8hsI0UmjGq64s1/Y=; b=n
	zF11dPBBkD1azl07gssfq4fwAL/V/3eOp7SrnuhbzJsGl/s39qB2S1p09PNnxdGS
	6XMNyH8o8kyiqvEvI2adyveTi0x8/xY6fRwTvaBzsU/W0knzXUpBJVM306wkKjvj
	12DeHaxBqPyGGkJEbsxMJQWcl0DY6dUmbZOlnJsv0x7+D23iEiB98vq6GV46azfr
	arjxJ2oPMpzo2lArEk2AYpETp6HDndcnZSUhwME+s9jdXy8zsgz+uBcgJgZ3oPuq
	gH+lXUApfgIlaJkcrS995XEiVAAJcJFcY+luE7HO/B0iEQNN7xcawaadODDIwrw9
	twUBs29RXzEp/282hAJSw==
X-ME-Sender: <xms:qFGvaCAsVvNhEyrANgSv0Y9zhWE-xR5MCFMlTif2BpBPI9eKwPkqHA>
    <xme:qFGvaHxWhn2xDPzpH0VtbruwdqxHf-aZr7ATPlF903CxqVhbFGCEJUYp0e5A90P5u
    0BOjHNXYAXwmSoxSNQ>
X-ME-Received: <xmr:qFGvaGNP1gxbLD5RAGzUnWuIXCx5cOALzHqtn5mcsPilhj4lkLnpFOIQjYYOd5yBD3XmqyUJu8ZDr3vgZ05mNXXia6sx0tdmX5M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddujeekledtucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehmtderredttdelne
    cuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhp
    hhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpefguefgvefhteduueethedvvdelie
    fgueeugfeiuddutdfguefhvdehffejvefhgfenucevlhhushhtvghrufhiiigvpedtnecu
    rfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvg
    ihrdgtohhmpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphht
    thhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhg
X-ME-Proxy: <xmx:qFGvaG8q-Yd2J3NQ__qVZe7US2YBVGqP8RdaOMztVVIqo0tgbklbSw>
    <xmx:qFGvaGpMAIpVwM8QI3eJeRWs-utGlVPRgB492wAAmFARtY3DN4sAhw>
    <xmx:qFGvaI66pAVhZTb10uXW9RptT_3QK9qcDgLUHDbvYFWl6yYo61T7_w>
    <xmx:qFGvaGPvUUc0C9j9nH34VQsf8thRIqN6g1uehnReH7BPsFZ4_nTcaQ>
    <xmx:qVGvaCbiQgmmzIwPQ-qfErUikm6X8Tw83XvC8LZDY_1xSqILXRlUDNuC>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Wed, 27 Aug 2025 14:42:48 -0400 (EDT)
Date: Wed, 27 Aug 2025 11:42:47 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: speakup@linux-speakup.org
Subject: Why Won't Speakup Announce this Charactor?
Message-ID: <86f9ce9c-e2ab-c53a-5860-6b8bc0bd0aa1@hubert-humphrey.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1090979311-1756320168=:142574"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1090979311-1756320168=:142574
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

Hi All: I really miss Word Perfect-and-its Reveal Code f12 feature. Anyway, was 
downloading a youtube video-and-noticed this. So, I asked 1 of my sighted Linux 
experts what is this item?
Destination: ./◈   WATCH NOW
> After pasting it in, there are at least 2 carrots, which I didn't see or
> missed, but still Speakup says nothing on an item just after ./
My expert says,
"It is an a with a carrot above it.  More properly, an accent circumflex.
I'll log into chime later and see if the character is visible in less.  If
so, I think we could add it to your dectalk config to pronounce it as an a"
Back again live: I think Speakup would be in charge of announcing. Thanks in 
advance
Chime
--8323329-1090979311-1756320168=:142574--

