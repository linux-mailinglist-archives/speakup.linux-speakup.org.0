Return-Path: <speakup+bounces-1451-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BF8FDBF2BB7
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 19:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760981795;
	bh=I60uMghSw82ZsMJa53dH0AVBq1GytfX1dTXsqkLeIE8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=R2cXVSvHdmUhBZwFBVkIOqQepHX/EmlW2ZxVIgxDapKf2G0WaysJmqL56cARTc+M3
	 rUFkxtg6SkCs/hAW7StKeDqM9b46xEb4laqHCKT+8cDG58AGtydy1MtKsxnFhFxuwa
	 jVPdIljvok497k1e6joVXKEYB/Dj58qGLul4VsmE=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 213BF382A2E; Mon, 20 Oct 2025 13:36:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760981795;
	bh=I60uMghSw82ZsMJa53dH0AVBq1GytfX1dTXsqkLeIE8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=R2cXVSvHdmUhBZwFBVkIOqQepHX/EmlW2ZxVIgxDapKf2G0WaysJmqL56cARTc+M3
	 rUFkxtg6SkCs/hAW7StKeDqM9b46xEb4laqHCKT+8cDG58AGtydy1MtKsxnFhFxuwa
	 jVPdIljvok497k1e6joVXKEYB/Dj58qGLul4VsmE=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F282A382A2E
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 13:36:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760981787;
	bh=I60uMghSw82ZsMJa53dH0AVBq1GytfX1dTXsqkLeIE8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=RsIWsnC7AU5HCo1lt7GMKIi4LtmqZ9vLuqI9DYDLFSj7ayAMF/xlSCJKMZPvwrcmh
	 jAYbPjrBmSblfY1QXad6qoDcRFnLjApOniI2YQsEUrq4EIyTYGjkSeFoqCzlcZGKUF
	 oNBYDYM0jOb7bfdskpdO4HOSwjN0/7HiFMXfOHZw=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 99718382A2E; Mon, 20 Oct 2025 13:36:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1760981787;
	bh=I60uMghSw82ZsMJa53dH0AVBq1GytfX1dTXsqkLeIE8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=RsIWsnC7AU5HCo1lt7GMKIi4LtmqZ9vLuqI9DYDLFSj7ayAMF/xlSCJKMZPvwrcmh
	 jAYbPjrBmSblfY1QXad6qoDcRFnLjApOniI2YQsEUrq4EIyTYGjkSeFoqCzlcZGKUF
	 oNBYDYM0jOb7bfdskpdO4HOSwjN0/7HiFMXfOHZw=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0A47F382A29;
	Mon, 20 Oct 2025 13:36:27 -0400 (EDT)
Date: Mon, 20 Oct 2025 13:36:26 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: K0LNY ?? <glenn@ervin.email>
cc: speakup@linux-speakup.org
Subject: Re: Voxin With Espeakup
In-Reply-To: <0b7001dc41e5$edf14300$01ffa8c0@nucwin10>
Message-ID: <c92501f4-a4ab-08d9-420b-aac383162dfb@reisers.ca>
References: <0b4a01dc418a$c8105c80$01ffa8c0@nucwin10> <925db357-1d21-2b65-7882-45d0a49911cf@reisers.ca> <0b5701dc41ca$5edf3d40$01ffa8c0@nucwin10> <ca477f4f-952d-93c0-fc67-56a7c24f8f24@reisers.ca> <0b6401dc41e2$13de43a0$01ffa8c0@nucwin10>
 <981a2802-0dd0-5a10-3b4d-9fb4dc8ca8bb@reisers.ca> <0b7001dc41e5$edf14300$01ffa8c0@nucwin10>
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

If your system tells you that speechd-up is running then it is. What
happens when you type ls or something like that on the rpi keyboard?

If you are logged in with ssh then you get everything the system
responds with typically.

It has been many years since I used speech-dispatcher so I don't know
how one tells how their system is configured.

If you don't get an error I can only figure it is working correctly
and some configuration step isn't right.

On Mon, 20 Oct 2025, K0LNY ?? wrote:

> Hi Kirk,
> Well I can only see what happens if I run it in a SSH window.
> And it says speechd-up is already running.
> So, I do
> sudo pkill speechd-up
> and I tried
> sudo speechd-up --probe
> and it said that it wrote to a file.
> Still no speech though, this is the windows screenreader telling me this.
> I also did pkill again and tried
> speechd-up -D voxin
> and still nothing.
>
> Glenn
> ----- Original Message -----
> From: "Kirk Reiser" <kirk@reisers.ca>
> To: "K0LNY ??" <glenn@ervin.email>
> Cc: <speakup@linux-speakup.org>
> Sent: Monday, October 20, 2025 12:16 PM
> Subject: Re: Voxin With Espeakup
>
>
> What did the system tell you when you ran "sudo speechd-up"?
>
> On Mon, 20 Oct 2025, K0LNY ?? wrote:
>
>> Hi Kirk and All,
>> So far, no luck.
>> I did:
>> sudo apt remove --purge espeakup
>> and
>> sudo apt remove --purge speechd-up
>> Then I did:
>> sudo apt install speechd-up
>> And I rebooted.
>> It didn't start as far as I know.
>> I tried with and without sudo, at the command-line:
>> speechd-up
>> and still nothing.
>> As mentioned before, voxin talks with spd-say and with voxin-say.
>> Other audio files work as well.
>> I sure someone has some more ideas.
>> Thanks.
>>
>> Glenn
>> ----- Original Message -----
>> From: "Kirk Reiser" <kirk@reisers.ca>
>> To: "K0LNY ??" <glenn@ervin.email>
>> Cc: <speakup@linux-speakup.org>
>> Sent: Monday, October 20, 2025 10:49 AM
>> Subject: Re: Voxin With Espeakup
>>
>>
>> Hello again Glen: I don't know what python-speech is but I don't think
>> it has anything to do with speech-dispatcher or speakup. As to whether
>> you need to uninstall espeakup, it depends on what you've installed
>> last speechd-up or espeakup. They are both connectors from speakup but
>> they connect to different synth packages. I believe they both are
>> set-up to be the default connector so probably the last one will be
>> the considered default. If speech-dispatcher is installed and
>> configured you should be able to run speechd-up by hand to make sure
>> that everything is working. Then you can look into whether speechd-up
>> is set-up to be the default connector used.
>>
>>   Kirk
>>
>> On Mon, 20 Oct 2025, K0LNY ?? wrote:
>>
>>> Hi Kirk,
>>> Thanks for getting back.
>>> I did install speechd-up after I installed speech-dispatcher, and
>>> python3-speechd .
>>> Do I need to uninstall espeakup?
>>> I've tried installing
>>> speakup
>>> but there seems to be no package by that name.
>>> Thanks.
>>>
>>> Glenn
>>> ----- Original Message -----
>>> From: "Kirk Reiser" <kirk@reisers.ca>
>>> To: "K0LNY ??" <glenn@ervin.email>
>>> Cc: <speakup@linux-speakup.org>
>>> Sent: Monday, October 20, 2025 7:31 AM
>>> Subject: Re: Voxin With Espeakup
>>>
>>>
>>> Hi Glen: I believe you wished to know if voxin works with speakup
>>> rather than espeakup. Espeakup is a connector between speakup and
>>> espeak as you have mentioned. If you wish to use speakup with speech
>>> dispatcher you need to install speechd-up. It used to be maintained by
>>> Chris Brannon who is no longer with us so I don't know who is
>>> maintaining it these days if any.
>>>
>>> I am CC'ing this to the speakup list so others might see it and answer
>>> your question if possible.
>>>
>>>   Kirk
>>>
>>>
>>> On Mon, 20 Oct 2025, K0LNY ?? wrote:
>>>
>>>> Hi Kirk,
>>>> I wonder if you can tell me if Voxin should work with espeakup.
>>>> I have voxin installed on my Raspberry PI, and it talks with spd-say and
>>>> with voxin-say.
>>>> So that part is working.
>>>> When I installed espeakup, it was using espeak, and after I installed
>>>> speech-dispatcher and ran spd-conf to use voxin, then espeak no longer
>>>> talks.
>>>> It is still running, but I just cannot get it to use the voxin.
>>>> I changed the default synth in /etc/default/espeakup, but that didn't
>>>> fix
>>>> it.
>>>> If you could offer some guidance, it would be much appreciated.
>>>> Thanks.
>>>>
>>>> Glenn
>>>
>>>
>>
>

