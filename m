Return-Path: <speakup+bounces-1448-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E33FFBF2A9C
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 19:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760980615;
	bh=q+yinTNR6torhtMBHpLbqCKbMpOqJiuQ5F9iXQIqvHA=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=UvfmoCB0duGKm6wvzLm7kkDssJZAMh+MLw1sDePLdoUCCffxJ8NWr5AevfZHUB3UO
	 lgrkoy0ucdaCDX79Y0leq1SAFZtA3kaPAr6J/OzRqGZEv8pLeicFHfRIugjeq1HVv8
	 sHhLt/MhteZdvXw0lAaQzFN4iPRReUnoPLM3NEB8=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C6A26382A3D; Mon, 20 Oct 2025 13:16:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760980615;
	bh=q+yinTNR6torhtMBHpLbqCKbMpOqJiuQ5F9iXQIqvHA=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=UvfmoCB0duGKm6wvzLm7kkDssJZAMh+MLw1sDePLdoUCCffxJ8NWr5AevfZHUB3UO
	 lgrkoy0ucdaCDX79Y0leq1SAFZtA3kaPAr6J/OzRqGZEv8pLeicFHfRIugjeq1HVv8
	 sHhLt/MhteZdvXw0lAaQzFN4iPRReUnoPLM3NEB8=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A6525382A12
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 13:16:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760980608;
	bh=q+yinTNR6torhtMBHpLbqCKbMpOqJiuQ5F9iXQIqvHA=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=kxOhlrxD/4sJ7LLsSmXfYaDraHpP4XYKo+HP3nD+ECBIAGROPGTvTlHiOlyXvoYvS
	 roEelliS9US36WG3IBwPFqihU3fIWFgxBujW/YRQW57QiUrog/cpGytzvAIV0dK5Ph
	 tEeolRKwXDmDQ0LeJjyPdjeozrdS/PeSGiHceOzY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 40EFD382A0A; Mon, 20 Oct 2025 13:16:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760980606;
	bh=q+yinTNR6torhtMBHpLbqCKbMpOqJiuQ5F9iXQIqvHA=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=mD9/GXCVir6GrT3F8bVk4Y2Yng+CRSxGuRjqqoqX4lbdWMPaE42Fbog9AbhA5l6a8
	 XBS4wjPlz2THKlb9+b9zqe/57jcud0nZvJ87m381rMwXOc25xlTN9dikD1M5P6g+7t
	 FysdNloO1jxGHzvCIS8hboywhdceO6XlTZVkm+Ms=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D2F693829BA;
	Mon, 20 Oct 2025 13:16:46 -0400 (EDT)
Date: Mon, 20 Oct 2025 13:16:46 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: K0LNY ?? <glenn@ervin.email>
cc: speakup@linux-speakup.org
Subject: Re: Voxin With Espeakup
In-Reply-To: <0b6401dc41e2$13de43a0$01ffa8c0@nucwin10>
Message-ID: <981a2802-0dd0-5a10-3b4d-9fb4dc8ca8bb@reisers.ca>
References: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10> <925db357-1d21-2b65-7882-45d0a49911cf@reisers.ca> <0b5701dc41ca$5edf3d40$01ffa8c0@nucwin10> <ca477f4f-952d-93c0-fc67-56a7c24f8f24@reisers.ca> <0b6401dc41e2$13de43a0$01ffa8c0@nucwin10>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

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
>>> I changed the default synth in /etc/default/espeakup, but that didn't fix
>>> it.
>>> If you could offer some guidance, it would be much appreciated.
>>> Thanks.
>>>
>>> Glenn
>>
>>
>

