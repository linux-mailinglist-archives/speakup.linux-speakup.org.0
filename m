Return-Path: <speakup+bounces-1306-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 367B3AD96AF
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 22:54:00 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=aAbsmR5v;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 96A883824C9; Fri, 13 Jun 2025 16:53:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 762CB3822AC
	for <lists+speakup@lfdr.de>; Fri, 13 Jun 2025 16:53:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8322D3822DA; Fri, 13 Jun 2025 16:53:51 -0400 (EDT)
Received: from mail39.out.titan.email (mail39.out.titan.email [209.209.25.13])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 473043822A1
	for <speakup@linux-speakup.org>; Fri, 13 Jun 2025 16:53:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 3AE661003AC;
	Fri, 13 Jun 2025 20:53:50 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=UOQsb+hrm9wZJGbIEQ9ev4+PMYr2RejodJ3pspRK2mg=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=from:to:cc:reply-to:date:mime-version:references:subject:message-id:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1749848030; v=1;
	b=aAbsmR5v9CttTuy/9vnPBfB9hqUeiIAlPoNpQgGmTsmn5Rw+O19gWq9pcFiTODLw0yeUAbAj
	cbyDTV36c8bk93SUHuxaqMHv7A4zeovCK23XSxMAxsvY5j/559p7HGTfRCpCXDKs14j7IdmLaWa
	GezUc4NP/51nE/I4ukUkZoy0=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 6477A1000CF;
	Fri, 13 Jun 2025 20:53:49 +0000 (UTC)
Message-ID: <042701dbdca5$44189d60$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>,
	"Jookia" <contact@jookia.org>
Cc: "John G. Heim" <jheim@math.wisc.edu>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <73297c7e-9945-483b-a9d3-e347ab217d59@math.wisc.edu> <aEwFDuQX7iT3xmzY@titan> <aEyO2ruBZGZWp_uE@gregn.net>
Subject: Re: Tripletalk mini
Date: Fri, 13 Jun 2025 15:53:49 -0500
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
X-Titan-Src-Out: 1749848030052764118.20113.3778009139105477280@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=J8ZQ7BnS c=1 sm=1 tr=0 ts=684c8fde
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=BCCgzu0JAAAA:8
	a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8 a=jovt0mFxAAAA:8 a=qPKtzgQbAAAA:8
	a=q5txbtUnAAAA:8 a=3i5c6pvjcMDp_m3fhoEA:9 a=wPNLvfGTeEIA:10
	a=G38RWgnJungA:10 a=LcVy-NwXSkDgD1TuMyfF:22 a=pvvZm7_9ER1OwvpV3Ftp:22
	a=duXMUGqUtLRgrHROm9qa:22 a=StMmMNtBgVvPiZYFi0f4:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=RsootnAUgZ_jVqzlXDew:22
	a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
In my windows 10, the USB ports emulate a serial port.
So, perhaps some Linux distros do too.
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "Jookia" <contact@jookia.org>
Cc: "John G. Heim" <jheim@math.wisc.edu>; "Speakup is a screen review system 
for Linux." <speakup@linux-speakup.org>
Sent: Friday, June 13, 2025 3:49 PM
Subject: Re: Tripletalk mini


Unless the USB interface emulates a serial port, it likely isn't
supported, but I do stand to be corrected. The layer to support USB
synths is in speakup, but actual device support isn't there as far as
I know. I believe the mini is a USB only device, but I could be wrong
there too.

Greg


On Fri, Jun 13, 2025 at 09:01:34PM +1000, Jookia wrote:
> I belive speakup does support USB serial devices nowadays.
> I don't know which Speakup driver you'd use for this.
>
> On Thu, Jun 12, 2025 at 11:06:42AM -0500, John G. Heim wrote:
> > I've been poking around to see if there are still any hardware synths
> > available. There is something called a Tripletalk Mini on the Blind Mice
> > mega Mall.
> >
> > https://www.blindmicemegamall.com/bmm/shop/Item_Detail?itemid=5323293
> >
> > It does not seem to have a serial cable connector though. Correct me if 
> > I'm
> > wrong but that means it would not work with speakup, right?
> >
> >
>

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org


