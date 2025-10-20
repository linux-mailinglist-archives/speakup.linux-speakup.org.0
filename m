Return-Path: <speakup+bounces-1445-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E9350BF1B54
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 16:04:12 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=KlG9wbVV;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 34CF7382A40; Mon, 20 Oct 2025 10:04:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 13EA738299D
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 10:04:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F9A3382961; Mon, 20 Oct 2025 10:04:01 -0400 (EDT)
Received: from mail11.out.titan.email (mail11.out.titan.email [3.232.242.252])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C90B6382956
	for <speakup@linux-speakup.org>; Mon, 20 Oct 2025 10:04:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cqxx65mhwz9s0r;
	Mon, 20 Oct 2025 14:03:54 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=LwnMaAChx6Vjf0vw5cTiMfsm5iT4Tbn9L6SrYHZRnDU=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=message-id:references:mime-version:reply-to:cc:to:date:from:subject:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1760969034; v=1;
	b=KlG9wbVVLnSFX1bJcWHMlsA3CAkAWH5mSzGhU+fU8WZMevvfzpgtTvW3NQn8VObPslPQBuix
	ItMt8xXRZiEdm1zLnBZiL2VgKwsoq7fXppUGMecvbHYQJnZSsbuYSzEr+S+blk/W3i/PlorBWWQ
	4X4hFAZS0GNJp4yWFtb4Tc64=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cqxx61XNRz9rwm;
	Mon, 20 Oct 2025 14:03:54 +0000 (UTC)
Message-ID: <0b5701dc41ca$5edf3d40$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Kirk Reiser" <kirk@reisers.ca>
Cc: <speakup@linux-speakup.org>
References: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10> <925db357-1d21-2b65-7882-45d0a49911cf@reisers.ca>
Subject: Re: Voxin With Espeakup
Date: Mon, 20 Oct 2025 09:03:53 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1760969034525186252.2350.2177142793582730426@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=V5uH0fni c=1 sm=1 tr=0 ts=68f6414a
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=rhghyxR7AAAA:8
	a=qPKtzgQbAAAA:8 a=ClLhDWEcMoRge6GalrsA:9 a=wPNLvfGTeEIA:10
	a=3POYzjO64X90oOl-TX4z:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Kirk,
Thanks for getting back.
I did install speechd-up after I installed speech-dispatcher, and 
python3-speechd .
Do I need to uninstall espeakup?
I've tried installing
speakup
but there seems to be no package by that name.
Thanks.

Glenn
----- Original Message ----- 
From: "Kirk Reiser" <kirk@reisers.ca>
To: "K0LNY ??" <glenn@ervin.email>
Cc: <speakup@linux-speakup.org>
Sent: Monday, October 20, 2025 7:31 AM
Subject: Re: Voxin With Espeakup


Hi Glen: I believe you wished to know if voxin works with speakup
rather than espeakup. Espeakup is a connector between speakup and
espeak as you have mentioned. If you wish to use speakup with speech
dispatcher you need to install speechd-up. It used to be maintained by
Chris Brannon who is no longer with us so I don't know who is
maintaining it these days if any.

I am CC'ing this to the speakup list so others might see it and answer
your question if possible.

   Kirk


On Mon, 20 Oct 2025, K0LNY ?? wrote:

> Hi Kirk,
> I wonder if you can tell me if Voxin should work with espeakup.
> I have voxin installed on my Raspberry PI, and it talks with spd-say and 
> with voxin-say.
> So that part is working.
> When I installed espeakup, it was using espeak, and after I installed 
> speech-dispatcher and ran spd-conf to use voxin, then espeak no longer 
> talks.
> It is still running, but I just cannot get it to use the voxin.
> I changed the default synth in /etc/default/espeakup, but that didn't fix 
> it.
> If you could offer some guidance, it would be much appreciated.
> Thanks.
>
> Glenn


