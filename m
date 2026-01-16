Return-Path: <speakup+bounces-1507-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 08F10D38A65
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 00:48:08 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=myWwmE9q;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=AEqdxqJA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8BA2238193F; Fri, 16 Jan 2026 18:48:07 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6CC07381835
	for <lists+speakup@lfdr.de>; Fri, 16 Jan 2026 18:48:07 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9A19E3818F3; Fri, 16 Jan 2026 18:48:01 -0500 (EST)
Received: from fout-b5-smtp.messagingengine.com (fout-b5-smtp.messagingengine.com [202.12.124.148])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 67D723817F9
	for <speakup@linux-speakup.org>; Fri, 16 Jan 2026 18:48:01 -0500 (EST)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id BF3461D00015;
	Fri, 16 Jan 2026 18:48:00 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Fri, 16 Jan 2026 18:48:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1768607280;
	 x=1768693680; bh=ryf43kkOyf3cN69dx3HC+u4Alu6/7ngeEBUILHkM1VE=; b=
	myWwmE9qDG7lPZmxuM9yrBOjPiLeA0Zt6CSL1N6J+5rQktpPhpYNeUW1TXZ3KZvA
	wnI0DMpjAc+zlYw3QzPopWamAzDtYSPxYbIyg2mEIkvCbZO2NcJIdQzlw9VYzbEN
	B8rLGmqppCnW2v/pOpWBfqL2fd1wD6QL7S6bpM/S+EWAEuhE3K6uZ6iGo5iQ8IuX
	orjUJ9DpTGSA5bd6TYwlwl99jZFkFLGUwDu/uzccrYgAK6KFEDg6kPhqwRnFj4+1
	jSEbnmpbSZTawVNPtMPONRXR8uFlYu/X+smaX1F5SNg9ojpLrfB9/9B7g+uFi+7G
	BU5yu+P0DYMnuRT+Q4qaWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1768607280; x=1768693680; bh=ryf43kkOyf3cN69dx3HC+u4Alu6/7ngeEBU
	ILHkM1VE=; b=AEqdxqJAtIA7CK0Z06BJzf03ga+a4bJnDVYY7sgLSHlIfMyMNrn
	wemX+oW0KC/cy3iUjm7Q054OLarP/8U/T/06DA1b+TTAvqbSedyIzlj3q1l2sODU
	u6LMDyBg2mY30suSwaNpONzgGNZIIL/2vWpUY/NPBEdgx3wXubFCUPTGZZu+nLvv
	ZW91SPvlT6lhKaGJb/o5L6d8ZQtblqgTsdHfl5cnPR0c0AjX0qjS9vi/iMvlm6H/
	EWoVGdChr8S4+FEm5MEN44V5s9aREDV3/I2dSFrqvVUf4YU5w/kEnmwKSczYKNHn
	Yl3upMGfowSdso+ZE9JWji68YDRQiA2N73g==
X-ME-Sender: <xms:MM5qaZkL5YLAm0TK_U-TfvPcsyWPCeXMTHcUo3ddTbOveqxfOi-HEw>
    <xme:MM5qaU_nju2DHO_jkZds9UIW6zXBn7V9dPRmUadmUigvM03fIC8orUOByxkRaXnVw
    kHQEHPYPFnzNBV1M9znPPOOM4dtBeLKlJD3zYCrJKfnGg6tNSmA>
X-ME-Received: <xmr:MM5qaXmAULbpiownxOOaV8JxLZgdnfskikJepv3DwqNrWl0VTGNEoA6jzMYh>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedtfedtucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfj
    rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
    frrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffef
    ffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphht
    thhopeegpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehgrhgvghesghhrvghgnh
    drnhgvthdprhgtphhtthhopehkihhrkhesrhgvihhsvghrshdrtggrpdhrtghpthhtohep
    jhgrnhhinhgrsegrudduhidrnhihtgdprhgtphhtthhopehsphgvrghkuhhpsehlihhnuh
    igqdhsphgvrghkuhhprdhorhhg
X-ME-Proxy: <xmx:MM5qaR0qbrT587PrJWmLxewVKFxX1-O0TXJSpVzbz5_XAKbMaYnWNw>
    <xmx:MM5qaSoKZDPByMNRg9-Ux3O8HyJFTFXSW6-ZbuANuka61kaUuF0NWQ>
    <xmx:MM5qaecdkmbf4LTf2g6OxdBhQoJ2_UKyyGFe9ws8F4dDRN0vMM2cMA>
    <xmx:MM5qaRp7SYMM8570ouTSsgXCqu6VdVDSfT0dcK4rG1VqRwIgfpjHAQ>
    <xmx:MM5qaV6Mu0qEN6vBL84htoNH32u6JW8Rw05YonOmefvKBEwt2uBeMbw3>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 16 Jan 2026 18:47:59 -0500 (EST)
Date: Fri, 16 Jan 2026 15:47:58 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Gregory Nowak <greg@gregn.net>
cc: Kirk Reiser <kirk@reisers.ca>, Janina Sajka <janina@a11y.nyc>, 
    speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
In-Reply-To: <aWrM5ulF9rgeEMRW@gregn.net>
Message-ID: <6ab6133e-a875-518d-c206-9ce102f21805@hubert-humphrey.com>
References: <aWpRKvcLNxlSLfbU@A11y.NYC> <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca> <aWrM5ulF9rgeEMRW@gregn.net>
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

Hi Greg: That issue of garbling speech. What I've noticed, again with a 
DecTalk, especially in Alpine, seemingly if the mail went past 20lines, also 
with either quoting or an original message or an url.
Chime


