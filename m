Return-Path: <speakup+bounces-1218-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 04DAB97593C
	for <lists+speakup@lfdr.de>; Wed, 11 Sep 2024 19:23:25 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=carmickle.com header.i=@carmickle.com header.a=rsa-sha256 header.s=2021081500 header.b=jfmu2zMI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B492A3819C1; Wed, 11 Sep 2024 13:23:21 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 93D5138196F
	for <lists+speakup@lfdr.de>; Wed, 11 Sep 2024 13:23:21 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9FA3F381986; Wed, 11 Sep 2024 13:23:14 -0400 (EDT)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [173.255.224.66])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DCD5B381924
	for <speakup@linux-speakup.org>; Wed, 11 Sep 2024 13:23:13 -0400 (EDT)
Received: from smtpclient.apple (pool-96-252-121-51.bstnma.fios.verizon.net [96.252.121.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 9A2EF8F921ED;
	Wed, 11 Sep 2024 17:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=carmickle.com;
	s=2021081500; t=1726075360;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IDQugv0RyHdKKyWA/xoi2g7uCUN6wBLm8M4hbptWScg=;
	b=jfmu2zMI/GmztCb7Dhzqp/PoGy3SteqQu6rFahGVDot5cxwwuQTNnHfAbVnt9IvgDZ8BsC
	R0alzXYxqKUlUksyMaOWmOMusuA09LQvq5leb4ulZP4rppjkq6bIJrPRK/lD5/8Lk25yyY
	9ZhQwvoSBGEJvRfEkD0oso4HeFUOAhg=
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
In-Reply-To: <774a987a-fe4c-bd11-9c7f-9b4d06d08ce4@reisers.ca>
Date: Wed, 11 Sep 2024 13:22:40 -0400
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <BC5C0DB8-5CF1-4FD8-9946-5862B8DCE1DE@carmickle.com>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com>
 <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca>
 <c152034f-942c-d477-04ab-58903eae7117@panix.com>
 <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca>
 <6D90B2FB-A20E-4A94-88EE-16C609812A9D@carmickle.com>
 <774a987a-fe4c-bd11-9c7f-9b4d06d08ce4@reisers.ca>
To: Kirk Reiser <kirk@reisers.ca>
X-Mailer: Apple Mail (2.3731.700.6.1.2)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Kirk,

> On Sep 10, 2024, at 16:59, Kirk Reiser <kirk@reisers.ca> wrote:
>=20
> Hi Frank: My issue has been that espeakup doesn't start on boot and
> hasn't for the last couple of years. Just in the past few days Chris
> and Tyler have been helping me and I think we have a work around which
> I've been testing for a couple days now. It looks pretty consistant so
> far.

Interesting. I have not had this issue. The systemd unit, that has =
shipped with Debian versions, for years now, has worked for me.

=46rom what you are saying you have not seen the issue that I am having. =
I take it you are not running espeakup on a virtual machine?

Best,
--FC=20

>=20
>  Kirk
>=20
> On Tue, 10 Sep 2024, Frank Carmickle wrote:
>=20
>> Greetings Kirk Et Al,
>>=20
>> Does
>>=20
>> killall -1 espeakup
>>=20
>> work for you, when espeakup hangs? It works for me.
>>=20
>> Are you seeing espeakup hang on bare metal systems? I see it hang =
quite frequently when running on a virtual machine, but I have not seen =
it have on bare metal as of yet. I spend a lot less time running =
espeakup on bare metal, so that may be why.
>>=20
>> There was quite some discussion about this issue, on the Debian =
Accessibility list, over the last year. I'd really like to see this =
issue get sorted. Any thoughts are greatly appreciated.
>>=20
>> Best,
>> --FC
>>=20
>> On Aug 17, 2024, at 16:46, Kirk Reiser <kirk@reisers.ca> wrote:
>>>=20
>>> Okay, try this it's basically a one liner. The reason you can't
>>> restart espeakup is because it doesn't actually die, so it has to be
>>> killed off before restarting it.
>>>=20
>>> ```
>>> #!/bin/bash
>>>=20
>>> killall -9 espeakup; espeakup
>>>=20
>>> ```
>>>=20
>>> My bash script is named respeakup but you can name it anything you =
like, of course.
>>>=20
>>> Kirk
>>>=20
>>> On Sat, 17 Aug 2024, Jude DaShiell wrote:
>>>=20
>>>> It's entirely possible espeakup is crashing.  When this happens, I =
can't
>>>> restart espeakup either so end up having to reboot to regain =
control of
>>>> the system.
>>>>=20
>>>>=20
>>>> --
>>>> Jude <jdashiel at panix dot com>
>>>> "There are four boxes to be used in defense of liberty:
>>>> soap, ballot, jury, and ammo.
>>>> Please use in that order."
>>>> Ed Howdershelt 1940.
>>>>=20
>>>> On Sat, 17 Aug 2024, Kirk Reiser wrote:
>>>>=20
>>>>> Hi Jude: This may be a silly question, but are you sure it's =
speakup
>>>>> crashing? Often, espeakup dies here and so I have a simple script =
to
>>>>> kill it off and restart espeakup. I haven''t had speakup itself =
hang
>>>>> the system for quite a while.
>>>>>=20
>>>>> Kirk
>>>>>=20
>>>>> On Sat, 17 Aug 2024, Jude DaShiell wrote:
>>>>>=20
>>>>>> Every so often speakup crashes on my computer.
>>>>>> I am running a recent version of Jenux so systemd is in use here.
>>>>>> What I would like to know is a procedure once the system has been =
rebooted
>>>>>> to locate any crash messages speakup may have left in logs.  =
pipewire is
>>>>>> running the sound system along with alsa here and there's =
necessary
>>>>>> pulseaudio artifacts pipewire uses on the system.
>>>>>>=20
>>>>>>=20
>>>>>> --
>>>>>> Jude <jdashiel at panix dot com>
>>>>>> "There are four boxes to be used in defense of liberty:
>>>>>> soap, ballot, jury, and ammo.
>>>>>> Please use in that order."
>>>>>> Ed Howdershelt 1940.
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>=20
>>>=20
>>=20


