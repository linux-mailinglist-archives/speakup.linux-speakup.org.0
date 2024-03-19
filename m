Return-Path: <speakup+bounces-1095-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3B688880794
	for <lists+speakup@lfdr.de>; Tue, 19 Mar 2024 23:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1710888955;
	bh=Bu3BGe/hYpWuy691q24tcnfsqrs2v5ruoW0fBm+Et2w=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=uuk0vfZjdj6hcqzq8Nly6UfTLmUEOwohRHphAxU+DSwPihgNW+ZITH/18ql9McDPn
	 uS8oDj+d+hOw2qGPXPpEfcjBmIXrN51nFh5/WRiYOs68jpXME5t9aYl4KlCRS7pPFJ
	 dHUIXdhy2AsDhQmQ/iq8wFpvI0/TWxZsFwfsVaCU=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F42A382653; Tue, 19 Mar 2024 18:55:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1710888955;
	bh=Bu3BGe/hYpWuy691q24tcnfsqrs2v5ruoW0fBm+Et2w=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=uuk0vfZjdj6hcqzq8Nly6UfTLmUEOwohRHphAxU+DSwPihgNW+ZITH/18ql9McDPn
	 uS8oDj+d+hOw2qGPXPpEfcjBmIXrN51nFh5/WRiYOs68jpXME5t9aYl4KlCRS7pPFJ
	 dHUIXdhy2AsDhQmQ/iq8wFpvI0/TWxZsFwfsVaCU=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4B940382068
	for <lists+speakup@lfdr.de>; Tue, 19 Mar 2024 18:55:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1710888947;
	bh=Bu3BGe/hYpWuy691q24tcnfsqrs2v5ruoW0fBm+Et2w=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=er+GcGjJ7+9AKSCH2aHct+zaf2He/Aqwd37/5Iqlya+k8T3kXS6IFpOHFn+KFdAUF
	 wCCIKQ1MCG2umPWr+D4vbW1dj6P5yyun3Zy0R8cGMq06QBoGg+sxcV9cRURpr8QleG
	 eir/zHS9OXiBAsQtiV14Cne+8ExzJQR9+T3lEvbg=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A5139382079; Tue, 19 Mar 2024 18:55:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1710888947;
	bh=Bu3BGe/hYpWuy691q24tcnfsqrs2v5ruoW0fBm+Et2w=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=er+GcGjJ7+9AKSCH2aHct+zaf2He/Aqwd37/5Iqlya+k8T3kXS6IFpOHFn+KFdAUF
	 wCCIKQ1MCG2umPWr+D4vbW1dj6P5yyun3Zy0R8cGMq06QBoGg+sxcV9cRURpr8QleG
	 eir/zHS9OXiBAsQtiV14Cne+8ExzJQR9+T3lEvbg=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7FB89380F19;
	Tue, 19 Mar 2024 18:55:47 -0400 (EDT)
Date: Tue, 19 Mar 2024 18:55:47 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Martin McCormick <martin.m@suddenlink.net>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Trouble-shooting a Mute Speakup on a Raspberry Pi
In-Reply-To: <E1rmffd-0009s5-0f@wb5agz>
Message-ID: <1edcf00b-5dd7-5759-a540-336ea2d7e37e@reisers.ca>
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
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, you don't need speech-dispatcher if you're using espeakup for
one thing.

I would check to see if speakup and speakup_soft are infact
loaded. You can find out by doing lsmod which will show you all the
loaded modules. If it is not loaded then you can load it with modprobe
speakup_soft which will load both modules.



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

