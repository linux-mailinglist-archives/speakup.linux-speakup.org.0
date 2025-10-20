Return-Path: <speakup+bounces-1449-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CA0C7BF2AD3
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 19:21:21 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=B6Qbaz/b;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BE80B382A2C; Mon, 20 Oct 2025 13:21:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9A266382A0F
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 13:21:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2CBF7382A1C; Mon, 20 Oct 2025 13:21:13 -0400 (EDT)
Received: from mail97.out.titan.email (mail97.out.titan.email [3.219.11.208])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 03736382A0F
	for <speakup@linux-speakup.org>; Mon, 20 Oct 2025 13:21:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cr2Jl0sv2z9rwh;
	Mon, 20 Oct 2025 17:21:11 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=lpSDIiRJna1uHxmlrgZEdrr8dJegfNDY3khls358IfA=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=cc:references:message-id:subject:date:to:mime-version:reply-to:from:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1760980871; v=1;
	b=B6Qbaz/bSC0lYcX2+IPuUoLtBuN/ngF1EVKOTvji40/lCMr9fPnz8h5xUc3ioml2FjgtfB3Z
	KybyklpbSyaJklu7takhwsaPg0PMuQ/X/sFEtyspfefuNy87zLURnHaDxcQDAG0vSFissDwKjNw
	C03wlXtFyQs1Pn4qbMCz2ICk=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cr2Jk58pfz9ryH;
	Mon, 20 Oct 2025 17:21:10 +0000 (UTC)
Message-ID: <0b7001dc41e5$edf14300$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Kirk Reiser" <kirk@reisers.ca>
Cc: <speakup@linux-speakup.org>
References: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10> <925db357-1d21-2b65-7882-45d0a49911cf@reisers.ca> <0b5701dc41ca$5edf3d40$01ffa8c0@nucwin10> <ca477f4f-952d-93c0-fc67-56a7c24f8f24@reisers.ca> <0b6401dc41e2$13de43a0$01ffa8c0@nucwin10> <981a2802-0dd0-5a10-3b4d-9fb4dc8ca8bb@reisers.ca>
Subject: Re: Voxin With Espeakup
Date: Mon, 20 Oct 2025 12:21:10 -0500
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
X-Titan-Src-Out: 1760980870941246452.2350.9166401708665383913@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=JbdGrVKV c=1 sm=1 tr=0 ts=68f66f86
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=rhghyxR7AAAA:8
	a=qPKtzgQbAAAA:8 a=Q86lREBsB3c9NRaihNgA:9 a=wPNLvfGTeEIA:10
	a=3POYzjO64X90oOl-TX4z:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22 a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Kirk,
Well I can only see what happens if I run it in a SSH window.
And it says speechd-up is already running.
So, I do
sudo pkill speechd-up
and I tried
sudo speechd-up --probe
and it said that it wrote to a file.
Still no speech though, this is the windows screenreader telling me this.
I also did pkill again and tried
speechd-up -D voxin
and still nothing.

Glenn
----- Original Message ----- 
From: "Kirk Reiser" <kirk@reisers.ca>
To: "K0LNY ??" <glenn@ervin.email>
Cc: <speakup@linux-speakup.org>
Sent: Monday, October 20, 2025 12:16 PM
Subject: Re: Voxin With Espeakup


What did the system tell you when you ran "sudo speechd-up"?

On Mon, 20 Oct 2025, K0LNY ?? wrote:

> Hi Kirk and All,
> So far, no luck.
> I did:
> sudo apt remove --purge espeakup
> and
> sudo apt remove --purge speechd-up
> Then I did:
> sudo apt install speechd-up
> And I rebooted.
> It didn't start as far as I know.
> I tried with and without sudo, at the command-line:
> speechd-up
> and still nothing.
> As mentioned before, voxin talks with spd-say and with voxin-say.
> Other audio files work as well.
> I sure someone has some more ideas.
> Thanks.
>
> Glenn
> ----- Original Message -----
> From: "Kirk Reiser" <kirk@reisers.ca>
> To: "K0LNY ??" <glenn@ervin.email>
> Cc: <speakup@linux-speakup.org>
> Sent: Monday, October 20, 2025 10:49 AM
> Subject: Re: Voxin With Espeakup
>
>
> Hello again Glen: I don't know what python-speech is but I don't think
> it has anything to do with speech-dispatcher or speakup. As to whether
> you need to uninstall espeakup, it depends on what you've installed
> last speechd-up or espeakup. They are both connectors from speakup but
> they connect to different synth packages. I believe they both are
> set-up to be the default connector so probably the last one will be
> the considered default. If speech-dispatcher is installed and
> configured you should be able to run speechd-up by hand to make sure
> that everything is working. Then you can look into whether speechd-up
> is set-up to be the default connector used.
>
>   Kirk
>
> On Mon, 20 Oct 2025, K0LNY ?? wrote:
>
>> Hi Kirk,
>> Thanks for getting back.
>> I did install speechd-up after I installed speech-dispatcher, and
>> python3-speechd .
>> Do I need to uninstall espeakup?
>> I've tried installing
>> speakup
>> but there seems to be no package by that name.
>> Thanks.
>>
>> Glenn
>> ----- Original Message -----
>> From: "Kirk Reiser" <kirk@reisers.ca>
>> To: "K0LNY ??" <glenn@ervin.email>
>> Cc: <speakup@linux-speakup.org>
>> Sent: Monday, October 20, 2025 7:31 AM
>> Subject: Re: Voxin With Espeakup
>>
>>
>> Hi Glen: I believe you wished to know if voxin works with speakup
>> rather than espeakup. Espeakup is a connector between speakup and
>> espeak as you have mentioned. If you wish to use speakup with speech
>> dispatcher you need to install speechd-up. It used to be maintained by
>> Chris Brannon who is no longer with us so I don't know who is
>> maintaining it these days if any.
>>
>> I am CC'ing this to the speakup list so others might see it and answer
>> your question if possible.
>>
>>   Kirk
>>
>>
>> On Mon, 20 Oct 2025, K0LNY ?? wrote:
>>
>>> Hi Kirk,
>>> I wonder if you can tell me if Voxin should work with espeakup.
>>> I have voxin installed on my Raspberry PI, and it talks with spd-say and
>>> with voxin-say.
>>> So that part is working.
>>> When I installed espeakup, it was using espeak, and after I installed
>>> speech-dispatcher and ran spd-conf to use voxin, then espeak no longer
>>> talks.
>>> It is still running, but I just cannot get it to use the voxin.
>>> I changed the default synth in /etc/default/espeakup, but that didn't 
>>> fix
>>> it.
>>> If you could offer some guidance, it would be much appreciated.
>>> Thanks.
>>>
>>> Glenn
>>
>>
> 


