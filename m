Return-Path: <speakup+bounces-1439-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 13BDEBEF352
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 05:52:44 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=C/e956v5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A18CA3829BD; Sun, 19 Oct 2025 23:52:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8245B382669
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 23:52:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1E5DF382651; Sun, 19 Oct 2025 23:52:36 -0400 (EDT)
Received: from mail121.out.titan.email (mail121.out.titan.email [54.208.145.58])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D47E6382226
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 23:52:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cqhMg29cTz9rwN;
	Mon, 20 Oct 2025 03:52:31 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=1Q0HtbjdrrvC314KIOcHC4vj5W5x9ALrU0jP90YVeCc=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=reply-to:from:subject:mime-version:date:to:references:message-id:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1760932351; v=1;
	b=C/e956v5ooXPMCB1YiAfWjE1yH0zvuJ1f450zrE8NnO6+xSlYop1F0ys8vyGm5W3VQcQiIBG
	higvwUs4kpiqyivAIt+GBxXbAqiBbkoQ69oMLfKeE5zZWITFBU2LfK0d9wrK872pxlBkjyo7Y87
	6tdJZ5MfFw1IrS6VskjNyfHI=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cqhMf6fMqz9rvw;
	Mon, 20 Oct 2025 03:52:30 +0000 (UTC)
Message-ID: <0ad601dc4174$f5d28aa0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: <speakup@linux-speakup.org>,
	"Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>
References: <021401dc413d$e3e246a0$01ffa8c0@nucwin10> <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr> <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br>
Subject: Re: Switching To Voxin
Date: Sun, 19 Oct 2025 22:52:30 -0500
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
X-Titan-Src-Out: 1760932351141585955.2350.9079114015565524063@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=aN4Kqa9m c=1 sm=1 tr=0 ts=68f5b1ff
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=NEAV23lmAAAA:8
	a=G1MHl-R2AAAA:8 a=qPKtzgQbAAAA:8 a=lPOMcNn-Gnmsf6nzbe0A:9
	a=QEXdDO2ut3YA:10 a=0_cEEhCvB34XW5aA8UtH:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

    Hi again All,
Since the github thing didn't work, I thought I'd look at
/etc/default/espeakup
There is a line like 
default synth=
and it was blank, and I put in voxin, but that didn't change anything.
Seems like a file named something like
speech-dispatcher-voxin.conf or something, needs to go somewhere.
Any ideas?
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



