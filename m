Return-Path: <speakup+bounces-1219-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1B6B7975ADA
	for <lists+speakup@lfdr.de>; Wed, 11 Sep 2024 21:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1726083091;
	bh=dG3qMwGY2lxZBofW+Y3erFWEmS3WXM+B1wN1+9iRsQk=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=bJDtt4l3p8pfl1dzJdZFEyr68GcoGzHRzpsimz5Ght95ZTieWXWB0LAvr/FmHivhO
	 fSKGReXgC/OvvpMXTX5Z8fVJGJRziz6ChfMACVNXQe47FIDEsw7gC2xmWfsMwrK7nc
	 GTPCcGzZweE2SrB1OOiiEhCAEjoLPccFbufBEmOU=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7F1BB3819AD; Wed, 11 Sep 2024 15:31:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1726083091;
	bh=dG3qMwGY2lxZBofW+Y3erFWEmS3WXM+B1wN1+9iRsQk=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=bJDtt4l3p8pfl1dzJdZFEyr68GcoGzHRzpsimz5Ght95ZTieWXWB0LAvr/FmHivhO
	 fSKGReXgC/OvvpMXTX5Z8fVJGJRziz6ChfMACVNXQe47FIDEsw7gC2xmWfsMwrK7nc
	 GTPCcGzZweE2SrB1OOiiEhCAEjoLPccFbufBEmOU=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5EFA1380686
	for <lists+speakup@lfdr.de>; Wed, 11 Sep 2024 15:31:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1726083084;
	bh=dG3qMwGY2lxZBofW+Y3erFWEmS3WXM+B1wN1+9iRsQk=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=q+u0hR7A/8hfJS2I4yWJVHR8pGG5hUqLUzny4+tmayLCU1z2e2feTT4VWETAxOUHX
	 1qqqgs58XX4icNyqfcdOuWX5VfxVG3bX8iQDyCeSd/qExLr6L4Dng27gvZFBqBK8m7
	 4XdeNBIe6w11075zKWhJiMokOXHBtD/fx5Ae9gdA=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6736B381960; Wed, 11 Sep 2024 15:31:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1726083084;
	bh=dG3qMwGY2lxZBofW+Y3erFWEmS3WXM+B1wN1+9iRsQk=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=q+u0hR7A/8hfJS2I4yWJVHR8pGG5hUqLUzny4+tmayLCU1z2e2feTT4VWETAxOUHX
	 1qqqgs58XX4icNyqfcdOuWX5VfxVG3bX8iQDyCeSd/qExLr6L4Dng27gvZFBqBK8m7
	 4XdeNBIe6w11075zKWhJiMokOXHBtD/fx5Ae9gdA=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0B308380686;
	Wed, 11 Sep 2024 15:31:24 -0400 (EDT)
Date: Wed, 11 Sep 2024 15:31:23 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Frank Carmickle <frank@carmickle.com>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup crashing
In-Reply-To: <BC5C0DB8-5CF1-4FD8-9946-5862B8DCE1DE@carmickle.com>
Message-ID: <721bc55d-9d0a-d66c-152f-697067d0e94d@reisers.ca>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com> <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca> <c152034f-942c-d477-04ab-58903eae7117@panix.com> <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca> <6D90B2FB-A20E-4A94-88EE-16C609812A9D@carmickle.com>
 <774a987a-fe4c-bd11-9c7f-9b4d06d08ce4@reisers.ca> <BC5C0DB8-5CF1-4FD8-9946-5862B8DCE1DE@carmickle.com>
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

I have not seen it and I don't run espeakup on a virtual machine as
you predict. You may want to ask Ty and Chris directly on the mumble
server though. at mumble.the-brannons.com:6473.

   Kirk

On Wed, 11 Sep 2024, Frank Carmickle wrote:

> Hi Kirk,
>
>> On Sep 10, 2024, at 16:59, Kirk Reiser <kirk@reisers.ca> wrote:
>>
>> Hi Frank: My issue has been that espeakup doesn't start on boot and
>> hasn't for the last couple of years. Just in the past few days Chris
>> and Tyler have been helping me and I think we have a work around which
>> I've been testing for a couple days now. It looks pretty consistant so
>> far.
>
> Interesting. I have not had this issue. The systemd unit, that has shipped with Debian versions, for years now, has worked for me.
>
> From what you are saying you have not seen the issue that I am having. I take it you are not running espeakup on a virtual machine?
>
> Best,
> --FC
>
>>
>>  Kirk
>>
>> On Tue, 10 Sep 2024, Frank Carmickle wrote:
>>
>>> Greetings Kirk Et Al,
>>>
>>> Does
>>>
>>> killall -1 espeakup
>>>
>>> work for you, when espeakup hangs? It works for me.
>>>
>>> Are you seeing espeakup hang on bare metal systems? I see it hang quite frequently when running on a virtual machine, but I have not seen it have on bare metal as of yet. I spend a lot less time running espeakup on bare metal, so that may be why.
>>>
>>> There was quite some discussion about this issue, on the Debian Accessibility list, over the last year. I'd really like to see this issue get sorted. Any thoughts are greatly appreciated.
>>>
>>> Best,
>>> --FC
>>>
>>> On Aug 17, 2024, at 16:46, Kirk Reiser <kirk@reisers.ca> wrote:
>>>>
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
>>>> Kirk
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
>>>>>> Kirk
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

