Return-Path: <speakup+bounces-1115-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF5D8B613E
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 20:41:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=Db7dfpuC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA32AC81CA4; Mon, 29 Apr 2024 14:41:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B7E4BC81C5F
	for <lists+speakup@lfdr.de>; Mon, 29 Apr 2024 14:41:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E41AC81C61; Mon, 29 Apr 2024 14:41:11 -0400 (EDT)
Received: from mail73.out.titan.email (mail73.out.titan.email [3.216.99.53])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C3732C81C5A
	for <speakup@linux-speakup.org>; Mon, 29 Apr 2024 14:41:10 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id E6B4C6012A;
	Mon, 29 Apr 2024 18:41:04 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=y6aI3R4YeCmozgjfAPosCEanO9eeXQ6cnmbEbqUlfq0=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=reply-to:from:to:date:message-id:subject:mime-version:references:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1714416064; v=1;
	b=Db7dfpuCCXcVFxK3YPjkimmsiLukaHVCgzAudpz2ZfLRRUyHDunxzUz06yKwjSI39Gi2T6LT
	ZFbC6KYtmjIj68PnECfqk+TRsfnMEGpiG3pHnJ8GYUlmfqzbNCbA352+Fq5gMDgwFGbXRXtHSQR
	7JTXubgFmo2sBc07GRcwZsvY=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 5B0E56017B;
	Mon, 29 Apr 2024 18:41:04 +0000 (UTC)
Message-ID: <00e601da9a64$caf28730$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Jude DaShiell" <jdashiel@panix.com>,
	"Cleverson Casarin Uliana" <speakup@clul.router5.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <10acd4eb-8872-1669-0086-fb591ee6cad4@panix.com> <m3y19026je.wl-covici@ccs.covici.com> <8c2f3044-4655-7dbe-a06f-5cf5ae148126@panix.com> <MTAwMDAwMC5jbHVs.1714396598@quikprotect> <4b90f942-8d5a-b788-7c80-59d4d1fdb4ce@panix.com>
Subject: Re: speakup and gentoo
Date: Mon, 29 Apr 2024 13:41:04 -0500
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
X-Titan-Src-Out: 1714416064811398139.2497.1240772742681877132@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=BOO1rkQG c=1 sm=1 tr=0 ts=662fe9c0
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=VUfPOBp7AAAA:8
	a=ogKMmQEKAAAA:8 a=qPKtzgQbAAAA:8 a=6Evkr_2844xpO4k37BIA:9
	a=wPNLvfGTeEIA:10 a=h9p_k6br8ecoN9AbG9pA:22 a=hznRhVWgvfZydwkXWK0l:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=P3K-DvM3-jjlTNsN-mCd:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I have gotten to the end with the windows keystroke:
control + end
HTH.
Glenn

----- Original Message ----- 
From: "Jude DaShiell" <jdashiel@panix.com>
To: "Cleverson Casarin Uliana" <speakup@clul.router5.com>; "Speakup is a 
screen review system for Linux." <speakup@linux-speakup.org>
Sent: Monday, April 29, 2024 1:37 PM
Subject: Re: speakup and gentoo


A couple nano questions.
1) When a file opens in nano, wdoes nano put the cursor on the first line
of the file?
If so, what should be used to get to the end of the file?
I just messed up a gentoo flash drive and fortunately I was able to
overwrite the mess so this time I probably get gentoo talking after having
replaced the mess with a fresh image.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 29 Apr 2024, Cleverson Casarin Uliana wrote:

> Hi Jude, I've installed Gentoo several times, and the following commands
> related to setting up speakup, which I ran during installation, never 
> failed
> me. Try them please:
>
> nano /etc/modules-load.d/speakup.conf
> # add the following line to this file:
> speakup_soft
>
> emerge espeakup alsa-utils
> nano /etc/conf.d/alsasound
> # Add the following line to this file:
> SAVE_ON_STOP="yes"
>
> rc-update add alsasound boot
> rc-update add espeakup default
>
> Cheers,
> Cleverson
>
>


