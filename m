Return-Path: <speakup+bounces-521-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 778345917EE
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 02:59:23 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=sulG9kCO;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=Qnq7Wsih;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C7F5838376E; Fri, 12 Aug 2022 20:59:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A79CA381912
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 20:59:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8C8143819AD; Fri, 12 Aug 2022 20:59:14 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6591C38190D
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 20:59:13 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 00D0332003C0;
	Fri, 12 Aug 2022 20:59:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Fri, 12 Aug 2022 20:59:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1660352347; x=
	1660438747; bh=Cv2O/nRG1AWJ8UDW5r9zgn0YlXiMNWPrOzvA2Z+iCz8=; b=s
	ulG9kCOu1EFW6BTLlKb3EJUAuyhxkgeMCEq5UDb95u3O27K/Cgon8oVYlHbE9ux+
	can6AmaR+lo/wJIT8sKwXXLRgcMfdMRbKOSFp+BXTvckhbLXDi1GOuisgnob7iwc
	WStVzRsoIlpGeRsDqgEaxXewN7RX1L6pSFx/ZyR5m0P9hHBCDRoP98TYAFPu5lap
	STlN3EYVnbBvWQK6504YA4CYPFaKBFBldD5ikd7qbl1Ogxr804+Y7PXx857+smCF
	3DA/u41N3xRYpu/ER+gSPwqmJwZqoAefjxIecxFl5rg7hQrxNibLM1Vi567Mej0N
	U0W4s+5nBi3igaSwUKBEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1660352347; x=1660438747; bh=Cv2O/nRG1AWJ8UDW5r9zgn0YlXiM
	NWPrOzvA2Z+iCz8=; b=Qnq7WsihXA9NiR37I1bjlRYWkWTSG0WzMlQft6RXcqKv
	S6vzfXwFDUYZcV5R8plSg9ZUy8NWiZyBiIsjbJ0tSYyTFSnGij1CVjZGOiocIHKt
	Ibo784iKlDRz8BqmmwcEpoP68S8Ku2Z+m1wWZW944b8xuI8uWYAevucMQSjKk2B5
	kBAusD6jyc+5+J2IgI07Z137YZWtLduApEKXNM5P+FgshHZzwWKTMXTRykLrjZzC
	RHznk4aQrrnovaZUwJakRXD1NckLre51X1U6EEiVWz04V5kZIallDh1gd8a0atGo
	lUkcf2O6uuAbRwW0MyJJYHw3y9O5rOHZd56hVkkxDg==
X-ME-Sender: <xms:W_f2YiegOSloYISrsVDp6duOnhYznYuyhe8T6FL2Jkw4dzvDFiHIxw>
    <xme:W_f2YsNWVhGLUK8Ubb-iiA3nArf-5mCeWgN8xs26XK5CJ3Pf5HindzN3OD2-v77wf
    EyhhhxW1iSkIR1gu5U>
X-ME-Received: <xmr:W_f2Yjh72gC1GvuR7RpTTRwA184V_d2bsIIKF3IBBaI4fGLiOmUfItg8pFPR9ub-GrejmOecX_2bcqx49Vn3ADS9v-_7NVksTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdegjedggedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:W_f2Yv8yPhQi3hMcIxEvA6v1J2tHdtuOALkYXVSWaU_fNtb6xkhefA>
    <xmx:W_f2YuuUpOEEkfJHffVOKJ5L-eKmahSzQWqgjGjH3jvhO0udmT-VCg>
    <xmx:W_f2YmEmaYQIePodO2_NW2RZY_51X5W74AMv-DwFs1XUDv_I5P5o9A>
    <xmx:W_f2Yn40d4amG-Y64I79GQYPKAohp6YPQx2QyYQQBfPM_How2JDxvg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Aug 2022 20:59:06 -0400 (EDT)
Date: Fri, 12 Aug 2022 17:59:04 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Jude DaShiell <jdashiel@panix.com>, Matt Campbell <mattcampbell@pobox.com>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: getting audio for Orca and Speakup or Fenrir
In-Reply-To: <023c01d8aeae$89677170$80ffa8c0@Win7VM>
Message-ID: <416d18b0-3e97-5dc8-0130-3cf17c77dd62@hubert-humphrey.com>
References: <021801d8ae89$220560c0$80ffa8c0@Win7VM> <eb84963a-90e0-c24c-4215-4d0dde3390d0@hubert-humphrey.com> <021d01d8ae8c$39e82800$80ffa8c0@Win7VM> <8295e54b-fd16-c53f-f3f7-e9a09c7a62c6@pobox.com> <022101d8ae8d$31446fa0$80ffa8c0@Win7VM>
 <a5912728-3489-97f3-a956-af918d5b5e2f@panix.com> <022801d8ae8e$34e65910$80ffa8c0@Win7VM> <7fdaf18d-8345-8dab-79fc-a045d2cf8d7@panix.com> <023c01d8aeae$89677170$80ffa8c0@Win7VM>
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

Hi Glen: I think you would toggle a mute with an enter or maybe space bar? 
There is I think a Python program, I think written by Willem which lets you 
scroll-and-alter settings on each sound-card. I think its called "sam" I have 
the binary 11KB, but not sure I can find the installer?
Chime


