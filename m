Return-Path: <speakup+bounces-339-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6206947614F
	for <lists+speakup@lfdr.de>; Wed, 15 Dec 2021 20:05:51 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 98E9538117C; Wed, 15 Dec 2021 14:05:50 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 84BCB380E4E
	for <lists+speakup@lfdr.de>; Wed, 15 Dec 2021 14:05:50 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F296D380EA9; Wed, 15 Dec 2021 14:05:45 -0500 (EST)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [50.116.61.232])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E41843809FA
	for <speakup@linux-speakup.org>; Wed, 15 Dec 2021 14:05:45 -0500 (EST)
Received: from fcmbp14.carmickle.com (fcmbp14.carmickle.com [IPv6:2001:470:1f07:6f1:ee1a:59ff:fe3d:a9f3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 6AB9435B7BA8;
	Wed, 15 Dec 2021 19:05:45 +0000 (UTC)
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
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: espeakup not speaking screen review from speakup in Debian sid
 20211215 while screen refreshing to quickly
From: Frank Carmickle <frank@carmickle.com>
In-Reply-To: <438c249c-e061-150-4e25-877b4dad1b2@reisers.ca>
Date: Wed, 15 Dec 2021 14:05:44 -0500
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <AA2DDF65-3308-4F92-938E-3B5D424D44D3@carmickle.com>
References: <6C488A97-ABC4-42AE-96FF-20B10156191C@carmickle.com>
 <438c249c-e061-150-4e25-877b4dad1b2@reisers.ca>
To: Kirk Reiser <kirk@reisers.ca>
X-Mailer: Apple Mail (2.3445.104.21)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hey Kirk,

I hope you and the family are all well.

As I noted, I can use the keyboard, to have speakup play the line change =
tones while using review by word, so that's not it.

I'm guessing there's some problem in espeakup or speakup_soft.

I'll update a buster system to use a 5.10 kernel and see what happens.

Be well,
--FC

> On Dec 15, 2021, at 12:37 PM, Kirk Reiser <kirk@reisers.ca> wrote:
>=20
> Hi Frank: Yes, I've noticed the problem. My guess is they've lowered
> the keyboard interrupt priority so it doesn't get recognized until all
> output is complete. That's just a guess however and yes it is
> iritating as hell.
>=20
>  Kirk
>=20
> On Wed, 15 Dec 2021, Frank Carmickle wrote:
>=20
>> Hi all,
>>=20
>> I've been noticing a problem with speakup/espeakup/espeak-ng, across =
kernels 5.10 5.14 and now 5.15. When I write a lot of output to a =
screen, say dmesg without a pager, screen review stops working for a few =
seconds. I know speakup is still responding because the tones are played =
when navigating by word when moving to a new line. The speech is =
interrupted appropriately but it will not speak again for a few seconds.
>>=20
>> Has anyone else experienced this? Does anyone have an idea of where =
to look to help sort this out.
>>=20
>> I very much liked the former functionality of being able to press a =
key to momentarily flush the buffer and pick up reading the screen =
immediately.
>>=20
>> Thanks all,
>> --FC
>>=20
>>=20
>=20


