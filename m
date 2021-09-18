Return-Path: <speakup+bounces-288-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 03E1D410749
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 17:10:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=DcZDvM0l;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 92FE63811D0; Sat, 18 Sep 2021 11:10:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7C74B381212
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 11:10:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1B55B380BA1; Sat, 18 Sep 2021 11:10:29 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6BA95380145
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 11:10:28 -0400 (EDT)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 32F6DA3F47
	for <speakup@linux-speakup.org>; Sat, 18 Sep 2021 15:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1631970604; bh=ptdnzLGxx8u+RDuPsqHOHqNQw57HRG3c+mNSyHeKq1w=;
	h=Date:From:Subject:To:References:In-Reply-To:From;
	b=DcZDvM0lR2xC+S1AFivThTTvm9AHMDZnYggukwa3Un0JdyEoJGja2QYU0x0u/rP46
	 fPS/SCuiwhigovieJnqIp/7rLDMqKXEwYY4PDuOsbtH9ms2/MYg59vuJ5OgB30Q6Ts
	 lnlDtzeoIAWAGwDlUNlurPTp5B0TOgA2cwNOjriAtV9lItz+Eb6z4fCip6pE6D3oIK
	 vjmApELMQJKQReoA3v4o+pTWDu88/C/GkU1kIfY6JR7X4+4WFN5mnAWrxtZppqe/DV
	 ajJrJoqsZAkAoTrwAVvvwBwDz5w7h6PNH8w4jRLqf9ov3huYRXOzhtrSpHmH7/tbqC
	 BHJZ2jL+Z51/A==
Message-ID: <596ae85b-03ef-3f9e-b232-db94931541b1@slint.fr>
Date: Sat, 18 Sep 2021 17:10:22 +0200
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
From: Didier Spaier <didier@slint.fr>
Subject: Re: Broken espeakup on debian sid
To: speakup@linux-speakup.org
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
 <YUXlLephhiYuV4UA@rednote.net>
Content-Language: en-US
In-Reply-To: <YUXlLephhiYuV4UA@rednote.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Kirk and Janina:

In Slint at time of writing we have:
alsa-lib-1.2.5
espeakup-0.9.0
espeak-ng-git2b77dd27
linux-5.3.13
pcaudiolib-gita41d46e
sonic-gitba331411

No issue with espeakup, neither that I observed using it nor reported by 
users.
This makes me assume that the issue doesn't come from upstream.

FYI, Hhere are the binary dependencies, according to ldd:
dance[~]$ ldd /usr/bin/espeakup 

	linux-vdso.so.1 (0x00007ffe7059d000)
	libespeak-ng.so.1 => /usr/lib64/libespeak-ng.so.1 (0x00007f284e5a5000)
	libasound.so.2 => /usr/lib64/libasound.so.2 (0x00007f284e37b000)
	libm.so.6 => /lib64/libm.so.6 (0x00007f284e072000)
	libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f284de55000)
	libc.so.6 => /lib64/libc.so.6 (0x00007f284da8c000)
	libpcaudio.so.0 => /usr/lib64/../lib64/libpcaudio.so.0 (0x00007f284e59c000)
	libsonic.so.0 => /usr/lib64/../lib64/libsonic.so.0 (0x00007f284e596000)
	libstdc++.so.6 => /usr/lib64/../lib64/libstdc++.so.6 (0x00007f284d710000)
	libgcc_s.so.1 => /usr/lib64/../lib64/libgcc_s.so.1 (0x00007f284d4f9000)
	libdl.so.2 => /lib64/libdl.so.2 (0x00007f284d2f5000)
	librt.so.1 => /lib64/librt.so.1 (0x00007f284d0ed000)
	/lib64/ld-linux-x86-64.so.2 (0x00007f284e480000)

I don't know if that comes into play, but in Slint we don't redirect the 
sound
streams from alsa to pulseaudio, rather the opposite.

It could matter what I read in our ChangeLog at:
https://slackware.uk/slint/x86_64/slint-14.2.1/ChangeLog.txt
quoted below:
Tuesday 29 June 2021
pcaudiolib-gita41d46e-x86_64-2slint: Rebuilt
   Built without pulseaudio to avoid starting pulseaudio as root through
   espeakup. Thanks to Tony Seth for the heads-up.

so I have included these configure options for pcaudiolib:
--with-alsa
--without-pulseaudio

Cheers,
Didier

Le 18/09/2021 à 15:10, Janina Sajka a écrit :
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
>>    Kirk
>>
> 

