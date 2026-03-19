Return-Path: <speakup+bounces-1567-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICvNBWwKvGmPrgIAu9opvQ
	(envelope-from <speakup+bounces-1567-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 15:38:36 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1AFB52CCFBE
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 15:38:35 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=carmickle.com header.i=@carmickle.com header.a=rsa-sha256 header.s=2021081500 header.b=i5mhZdwt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E94FB382710; Thu, 19 Mar 2026 10:38:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C839B3818E1
	for <lists+speakup@lfdr.de>; Thu, 19 Mar 2026 10:38:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BE10C38203F; Thu, 19 Mar 2026 10:38:24 -0400 (EDT)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [173.255.224.66])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6483F3818E1
	for <speakup@linux-speakup.org>; Thu, 19 Mar 2026 10:38:24 -0400 (EDT)
Received: from smtpclient.apple (unknown [IPv6:2600:4040:5db2:808:e875:e922:64cc:40b8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id D75B0C5DBF0D;
	Thu, 19 Mar 2026 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=carmickle.com;
	s=2021081500; t=1773931097;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uLARL9/DvyofSD6oLDflbeZNyfqGSYwgRNHJk6Cc+TM=;
	b=i5mhZdwtyEGfsE4ZIR6CjsU9vYA3pYoIGACSoIHVhXq3egtT4KD9oracH7ja6NxhQelFO0
	wu+JFMBM1A1u2/TCkJV+uLQigt7ig6Mych7KtEdDfOv0gkBIavz7oEupP7KkBL1cRNgtEr
	PC06Um0sjGhobu9gelxACbLF/WkBsxM=
Content-Type: text/plain;
	charset=us-ascii
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.21\))
Subject: Re: RPItalk hardware speech synth project
From: Frank Carmickle <frank@carmickle.com>
In-Reply-To: <36174ec4-fd0a-413e-96c7-13d6a5db1ffd@math.wisc.edu>
Date: Thu, 19 Mar 2026 10:38:12 -0400
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <132CCCEE-C79E-4A3D-A040-A10C942CE1CF@carmickle.com>
References: <f58445bf-9bef-466a-8c0d-2707001c9c84@math.wisc.edu>
 <65660797-d85c-488b-ae64-fdba06f3e5d4@raspberryvi.org>
 <36174ec4-fd0a-413e-96c7-13d6a5db1ffd@math.wisc.edu>
To: "John G. Heim" <jheim@math.wisc.edu>
X-Mailer: Apple Mail (2.3731.700.6.1.21)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.39 / 15.00];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[carmickle.com,reject];
	R_DKIM_ALLOW(-0.20)[carmickle.com:s=2021081500];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[carmickle.com:+];
	TAGGED_FROM(0.00)[bounces-1567-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[frank@carmickle.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[carmickle.com:dkim,carmickle.com:mid]
X-Rspamd-Queue-Id: 1AFB52CCFBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

John,

Thank you for this.=20

One question. The web site says that dectalk should be selected if you =
have a usb to serial adapter. Then in the trouble shooting section it =
says that lighttalk can be used only with a usb to serial connection. =
Does this mean that dectalk is preferred in both cases?

Remembering a bit of the dectalk and lighttalk command sets, I would =
think that lighttalk would be preferred when it can be used, actual =
hardware flow control being the benefit of lighttalk.

Best,
--FC


On Mar 18, 2026, at 18:10, John G. Heim <jheim@math.wisc.edu> wrote:
>=20
> It's all on the page on my web site:
>=20
> https://people.math.wisc.edu/~jheim/RPITalk/
>=20
>=20
>=20
> On 3/18/26 2:32 PM, Mike Ray wrote:
>>=20
>>=20
>> John
>>=20
>> Is it interruptible? And is there a speech-dispatcher driver for it? =
Does it simulate an existing hardware synth such as the DECTalk, or =
another one?
>>=20
>> Mike
>>=20
>>=20
>>=20
>>=20
>> On 18/03/2026 18:29, John G. Heim wrote:
>>> Okay, I've mostly wrapped up development of my Raspberry Pi hardware =
speech synth project. =46rom now on, it will be upgrades or maintenance =
releases. Instructions for building a device can be found here:
>>>=20
>>> https://people.math.wisc.edu/~jheim/RPITalk/
>>> The biggest thing yet to be done is to get my  package into the =
Debian archive so it will get into Raspberry Pi OS. That doesn't depend =
on me though. I've already taken the steps I need to take to get my =
package into Debian but I haven't heard back from Debian yet. In the =
mean time, I set up  a Debian  repository on my own space at the =
University Of Wisconsin. Installation can be done easily via aptif you =
add my repository to your system.
>>>=20
>>> I've tested this  on  a Raspberry Pi Zero, a Pi 4, and even on a =
Linux laptop. I've used both an OTG (gadget) port with a plain USB cable =
and a regular USB port with a USB-serial converter. In other words, with =
this package, you can use any machine running Linux as a hardware speech =
synth. You could take an old Windows laptop, install Debian on it, and =
use that as a hardware speech synth. But I am guessing most people are =
going to want to use a Raspberry Pi or similar device.
>>>=20
>>>=20
>>>=20
>>>=20
>>=20
>>=20
>=20


