Return-Path: <speakup+bounces-340-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B3C3C47946B
	for <lists+speakup@lfdr.de>; Fri, 17 Dec 2021 19:55:13 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9AD38381148; Fri, 17 Dec 2021 13:55:12 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C5C5D38144C
	for <lists+speakup@lfdr.de>; Fri, 17 Dec 2021 13:55:10 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6082380E11; Fri, 17 Dec 2021 13:55:09 -0500 (EST)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [50.116.61.232])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C67233809B1
	for <speakup@linux-speakup.org>; Fri, 17 Dec 2021 13:55:09 -0500 (EST)
Received: from fcmbp14.carmickle.com (fcmbp14.carmickle.com [IPv6:2001:470:1f07:6f1:ee1a:59ff:fe3d:a9f3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 26ADF35D54AA
	for <speakup@linux-speakup.org>; Fri, 17 Dec 2021 18:55:07 +0000 (UTC)
From: Frank Carmickle <frank@carmickle.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: espeakup not speaking screen review from speakup in Debian sid
 20211215 while screen refreshing to quickly
Date: Fri, 17 Dec 2021 13:55:06 -0500
References: <6C488A97-ABC4-42AE-96FF-20B10156191C@carmickle.com>
 <438c249c-e061-150-4e25-877b4dad1b2@reisers.ca>
 <AA2DDF65-3308-4F92-938E-3B5D424D44D3@carmickle.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
In-Reply-To: <AA2DDF65-3308-4F92-938E-3B5D424D44D3@carmickle.com>
Message-Id: <67E6455D-D271-4C0F-8949-A0DEB5DBD527@carmickle.com>
X-Mailer: Apple Mail (2.3445.104.21)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello again good people,

I updated the kernel of a buster machine to what's found in backports, =
5.10.0. That did not have any impact on reading while scrolling.

I thought maybe the screen was scrolling slower so I stuck a beep =
command on the same line, as it would follow as soon as the screen had =
all of the output printed. In both the case of sid and buster the number =
of lines were around 1600, and the time that it took for the beep to be =
heard from pressing enter was very very similar.

It really seems to me like something has changed in espeakup or =
espeak-ng.

I'll play with upgrading buster, and downgrading sid until I find =
something.

Best,
--FC


> On Dec 15, 2021, at 2:05 PM, Frank Carmickle <frank@carmickle.com> =
wrote:
>=20
> Hey Kirk,
>=20
> I hope you and the family are all well.
>=20
> As I noted, I can use the keyboard, to have speakup play the line =
change tones while using review by word, so that's not it.
>=20
> I'm guessing there's some problem in espeakup or speakup_soft.
>=20
> I'll update a buster system to use a 5.10 kernel and see what happens.
>=20
> Be well,
> --FC
>=20
>> On Dec 15, 2021, at 12:37 PM, Kirk Reiser <kirk@reisers.ca> wrote:
>>=20
>> Hi Frank: Yes, I've noticed the problem. My guess is they've lowered
>> the keyboard interrupt priority so it doesn't get recognized until =
all
>> output is complete. That's just a guess however and yes it is
>> iritating as hell.
>>=20
>> Kirk
>>=20
>> On Wed, 15 Dec 2021, Frank Carmickle wrote:
>>=20
>>> Hi all,
>>>=20
>>> I've been noticing a problem with speakup/espeakup/espeak-ng, across =
kernels 5.10 5.14 and now 5.15. When I write a lot of output to a =
screen, say dmesg without a pager, screen review stops working for a few =
seconds. I know speakup is still responding because the tones are played =
when navigating by word when moving to a new line. The speech is =
interrupted appropriately but it will not speak again for a few seconds.
>>>=20
>>> Has anyone else experienced this? Does anyone have an idea of where =
to look to help sort this out.
>>>=20
>>> I very much liked the former functionality of being able to press a =
key to momentarily flush the buffer and pick up reading the screen =
immediately.
>>>=20
>>> Thanks all,
>>> --FC
>>>=20
>>>=20
>>=20
>=20
>=20


