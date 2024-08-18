Return-Path: <speakup+bounces-1186-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B011E955A85
	for <lists+speakup@lfdr.de>; Sun, 18 Aug 2024 03:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723944480;
	bh=88uzM4qQCTJKewF7JsOfFoP9uBFixyJ5hLtt38HXFYs=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=nMD65DI5iuSi0iyEDEk5wF5FUjMiwRZle2fiHu1fHBCYybloU8Z5HT5n1rY+wmPss
	 wyHBi7WW2YMVYzV8oKFX0GzEyDeCbThjzgcTcpAUrU52IN6i/WtyDyS8s1iKeeSBp/
	 sQFVrcGa/Du1TR9lIRm3fGcKy40L+QZ+5KxbSEgE=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D7E39382708; Sat, 17 Aug 2024 21:28:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723944480;
	bh=88uzM4qQCTJKewF7JsOfFoP9uBFixyJ5hLtt38HXFYs=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=nMD65DI5iuSi0iyEDEk5wF5FUjMiwRZle2fiHu1fHBCYybloU8Z5HT5n1rY+wmPss
	 wyHBi7WW2YMVYzV8oKFX0GzEyDeCbThjzgcTcpAUrU52IN6i/WtyDyS8s1iKeeSBp/
	 sQFVrcGa/Du1TR9lIRm3fGcKy40L+QZ+5KxbSEgE=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B66DC3821E1
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 21:28:00 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723944473;
	bh=88uzM4qQCTJKewF7JsOfFoP9uBFixyJ5hLtt38HXFYs=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=j2sIwn0ZHqVoXhW9Ra+PZpt1rCaC0BBolm4/11AVzfesWBy5F1qBrFTtf3kbPrVcC
	 QEzALnIlM+0L0dnfgkbCKZqedvCzkeUwjq1uHsFHCZ7XrXZev2lWLHoN5PmnCO1Glt
	 iAq1VftoA7qNIcSQ5WvIUg6ZEzTBIbaFmLBqTSVw=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C02653825D2; Sat, 17 Aug 2024 21:27:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723944472;
	bh=88uzM4qQCTJKewF7JsOfFoP9uBFixyJ5hLtt38HXFYs=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=Q0p+Cq8p/OIHHRHdDttDCqN7qAqimcgz4UvHtxAy/LoBbgHJ+elxKfVyiN/ettvfI
	 gsOFuRrLqxu7nAb5NeLq7W1QuMi8To71DGk3mYqOyd5QZOtxKzL9pYYpCOAVaFiUAt
	 mO3cn3SULaf+DHJ9jjwzDIVRqGyTeQxZmZWyFP78=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CFDD83821DD;
	Sat, 17 Aug 2024 21:27:52 -0400 (EDT)
Date: Sat, 17 Aug 2024 21:27:52 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Jookia <contact@jookia.org>
cc: Jude DaShiell <jdashiel@panix.com>, speakup@linux-speakup.org
Subject: Re: speakup crashing
In-Reply-To: <ZsEUoeCSciVaSALS@titan>
Message-ID: <c461630e-ab14-a966-0d29-08960033f630@reisers.ca>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com> <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca> <c152034f-942c-d477-04ab-58903eae7117@panix.com> <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca> <ZsEQBh0EshF4Y9Dn@titan>
 <31dc8d77-3c27-ed83-1a48-cd7577a3d7d6@reisers.ca> <ZsEUoeCSciVaSALS@titan>
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

Zookia: I invite you to post your scripts here on the list please. I
know a lot of folks that have faught valiantly trying to get their
systems to come up talking unsuccessfully.

I myself prefer that things that can, use userspace instead of root,
other than speakup_soft....

   Kirk

On Sun, 18 Aug 2024, Jookia wrote:

> Ah, people don't have that?
>
> I have systemd units and udev rules that let you run espeakup system-wide at boot,
> including logging in as root in a TTY and with GUI support.
>
> On Sat, Aug 17, 2024 at 05:18:53PM -0400, Kirk Reiser wrote:
>> That is probably a good idea if you are lucky enough to be on a system
>>  which actually starts speakup on boot up with the systemd service
>>  files. On one of my systems that actually works but on my other
>>  systems they don't come up talking.  I have a speakup-start script
>>  which sets all the appropriate files to userland permissions and runs
>>  espeakup in userspace.
>>
>> I've noticed there have been a number of folks that have also
>> complained of espeakup not starting correctly on boot.
>>
>> I will also post that script if anyone wishes but if you have a system
>> which does work as planned then definitely do it as jookia suggests.
>>
>>   Kirk
>>
>> On Sun, 18 Aug 2024, Jookia wrote:
>>
>>> On systemd system you should use
>>>
>>> systemctl restart espeakup
>>>
>>> or
>>>
>>> systemctl kill --signal=9 espeakup
>>> systemctl restart espeakup
>>>
>>> This will ensure the service manager knows what's happening.
>>>
>>> On Sat, Aug 17, 2024 at 04:46:34PM -0400, Kirk Reiser wrote:
>>>> Okay, try this it's basically a one liner. The reason you can't
>>>> restart espeakup is because it doesn't actually die, so it has to be
>>>> killed off before restarting it.
>>>>
>>>> ```
>>>> #!/bin/bash
>>>>
>>>> killall -9 espeakup; espeakup
>>>>
>>>> ```
>>>>
>>>> My bash script is named respeakup but you can name it anything you like, of course.
>>>>
>>>>   Kirk
>>>>
>>>> On Sat, 17 Aug 2024, Jude DaShiell wrote:
>>>>
>>>>> It's entirely possible espeakup is crashing.  When this happens, I can't
>>>>> restart espeakup either so end up having to reboot to regain control of
>>>>> the system.
>>>>>
>>>>>
>>>>> --
>>>>> Jude <jdashiel at panix dot com>
>>>>> "There are four boxes to be used in defense of liberty:
>>>>> soap, ballot, jury, and ammo.
>>>>> Please use in that order."
>>>>> Ed Howdershelt 1940.
>>>>>
>>>>> On Sat, 17 Aug 2024, Kirk Reiser wrote:
>>>>>
>>>>>> Hi Jude: This may be a silly question, but are you sure it's speakup
>>>>>> crashing? Often, espeakup dies here and so I have a simple script to
>>>>>> kill it off and restart espeakup. I haven''t had speakup itself hang
>>>>>> the system for quite a while.
>>>>>>
>>>>>>   Kirk
>>>>>>
>>>>>> On Sat, 17 Aug 2024, Jude DaShiell wrote:
>>>>>>
>>>>>>> Every so often speakup crashes on my computer.
>>>>>>> I am running a recent version of Jenux so systemd is in use here.
>>>>>>> What I would like to know is a procedure once the system has been rebooted
>>>>>>> to locate any crash messages speakup may have left in logs.  pipewire is
>>>>>>> running the sound system along with alsa here and there's necessary
>>>>>>> pulseaudio artifacts pipewire uses on the system.
>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> Jude <jdashiel at panix dot com>
>>>>>>> "There are four boxes to be used in defense of liberty:
>>>>>>> soap, ballot, jury, and ammo.
>>>>>>> Please use in that order."
>>>>>>> Ed Howdershelt 1940.
>>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>

