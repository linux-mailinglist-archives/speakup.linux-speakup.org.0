Return-Path: <speakup+bounces-1505-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 12E02D389E8
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 00:28:42 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=bqtQkabY;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=CuU+M6Yz;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7CB9E381908; Fri, 16 Jan 2026 18:28:41 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5EF6C3817F6
	for <lists+speakup@lfdr.de>; Fri, 16 Jan 2026 18:28:41 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7AE943817DC; Fri, 16 Jan 2026 18:28:35 -0500 (EST)
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F07043817DC
	for <speakup@linux-speakup.org>; Fri, 16 Jan 2026 18:28:33 -0500 (EST)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id 5A4841D00103;
	Fri, 16 Jan 2026 18:28:31 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Fri, 16 Jan 2026 18:28:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1768606110;
	 x=1768692510; bh=uL8YKOy5LZHxYrWhLD3UaSPHZDJgS90KMjvGtDjtq/0=; b=
	bqtQkabY1Y0pgUYVIa2i5ZWKraqHHnls3bg2ek3gBCqTLfAEyL1rfbn/bDc0TUNX
	puf/fNmSD05eax0jV0jpKoHuo4E1wNM1zSzUZSKA6U3s5q83nDDoQfsx3BSVQYcs
	YZWfyKQ+3ghzets1Lmk2LJPKkCATg1CNlgE+v9MaFKG24TQNkhka0W1BB8pGogG2
	CP2DGrHlA+Y3ZZ1WsENaZ4eUoCqNp4bmDiMGIEG3FQ01CqBOi8la1bUK9099JKt3
	bdGCvhWkdi28JEQJ2yAEmPHIE9tx1by3yLKsLsaAESLIf98h1HXAEUSICfnI7ydl
	sJmp6Seu6QrJf+ckrvFWtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1768606110; x=1768692510; bh=uL8YKOy5LZHxYrWhLD3UaSPHZDJgS90KMjv
	GtDjtq/0=; b=CuU+M6YzrU2zTfICCB0oHydqeyiTHIXBXS9V1ycRZRxjAdOP+5a
	VXdb3wC4BoR4Tqt4/PWaqxunYDK1a7kWuGgcpobHrQlc1or3rFA4yCOEmALuI2i3
	IsjWVN8RXrHhiaQZcNbYq3udemOo1XpW9TX78KUZHk0+iCB8o+yToI90hyM6JyZW
	qjkGAKxS+F2yHctR7Pcy1mBneCgNfCBfZrnfXqCWmVnxX3GTjOfK6o12dHKZVdLb
	3FASDK6cNfQXQiadB1pNCRE3Wj3wJVJcehlak6CBH8Wa1KkL9UqF9MEPCzCLIhvo
	BuYcafyDaN0GInU78Lbu1Y40180g4yHhr+A==
X-ME-Sender: <xms:nslqaTJy0azVQ7p-tQX5woZJbQvRJHjEWn-YLcFMxc0yQpRg3K8fWg>
    <xme:nslqadIqcjzhtZnYzln77ar6SRdoJjyAr7EKx3d8xa1dmCy62Z5dkl_ujo9UOQOeG
    xFAgEfCoxI6tHfxrDuPrhIUVN20IDKR6JsQS5iS5OMX5rgYr0hJ>
X-ME-Received: <xmr:nslqaZXd9RjU0QIKneiiu0hT2AZQDasOE9DvBum2S0MChDKf6d4QgQzxVXmm>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedtvdeiucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfj
    rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
    frrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffef
    ffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphht
    thhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegtlhhulhdoshhpvggrkh
    huphesphhoshhtvghordgtohhmrdgsrhdprhgtphhtthhopehsphgvrghkuhhpsehlihhn
    uhigqdhsphgvrghkuhhprdhorhhg
X-ME-Proxy: <xmx:nslqaXh_-Sje-j_OID--1w2tMKQD7mD0vZMQwYdiL3slEccLzuJYVA>
    <xmx:nslqac-TJxebidPXozVFEzICBJL4tpQnCna5iGD73W_EikZtDIYoeQ>
    <xmx:nslqaZDUEc1LjgvK0XdnHK_Jnf9fjhNSjhRxNeoUbCeHhPiMGGqYNg>
    <xmx:nslqaRKU5QXmKqc_rsa41whcjX4piei31aHDw6oQkns7f9U_w8OCMw>
    <xmx:nslqaVu0IgSo1DL1Eik-4QIEDWsN7ihF0OW7oDUbm2YtLqLwfa85vzQ8>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 16 Jan 2026 18:28:29 -0500 (EST)
Date: Fri, 16 Jan 2026 15:28:28 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
In-Reply-To: <0b0da1f0-bedb-440d-aeae-5b0d1c93f751@posteo.com.br>
Message-ID: <8bc9ea54-30f7-dcd3-f162-13e54cb50f1f@hubert-humphrey.com>
References: <aWpRKvcLNxlSLfbU@A11y.NYC> <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca> <0b0da1f0-bedb-440d-aeae-5b0d1c93f751@posteo.com.br>
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

Well, several years ago while running Voxin with Eliquence, I would experience 
overlapping speech. Now in Debian SID with Allison I don't think that happens. 
Certainly on my main machine, I have never had that with a DecTalk.
Chime


