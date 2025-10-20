Return-Path: <speakup+bounces-1440-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 189CBBEF5BD
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 07:33:49 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=Ha4IpkiI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 93126382A09; Mon, 20 Oct 2025 01:33:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 729DD38222E
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 01:33:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D6E93824FF; Mon, 20 Oct 2025 01:33:41 -0400 (EDT)
Received: from mail115.out.titan.email (unknown [3.208.11.156])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BE85838222E
	for <speakup@linux-speakup.org>; Mon, 20 Oct 2025 01:33:40 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cqkcF4yV7z2xBj;
	Mon, 20 Oct 2025 05:33:33 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=FvKNsbUsOqAPk9E4V+8gqTfzD20Yboy+is67RjZb8jc=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=to:subject:date:message-id:reply-to:from:references:mime-version:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1760938413; v=1;
	b=Ha4IpkiI2/rlkwMly8unpex+zQdt8FJ48jOvph1AnCz0Gurt+yKY6ps3fr0PZ/5WUpDTHJuD
	WCwQKppcm0uGDBJpfUTlCxPK05k222AygLU/KLxLq2pkU5QL4Dvb7h/e8/BVYEZI2aB4ftJku2I
	TSFkTCvVamFt509eIJwy8xJA=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cqkcF0XXJz2x9p;
	Mon, 20 Oct 2025 05:33:32 +0000 (UTC)
Message-ID: <0b3101dc4183$1346cac0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: <speakup@linux-speakup.org>,
	"Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>
References: <021401dc413d$e3e246a0$01ffa8c0@nucwin10> <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr> <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br>
Subject: Re: Switching To Voxin
Date: Mon, 20 Oct 2025 00:33:27 -0500
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
	charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1760938413513724186.9701.3141376565667347231@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=aN4Kqa9m c=1 sm=1 tr=0 ts=68f5c9ad
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=NEAV23lmAAAA:8
	a=G1MHl-R2AAAA:8 a=qPKtzgQbAAAA:8 a=lPOMcNn-Gnmsf6nzbe0A:9
	a=QEXdDO2ut3YA:10 a=0_cEEhCvB34XW5aA8UtH:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I've been looking on-line, and still can't get espeakup to use Voxin.
Voxin works with spd-say, and with voxin-say.
But espeakup is silent.
I tried:
espeakup --default-voice=voxin
and it did not like that until I used sudo with it.
But that didn't fix the silence.
Does anyone know where I can edit a conf file?
I've edited /etc/default/espeakup to read default synth=voxin
I don't know where else to look.
Thanks.

Glenn
----- Original Message ----- 
From: "Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>
To: <speakup@linux-speakup.org>
Sent: Sunday, October 19, 2025 4:39 PM
Subject: Re: Switching To Voxin


Hi, besides speechd-up and Fenrir, I believe Voxinup, developed by 
Oralux, still works.
https://github.com/Oralux/voxinup_install

Cheers,
Cleverson



