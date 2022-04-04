Return-Path: <speakup+bounces-390-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A83D34F19D8
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 20:51:29 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=PlxMICOy;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=iyoTIRjf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 43574380D48; Mon,  4 Apr 2022 14:51:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 23088380A1C
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 14:51:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F1C07380D29; Mon,  4 Apr 2022 14:51:22 -0400 (EDT)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E2DEB380974
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 14:51:22 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id AD9E65C01AA;
	Mon,  4 Apr 2022 14:51:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 04 Apr 2022 14:51:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; bh=YfSj1ROI0CSQVv
	JLW5Ywx5jVQzD7OXPN/T/7nzWvkxE=; b=PlxMICOy8R2pMk5wvxQjlTixEdTDdY
	Qw53EywtrMlQhoX8g8pZYd4LXMVpICdEsG0Vtlc2w9iEtG52bkoabrDl0ZKoX/06
	/Oj8W2S1GS3Mf/5Q0KJbQuJwmBWYGUJLYwOBUPU7cZpa9EnJZZqz5spIkEHSVKpE
	jfpoOi8hSMnDbBwa3SfE54sgUImwG0kt0j4hlRd49paeU8FQNPHK7wSJ69Gn4Pha
	RR+2ooZzHgY54i/I9PF0a4gVm2wFBCU0K4NP93ixxoyjs9d9gC7IglaoyaVeBoVv
	PM63rLbPPMVuoOKoBV0iPUhOYH3BsxcCPs3OwEuYXGo/rPF0qlPPtVjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=YfSj1ROI0CSQVvJLW
	5Ywx5jVQzD7OXPN/T/7nzWvkxE=; b=iyoTIRjfKlWPbY1AVTjuvYNI1Dt2wV/54
	b0+s+ActU05SCdEjp6/FvuEtwHKZQuIqWBPLPdOAe6JKPD5rEkOhVyUTly25q51D
	9QiRrFkT1maXokxUQllUv3MGDNo7RlC1HS8Ej1vgElJjYn6uXAqT4iKKmriu+m/+
	h047DltfqA0S+OZ4QCV9LRezgxHj5NxxUy1edlP3Fq118fE+rigga/+VkeHy+hsH
	DEPVWxPIUCOCSbWKFyhT62NkPCvfqAaUF2WuRWPC8HzW4aukqcMfwe3B9FuFNrYP
	N6IAFSFYmvuT0nBK2zW/zJxDioWK6quh3GPDhdipgSHNaVMjp5VTQ==
X-ME-Sender: <xms:Kj5LYpXY8hHR32N8754jDv2srjmZ5fofbakJHYK1YThqL8cSkAJg6Q>
    <xme:Kj5LYpkxTvrhSD-bxOFqW-yJyPVukquvdHa-cESr3q7bi-lo0X8Jc137FHwf6OniX
    WYDbDDHymK_q9dUH3M>
X-ME-Received: <xmr:Kj5LYlbsRjLjMBIU2MaXJUnltY_a5oI_20Ru6aPeg5rzZ9Ovu0bdH4W0f_nyyeMkeRonlk_3Bu2DlZA4eZ6g8VWUlgi6yr0e9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudejvddguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihedvfeffuedtgeeuudfhgfelteelvddu
    udfgleekvedtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:Kj5LYsVQs9iqZRkD5TYMfajh7tbwk-lUmEy-1xSaU988Xr35xXH5nQ>
    <xmx:Kj5LYjkmyuYVfjZck52xak-HbInIjram8bClljEkFWmMNqgpfnTGKA>
    <xmx:Kj5LYpcY3A0wENDTMiEwTAgdlwql79N8jZjckkUqUYrUl5DJ79ssQA>
    <xmx:Kj5LYrvPF3G4AOMfXFkTacYdEjFypRx-mL3TYJ6HpaUqGXawL_p2Iw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 4 Apr 2022 14:51:21 -0400 (EDT)
Date: Mon, 4 Apr 2022 11:51:20 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: "Joseph C. Lininger" <joe@pcdesk.net>
cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org
Subject: Re: How Can I Switch Synthesizers on the Fly?
In-Reply-To: <59e80e78-d905-4e01-3a0f-e85f039fb53a@pcdesk.net>
Message-ID: <46345463-3b91-7db9-8582-f7d3b2cb8ce9@hubert-humphrey.com>
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com> <Yko9zLikCNY1qcDX@gregn.net> <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com> <e4b20df5-5211-efaa-5937-ed214d1ae35e@pcdesk.net> <7da3e7da-321-40cd-5d66-3761b9143e3@hubert-humphrey.com>
 <59e80e78-d905-4e01-3a0f-e85f039fb53a@pcdesk.net>
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

Thanks Joe, I put it in /usr/local/bin. An inquiree? Wouldn't I need to unload 
the DecTalk module before your script would work? Thanks in advance
Chime


