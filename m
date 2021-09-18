Return-Path: <speakup+bounces-287-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E0873410723
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 16:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631976677;
	bh=e7IDiE0RlpBbw277hTl6JYcqOVJFb18fZ2lWT2yU7EU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=tp9bbE4LGErriStisiCuShsGcaNAOBKT+4BaggC4N+uvbl8ptkQV8ONGOWzPacJIq
	 J8zc4mv73xtjmLWw8JjphhA8GYNqnc74Zcu0vDmHGcFJphJvaiCF4sBAf1uHFpxfSf
	 2bCsvBYvuKXPwr5WFKIYLaGm609j+YSLj9q5KySI=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6950B3812A1; Sat, 18 Sep 2021 10:51:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631976677;
	bh=e7IDiE0RlpBbw277hTl6JYcqOVJFb18fZ2lWT2yU7EU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=tp9bbE4LGErriStisiCuShsGcaNAOBKT+4BaggC4N+uvbl8ptkQV8ONGOWzPacJIq
	 J8zc4mv73xtjmLWw8JjphhA8GYNqnc74Zcu0vDmHGcFJphJvaiCF4sBAf1uHFpxfSf
	 2bCsvBYvuKXPwr5WFKIYLaGm609j+YSLj9q5KySI=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5A6FF381217
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 10:51:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631976675;
	bh=e7IDiE0RlpBbw277hTl6JYcqOVJFb18fZ2lWT2yU7EU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=IDh1QLt63wp74FInum+jd5KQT3rhudOa9Ax9Dw8RgsEbVpGkdswdgvYYWO8Pxk2Wr
	 brD3Pe/wx8lr/+B3nDAVMGttMVzAHeCs8xraoW0AlvkAtFY1JnA/5t6zRZIN2D1WIm
	 gwgwxyx8DTaTU+LqXF+j/ymFG6FccKUTopebJNFc=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1BFFF380BDB; Sat, 18 Sep 2021 10:51:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631976675;
	bh=e7IDiE0RlpBbw277hTl6JYcqOVJFb18fZ2lWT2yU7EU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=IDh1QLt63wp74FInum+jd5KQT3rhudOa9Ax9Dw8RgsEbVpGkdswdgvYYWO8Pxk2Wr
	 brD3Pe/wx8lr/+B3nDAVMGttMVzAHeCs8xraoW0AlvkAtFY1JnA/5t6zRZIN2D1WIm
	 gwgwxyx8DTaTU+LqXF+j/ymFG6FccKUTopebJNFc=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EDBA2380145;
	Sat, 18 Sep 2021 10:51:14 -0400 (EDT)
Date: Sat, 18 Sep 2021 10:51:14 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Janina Sajka <janina@rednote.net>
cc: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
In-Reply-To: <YUXlLephhiYuV4UA@rednote.net>
Message-ID: <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca> <YUXlLephhiYuV4UA@rednote.net>
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

Hi Janina: I and Alex have been working on this issue the past couple
of days. This is what works for now and what the final solution will
be isn't quite clear to me yet.

With alsa 1.2.5 installed chown the /dev/softsynth devices to the user
using them something like:

sudo chown janina.janina /dev/softsynth*

The astriks wil cover both devices.

Then you need to change the permissions of /var/run or whatever it's
called on your system so espeakup can write the pid file:

sudo chmod 1777 /run

Then run espeakup as yourself:

/usr/bin/espeakup

We are currently looking into why espeakup doesn't work with pipewire
yet espeak-ng does. It appears that possibly espeakup handles writing
to the alsa sound system directly from espeak-ng. I'm not at all sure
of that yet. It's been a hell of a long time since I looked at 'c'
code so I'm pretty rusty.

It does appear that going forward pipewire is going to be the
pulseaudio replacement.

I'm certainly open to ideas on the cleanest way to handle all this
stuff. Possibly running pipewire as root or just running everybody as
the individual user, I don't know. Unfortunately it appears we need a
solution to keep up with future alsa libasound2 development.

   Kirk


On Sat, 18 Sep 2021, Janina Sajka wrote:

> Hi, Kirk:
>
> I'm on Arch, not Debian, but I've had broken Espeakup ever since
> alsa-lib-1.2.5 showed up. Since then Espeakup has been upversioned to
> 0.90, but this has not fixed things for me, though apparently it has for
> Alexander now maintaning Espeakup.
>
> I currently have two functional Linux machines, both fully upgraded as
> of just about half an hour ago except as described below.
>
> The newer hardware will run by hand with the command: 'espeakup -d', but
> it's highly brittle and prone to crash the system so that a three finger
> salute is needed.
>
> If I want console access on this 2020 era box, I have to turn to fenrir,
> which I'm just not as comfortable with--but that's another story.
>
> My older machine is prevented by my /etc/pacman.conf from updating
> alsa-lib and espeakup, and it runs just fine.
>
> So, my suggestion is back off to the latest alsa-lib-1.2.4, and the
> latest espeakup-0.8 you have, and you should be fine until someone
> figures out what's really going on.
>
> For anyone running Arch you want the following in your /etc/pacman.conf:
>
> IgnorePkg   =espeakup
> IgnorePkg   =alsa-lib
>
> If you've already updated your Arch beyond these versions, you can
> downgrade. You'll find a cache of previous versions in:
>
> /var/cache/pacman/pkg/
> Just cd on over there as root and check what you have with a command
> like:
>
> ls -1 alsa-lib* espeakup*
>
> You can then downversion with pacman like this:
>
> pacman -U ./[filename]
>
> where [filename] is the full name you got from ls. I recommend using the
> Speakup clipboard to get the command right.
>
> Best,
>
> Janina
>
>
> Kirk Reiser writes:
>> Hi folks: Does anyone have espeakup running on debian sid with
>> libasound2 1.2.5? After I upgraded a few days ago I lost my speech
>> output. I have built espeakup and espeak-ng from the current repo on
>> them with no joy either.
>>
>> Curious minds and all that type thing.
>>
>>   Kirk
>>
>
>

