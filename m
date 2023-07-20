Return-Path: <speakup+bounces-1023-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D5C7375A36A
	for <lists+speakup@lfdr.de>; Thu, 20 Jul 2023 02:25:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=K0+Cj1Pk;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F245C38252F; Wed, 19 Jul 2023 20:25:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D09183823EA
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 20:25:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 17586382462; Wed, 19 Jul 2023 20:25:44 -0400 (EDT)
Received: from mail10.out.titan.email (mail10.out.titan.email [3.226.153.83])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E48D93823EA
	for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 20:25:43 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id AE2B714006A;
	Thu, 20 Jul 2023 00:25:40 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 2F2A9140015;
	Thu, 20 Jul 2023 00:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1689812740;
	bh=dPsP/X79SrsNpTiqHzupr7UU2i2LFkOhCVWZLFNVnhA=;
	h=Message-ID:Reply-To:From:To:Cc:References:Subject:Date:
	 MIME-Version:From:To:Cc:Subject:Message-ID;
	b=K0+Cj1Pk2u+vB5Z30OKd6N8XjKB6S+UsByJLRCDDi5SMGWTU+O2AtMBRiUDT8xz5H
	 v81/x1EcV7461yxjuWRf0HhTl4QGYvaayN0GwFP8rd2s+dXwlAh67lJNt1f+3UEj9A
	 MROw+QiRREaPUYNrSIhALjUrYzgXU166MuYogEVo=
Message-ID: <0c4d01d9baa0$b70d34d0$01ffa8c0@nucwin10>
Reply-To: "K0LNY" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY" <glenn@ervin.email>
To: "Karen Lewellen" <klewellen@shellworld.net>
Cc: "Jookia" <contact@jookia.org>,
	"John Covici" <covici@ccs.covici.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net> <m3y1jcdu3l.wl-covici@ccs.covici.com> <Pine.LNX.4.64.2307190821260.1207890@users.shellworld.net> <ZLhxip9u1Z_8RMvx@titan> <0c4301d9ba9c$30ff4300$01ffa8c0@nucwin10> <Pine.LNX.4.64.2307192015080.1216564@users.shellworld.net>
Subject: Re: sort of ot: what causes this issue?
Date: Wed, 19 Jul 2023 19:25:40 -0500
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
	format=flowed;
	charset="iso-8859-1";
	reply-type=response
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1689812740505831761.11528.7434833516453327819@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=F76RNItN c=1 sm=1 tr=0 ts=64b87f04
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=9_GH9xibAAAA:8 a=jovt0mFxAAAA:8 a=uJ_w1ttZAAAA:8 a=qPKtzgQbAAAA:8
	a=Hi4hZv3KbNWEjYHXN04A:9 a=wPNLvfGTeEIA:10 a=NnfY32tqZX4A:10
	a=Q2Fs8dv5wtUA:10 a=dO7qa_Xy17WzffDKgyPM:22 a=StMmMNtBgVvPiZYFi0f4:22
	a=muQ5ErImgoUO71fbljk_:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well they aren't any harder than a power strip.
I think you can connect to them via a network cable and configure them, but 
I have never done that with mine.
Glenn
----- Original Message ----- 
From: "Karen Lewellen" <klewellen@shellworld.net>
To: "K0LNY" <glenn@ervin.email>
Cc: "Jookia" <contact@jookia.org>; "John Covici" <covici@ccs.covici.com>; 
"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Sent: Wednesday, July 19, 2023 7:15 PM
Subject: Re: sort of ot: what causes this issue?


> The problem is finding one that is easy to  use and choose.
>
>
>
> On Wed, 19 Jul 2023, K0LNY wrote:
>
>> Also, perhaps a UPS would stop any power spikes.
>> Glenn
>> ----- Original Message ----- From: "Jookia" <contact@jookia.org>
>> To: "Karen Lewellen" <klewellen@shellworld.net>
>> Cc: "John Covici" <covici@ccs.covici.com>; "Speakup is a screen review 
>> system for Linux." <speakup@linux-speakup.org>
>> Sent: Wednesday, July 19, 2023 6:28 PM
>> Subject: Re: sort of ot: what causes this issue?
>>
>>
>>>  Try changing the power supply of the device, maybe this new place has
>>>  power
>>>  spikes that it can't handle.
>>>
>>>  On Wed, Jul 19, 2023 at 08:25:10AM -0400, Karen Lewellen wrote:
>>> >  What has been happening since I moved is that, say after a power 
>>> > change
>>> >  happen sup stairs, I will first get a spike in pitch,
>>>
>>
>>
>> 


