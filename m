Return-Path: <speakup+bounces-1481-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3A6BDCE0015
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 18:09:38 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=speedpost.net header.i=@speedpost.net header.a=rsa-sha256 header.s=fm1 header.b=gDNFuVpz;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=AivN7gH7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A68843817E6; Sat, 27 Dec 2025 12:09:37 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8805638092A
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 12:09:37 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9102C3817DA; Sat, 27 Dec 2025 12:09:31 -0500 (EST)
Received: from fout-a2-smtp.messagingengine.com (fout-a2-smtp.messagingengine.com [103.168.172.145])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2230738092A
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 12:09:31 -0500 (EST)
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.phl.internal (Postfix) with ESMTP id 3345BEC011A;
	Sat, 27 Dec 2025 12:09:30 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Sat, 27 Dec 2025 12:09:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=speedpost.net;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm1;
	 t=1766855370; x=1766941770; bh=qQbLGECCeUKqsLyexO0rzomZMiORHg4V
	xtAsXTEK6lk=; b=gDNFuVpz3Qq6xsj3g5lsE1EM6hOJXm5RjoLKKXPK7g982eMy
	ebzJNpDUgaywmUD3JL+ia6KwGGnhF/uik0d8OF3nEOre4upWhX4lW/rSHUqCosez
	+7PXoO3M66Js94r7AqePdTZJuVyw0SW7kEC03o46B+OdnHhDhY4qF4RzwIr/0jMe
	V0egDh28Eka2fxCZ5w+dGY7FoOznf50/NxbUaI3B6bd13Vd8JBu98NghE2GdhvG2
	3F0TnnR1q1VU6f4I5fpFYBEP3w9kb3wm9iYjptnd96hxFKP/4WtWUgB7MuKZMFaq
	do0eSGj+K4U24fzPrc+PQ3/CJNfdylQe/ZtDNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1766855370; x=
	1766941770; bh=qQbLGECCeUKqsLyexO0rzomZMiORHg4VxtAsXTEK6lk=; b=A
	ivN7gH7tWeGydRqvtmVxIDoh1OqCdbriKn8PU37SOZKVc7v6PmHLjKTfXj9Lz+SA
	qKlwS8YM5XiNIBX8xVuNcC1RWKDBUfzKk5WS7XSZ39+MjWvmIWk0T7NGDnnyS/he
	WwZxah+aADfnXZfMi5HT2DcK8Mal6+oX9j/TtuY3PjuoSUm4VyIVMZ5HeQH4ssDQ
	tf2ZuFiZqUQHUMOUeCFXPX+RyQSj25elaLi3WHgpjYirIFizfcK7aNkKvU52/3Sf
	0H/zQ4lxksTQ345IGEDYvf5M8+rUL1j/b4z4xC7UefAceR3Vd3TEOQCDXwziICTj
	ILTfV8NiuHJZseSfwi0GA==
X-ME-Sender: <xms:yhJQaVKaCjrDeOla3Ly6uGx1kZ2jqR20vbYkw6heRvEIbiUsrlUR9g>
    <xme:yhJQaXIAVXV--fGWHu_KzHnD3esBcaYVQcEtYaSHwFKb-PyBzPCwW0pOXl7qxowDr
    UkMdyxxwHy5VnnWo5Ba_5dy_c7UqSWb5qH6uWy7gXrfdeZX52hR>
X-ME-Received: <xmr:yhJQabWS-Mwmpwu4ZZAx2fdRBCdLPxz460JI2qCbwhAKLlyDGO1YQWHeFCbB7GqzIdttWPKgo0ZEkOGalYsne08CxgFKt31YBKKFiDsVB7c->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdejudelfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpegtgffhggfufffkfhevjgfvofesthhqmhdthhdtjeenucfhrhhomhepkggrtghhrghr
    hicumfhlihhnvgcuoeiikhhlihhnvgesshhpvggvughpohhsthdrnhgvtheqnecuggftrf
    grthhtvghrnhepudeukeehgeeugeevfeeghedvtedtudetieekkeffhfefieefffeufffg
    keffteeunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epiihklhhinhgvsehsphgvvgguphhoshhtrdhnvghtpdhnsggprhgtphhtthhopedvpdhm
    ohguvgepshhmthhpohhuthdprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsph
    gvrghkuhhprdhorhhgpdhrtghpthhtohepjhhhvghimhesmhgrthhhrdifihhstgdrvggu
    uh
X-ME-Proxy: <xmx:yhJQaRheW_bFxnNWgD0DryqzvHwMNKKrUKhiR7k-1jvDGQddeHvaRw>
    <xmx:yhJQae8dV3OAlaFQcBJHY374Q75o7aaehn2lVBFvUQRnYndT6TxEDQ>
    <xmx:yhJQaTBk6Nh7CDrK-Iy7XQpxJ2FaiQdY3ESEMAFe4_7vJ59hrFXhlQ>
    <xmx:yhJQaTJ7yvy4zg1zFmC6qE8e0dw1Hp2FWR8ddhNDXex3v2PTdhg1uw>
    <xmx:yhJQaX7ZTvuwqkUm8kC4pgqXb7LzpA8hS4BhSFfSHWYvuSGRRSiLEFLA>
Feedback-ID: i8bec41fa:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 27 Dec 2025 12:09:29 -0500 (EST)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Zachary Kline <zkline@speedpost.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (1.0)
Subject: Re: Building a hardware speech synth with a Raspberry Pi
Date: Sat, 27 Dec 2025 09:09:08 -0800
Message-Id: <01FF57A0-2383-4625-975C-944AE93F762D@speedpost.net>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
Cc: speakup@linux-speakup.org
In-Reply-To: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
To: "John G. Heim" <jheim@math.wisc.edu>
X-Mailer: iPhone Mail (23C55)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I might suggest using the Dectalk as a basis. It's available in source form a=
nd compiles readily. There is already at least one project, though I don't k=
now where I obtained it, to emulate a hardware Dectalk Express in software. I=
t works well enough to be used as a hardware synthesizerof sorts with DOS sc=
reen readers, and principally should be the same under Linux.=20

=20
Sent from my iPhone

> On Dec 27, 2025, at 8:55=E2=80=AFAM, John G. Heim <jheim@math.wisc.edu> wr=
ote:
>=20
> =EF=BB=BFI am looking for suggestions on how best to write code to emulate=
 a hardware speech synthesizer.
>=20
> I am trying to build a hardware speech synth out of a Raspberry Pi. I got s=
o far that if I plug my Raspberry Pi into a USB port on my desktop and tell t=
he desktop that it as a LiteTalk synth on that port, I hear the login prompt=
 on my Raspberry Pi.
>=20
> But that's about all I can do with it right now because all the code on th=
e RPI does is to read from it's serial port and relay the text to espeak-ng.=
 Single characters aren't echoed, etc. It doesn't really behave like a hardw=
are speech synth.
>=20
> So I am going to have to write some code to emulate a hardware synth. I am=
 looking for suggestions for how best to go about that. Is there one synth o=
r another that would be best to emulate? Should I invent a new synth type? C=
an speech-dispatcher help?
>=20
> All ideas welcome.
>=20
>=20
>=20
>=20


