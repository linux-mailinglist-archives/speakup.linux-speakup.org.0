Return-Path: <speakup+bounces-1492-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3767CCEA545
	for <lists+speakup@lfdr.de>; Tue, 30 Dec 2025 18:38:25 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=SCkeFIy8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 89EB838187A; Tue, 30 Dec 2025 12:38:22 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 63EF8381847
	for <lists+speakup@lfdr.de>; Tue, 30 Dec 2025 12:38:22 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 66F2C38184B; Tue, 30 Dec 2025 12:38:16 -0500 (EST)
Received: from mail41.out.titan.email (mail41.out.titan.email [209.209.25.33])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 17398381847
	for <speakup@linux-speakup.org>; Tue, 30 Dec 2025 12:38:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4dggKc26cPz9rxt;
	Tue, 30 Dec 2025 17:38:12 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=rtZgeaSjq2m5iT7PM792WUksrrf8z7T1o5tezJfD1Ek=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=to:cc:date:mime-version:message-id:reply-to:subject:references:from:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1767116292; v=1;
	b=SCkeFIy8lKk4zH2eVz7R3FSu3KOyDU9i5nemKAK960m8YDX73CYSiiwKFr3WRir8FUYozwJj
	ByjQdwSkDpeLF0JoOWvlHskN0DQEqkZC2++mCJOMq+1CRLoo7+450YuOCXjhw4R6+8XLwMMSGzs
	DHIEwJ2LfBWgQljC9s+NmxyU=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4dggKb564Yz9rwC;
	Tue, 30 Dec 2025 17:38:11 +0000 (UTC)
Message-ID: <05bd01dc79b3$1270c700$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Terry D. Cudney" <terry@cudneys.ca>,
	"John G. Heim" <jheim@math.wisc.edu>
Cc: <speakup@linux-speakup.org>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu> <4946952f-7980-4979-bb63-745750da47dd@math.wisc.edu> <aVQM_dupS6eRZSU5@cudneys.ca>
Subject: Re: Building a hardware speech synth with a Raspberry Pi
Date: Tue, 30 Dec 2025 11:38:11 -0600
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
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
X-Titan-Src-Out: 1767116292122646835.21635.8837967070486740512@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=TPG/S0la c=1 sm=1 tr=0 ts=69540e04
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=DyznqomoAAAA:8
	a=VBeCEuiNAAAA:8 a=qPKtzgQbAAAA:8 a=lbLzZvDa8nIzTpRMrOUA:9
	a=wPNLvfGTeEIA:10 a=K-WoAglidRTgu2AFuYQT:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
	a=iFtThO9_p-c16l5TK7rv:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Yeah, I would think that even an old model A RPI would work for this, I 
don't think it will take much horse power.
A RPI 0 with a header would also work, I think that a couple GPIO pins can 
be used for audio.
Glenn
----- Original Message ----- 
From: "Terry D. Cudney" <terry@cudneys.ca>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: <speakup@linux-speakup.org>
Sent: Tuesday, December 30, 2025 11:33 AM
Subject: Re: Building a hardware speech synth with a Raspberry Pi


Hi John,

   Which model of rpi to you have?

   I have 3, 4 and now 5. Both the 3 and 4 have 3.5 mm jacks for audio out 
with onboard audio. The 5 has several options for audio boards that you can 
add in from different manufactureres.

   So, it depends which model you have and the quality of the audio you 
want.

   Just something to consider...

   --terry
On Mon, Dec 29, 2025 at 01:56:37PM -0600, John G. Heim wrote:
--> I have to take a break from this project for a few days. For one thing,
--> I've been neglecting my real life responsibilities. But I also think I 
am
--> going to send for some audio hardware for the Raspberry Pi instead of
--> relying on the bluetooth speaker. I figure that was good enough for the
--> proof-of-concept phase of the project but I need real audio hardware 
now.
--> They have these things called HATs which can be hooked onto an RPI via 
an
--> edge connector. I'm going to order a sound card and speaker HAT for my
--> RPI. Also, I'm going to see if I can figure out how to take advantage of
--> speech-dispatcher so I don't have to code for different TTS engines. But 
I
--> had ChatGPT write up a howto for the project so far so you can try it
--> yourself if you want to. I just had ChatGPt generate the howto because 
it
--> would have taken me all day. So I'm not 100% sure the directions are
--> correct. Look pretty good though. I posted it on my web space at the
--> University Of Wisconsin. The LiteTalk emulator python script (which is
--> really the key to the whole project) is there. So you might at least 
want
--> to take a look at that.
-->
--> https://people.math.wisc.edu/~jheim/RPITalk/
-->
-->
-->

-- 
Name: Terry D. Cudney
Telephone: 289-438-6828
E-mail: terry@cudneys.ca



