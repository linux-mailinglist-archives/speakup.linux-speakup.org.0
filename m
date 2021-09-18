Return-Path: <speakup+bounces-296-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C6D054108A6
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 22:57:19 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=nvr99kYa;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3BFBF380E9D; Sat, 18 Sep 2021 16:57:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0B44D380E9D
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 16:57:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B98E4380BA1; Sat, 18 Sep 2021 16:57:16 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4EFBF380145
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 16:57:16 -0400 (EDT)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 15577A4043;
	Sat, 18 Sep 2021 20:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1631991407; bh=6VnzBtMwY/KIjSvtE64nWvWt4SvTIiWMiA1ZTcA9upo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nvr99kYa8+6WzijZtsQTnY1OMVB0GFnKqDapezR5kbgnmvJ6OilizyHekNPeYAlye
	 Fk8TCTIN1rciYJm1boBAIdFhxtRGBB4QNw9SMDG1pMQquTUEpBfZOsmVGym/Zn6A1L
	 3PeX2ZTgu8/ARg/np4gxwCRU9afVL0g74C3OITsT3yee4WJUE+F9CgS8goT53km/Cr
	 8ijL9xoiOq4jMDAkvhl8mdmy28gLg0NxiROrwoQhuNV4/hAwwO0MuhgcBBix/0LiDW
	 t+BUrUwmIeNx+OXuiwDk8wivJ0cVYuvWukHr2YNLJ+xZfsFPmM0OZ9+h7NgRuyOVqB
	 OR0u6DIpiIsIA==
Message-ID: <26a6b5a1-0813-a248-7f41-96aa7b35e40a@slint.fr>
Date: Sat, 18 Sep 2021 22:57:05 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Subject: Re: Broken espeakup on debian sid
Content-Language: en-US
To: Janina Sajka <janina@rednote.net>
Cc: speakup@linux-speakup.org
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
 <YUXlLephhiYuV4UA@rednote.net>
 <596ae85b-03ef-3f9e-b232-db94931541b1@slint.fr>
 <YUZK09xnYZ/jWTOM@rednote.net>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <YUZK09xnYZ/jWTOM@rednote.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well Janina, you could just edit the PKGBUILD for pcaudiolib
https://github.com/archlinux/svntogit-community/blob/packages/pcaudiolib/trunk/PKGBUILD
and append to line #21 a space then:
  --with-alsa --without-pulseaudio
the rebuild pcaudiolib.

I think that no other rebuild will be necessary as espeak-ng will 
continue to
use the shared library libpcaudio.so.0 which in turn will use libasound.so.2
from alsa-lib.

Cheers

PS don't be afraid by package management in Slint.
It's probably much simpler than in Arch or Debian. To check:
https://slint.fr/doc/HandBook.html#software_management

Cheers,
Didier

Le 18/09/2021 à 22:23, Janina Sajka a écrit :
> Hi, Didier:
> 
> Short of installing Slint--which I'm still considering, but I hesitate
> to adopt yet another learning curve for  package management ...
> 
> Rebuilding pcaudiolib without pulse support sounds intriguing. I will
> investigate, because ldd is definitely reporting dependency on .
> 
>          libpulse-simple.so.0 => /usr/lib/libpulse-simple.so.0
> 	(0x00007fa62a433000)
> 	        libpulse.so.0 => /usr/lib/libpulse.so.0
> 		(0x00007fa62a3de000)
> 		        libpulsecommon-15.0.so =>
> 			/usr/lib/pulseaudio/libpulsecommon-15.0.so
> 			(0x00007fa62a355000)
> 
> Best,
> 
> Janina
> 
> 
> Didier Spaier writes:
>> Hi Kirk and Janina:
>>
>> In Slint at time of writing we have:
>> alsa-lib-1.2.5
>> espeakup-0.9.0
>> espeak-ng-git2b77dd27
>> linux-5.3.13
>> pcaudiolib-gita41d46e
>> sonic-gitba331411
>>
>> No issue with espeakup, neither that I observed using it nor reported by
>> users.
>> This makes me assume that the issue doesn't come from upstream.
>>
>> FYI, Hhere are the binary dependencies, according to ldd:
>> dance[~]$ ldd /usr/bin/espeakup
>>
>> 	linux-vdso.so.1 (0x00007ffe7059d000)
>> 	libespeak-ng.so.1 => /usr/lib64/libespeak-ng.so.1 (0x00007f284e5a5000)
>> 	libasound.so.2 => /usr/lib64/libasound.so.2 (0x00007f284e37b000)
>> 	libm.so.6 => /lib64/libm.so.6 (0x00007f284e072000)
>> 	libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f284de55000)
>> 	libc.so.6 => /lib64/libc.so.6 (0x00007f284da8c000)
>> 	libpcaudio.so.0 => /usr/lib64/../lib64/libpcaudio.so.0 (0x00007f284e59c000)
>> 	libsonic.so.0 => /usr/lib64/../lib64/libsonic.so.0 (0x00007f284e596000)
>> 	libstdc++.so.6 => /usr/lib64/../lib64/libstdc++.so.6 (0x00007f284d710000)
>> 	libgcc_s.so.1 => /usr/lib64/../lib64/libgcc_s.so.1 (0x00007f284d4f9000)
>> 	libdl.so.2 => /lib64/libdl.so.2 (0x00007f284d2f5000)
>> 	librt.so.1 => /lib64/librt.so.1 (0x00007f284d0ed000)
>> 	/lib64/ld-linux-x86-64.so.2 (0x00007f284e480000)
>>
>> I don't know if that comes into play, but in Slint we don't redirect the
>> sound
>> streams from alsa to pulseaudio, rather the opposite.
>>
>> It could matter what I read in our ChangeLog at:
>> https://slackware.uk/slint/x86_64/slint-14.2.1/ChangeLog.txt
>> quoted below:
>> Tuesday 29 June 2021
>> pcaudiolib-gita41d46e-x86_64-2slint: Rebuilt
>>    Built without pulseaudio to avoid starting pulseaudio as root through
>>    espeakup. Thanks to Tony Seth for the heads-up.
>>
>> so I have included these configure options for pcaudiolib:
>> --with-alsa
>> --without-pulseaudio
>>
>> Cheers,
>> Didier
>>
>> Le 18/09/2021 à 15:10, Janina Sajka a écrit :
>>> Hi, Kirk:
>>>
>>> I'm on Arch, not Debian, but I've had broken Espeakup ever since
>>> alsa-lib-1.2.5 showed up. Since then Espeakup has been upversioned to
>>> 0.90, but this has not fixed things for me, though apparently it has for
>>> Alexander now maintaning Espeakup.
>>>
>>> I currently have two functional Linux machines, both fully upgraded as
>>> of just about half an hour ago except as described below.
>>>
>>> The newer hardware will run by hand with the command: 'espeakup -d', but
>>> it's highly brittle and prone to crash the system so that a three finger
>>> salute is needed.
>>>
>>> If I want console access on this 2020 era box, I have to turn to fenrir,
>>> which I'm just not as comfortable with--but that's another story.
>>>
>>> My older machine is prevented by my /etc/pacman.conf from updating
>>> alsa-lib and espeakup, and it runs just fine.
>>>
>>> So, my suggestion is back off to the latest alsa-lib-1.2.4, and the
>>> latest espeakup-0.8 you have, and you should be fine until someone
>>> figures out what's really going on.
>>>
>>> For anyone running Arch you want the following in your /etc/pacman.conf:
>>>
>>> IgnorePkg   =espeakup
>>> IgnorePkg   =alsa-lib
>>>
>>> If you've already updated your Arch beyond these versions, you can
>>> downgrade. You'll find a cache of previous versions in:
>>>
>>> /var/cache/pacman/pkg/
>>> Just cd on over there as root and check what you have with a command
>>> like:
>>>
>>> ls -1 alsa-lib* espeakup*
>>>
>>> You can then downversion with pacman like this:
>>>
>>> pacman -U ./[filename]
>>>
>>> where [filename] is the full name you got from ls. I recommend using the
>>> Speakup clipboard to get the command right.
>>>
>>> Best,
>>>
>>> Janina
>>>
>>>
>>> Kirk Reiser writes:
>>>> Hi folks: Does anyone have espeakup running on debian sid with
>>>> libasound2 1.2.5? After I upgraded a few days ago I lost my speech
>>>> output. I have built espeakup and espeak-ng from the current repo on
>>>> them with no joy either.
>>>>
>>>> Curious minds and all that type thing.
>>>>
>>>>     Kirk
>>>>
>>>
> 

