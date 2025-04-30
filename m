Return-Path: <speakup+bounces-1261-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A28CFAA413A
	for <lists+speakup@lfdr.de>; Wed, 30 Apr 2025 05:05:11 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=wjLy3VeX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B8550382988; Tue, 29 Apr 2025 23:05:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 96F0E38194D
	for <lists+speakup@lfdr.de>; Tue, 29 Apr 2025 23:05:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A73B838195F; Tue, 29 Apr 2025 23:05:03 -0400 (EDT)
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C7B613807C4
	for <speakup@linux-speakup.org>; Tue, 29 Apr 2025 23:05:01 -0400 (EDT)
Date: Wed, 30 Apr 2025 13:04:10 +1000 (GMT+10:00)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1745982267;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J1xqcI24JikpA3zERrvgxHep7qW9UkRxJurfG8kD2zg=;
	b=wjLy3VeXWEsULuIxQRIX56eum2/SSf1xxh0s/qonsxk6OoX/NUHFiRxKvw3j/N+F12Hb5v
	DPiz1X9/+aXKocUCdydyJj1z2T2I/MGSMhQlCOe8cjNUvfVLVk/eT32PY+xpSUD7I05vas
	v0YjjSB/MGQgcFx1Cd7JP/bKL/4pnkrcZJyhaAvLA00j2lMXcDfzVJjizvhz2SJAU73pK2
	F2fVDRj67gCmuDiLpQJALZlK3iY7VidRQY/7B8JL8/nvqncrrMZkCk3GiPg2hxzGZHfsqc
	OWpitav9fvhKvOKOGPqtAkY9i3mGbDcIOycjfrfcuWJNLoRNG7GVKEr8LKVTKw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: David Sexton <david@rustytelephone.net>
Cc: Gregory Nowak <greg@gregn.net>, fsmithred <fsmithred@gmail.com>,
	speakup@linux-speakup.org
Message-ID: <0325da77-8d06-41cd-859d-f74516f74f72@jookia.org>
In-Reply-To: <CALsOB_CYcjQ4Bjy655CPy9GnLDDNvWqTtgtVZW2s2f5F6n5r3w@mail.gmail.com>
References: <aA1-fneTSXgUZa5y@gregn.net> <af828d8a-1e48-40ca-bb3c-94417281967d@gmail.com> <aBAx86aYIEKxCw5F@gregn.net> <e76a9638-ea16-4491-932b-fff148f8ec0d@gmail.com> <aBFx0HYXoycQmM-9@gregn.net> <CALsOB_CYcjQ4Bjy655CPy9GnLDDNvWqTtgtVZW2s2f5F6n5r3w@mail.gmail.com>
Subject: Re: announcing experimental Devuan Daedalus mate desktop iso
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <0325da77-8d06-41cd-859d-f74516f74f72@jookia.org>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The brltty dev claims generic USB serial devices for brltty so it catches U=
SB serial ports and people end up uninstalling brltty because there's no wa=
y to opt in or out of this.

Arch made the decision to split brltty in to two packages to fix this becau=
se the maintainer won't.

Apr 30, 2025 13:01:19 David Sexton <david@rustytelephone.net>:

> Also brltty comes up a lot when people talk about trying to connect Ardui=
no to Linux:=C2=A0https://github.com/arduino/help-center-content/issues/155
>=20
> On Tue, Apr 29, 2025 at 5:42=E2=80=AFPM Gregory Nowak <greg@gregn.net> wr=
ote:
>> On Tue, Apr 29, 2025 at 08:31:17AM -0400, fsmithred wrote:
>>> On 4/28/25 21:57, Gregory Nowak wrote:
>>> > Some sighted users seem to report that brltty hangs the x server. We
>>> > had someone claiming that last week on the dng list. There were way
>>> > more complaints about it when console-productivity was installed by
>>> > default with I think Ascii.
>>> >
>>>
>>> What about installing brltty but turning it off? Then you won't need to
>>> install it if you want it; you would just need to start the service.
>>=20
>> I think that would be a good solution.
>>=20
>> Greg
>>=20
>>=20
>>>
>>> fsmithred
>>>
>>=20
>> --=20
>> web site: http://www.gregn.net
>> gpg public key: http://www.gregn.net/pubkey.asc
>>=20
>> --=20
>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>>=20

