Return-Path: <speakup+bounces-1216-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A2D13974366
	for <lists+speakup@lfdr.de>; Tue, 10 Sep 2024 21:22:41 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=carmickle.com header.i=@carmickle.com header.a=rsa-sha256 header.s=2021081500 header.b=hBHlFpom;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA60538199A; Tue, 10 Sep 2024 15:13:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CA4B73809C4
	for <lists+speakup@lfdr.de>; Tue, 10 Sep 2024 15:13:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F17CB3809C4; Tue, 10 Sep 2024 15:13:51 -0400 (EDT)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [173.255.224.66])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A46CC3809C4
	for <speakup@linux-speakup.org>; Tue, 10 Sep 2024 15:13:51 -0400 (EDT)
Received: from smtpclient.apple (pool-96-252-121-51.bstnma.fios.verizon.net [96.252.121.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id DE74A8F7D16B;
	Tue, 10 Sep 2024 19:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=carmickle.com;
	s=2021081500; t=1725995600;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tIGPkYabA4eAbKpOaO+5I74HS9eomvf96bKdR4xaZM4=;
	b=hBHlFpomQHCOvEDET1B1N2hBeGkFAthlZyjFzCNUSab3rHs5mk7CXxRBSIDBbkboVUuw4L
	LZVRn3mo/rajaMSc3Els2Xnt3nhq7T/aTL+HRteQLXB7vHMIdxhIHMASK6K9Q8SmnSH1NO
	8cScYB/xu5TdfltahNIfXY2DlhZVVok=
Content-Type: text/plain;
	charset=us-ascii
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.2\))
Subject: Re: speakup crashing
From: Frank Carmickle <frank@carmickle.com>
In-Reply-To: <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca>
Date: Tue, 10 Sep 2024 15:13:19 -0400
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <6D90B2FB-A20E-4A94-88EE-16C609812A9D@carmickle.com>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com>
 <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca>
 <c152034f-942c-d477-04ab-58903eae7117@panix.com>
 <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca>
To: Kirk Reiser <kirk@reisers.ca>
X-Mailer: Apple Mail (2.3731.700.6.1.2)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Greetings Kirk Et Al,

Does

killall -1 espeakup

work for you, when espeakup hangs? It works for me.

Are you seeing espeakup hang on bare metal systems? I see it hang quite =
frequently when running on a virtual machine, but I have not seen it =
have on bare metal as of yet. I spend a lot less time running espeakup =
on bare metal, so that may be why.

There was quite some discussion about this issue, on the Debian =
Accessibility list, over the last year. I'd really like to see this =
issue get sorted. Any thoughts are greatly appreciated.

Best,
--FC

On Aug 17, 2024, at 16:46, Kirk Reiser <kirk@reisers.ca> wrote:
>=20
> Okay, try this it's basically a one liner. The reason you can't
> restart espeakup is because it doesn't actually die, so it has to be
> killed off before restarting it.
>=20
> ```
> #!/bin/bash
>=20
> killall -9 espeakup; espeakup
>=20
> ```
>=20
> My bash script is named respeakup but you can name it anything you =
like, of course.
>=20
>  Kirk
>=20
> On Sat, 17 Aug 2024, Jude DaShiell wrote:
>=20
>> It's entirely possible espeakup is crashing.  When this happens, I =
can't
>> restart espeakup either so end up having to reboot to regain control =
of
>> the system.
>>=20
>>=20
>> --
>> Jude <jdashiel at panix dot com>
>> "There are four boxes to be used in defense of liberty:
>> soap, ballot, jury, and ammo.
>> Please use in that order."
>> Ed Howdershelt 1940.
>>=20
>> On Sat, 17 Aug 2024, Kirk Reiser wrote:
>>=20
>>> Hi Jude: This may be a silly question, but are you sure it's speakup
>>> crashing? Often, espeakup dies here and so I have a simple script to
>>> kill it off and restart espeakup. I haven''t had speakup itself hang
>>> the system for quite a while.
>>>=20
>>>  Kirk
>>>=20
>>> On Sat, 17 Aug 2024, Jude DaShiell wrote:
>>>=20
>>>> Every so often speakup crashes on my computer.
>>>> I am running a recent version of Jenux so systemd is in use here.
>>>> What I would like to know is a procedure once the system has been =
rebooted
>>>> to locate any crash messages speakup may have left in logs.  =
pipewire is
>>>> running the sound system along with alsa here and there's necessary
>>>> pulseaudio artifacts pipewire uses on the system.
>>>>=20
>>>>=20
>>>> --
>>>> Jude <jdashiel at panix dot com>
>>>> "There are four boxes to be used in defense of liberty:
>>>> soap, ballot, jury, and ammo.
>>>> Please use in that order."
>>>> Ed Howdershelt 1940.
>>>>=20
>>>=20
>>>=20
>>=20
>=20


