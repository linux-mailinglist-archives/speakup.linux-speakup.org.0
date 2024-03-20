Return-Path: <speakup+bounces-1097-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A3FF8880860
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 01:04:23 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=K1sIr7We;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 38D3F38266F; Tue, 19 Mar 2024 20:04:23 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 15D47382076
	for <lists+speakup@lfdr.de>; Tue, 19 Mar 2024 20:04:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 718753825ED; Tue, 19 Mar 2024 20:04:15 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 411C8382066
	for <speakup@linux-speakup.org>; Tue, 19 Mar 2024 20:04:15 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4TzpjL5yYXztYc;
	Tue, 19 Mar 2024 20:04:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1710893046; bh=G+xdO/5bGK7GeWUTlrliHda5jpF4vUdAmTCgzwqEPGU=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=K1sIr7We14a8QTUxBH4iZhQaEya9e50W2zk0tip6ioIynToBNNH5cA6xJqcWs0DdN
	 reToQyI/zTPzBYVnLhrnnSUGfmTBxikcGgZRTO29zh4fak/a8nj1gezt2UA/zL1AU/
	 9sTe1uSMwTFSXmw6hsqmCNvvA/xYqOW5XdPPUydI=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4TzpjL5h9Dzcbc; Tue, 19 Mar 2024 20:04:06 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4TzpjL5f35zcbC;
	Tue, 19 Mar 2024 20:04:06 -0400 (EDT)
Date: Tue, 19 Mar 2024 20:04:06 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Martin McCormick <martin.m@suddenlink.net>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Trouble-shooting a Mute Speakup on a Raspberry Pi
In-Reply-To: <E1rmffd-0009s5-0f@wb5agz>
Message-ID: <d021a211-bbe2-7b3f-0357-40c64c707afb@panix.com>
References: <E1rmffd-0009s5-0f@wb5agz>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Did you do:
sysctl enable espeakup.service


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 19 Mar 2024, Martin McCormick wrote:

> I put debian bookworm on a Raspberry Pi 2b Rev 1  and it is
> trying to start but can't seem to find it's way.
>
> Here are syslog lines from the attempt to start with the time
> stamps removed but everything else present:
>
> rpi1 systemd[1]: Starting espeakup.service - Software speech output for Speakup...
> rpi1 systemd[1]: espeakup.service: Control process exited, code=exited, status=2/INVALIDARGUMENT
> rpi1 systemd[1]: espeakup.service: Failed with result 'exit-code'.
> rpi1 systemd[1]: Failed to start espeakup.service - Software speech output for Speakup.
> rpi1 systemd[1]: espeakup.service: Scheduled restart job, restart counter is at 5.
> rpi1 systemd[1]: Stopped espeakup.service - Software speech output for Speakup.
> rpi1 systemd[1]: espeakup.service: Start request repeated too quickly.
> rpi1 systemd[1]: espeakup.service: Failed with result 'exit-code'.
> rpi1 systemd[1]: Failed to start espeakup.service - Software speech output for Speakup.
>
> 	I know, for sure, that the sound interface which is a
> playback-only device works fine.  I have used aplay to send .wav
> files to it and they are heard loud and clear.
>
> 	The installation of speakup was done on the raspberry pi
> by the following actions:
>
> apt-get -y install espeakup speakup-tools speakup-doc
> and, based on a message from those installations:
> apt-get -y install speechd-up
>
> 	Is there something I can look at that shows what invalid
> argument was sent which is probably what is killing the whole
> startup procedure?
>
> 	I also wonder if I need pulseaudio running since libpulse
> was one of the libraries downloaded when I gave the apt install
> commands.
>
> 	I think I may have missed some step or something because
> it certainly does try to start and amixer shows the sound
> interface on.
>
> 	I will be using this older Raspberry Pi as a talking
> terminal for command-line work since I do have an image based on
> debian 8 or jessie from around 2017 that actually does talk with
> speakup but can't be used any more because such things as ssh
> keys and other security features aren't compatible with todays
> ssh world.
>
> 	I did look at espeak.conf and see that espeak keeps a log
> in /var/log but there is no espeak or anything with the word
> speak in that file tree so it appears to have never gotten that
> far.
>
> 	I asked this question on a raspberry Pi list and got a
> number of helpful answers but so far, I am not sure how to trace
> what is happening that shouldn't be happening.
>
> Thanks for all constructive solutions since I don't think this is
> too far gone but obviously needs some adjustment.
>
> amartin
>
>

