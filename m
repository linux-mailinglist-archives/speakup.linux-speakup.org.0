Return-Path: <speakup+bounces-1100-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F2AA58A71FE
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 19:12:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=NNbn5tZX;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=cWWEan6A;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A1770C81C80; Tue, 16 Apr 2024 13:12:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8223AC80879
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 13:12:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2ED49C80A25; Tue, 16 Apr 2024 13:12:22 -0400 (EDT)
Received: from fhigh1-smtp.messagingengine.com (fhigh1-smtp.messagingengine.com [103.168.172.152])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 94F2CC80879
	for <speakup@linux-speakup.org>; Tue, 16 Apr 2024 13:12:21 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id D589B11400D3
	for <speakup@linux-speakup.org>; Tue, 16 Apr 2024 13:12:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 16 Apr 2024 13:12:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1713287536; x=1713373936; bh=epw2hn5aZd
	kZ/amDH7GZVx9RG+Vg8bYW08FJ0MgGP44=; b=NNbn5tZXvT/gtwUtWsp5Jd0qGi
	rgbErudDtMVN4jdjlbXZBHvrfgDd3iMbu7wRgSK6O5NjvJdENfN6FEJsiG/oF0Vh
	DMxL/pjvqAV4ZttKwexKJ92Jsljnkxl0wZAzWLjn5vJ2CR7jpTyNiUdyvI9c3N4o
	4qz+XJ7daSREUQiTGN48fsmNTrVC8KOtrH0owCQ4vrbTqOxG3arGj2F3xmBHmnBB
	c2O6pKtNKwx+6xPUO/YvteorHIXzyc9pBqnB8gPFHDFm1iggok+R59EKPH/f3QAX
	w/olpdibNoulog6TqIR6mfrCrXRd+hHjnIaqL0gQF9/T4Y8Raue6jAHjOv2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1713287536; x=1713373936; bh=epw2hn5aZdkZ/amDH7GZVx9RG+Vg8bYW08F
	J0MgGP44=; b=cWWEan6A+g5jL0lXsK2ybQ9unEe/duGyllIOqKFK3yeJjFarjen
	W2qkjpEXgGwc0DYDLYdE2NCAvJKQ5vf+fpdF/7OKi63UcSBku5kCV320UlVxucGr
	WECyN/HXDE0YkHxQ1Qa4p47+QaHkk190Jc6ush0S2rSOQBHIeOnguHrOMBVg+4hk
	2np2ySWi5E/3xOcJCYahA2tW0fYjW7VBffPEKBcl9cJDnzkPIBze/cq0vfyyJSIW
	r+cKcqvhWYSln2ms+uveT8OyzqpNgvNDJVsylOdoxLbr2iKisgOGODHiH/42GwU9
	/GNQ+qgnl5LJSzfzcuppYwWtcwCbt+HQ3bQ==
X-ME-Sender: <xms:cLEeZttwSLPbRoRpHa8bg_pqd0ZuOfxmH86mw39YcsztV06qPSt6dw>
    <xme:cLEeZmfrFqeqoAOHbvZLRPlZn63esX6otVSSSNQ2Y25hhQQswycrZV-aCXz1ZkS-o
    k5nCqPiQKapCjO5SK0>
X-ME-Received: <xmr:cLEeZgwdlQi-ifDbZSzeEGbqfHkIobbIz8Gy5rBucRFxyx-OjZqxnE43-PDk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejiedggeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttd
    dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
    mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtie
    ettedtkefggfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhm
X-ME-Proxy: <xmx:cLEeZkOSiRP-dFQ6LRXF6hIZylulZnVI583Tim8TrcnFn0j30vKC9g>
    <xmx:cLEeZt88Axd5W9TxaW0ia4PUpwQc5pjfdg2juPlvh4CbYKtEx1bE4A>
    <xmx:cLEeZkXhi7V2zH-zPrQEgnCHR5JhSU54CbzhKj6VRVy-bnALUzGVOw>
    <xmx:cLEeZud5LO0JaILUZ9XokOjkhLoYiGPUOwKWAvYq9oVX0Yp2lFj9gQ>
    <xmx:cLEeZvmCmdJ363oNTU-fDu-0Tn_5RzV18Nh7IT94xEMLV8vRVqx1cV2P>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Tue, 16 Apr 2024 13:12:15 -0400 (EDT)
Date: Tue, 16 Apr 2024 10:12:14 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: speakup@linux-speakup.org
Subject: How Can I Enable Speakup in Arch?
Message-ID: <5f590a48-de70-df83-f932-7c8b45f20c9d@hubert-humphrey.com>
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

Hi All: I am out of town on a laptop, which we recently switched from Debian to 
Arch. I wanted to try Fenrir as it has some options which I like. However, as I 
am mostly reading my Alpine mail remotely, I am having alot of issues which I 
can certainly bringup with Storm. Meanwhile, can any1 please inform if there 
are easy ways on the fly of switching to Speakup? I just ran a locate, found 14 
Speakup items, including modules for 6.8.5. I realize at very least I would 
need to hit an insert+q to turn off Fenrir. Thanks so much in advance.
Chime

