Return-Path: <speakup+bounces-1540-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCBUNg23e2neHwIAu9opvQ
	(envelope-from <speakup+bounces-1540-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 20:37:49 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 302DDB4098
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 20:37:49 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=MJIMhT9J;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 84E3C38194D; Thu, 29 Jan 2026 14:37:47 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 63E043818BE
	for <lists+speakup@lfdr.de>; Thu, 29 Jan 2026 14:37:47 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A1E93818D6; Thu, 29 Jan 2026 14:37:41 -0500 (EST)
Received: from mail68.out.titan.email (mail68.out.titan.email [3.216.99.50])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0A1B2381847
	for <speakup@linux-speakup.org>; Thu, 29 Jan 2026 14:37:41 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4f28Yb0JcNz7tBv;
	Thu, 29 Jan 2026 19:37:39 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=ALxmK9faFXw7WpnebRfbZjYpFkSHx/1h3ZUBFXEYr7s=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=mime-version:cc:message-id:to:reply-to:from:references:subject:date:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1769715458; v=1;
	b=MJIMhT9JOCHLVkb8XQ6jnRYyi1k2U+b/pGZkeGPE7VDIi+WjP9Y+iqezow2rAZ4GirITuUyM
	vzNbDd+oIhhcEC8hF14rCmNJeWJBHPZlmgQc5ut+xcuV4Ww1Soah8CEPC9Ur3FOJ557pUuHxWWy
	X4OO5HY1WlobRFMyQHCAgnJU=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4f28YZ3PLnz7tBq;
	Thu, 29 Jan 2026 19:37:38 +0000 (UTC)
Message-ID: <017e01dc9156$b9f2e2f0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>,
	"John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <6c2e05b6-6cc6-434a-96a4-3a7476b18110@math.wisc.edu> <aXlLExoJ1i_VdnbF@gregn.net> <7a5a7250-a603-49ef-b3e7-2f96451bbb3b@math.wisc.edu>
Subject: Re: TripleTalk USB via USB?
Date: Thu, 29 Jan 2026 13:37:37 -0600
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
	charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1769715458856815859.6018.7069539851668333553@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=KJWgDEFo c=1 sm=1 tr=0 ts=697bb702
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=hEK2XftRAAAA:8
	a=qPKtzgQbAAAA:8 a=FDJRoothwErSMKJ13BYA:9 a=QEXdDO2ut3YA:10
	a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.12 / 15.00];
	OLD_X_MAILER(2.00)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[t39smtp-sign001.email:s=titan1];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[bounces-1540-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[ervin.email];
	HAS_ORG_HEADER(0.00)[];
	HAS_X_PRIO_THREE(0.00)[3];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns,wisc.edu:email,gregn.net:email,ervin.email:replyto];
	FROM_NEQ_ENVFROM(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 302DDB4098
X-Rspamd-Action: no action

There is an SSH app for the iPhone, perhaps you can make the connection that 
way.
Glenn
----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Thursday, January 29, 2026 1:35 PM
Subject: Re: TripleTalk USB via USB?


Well, I got my synth project working as a DECtalk so this question is
kind of moot. I have half a mind to set up a Windows machine with Jaws
and reverse-engineer that protocol. But I have lots of other things to
do that are more important. Even after I get my Raspberry Pi emulating a
DECtalk, the next project I'd like to do is port it to iPhone. You plug
your iPhone into a Linux server, open an app on the phone, and it acts
like a DECtalk hardware speech synth. I'm assuming you can write an
app that reads/writes to the USB-C port on an iPhone.

I have a friend who writes apps for iPhone. I could probably get him to
help me get started.


On 1/27/26 5:32 PM, Gregory Nowak wrote:
> The short answer is no. The ttyUSB/ttyACM interface is for usb to
> serial converters only. As far as I know, no one has managed to
> reverse engineer the protocol the trippletalk uses, and windows users
> don't have problems using one, because the screen reader developers
> signed a NDA to get the required information they needed.
>
> Greg
>
>
> On Tue, Jan 27, 2026 at 01:54:39PM -0600, John G. Heim wrote:
>> Can Speakup talk to a TripleTalk USB via the USB cable? I have always 
>> used
>> my TripleTalk USB via the DB-9 RS-232 serial cable for data and the USB
>> cable for power only.
>>
>> You can use the LiteTalk kernel module for a Triple talk. By default it 
>> is
>> going to talk via ttyS0. To get it to talk via the USB cable, you need to
>> specifiy the device, like "modprobe speakup_ltlk dev=/dev/ttyUSB0"/ 
>> Problem
>> is, when I plug my TripleTalk into my desktop, it does not create a USB
>> device. No /dev/ttyUSB0 or /dev/ttyACM0 is created. I dug down into lsusb
>> output until I saw it says no device is created.
>>
>> Is there some way to get it to create the device? How can anyone use the
>> TripleTalk USB via the USB calbe if it doesn't create a device? Wouldn't
>> Windows users have the same problem?
>>
>>
>>
>>


