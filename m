Return-Path: <speakup+bounces-494-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BC15C590705
	for <lists+speakup@lfdr.de>; Thu, 11 Aug 2022 21:36:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=OZx0okR0;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=XqYUEGLM;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7B3C2381904; Thu, 11 Aug 2022 15:36:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 651793808D3
	for <lists+speakup@lfdr.de>; Thu, 11 Aug 2022 15:36:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B1DFB380937; Thu, 11 Aug 2022 15:36:25 -0400 (EDT)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1836E3805E2
	for <speakup@linux-speakup.org>; Thu, 11 Aug 2022 15:36:24 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id D5EDC5C00F8
	for <speakup@linux-speakup.org>; Thu, 11 Aug 2022 15:36:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 11 Aug 2022 15:36:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1660246582; x=1660332982; bh=9m0VLan79N
	F44aiQaST2gY5crRsW53uIoos6onXROec=; b=OZx0okR0eTyar4tlMsIiZnv3uS
	beUYcCt5DCTd88+zJkwDJRWLJFE0Bja5iOjxXpIiFKJwlpNzbem3B8ifniD+4tDv
	W5V6WKLewqcVPo6VFzbGwBEQZ+fpPxA1ebCw+LqGXVRdVdKElFbCRmUF3tBvMucu
	redFsvy9uQ+rjurPm1Lle4dlQLT16HO2TJK1mhv0IPCFEUYB9j3oZOFxTr/KJVFS
	Nm2mzPdXF/cBQajc2DcAijvSQIe+zm2dP5cOAgrMPFXe4TEQ+uZHItzxw56JyVbJ
	F1QwQWumH81gTulhRgr5eGIS9n+H0bAw8Hrxu+H/FqzqfDSdoBDyGfI6/Qzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1660246582; x=
	1660332982; bh=9m0VLan79NF44aiQaST2gY5crRsW53uIoos6onXROec=; b=X
	qYUEGLMpj5aU9N3mmdJ6e8jAIRNyMpte188ltIIrjSRxOllj5vL1d2mpsOm+2R/c
	yuxnpHgkGUmS1ICA6MZRGPdBdUj8JmadeswuNSxi1SLpLxysqXglot6LN6LIitAJ
	RTeGsaWZFO/TC2K47W67fZsElt0LNFh6eqwy/w/A4gct7ca+t01+d1HXb0l1dn0k
	2mYaqvq8Geh1GRx1B+4FptUUOTJ+qhiE6rF2AjK5fgQju8pz9pzwA1pYF8xHQaaC
	RQ0ZbIcvuyD2oW8+PLKnKXFLExEFLnUXp7J57PY7tCoL6qRLU5mpcXHl4v+J4nCX
	LhzD4BSIyS3TKGmVtTEXA==
X-ME-Sender: <xms:Nlr1YvlYNM2g-d8jVcHVpqyukIIQJx6jV4a061Kk1E5ZV8jNTystyw>
    <xme:Nlr1Yi20u6IvYY5S1kHy4KVe6rLDf7vyantTyvR-yOxNmiT2ENH0rBhOz-ylR6uCZ
    n1hMu1OkcclW-gDuYU>
X-ME-Received: <xmr:Nlr1Ylp9qATQg8CfL6NHZMfcMkMxJkggMAx4mksmnT-UC9ojKCd45yOmYu3HdwQgYFbgOCTwefRHbuPhJBUP7hxXTlHtfq83eg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeggedgudegtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtd
    eiteettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomh
X-ME-Proxy: <xmx:Nlr1YnmnNzzbamQ_b-rwXuSE2UAQPu128k6kR2nFvb9nxTU7Sth7MA>
    <xmx:Nlr1Yt3I-DF5S4zFM-U_8m7pmasuxAaPTCBFe2MGOXVGFSPs78K7BA>
    <xmx:Nlr1YmuwBh7FJoU-wPDw0eAaMpfeaM-OzwgpayGAqRMi877mxHjpKg>
    <xmx:Nlr1YqhfX_zEsZmT9M9d2riGFUBvp29USsrTW1O4ru1uWrFEQjGMAA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Thu, 11 Aug 2022 15:36:22 -0400 (EDT)
Date: Thu, 11 Aug 2022 12:36:20 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Punctuation Settings Within Voxin?
Message-ID: <b75b3007-6ad7-0787-5b62-a1b22bbd7b77@hubert-humphrey.com>
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

Hi All: This is rather puzzling? In all the years I've enjoyed listening to 
Voxin on a laptop, I never had many punctuation symbols to waste my time. My 
prompt-and-the host name is "dance" Eventually I purchased 2 embedded voices 
from Oralux, preferring Allison. But listening, I would hear every single 
colon, tick, question-mark, and dash. Gilles says dictionaries are only 
available for regular IBM TTS. So, I switched back to this older voice, but 
still punctuation is still wailing along. We modified dictionaries, but they 
had `no affect. Here could be a telling clue? In the Speakup pannel, while 
volume announce numbers as you alter them, an only way of changing levels are 
in alsa mixer. Obviously I have both reading punc-and-punc level on 0. When 
punc level is on 3, my prompt says "dance tilda colon grater than" Belo that 
setting, its "dance colon" I looked at files in /etc/speakup as well as i18n 
many are on 0. I did ask Samuel, also wrote Gilles from Oralux, like others 
advised me to read the documentation. I did. While, sure it would be nice to 
enjoy dictionaries in Voxin, as Speakup doesn't have these. I would just be 
happy enough to not hear any punctuation. I even tried running "fenrir" which 
does have a pronunciation dictionary. I couldn't get any speech in Fenrir, as I 
don't have an adequate way of switching among Speakup-and-Fenrir, as I've heard 
they don't play well together. Any tips, guidance, and suggestions would be 
most appreciated as in 1week we are going away with this laptop. Thanks in 
advance
By the way espeakup does not have extra punctuation.
Chime

