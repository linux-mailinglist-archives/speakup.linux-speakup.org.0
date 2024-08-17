Return-Path: <speakup+bounces-1181-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5655F9559A5
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 22:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723927601;
	bh=8ljnDjmnAxgTf89fDFF+jYmbpDworiUvt4HdGkBN4xE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=g6EWd8U/CKNoNLU7+TD8ez2xZb05IKAWLeBQb2dMOGLpJiHSQVdWs6/yNI/L9QyyJ
	 LDiCEAMnoHc6T/E2eRRON0Bu9qd91VapTa/3lRkgdqxNU33WkHKQSAfsyvVyv9/YCI
	 m2GdjNt/AyiEbJo5JkUV0vj8s1julti7YrzKUgKI=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 60D813830C3; Sat, 17 Aug 2024 16:46:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723927601;
	bh=8ljnDjmnAxgTf89fDFF+jYmbpDworiUvt4HdGkBN4xE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=g6EWd8U/CKNoNLU7+TD8ez2xZb05IKAWLeBQb2dMOGLpJiHSQVdWs6/yNI/L9QyyJ
	 LDiCEAMnoHc6T/E2eRRON0Bu9qd91VapTa/3lRkgdqxNU33WkHKQSAfsyvVyv9/YCI
	 m2GdjNt/AyiEbJo5JkUV0vj8s1julti7YrzKUgKI=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4030D382508
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 16:46:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723927594;
	bh=8ljnDjmnAxgTf89fDFF+jYmbpDworiUvt4HdGkBN4xE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=dGnbdWULwN9iiPnkMl/tjU3eYIL27yySsRxwLGhDkYSvcGDEdbSWLbcm1nSAeYvyH
	 HAWQ6HN2V38NgfnAafphRXirozKQ9yaI0EnKmH1xxaM75wnFnzm3c1xJYdzwe+6vFg
	 fESpxO9QeevAPc9JIs9Muy1NUmcvK11+FFZ3jNSk=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6E0303825D2; Sat, 17 Aug 2024 16:46:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723927594;
	bh=8ljnDjmnAxgTf89fDFF+jYmbpDworiUvt4HdGkBN4xE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=dGnbdWULwN9iiPnkMl/tjU3eYIL27yySsRxwLGhDkYSvcGDEdbSWLbcm1nSAeYvyH
	 HAWQ6HN2V38NgfnAafphRXirozKQ9yaI0EnKmH1xxaM75wnFnzm3c1xJYdzwe+6vFg
	 fESpxO9QeevAPc9JIs9Muy1NUmcvK11+FFZ3jNSk=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4BC903820A0;
	Sat, 17 Aug 2024 16:46:34 -0400 (EDT)
Date: Sat, 17 Aug 2024 16:46:34 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Jude DaShiell <jdashiel@panix.com>
cc: speakup@linux-speakup.org
Subject: Re: speakup crashing
In-Reply-To: <c152034f-942c-d477-04ab-58903eae7117@panix.com>
Message-ID: <a7fea02a-cfc1-34e1-315a-86c03a63ec17@reisers.ca>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com> <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca> <c152034f-942c-d477-04ab-58903eae7117@panix.com>
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

Okay, try this it's basically a one liner. The reason you can't
restart espeakup is because it doesn't actually die, so it has to be
killed off before restarting it.

```
#!/bin/bash

killall -9 espeakup; espeakup

```

My bash script is named respeakup but you can name it anything you like, of course.

   Kirk

On Sat, 17 Aug 2024, Jude DaShiell wrote:

> It's entirely possible espeakup is crashing.  When this happens, I can't
> restart espeakup either so end up having to reboot to regain control of
> the system.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Sat, 17 Aug 2024, Kirk Reiser wrote:
>
>> Hi Jude: This may be a silly question, but are you sure it's speakup
>> crashing? Often, espeakup dies here and so I have a simple script to
>> kill it off and restart espeakup. I haven''t had speakup itself hang
>> the system for quite a while.
>>
>>   Kirk
>>
>> On Sat, 17 Aug 2024, Jude DaShiell wrote:
>>
>>> Every so often speakup crashes on my computer.
>>> I am running a recent version of Jenux so systemd is in use here.
>>> What I would like to know is a procedure once the system has been rebooted
>>> to locate any crash messages speakup may have left in logs.  pipewire is
>>> running the sound system along with alsa here and there's necessary
>>> pulseaudio artifacts pipewire uses on the system.
>>>
>>>
>>> --
>>> Jude <jdashiel at panix dot com>
>>> "There are four boxes to be used in defense of liberty:
>>> soap, ballot, jury, and ammo.
>>> Please use in that order."
>>> Ed Howdershelt 1940.
>>>
>>
>>
>

