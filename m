Return-Path: <speakup+bounces-354-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B63784A31E2
	for <lists+speakup@lfdr.de>; Sat, 29 Jan 2022 21:45:27 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=WkZsMhCH;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=UvsSLJC2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 689F8381412; Sat, 29 Jan 2022 15:45:26 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 54A6C3807A8
	for <lists+speakup@lfdr.de>; Sat, 29 Jan 2022 15:45:26 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 21184380C1D; Sat, 29 Jan 2022 15:45:20 -0500 (EST)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 78E923807A8
	for <speakup@linux-speakup.org>; Sat, 29 Jan 2022 15:45:18 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 5865E5C0045
	for <speakup@linux-speakup.org>; Sat, 29 Jan 2022 15:45:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sat, 29 Jan 2022 15:45:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm3; bh=I8U2eF4Re/YCOFnsRFzgKkbPXfl5d+6RMmPa3u
	6PILU=; b=WkZsMhCHAMtXusaVoBzuwnsXI4DzURH4Gq5+eD83NL1/vg6mEJ6GV8
	muNUeaqxtOgJhsviIgYG7RfS2aADhjDOBcHlNhr6B+AuibWdfJ7K6XM1ReiauJD/
	KCFEi3cNE+RBsZOIU8eeb7Des/NXNhFqPfLYnWmSzt+aL8f52rDehCqNQBc8vGZa
	AeNoMUtKliczI8n1cxjxITEIamML8ocT/bOMdUhjHgtzLPEEuPUo654va43cebXR
	ieFvLGqP+HLRRucwuuo8A/HACAoOanEm7CFp2uAny4JObTDI8zinI5H8WecpZaL1
	tDEYCOCcMvBJMXOqewmF1VuwbADPnrcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; bh=I8U2eF4Re/YCOFnsRFzgKkbPXfl5d+6RMmPa3u6PI
	LU=; b=UvsSLJC2li8Q26lkBuYzMh8bwdUZFY202sIqceeA3SmE50P9LbtneM9Bh
	jJ/PAddlMmKbSO8ws5GnltI++qmGp32n3E7B3jP2ujC5pn5C3QzpseuaJsQ4Z15z
	393GXaVzhYHxrHmkqUa0cQmfDFphfTBNEouqBO9sShPaTJu5z1ZGuhM3rgZmCsKF
	q+yNEejYpdylzyX7BOMOeyHjaEsgXm9HjLNQh9VirP9jUoY4ovIufgAtGx7DtocJ
	9AiA2OOLMLF+NnElD4M64/M3cb1zLrWSKT7HSMjFwEshvPc+Kv39td5TST/vb0BO
	L6j5qV00mm5bjg7lvE+JXh5nr/5uw==
X-ME-Sender: <xms:W6f1YSLyFubdy4viBU9kE9tQ50JNuCg5xlTPW6KjVEEqN861rFu0bQ>
    <xme:W6f1YaLAnZA_YW9qOeJ04qmxduVjpsG6-hEu7UAv0k6BaDx4_W4YVamhzDTHLzEdW
    1Pl7vdUKP79UNF5ZFM>
X-ME-Received: <xmr:W6f1YSvp9FZSXQM0XX5VbbybgoqQtEaXzs_kk1lbexeHQuEhkzRrHGMBmhpeUbhf_KL_4kwE9dNNj0zN06dpL9y-F49xc9UPSQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfeejgddugedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttd
    dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
    mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtie
    ettedtkefggfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhm
X-ME-Proxy: <xmx:W6f1YXZVS5J6IGekXRAySxDI_Dp9G7zzeUOnNcQcz2McOlxu1VWhDA>
    <xmx:W6f1YZYr51Hua-AU0kb_GxR5uI6QI8euqoBckHuU0Mv_XGG-3Py6cQ>
    <xmx:W6f1YTDvxFOGfJKPCj5exe0QgCoHFzz2aqe5nwPKdypUMcA4MUNhCw>
    <xmx:W6f1Yb2lKISYeBpMTy8u3ANhE15qEMVNuswZTUh9xSN5b1j4lGRwbQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Sat, 29 Jan 2022 15:45:14 -0500 (EST)
Date: Sat, 29 Jan 2022 12:45:13 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Maybe An Odd DecTalk Sequence?
Message-ID: <f859deaf-1e72-8a5d-5096-c011fef86544@hubert-humphrey.com>
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

Hi All: After restarting, I advanced from Debian 5.10 to 5.15 03  in SID  I was 
having issues with flush time which I think could have been set as lo as 10, 
but now only 100, slight perceptible difference when cursoring line-by-line. 
Anyway, now after either typing or reading an individual capitalized letter, 
the next charictor even if a space says p along with whats there. So if it were 
a capital i followed by space, it would say I p space. Unless this is some 
weird charictor set issue, I suppose it would be a setting in the DecTalk 
drivers. I am also figuring its related to DecTalk as my laptop, same kernel, 
but no issues in Voxin. Thanks so much in advance for any suggestions.
Chime

