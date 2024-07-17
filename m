Return-Path: <speakup+bounces-1167-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6FF6693406D
	for <lists+speakup@lfdr.de>; Wed, 17 Jul 2024 18:29:11 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=D5yib81G;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 05243382524; Wed, 17 Jul 2024 12:29:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D8C4F3821E5
	for <lists+speakup@lfdr.de>; Wed, 17 Jul 2024 12:29:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B8855382247; Wed, 17 Jul 2024 12:29:03 -0400 (EDT)
Received: from mail81.out.titan.email (mail81.out.titan.email [3.216.99.59])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 76478382057
	for <speakup@linux-speakup.org>; Wed, 17 Jul 2024 12:29:03 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 44732E0014;
	Wed, 17 Jul 2024 16:29:02 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=Fz6ihR2p95MrrHfyrNSXbbpiH3hh+v1erH/hVRWVs2k=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=reply-to:from:to:message-id:references:subject:mime-version:date:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1721233742; v=1;
	b=D5yib81GM3Ke/B8LsZEy+3noj5lPl5LtKO1GJC46jUWPL7HEbJGLaI3tdK3F7e71HP2aPbde
	KofzvUp/H8gora5uo+ruwDyY4GWCqs76uwXe5V2vhRtw/kPgzZPlnYmiuqScq321vzjhbGgEuEL
	L8QZT6ArQ7LaW+iZnl1L/8cE=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id C5E8EE00FC;
	Wed, 17 Jul 2024 16:29:01 +0000 (UTC)
Message-ID: <010301dad866$6ebfac50$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>,
	<speakup@linux-speakup.org>
References: <d02e54a3-831f-ae1b-6a9c-e2d85ce4ad21@hubert-humphrey.com>
Subject: Re: I Would Like to Run Piper TTS?
Date: Wed, 17 Jul 2024 11:29:00 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1721233742123009120.27084.6742078686301149880@prod-use1-smtp-out1004.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=W6Y+VwWk c=1 sm=1 tr=0 ts=6697f14e
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MjKOEY3Pq9ccs6v1:21 a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10
	a=EUDjGK3pAAAA:8 a=qPKtzgQbAAAA:8 a=eOE6wuYHP7HS4kyULrgA:9
	a=wPNLvfGTeEIA:10 a=7CWdE0Xi03QsYozaNcnV:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This raises a good question,
I too would like to run something other than espeak with SpeakUp.
I have Bullseye, and I installed Voxin Ethan Compact, on a Raspberry PI, and 
I have Voxin talking through spd-say, I installed alsa-base and 
python3-speechd and speech-dispatcher.
I then ran spd-conf and typed in voxin and alsa while configuring it.
It is a bit choppy, but not as choppy as espeak-ng.
But I haven't yet gotten to installing speakup.
Whatever works for Voxin should work with other software synths.

Glenn
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: <speakup@linux-speakup.org>
Sent: Wednesday, July 17, 2024 11:19 AM
Subject: I Would Like to Run Piper TTS?


Hi All: Since it looks as if I cannot run "mary tts" Storm had informed us 
of
another fine sounding engine called "piper" The voice I really wanted was 
too
large, but another reasonable choice was installed. We made changes in 
spd-conf
as well as creating a piper.conf. Meanwhile if I run
talkwith spd
it still plays Voxin Allison. Can some1 please outline steps to run Piper 
with
Speakup? Right now talkwith will switch among Allison and my DecTalk. Thanks 
so
much in advance
Chime


