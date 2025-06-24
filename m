Return-Path: <speakup+bounces-1309-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0499BAE6D5F
	for <lists+speakup@lfdr.de>; Tue, 24 Jun 2025 19:15:44 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=VqiorNJy;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7DE063824A7; Tue, 24 Jun 2025 13:15:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5D7AE38191E
	for <lists+speakup@lfdr.de>; Tue, 24 Jun 2025 13:15:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2F4A838211F; Tue, 24 Jun 2025 13:15:34 -0400 (EDT)
Received: from mail68.out.titan.email (mail68.out.titan.email [3.216.99.50])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E46B4381905
	for <speakup@linux-speakup.org>; Tue, 24 Jun 2025 13:15:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 94A5F10006D;
	Tue, 24 Jun 2025 17:15:28 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=TKyywLZcvjgAqjPDqFgZy+KctTu+oJg22cZNbdq+SQU=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=to:date:message-id:reply-to:from:subject:mime-version:cc:references:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1750785328; v=1;
	b=VqiorNJyU+A8wGu/JroKuOEZnsGJ+0eVGFLuBW15ON9e0fU3VyhMF6rG15cJ9JimGyUD0bBj
	pWfUaRJiBq3eMqQqbFkuxInw4Mw6ytP53ycx4/dUcb8xGSLHwX57RJFr0y/pGXrQc16Pkv3CyC6
	U/U7lA+tkdaJ2Xbv8Y+XUXZg=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id F28B310000F;
	Tue, 24 Jun 2025 17:15:27 +0000 (UTC)
Message-ID: <026301dbe52b$950e0500$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: <covici@ccs.covici.com>,
	"John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <29a0419a-e54f-457d-9e8f-68a0c98d2dae@math.wisc.edu> <m3o6udb785.wl-covici@ccs.covici.com>
Subject: Re: GRML for Speakup
Date: Tue, 24 Jun 2025 12:15:27 -0500
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
X-Titan-Src-Out: 1750785328411177665.20113.5500357062812074921@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=ZKctmW7b c=1 sm=1 tr=0 ts=685add30
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=DyznqomoAAAA:8
	a=uJ_w1ttZAAAA:8 a=qPKtzgQbAAAA:8 a=EbadxfLTvOanbq0vaM0A:9
	a=wPNLvfGTeEIA:10 a=muQ5ErImgoUO71fbljk_:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Some synths worked with drivers from other synths.
This might be one of those.
HTH.
Glenn
----- Original Message ----- 
From: "John Covici" <covici@ccs.covici.com>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Tuesday, June 24, 2025 8:27 AM
Subject: Re: GRML for Speakup


How would I get one for speakout?

On Mon, 09 Jun 2025 23:03:25 -0400,
John G. Heim wrote:
>
> With the help of someone on the GRML list, I created a script
> that can modify a standard GRML image for a particular hardware
> synth. If you use this script, you can create a GRML image that
> comes up talking via your hardware synth or via software speech
> without having to type in the commands after it boots.
>
> GRML is a Debian fork designed for use by people who like the
> command line. It is useful as a rescue system. You can activate
> speakup after it bootsbut with my script, you don't have to type
> anything.
>
> I pre-built images for the LiteTalk and for software
> speech. These images and the script can be found here:
>
> https://people.math.wisc.edu/~jheim/GRML/
>
>

-- 
Your life is like a penny.  You're going to lose it.  The question is:
How do
you spend it?

         John Covici wb2una
         covici@ccs.covici.com


