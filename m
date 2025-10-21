Return-Path: <speakup+bounces-1459-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CC823BF7FD5
	for <lists+speakup@lfdr.de>; Tue, 21 Oct 2025 19:55:09 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=WyDxpWJF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E4ECC382B55; Tue, 21 Oct 2025 13:47:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BED5B382966
	for <lists+speakup@lfdr.de>; Tue, 21 Oct 2025 13:47:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6500638299E; Tue, 21 Oct 2025 13:47:02 -0400 (EDT)
Received: from mail38.out.titan.email (mail38.out.titan.email [209.209.25.3])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 18EB0382956
	for <speakup@linux-speakup.org>; Tue, 21 Oct 2025 13:47:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4crfqr5y6Xz2xBG;
	Tue, 21 Oct 2025 17:46:48 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=W5ln04FSnrBwHecBNIu//GueiwEBiAsHrCR2ajoerbk=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=cc:from:references:reply-to:subject:date:message-id:to:mime-version:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1761068808; v=1;
	b=WyDxpWJFfDyMDU63ed+dgIn3wbcbaR95pnJs0n5Z/wEoiVfRVlUYeFbjtknImvaHBv3S/G15
	U02O5aTYSzOLEvT2bnQy2zb0OxvoVaUNktvWst4gC/gklcjOb/Cj8qGL/2bCmPYzUdorM+s8N1C
	oVGnLQqq57edkq7Di3y5lBV8=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4crfqr0C7rz2xB2;
	Tue, 21 Oct 2025 17:46:47 +0000 (UTC)
Message-ID: <0c1e01dc42b2$ad05c280$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "K0LNY ??" <glenn@ervin.email>,
	"Kirk Reiser" <kirk@reisers.ca>
Cc: <speakup@linux-speakup.org>
References: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10> <925db357-1d21-2b65-7882-45d0a49911cf@reisers.ca> <0b5701dc41ca$5edf3d40$01ffa8c0@nucwin10> <ca477f4f-952d-93c0-fc67-56a7c24f8f24@reisers.ca> <0ba201dc41f4$702375b0$01ffa8c0@nucwin10>
Subject: Re: Voxin With Espeakup
Date: Tue, 21 Oct 2025 12:46:47 -0500
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
X-Titan-Src-Out: 1761068808623876489.9701.4053819069592638077@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=V5uH0fni c=1 sm=1 tr=0 ts=68f7c708
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=rhghyxR7AAAA:8
	a=qPKtzgQbAAAA:8 a=Q86lREBsB3c9NRaihNgA:9 a=wPNLvfGTeEIA:10
	a=3POYzjO64X90oOl-TX4z:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I installed the speakup-tools for the speechd-up, which is great for loading 
the settings on start up.
In looking at the tools, I noticed that it has something called, if I 
remember,
saywith
which is a way to switch to different synths.
I wonder if I could have used espeakup with saywith to use spd and have 
voxin working, rather than installing speechd-up?
Is speechd-up as good as espeakup?
Thanks.

Glenn
----- Original Message ----- 
From: "K0LNY ??" <glenn@ervin.email>
To: "Kirk Reiser" <kirk@reisers.ca>
Cc: <speakup@linux-speakup.org>
Sent: Monday, October 20, 2025 2:05 PM
Subject: Re: Voxin With Espeakup


Well it works now.
What I did was to run sudo spd-conf and set up speech-dispatcher for system,
before I just set it as user.
Glenn

----- Original Message ----- 
From: "Kirk Reiser" <kirk@reisers.ca>
To: "K0LNY ??" <glenn@ervin.email>
Cc: <speakup@linux-speakup.org>
Sent: Monday, October 20, 2025 10:49 AM
Subject: Re: Voxin With Espeakup


Hello again Glen: I don't know what python-speech is but I don't think
it has anything to do with speech-dispatcher or speakup. As to whether
you need to uninstall espeakup, it depends on what you've installed
last speechd-up or espeakup. They are both connectors from speakup but
they connect to different synth packages. I believe they both are
set-up to be the default connector so probably the last one will be
the considered default. If speech-dispatcher is installed and
configured you should be able to run speechd-up by hand to make sure
that everything is working. Then you can look into whether speechd-up
is set-up to be the default connector used.

   Kirk

On Mon, 20 Oct 2025, K0LNY ?? wrote:

> Hi Kirk,
> Thanks for getting back.
> I did install speechd-up after I installed speech-dispatcher, and
> python3-speechd .
> Do I need to uninstall espeakup?
> I've tried installing
> speakup
> but there seems to be no package by that name.
> Thanks.
>
> Glenn
> ----- Original Message -----
> From: "Kirk Reiser" <kirk@reisers.ca>
> To: "K0LNY ??" <glenn@ervin.email>
> Cc: <speakup@linux-speakup.org>
> Sent: Monday, October 20, 2025 7:31 AM
> Subject: Re: Voxin With Espeakup
>
>
> Hi Glen: I believe you wished to know if voxin works with speakup
> rather than espeakup. Espeakup is a connector between speakup and
> espeak as you have mentioned. If you wish to use speakup with speech
> dispatcher you need to install speechd-up. It used to be maintained by
> Chris Brannon who is no longer with us so I don't know who is
> maintaining it these days if any.
>
> I am CC'ing this to the speakup list so others might see it and answer
> your question if possible.
>
>   Kirk
>
>
> On Mon, 20 Oct 2025, K0LNY ?? wrote:
>
>> Hi Kirk,
>> I wonder if you can tell me if Voxin should work with espeakup.
>> I have voxin installed on my Raspberry PI, and it talks with spd-say and
>> with voxin-say.
>> So that part is working.
>> When I installed espeakup, it was using espeak, and after I installed
>> speech-dispatcher and ran spd-conf to use voxin, then espeak no longer
>> talks.
>> It is still running, but I just cannot get it to use the voxin.
>> I changed the default synth in /etc/default/espeakup, but that didn't fix
>> it.
>> If you could offer some guidance, it would be much appreciated.
>> Thanks.
>>
>> Glenn
>
>



