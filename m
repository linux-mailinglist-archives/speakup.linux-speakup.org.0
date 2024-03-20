Return-Path: <speakup+bounces-1098-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E62C68808A1
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 01:40:49 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=AdNZlKru;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 521A838270B; Tue, 19 Mar 2024 20:40:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2D4B83825E5
	for <lists+speakup@lfdr.de>; Tue, 19 Mar 2024 20:40:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AD87A3825ED; Tue, 19 Mar 2024 20:40:41 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 833C53825E5
	for <speakup@linux-speakup.org>; Tue, 19 Mar 2024 20:40:41 -0400 (EDT)
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2dd2:8343:3e6d:fdaa:b43a:e87d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id B42F15509;
	Tue, 19 Mar 2024 17:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1710895208; bh=k7NDPgsj55y0oPsXJyTcfLyyFTCZx7CCMWFk0Psfous=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AdNZlKrur24be9L+/i2RKVMqq0ayS8+gmV83kwb/uhiq1wizp6ksg9FQJSo4DOw3c
	 CsSXJQuNWsqK73SsUAS1x9kTmtwUTJhECEeOM8FrzKBEb0DimBmCXw+KRneRgRnWtt
	 cIRMO41sj2i31efa5CKuxTKVJ6xoWgtR1c6XIq0G8Hg6Wh8mJ3Hvydf/g9y7SY7ccY
	 KPEVSXG6PGp+1sE+SnfNWxD8edPFV3qZL9eOrAEun2UoBCM+Hmq+fh1fIfKaujW8Wh
	 d4ws6RDva4CvO1DUhF/FkfD3VMEApD1g/N+f82kRnkMPJtMnwf6ezvebq+J5ou9lJo
	 XzbP8EYn+F39w==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 7C18CC181; Tue, 19 Mar 2024 17:40:07 -0700 (MST)
Date: Tue, 19 Mar 2024 17:40:07 -0700
From: Gregory Nowak <greg@gregn.net>
To: Martin McCormick <martin.m@suddenlink.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Trouble-shooting a Mute Speakup on a Raspberry Pi
Message-ID: <ZfowZ/03XBIhyPAU@gregn.net>
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
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1rmffd-0009s5-0f@wb5agz>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

You need to remove either speechd-up, or espeakup, and that should solve your
issue.

Greg


On Tue, Mar 19, 2024 at 03:02:49PM -0500, Martin McCormick wrote:
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

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

