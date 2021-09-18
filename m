Return-Path: <speakup+bounces-289-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F3C6E410781
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 18:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631980947;
	bh=19fdh6C72c/1X01R3hRtfaQqfRBV+2NKkCBPw0I7el4=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=t9sTJfpjJuy7SeX0BOuOSOhb/eSU3tXGmDipHVc5tuY5vtyUHA/cA0bytKtvKznao
	 ROlLpfQRADTuYl+5eIlEJIJdd9qJTjNEnL9v/zpzOh5ZFYfRV2P4PialHMsbRBL7dH
	 XS2Od76QHE/ndmvkxIPCbDSVfwcM2f7ocbD10JTA=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6D9D13812BD; Sat, 18 Sep 2021 12:02:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631980947;
	bh=19fdh6C72c/1X01R3hRtfaQqfRBV+2NKkCBPw0I7el4=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=t9sTJfpjJuy7SeX0BOuOSOhb/eSU3tXGmDipHVc5tuY5vtyUHA/cA0bytKtvKznao
	 ROlLpfQRADTuYl+5eIlEJIJdd9qJTjNEnL9v/zpzOh5ZFYfRV2P4PialHMsbRBL7dH
	 XS2Od76QHE/ndmvkxIPCbDSVfwcM2f7ocbD10JTA=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 610703811FB
	for <lists+speakup@lfdr.de>; Sat, 18 Sep 2021 12:02:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631980945;
	bh=19fdh6C72c/1X01R3hRtfaQqfRBV+2NKkCBPw0I7el4=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=pyn7sIA1llowgY8fYtqlQbxrPdB2/90cEx8AwJhIKJJBQHIHbJxHdlOajMjmB1tJZ
	 uDCwhGxRQmHmzr+jbsf2hUx0WygEFfw01+AQ+5h0c2rwbVGjkH9Ba3H5HmjeEK1GsL
	 elCqrBixlvl78qlh4p6cOJGqCKoTPCm8tj8qC7Nc=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4AF44380BDB; Sat, 18 Sep 2021 12:02:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1631980945;
	bh=19fdh6C72c/1X01R3hRtfaQqfRBV+2NKkCBPw0I7el4=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=pyn7sIA1llowgY8fYtqlQbxrPdB2/90cEx8AwJhIKJJBQHIHbJxHdlOajMjmB1tJZ
	 uDCwhGxRQmHmzr+jbsf2hUx0WygEFfw01+AQ+5h0c2rwbVGjkH9Ba3H5HmjeEK1GsL
	 elCqrBixlvl78qlh4p6cOJGqCKoTPCm8tj8qC7Nc=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2DC3838098B;
	Sat, 18 Sep 2021 12:02:25 -0400 (EDT)
Date: Sat, 18 Sep 2021 12:02:25 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Didier Spaier <didier@slint.fr>
cc: speakup@linux-speakup.org
Subject: Re: Broken espeakup on debian sid
In-Reply-To: <596ae85b-03ef-3f9e-b232-db94931541b1@slint.fr>
Message-ID: <8ca35544-8e64-6aed-689e-a91e4c6d898d@reisers.ca>
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca> <YUXlLephhiYuV4UA@rednote.net> <596ae85b-03ef-3f9e-b232-db94931541b1@slint.fr>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-614107375-1631980945=:68839"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-614107375-1631980945=:68839
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

Thank you Didier: That was an excellent review. As much as I like not
building in pulseaudio support it would be nice to be able to include
pipewire support for folks that want it. Do you have any suggestions
about the difference between those two situations with respect to
espeakup?

Imo it would be nice if we could provide support for all scenarios,
mostly because the more complicated infrastructure becomes the more
difficult it is to debug problems and lots of folks just don't like
running all the bells and whistles. Personally I'll take lean over
fancy every time.

E.g. this particular problem appears to be a systems fuck up instead
of an actual problem with the code base.

   Kirk

On Sat, 18 Sep 2021, Didier Spaier wrote:

> Hi Kirk and Janina:
>
> In Slint at time of writing we have:
> alsa-lib-1.2.5
> espeakup-0.9.0
> espeak-ng-git2b77dd27
> linux-5.3.13
> pcaudiolib-gita41d46e
> sonic-gitba331411
>
> No issue with espeakup, neither that I observed using it nor reported by 
> users.
> This makes me assume that the issue doesn't come from upstream.
>
> FYI, Hhere are the binary dependencies, according to ldd:
> dance[~]$ ldd /usr/bin/espeakup
> 	linux-vdso.so.1 (0x00007ffe7059d000)
> 	libespeak-ng.so.1 => /usr/lib64/libespeak-ng.so.1 
> (0x00007f284e5a5000)
> 	libasound.so.2 => /usr/lib64/libasound.so.2 (0x00007f284e37b000)
> 	libm.so.6 => /lib64/libm.so.6 (0x00007f284e072000)
> 	libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f284de55000)
> 	libc.so.6 => /lib64/libc.so.6 (0x00007f284da8c000)
> 	libpcaudio.so.0 => /usr/lib64/../lib64/libpcaudio.so.0 
> (0x00007f284e59c000)
> 	libsonic.so.0 => /usr/lib64/../lib64/libsonic.so.0 
> (0x00007f284e596000)
> 	libstdc++.so.6 => /usr/lib64/../lib64/libstdc++.so.6 
> (0x00007f284d710000)
> 	libgcc_s.so.1 => /usr/lib64/../lib64/libgcc_s.so.1 
> (0x00007f284d4f9000)
> 	libdl.so.2 => /lib64/libdl.so.2 (0x00007f284d2f5000)
> 	librt.so.1 => /lib64/librt.so.1 (0x00007f284d0ed000)
> 	/lib64/ld-linux-x86-64.so.2 (0x00007f284e480000)
>
> I don't know if that comes into play, but in Slint we don't redirect the 
> sound
> streams from alsa to pulseaudio, rather the opposite.
>
> It could matter what I read in our ChangeLog at:
> https://slackware.uk/slint/x86_64/slint-14.2.1/ChangeLog.txt
> quoted below:
> Tuesday 29 June 2021
> pcaudiolib-gita41d46e-x86_64-2slint: Rebuilt
>  Built without pulseaudio to avoid starting pulseaudio as root through
>  espeakup. Thanks to Tony Seth for the heads-up.
>
> so I have included these configure options for pcaudiolib:
> --with-alsa
> --without-pulseaudio
>
> Cheers,
> Didier
>
> Le 18/09/2021 à 15:10, Janina Sajka a écrit :
>> Hi, Kirk:
>> 
>> I'm on Arch, not Debian, but I've had broken Espeakup ever since
>> alsa-lib-1.2.5 showed up. Since then Espeakup has been upversioned to
>> 0.90, but this has not fixed things for me, though apparently it has for
>> Alexander now maintaning Espeakup.
>> 
>> I currently have two functional Linux machines, both fully upgraded as
>> of just about half an hour ago except as described below.
>> 
>> The newer hardware will run by hand with the command: 'espeakup -d', but
>> it's highly brittle and prone to crash the system so that a three finger
>> salute is needed.
>> 
>> If I want console access on this 2020 era box, I have to turn to fenrir,
>> which I'm just not as comfortable with--but that's another story.
>> 
>> My older machine is prevented by my /etc/pacman.conf from updating
>> alsa-lib and espeakup, and it runs just fine.
>> 
>> So, my suggestion is back off to the latest alsa-lib-1.2.4, and the
>> latest espeakup-0.8 you have, and you should be fine until someone
>> figures out what's really going on.
>> 
>> For anyone running Arch you want the following in your /etc/pacman.conf:
>> 
>> IgnorePkg   =espeakup
>> IgnorePkg   =alsa-lib
>> 
>> If you've already updated your Arch beyond these versions, you can
>> downgrade. You'll find a cache of previous versions in:
>> 
>> /var/cache/pacman/pkg/
>> Just cd on over there as root and check what you have with a command
>> like:
>> 
>> ls -1 alsa-lib* espeakup*
>> 
>> You can then downversion with pacman like this:
>> 
>> pacman -U ./[filename]
>> 
>> where [filename] is the full name you got from ls. I recommend using the
>> Speakup clipboard to get the command right.
>> 
>> Best,
>> 
>> Janina
>> 
>> 
>> Kirk Reiser writes:
>>> Hi folks: Does anyone have espeakup running on debian sid with
>>> libasound2 1.2.5? After I upgraded a few days ago I lost my speech
>>> output. I have built espeakup and espeak-ng from the current repo on
>>> them with no joy either.
>>> 
>>> Curious minds and all that type thing.
>>>
>>>    Kirk
>>> 
>> 
>
--8323329-614107375-1631980945=:68839--

