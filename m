Return-Path: <speakup+bounces-367-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D65944B3DC1
	for <lists+speakup@lfdr.de>; Sun, 13 Feb 2022 22:33:28 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5806638140B; Sun, 13 Feb 2022 16:33:28 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 427493805F1
	for <lists+speakup@lfdr.de>; Sun, 13 Feb 2022 16:33:28 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 52424380B33; Sun, 13 Feb 2022 16:33:23 -0500 (EST)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com [50.116.61.232])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 436EA3805F1
	for <speakup@linux-speakup.org>; Sun, 13 Feb 2022 16:33:23 -0500 (EST)
Received: from [IPv6:2600:3c03:e000:3c2::91:66] (unknown [IPv6:2600:3c03:e000:3c2::91:66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 7C7643971DD8;
	Sun, 13 Feb 2022 21:33:21 +0000 (UTC)
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
In-Reply-To: <20220213015252.mo4cilfk3w3etmha@begin>
Date: Sun, 13 Feb 2022 16:33:20 -0500
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 Debian Accessibility Team <debian-accessibility@lists.debian.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <55390181-D882-402F-BF64-5A5DD91C2E44@carmickle.com>
References: <6C488A97-ABC4-42AE-96FF-20B10156191C@carmickle.com>
 <20220213015252.mo4cilfk3w3etmha@begin>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
X-Mailer: Apple Mail (2.3445.104.21)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


> On Feb 12, 2022, at 8:52 PM, Samuel Thibault =
<samuel.thibault@aquilenet.fr> wrote:
>=20
> Hello,
>=20
> Digging back this issue, related also to a recent discussion on
> debian-accessibility
>=20
> Frank Carmickle wrote:
>> 0 5.14 and now 5.15. When I write a lot of output to a screen,
>> say dmesg without a pager, screen review stops working for a few
>> seconds. I know speakup is still responding because the tones are
>> played when navigating by word when moving to a new line. The speech
>> is interrupted appropriately but it will not speak again for a few
>> seconds.
>=20
> I have been able to reproduce something like this: run dmesg, let it
> start speak, press a key to stop it, press some other keys, but the
> speech remains silent until a few seconds. I have tracked this down to
> espeak having some extra 50ms delays that repeat for each dropped
> phoneme/word, thus the apparent pause.
>=20
> I have just uploaded to sid version 1.50+dfsg-10 of espeak-ng that =
drops
> that delay, would you be able to test it?

Fixed!!! Thank you Samuel. I was able to cat 16,500 lines with no =
dropouts or delays.

Your work is so very much appreciated.

Best to you,
--FC


