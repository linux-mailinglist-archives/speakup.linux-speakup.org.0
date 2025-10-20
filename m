Return-Path: <speakup+bounces-1456-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A3691BF2FB3
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 20:43:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=LvXPozgg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E933B382B67; Mon, 20 Oct 2025 14:43:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C9771382A68
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 14:43:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 69AE4382A68; Mon, 20 Oct 2025 14:43:22 -0400 (EDT)
Received: from mail71.out.titan.email (mail71.out.titan.email [209.209.25.178])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 06571382A42
	for <speakup@linux-speakup.org>; Mon, 20 Oct 2025 14:43:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cr47W6M1Xz9rvf;
	Mon, 20 Oct 2025 18:43:19 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=Ey7bPMvW+2ErBMwZX0lRahTrJ07b2USjSS5/O46Gnl4=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=references:mime-version:to:subject:reply-to:from:cc:message-id:date:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1760985799; v=1;
	b=LvXPozgg5KG29SDA3MqXs0saxsazy/aGdjCl5cBnpVGdtiaj4lD1QIKA9OMiz8UbppcVNZC4
	8oXH0ksqJ17fBjIF0ZSbaCWnlhD1GQzA1HoqHbXLFR1vYvEJNE2L6RZVHfSUJOXraXPPSTQVefp
	wVUtN3JdwRH2hlKT7L1QZlkI=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cr47W3J58z9rx0;
	Mon, 20 Oct 2025 18:43:19 +0000 (UTC)
Message-ID: <0b9d01dc41f1$67baa040$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Kirk Reiser" <kirk@reisers.ca>,
	<speakup@linux-speakup.org>
References: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10> <925db357-1d21-2b65-7882-45d0a49911cf@reisers.ca> <0b5701dc41ca$5edf3d40$01ffa8c0@nucwin10> <ca477f4f-952d-93c0-fc67-56a7c24f8f24@reisers.ca> <0b6401dc41e2$13de43a0$01ffa8c0@nucwin10> <981a2802-0dd0-5a10-3b4d-9fb4dc8ca8bb@reisers.ca> <0b7001dc41e5$edf14300$01ffa8c0@nucwin10> <c92501f4-a4ab-08d9-420b-aac383162dfb@reisers.ca> <0b8601dc41e9$06ff1cc0$01ffa8c0@nucwin10> <0b8b01dc41e9$b49d8600$01ffa8c0@nucwin10> <0b9001dc41ee$fd34f380$01ffa8c0@nucwin10> <7b79b410-05b6-c547-ecba-59cd1be2cb9f@hubert-humphrey.com>
Subject: Re: Voxin With Espeakup
Date: Mon, 20 Oct 2025 13:43:18 -0500
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
X-Titan-Src-Out: 1760985799711604940.2350.117497480792527817@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=V5uH0fni c=1 sm=1 tr=0 ts=68f682c7
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=EUDjGK3pAAAA:8
	a=rhghyxR7AAAA:8 a=qPKtzgQbAAAA:8 a=u6nQTewsHrciAL-datwA:9
	a=wPNLvfGTeEIA:10 a=7CWdE0Xi03QsYozaNcnV:22 a=3POYzjO64X90oOl-TX4z:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=P3K-DvM3-jjlTNsN-mCd:22
	a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chime,
If you mean the file:
voxin-installer.sh
then yes, that is how I always install voxin.
Thanks.

----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY ??" <glenn@ervin.email>
Cc: "Kirk Reiser" <kirk@reisers.ca>; <speakup@linux-speakup.org>
Sent: Monday, October 20, 2025 1:34 PM
Subject: Re: Voxin With Espeakup


Hi Glen-and-All: Have you gone in a voxin3.4 directory-and-run its 
installer?
Otherwise, like you did, there have been times I had to kill-and-restart
speechd-up. Last time I traded messages with Gilles, he was going to resume
working on Voxin this Summer.
Chime


