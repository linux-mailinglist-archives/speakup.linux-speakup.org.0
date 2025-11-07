Return-Path: <speakup+bounces-1468-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BF215C3E1E5
	for <lists+speakup@lfdr.de>; Fri, 07 Nov 2025 02:23:51 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=KpkiMDZv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0A62C38221D; Thu, 06 Nov 2025 20:23:44 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DD5433819AD
	for <lists+speakup@lfdr.de>; Thu, 06 Nov 2025 20:23:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A8B853819AD; Thu, 06 Nov 2025 20:23:36 -0500 (EST)
Received: from mail110.out.titan.email (mail110.out.titan.email [44.217.104.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0B5F23819AD
	for <speakup@linux-speakup.org>; Thu, 06 Nov 2025 20:23:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4d2hCQ0K7fz9rw3;
	Fri,  7 Nov 2025 01:23:30 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=Y7wG5ss9DuLUcp4q/VUmISiYhVgW3Lc/RA22qAqKPHU=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=reply-to:to:references:from:subject:date:mime-version:message-id:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1762478609; v=1;
	b=KpkiMDZvhrHZLLTkQYBZ9wLYBzMMrm093vNFUVEwYi9sy4isP1d1MveXBGPtoAdVvy/0FUn7
	ocGn0/j4azQZuZH6OtzR4WrvdG8zh67KvO4ZYtvEuzqeqIHUtoOqDXvfiQsw1YZMfXPZe0T3yTV
	4jNowPBSJg4tGPoqwoTRLfFw=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4d2hCP35Dwz9rx1;
	Fri,  7 Nov 2025 01:23:29 +0000 (UTC)
Message-ID: <048f01dc4f85$20047540$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "crisspro" <crisspro@hotmail.com>,
	<speakup@linux-speakup.org>,
	"John G. Heim" <jheim@math.wisc.edu>
References: <IA2PR84MB3952FFF80EE8FFE8B416E285DAC2A@IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM> <94d5d380-1123-493b-8744-08df2ebfaf63@math.wisc.edu>
Subject: Re: enable espeakup for debian
Date: Thu, 6 Nov 2025 19:23:29 -0600
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
Content-Transfer-Encoding: 8bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1762478609815077893.21635.8318585978349675052@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=GPryEvNK c=1 sm=1 tr=0 ts=690d4a11
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=69EAbJreAAAA:8
	a=qPKtzgQbAAAA:8 a=_7MDIdYJEedJOaVv9g8A:9 a=3ZKOabzyN94A:10
	a=QEXdDO2ut3YA:10 a=OTAqJWGB1laLS8RTg9aS:22 a=P3K-DvM3-jjlTNsN-mCd:22
	a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Also, if you use the Be My Eyes, the AI part of it, you can take a picture,
and it will tell you which option appears to be selected.
Glenn

----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "crisspro" <crisspro@hotmail.com>; <speakup@linux-speakup.org>
Sent: Thursday, November 6, 2025 7:19 PM
Subject: Re: enable espeakup for debian


Second question:

No, it is not possible to get espeakup or any speech engine working with
GRUB. The best solution I have found is to use my iPhone and an app
called SeeingAI. You can mount your phone on something like a selfie
arm, point it at the computer screen, and run SeeingAI. GRUB also can
send it's output to a serial tty. If your computer has a serial port,
you can configure GRUB to send it's output there, connect it to another
computer with a null-modem cable, and listen to the GRUB menus with
speech on the other computer. I can explain how to do this in greater
detail if you are interested.

The main accessibility feature of GRUB is that it can play a series of
tones right before it displays the menu. So at least you know when to
press the keys to navigate the menu.


On 11/6/25 11:45 AM, crisspro wrote:
> Hello.
>
>
> I enabled espeakup service with systemctl enable espeakup, butn
> doesn’t announce anything., espeakup is runing.
>
> How enable espeakup correctly?. I have a second question, is possible
> get espeakup for grub menu? I need this to load other OS or load
> snapshot.
>
>


