Return-Path: <speakup+bounces-1185-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AC2519559D6
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 23:29:38 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=T87J0iOu;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41613382675; Sat, 17 Aug 2024 17:29:38 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 21EA53820A0
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 17:29:38 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2B1D8382508; Sat, 17 Aug 2024 17:29:31 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C7DF83820A0
	for <speakup@linux-speakup.org>; Sat, 17 Aug 2024 17:29:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1723930169;
	bh=Ydfep5Yb878iliMy8sU+kxd4iusEYpoA+krcsOa6g8w=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=T87J0iOulTILRz33XElwZ5GySef32X8RZhWobw/037sPdLwVMh56exE7sKJPR1s3e
	 NTv8wbKPT8C0+E9oGN1bQbe8EbSs+CXEp519kaJHQTquR63C8o9ORjSm34Rl0Gk6Nc
	 lBbUrTXSbLde0rX8NkEEFu7BmuqVv6zeWX+oqxdb4kaXMW4dxBMbf0MetoIVZlg3J7
	 60mM2NCsg4X69I84Dw1xjPCkz/Y/PihI8oRebqunszbGMyGzjX5QfSWnXlR773o/ws
	 joZNkVcGiKg8KoUjwGo6Q6GATbrsRIOdJWZsGknjmzNjY0cr1TyAvkfPJKsitALqXX
	 WwN984EWQqCKw==
Original-Subject: Re: speakup crashing
Author: Tyler Spivey <tspivey@pcdesk.net>
Message-ID: <908ee927-94dd-47f1-af3a-57f423525614@pcdesk.net>
Date: Sat, 17 Aug 2024 14:29:26 -0700
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: speakup crashing
To:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com>
 <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca>
 <c152034f-942c-d477-04ab-58903eae7117@panix.com>
 <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca> <ZsEQBh0EshF4Y9Dn@titan>
 <31dc8d77-3c27-ed83-1a48-cd7577a3d7d6@reisers.ca> <ZsEUoeCSciVaSALS@titan>
Content-Language: en-US
From: Tyler Spivey <tspivey@pcdesk.net>
In-Reply-To: <ZsEUoeCSciVaSALS@titan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

In my experience, espeakup with systemd just doesn't work. The last time 
I tried it, in Archlinux, the option for setting the pid file was 
broken. I think that was fixed in git.

On 8/17/2024 2:22 PM, Jookia wrote:
> Ah, people don't have that?
> 
> I have systemd units and udev rules that let you run espeakup system-wide at boot,
> including logging in as root in a TTY and with GUI support.
> 
> On Sat, Aug 17, 2024 at 05:18:53PM -0400, Kirk Reiser wrote:
>> That is probably a good idea if you are lucky enough to be on a system
>>   which actually starts speakup on boot up with the systemd service
>>   files. On one of my systems that actually works but on my other
>>   systems they don't come up talking.  I have a speakup-start script
>>   which sets all the appropriate files to userland permissions and runs
>>   espeakup in userspace.
>>
>> I've noticed there have been a number of folks that have also
>> complained of espeakup not starting correctly on boot.
>>
>> I will also post that script if anyone wishes but if you have a system
>> which does work as planned then definitely do it as jookia suggests.
>>
>>    Kirk
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
>>>>    Kirk
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
>>>>>>    Kirk
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


