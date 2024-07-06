Return-Path: <speakup+bounces-1158-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E5B13928FFB
	for <lists+speakup@lfdr.de>; Sat,  6 Jul 2024 03:50:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=0v9vq582;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 66354C81C66; Fri, 05 Jul 2024 21:50:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 460C1C80BA6
	for <lists+speakup@lfdr.de>; Fri, 05 Jul 2024 21:50:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24B2FC80FEF; Fri, 05 Jul 2024 21:50:26 -0400 (EDT)
Received: from out-170.mta1.migadu.com (out-170.mta1.migadu.com [95.215.58.170])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E1F7AC80BA4
	for <speakup@linux-speakup.org>; Fri, 05 Jul 2024 21:50:24 -0400 (EDT)
X-Envelope-To: terry@cudneys.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1720230619;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aeXNubP7q4nK7KyMeGYXAqBHcdsevF3VEXBnT8WWM3Q=;
	b=0v9vq582VBhr8biPitMjieFMKFSwvIfxab0eRNGmW5GGBkrz250rHNdTgZHDtWf3AS8vwA
	ymy6muR4XjK3yRqUHFtt9C0R76nAEJi4MNx4J93V9hoZFmxbuxtd7a+Fx95fbUO34RAfnl
	VaPWdJgVpZ1imgqUJqAIOlHIJ4XaE8b9XVov3WH0rP13/vIUc2N7PmRGby3XcL1FsbJhVy
	IUt1eNe0rE5mfgmkVgpEhYAsSyALlIcvKuD7hACgoPuCQHTYMt8PT4EDgH+lSY4hyUv0mJ
	EJZSBgjsKs5IINE/AaY2P9oLvZwob55cfxJZrNhoZgqqF+MioaAb31S+tdjXWg==
X-Envelope-To: speakup@linux-speakup.org
Date: Sat, 6 Jul 2024 11:50:06 +1000 (GMT+10:00)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: "Terry D. Cudney" <terry@cudneys.ca>
Cc: speakup@linux-speakup.org
Message-ID: <ed944b55-d700-4816-b244-ed86d6d4ada7@jookia.org>
In-Reply-To: <ZoieyBFD0TXlL_bd@cudneys.ca>
References: <ZoieyBFD0TXlL_bd@cudneys.ca>
Subject: Re: howto run speakup/orca concurrently in ubuntu 22.04 or 24.04
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
X-Correlation-ID: <ed944b55-d700-4816-b244-ed86d6d4ada7@jookia.org>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

I wrote a guide for this here:

https://www.jookia.org/wiki/System-wide_speakup

Jookia

Jul 6, 2024 11:33:13 Terry D. Cudney <terry@cudneys.ca>:

> Hi,
>=20
> =C2=A0=C2=A0=C2=A0 I'm new to this list. So, please bear with me...
>=20
> =C2=A0=C2=A0=C2=A0 I have run Debian cli-only with speakup for years... n=
o problem
>=20
> =C2=A0=C2=A0=C2=A0 I recently acquired a Thinkpad laptop with Windows 11 =
installed. I shrunk the Windows partition and installed Ubuntu 22.04 (why u=
buntu? because Lenovo claimed that Ubuntu 22.04 is "Certified" on this devi=
ce). After initial setup, I installed espeakup, expecting that speakup woul=
d come up talking on the next reboot... Not so!
>=20
> =C2=A0=C2=A0=C2=A0 So, my question:
>=20
> =C2=A0=C2=A0=C2=A0 Has anyone had success in installing/running espeakup/=
speakup onUbuntu 22.04?
>=20
> =C2=A0=C2=A0=C2=A0 I have tried with the gui/orca running and notrunning.=
.. same result: speakup does not talk.
>=20
> =C2=A0=C2=A0=C2=A0 I'd be happy to run cli-only if speakup would run from=
boot time.
>=20
> =C2=A0=C2=A0=C2=A0 Ideally though, if it is possible to run cli/speakup a=
nd gui/orca concurrently, that would be great!
>=20
> =C2=A0=C2=A0=C2=A0 All suggestions are welcome.
>=20
> =C2=A0=C2=A0=C2=A0 TIA,
>=20
> =C2=A0=C2=A0=C2=A0 --terry
> =C2=A0=C2=A0=C2=A0
> --=20
> Name: Terry D. Cudney
> Telephone: 289-488-4882 ext 1
> E-mail: terry@cudneys.ca
>=20

