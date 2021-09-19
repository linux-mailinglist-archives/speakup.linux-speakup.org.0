Return-Path: <speakup+bounces-305-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 384F6410D7D
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 23:31:16 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=s+d0geMx;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A77FB380CF1; Sun, 19 Sep 2021 17:31:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3431D380EC9
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 17:31:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BF689380C5A; Sun, 19 Sep 2021 17:31:11 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9839E380996
	for <speakup@linux-speakup.org>; Sun, 19 Sep 2021 17:31:11 -0400 (EDT)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C2690A4513;
	Sun, 19 Sep 2021 21:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1632079843; bh=F05wkQRr6rhfe9r2LbL2MBczO/XEgjP9vAm8vauJXEU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=s+d0geMx5biEio6/ticoOxqQA6tOTGTpCQTRRNsIF7DYPPX4kutPQq7PjpIHIXIRl
	 9L8r3DfXiI7EJFWaDpT6bLQxgKYxRPvfVxC46wng5Srpsv47bHrsR0CeKYommEup8G
	 eQE5xAuPRGg1wgzD+9S/Vtk0fwsnbShGyXIFWe3UToD2ES/jf5gQD73i6uepH85bBb
	 Z4k6TlxlYeRf46YIiYQTbMkHl2yfBpfnzbKhPHkd96PNSnUUbaFEO4guljHgF5NtkI
	 VNIFOtNuZ8VTpTzzNZZHufMe3ICP2FzzOsLH++ZR1PVWIXkqBTPlZ4lTOJaOi9GA6r
	 ycx/Y/UoqJezg==
Message-ID: <8a2941c7-6016-b1fa-f1c8-cbfe689ee6da@slint.fr>
Date: Sun, 19 Sep 2021 23:31:00 +0200
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
To: Kirk Reiser <kirk@reisers.ca>
Cc: speakup@linux-speakup.org
References: <74614290-2cb8-c5a7-91e9-e639a673464a@reisers.ca>
 <YUXlLephhiYuV4UA@rednote.net>
 <50b02165-17e9-2561-ec8-6c35cba66944@reisers.ca>
 <YUYXLHoSvcMnUYzW@rednote.net>
 <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
 <14c0aaef-dea9-7b7c-77e3-a1a4edba4c31@slint.fr>
 <6b1e6e66-d12a-3d9e-a3e5-e8d0499177d9@reisers.ca>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <6b1e6e66-d12a-3d9e-a3e5-e8d0499177d9@reisers.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Kirk,

some answers inline after the quotes.

Le 19/09/2021 à 16:09, Kirk Reiser a écrit :

> It also seems to me that we have two different situations wrt distros,
> general communities like debian, ubuntu, arch etc and those that are
> specially put together for the blind community like debuan, slint and
> others I don't remember there names of anymore. I'd kind of like to
> know what people think of those situations is it better to be separate
> or part of the whole? The inclusion of pulseaudio for example in
> packages could make a difference those theose who want it and those
> who don't. This is of course an issue that doesn't just have merit to
> the accessibility community of speakup. Huh, does anyone use
> pcaudiolib other than espeak, just wondering.

In Slint we ship pulseaudio but start it only on demand if a software 
needs it.
Nobody complained so far, that's all I know.

Slint is not put together for the blind community, I just make sure that 
it's
stay fully usable by blind folks, but nothing prevents a sighted individual
like me to use it ;)

> The whole question of whether a package should run as root or a
> regular user is another interesting question. I don't think that
> espeakup would have broken if some group hadn't decided that one way
> was better than an other for everybody. Once again personally I like
> the idea of running as an individual user but I also want access to
> devices from boot-up on and not loading accessibility until a user
> logs in is a non-starter there imo.

In Slint a hard synth can be used as soon as the relevant speakup module is
loaded, and espeakup is started just after udev.

This being said it's always possible to read the messages from boot up after
having logged in using dmesg.

> Didier, does slint have a bootable image for the RaspBerry Pi 4B?
> Espeakup on raspbian and debian is fucked in completely different ways
> on that platform.

Alas no, as I do not have the time to maintain another arch than x86_64. But
volunteers to do that are welcome...

>    Kirk
> 
> 
> On Sun, 19 Sep 2021, Didier Spaier wrote:
> 
>> Hi Kirk,
>>
>> answering inline.
>>
>> Le 18/09/2021 à 21:26, Kirk Reiser a écrit :
>>> Huh, are you running arch on that box as well? I am wondering if
>>> speakup is even loaded. I noticed in the espeakup build systemd
>>> services that it loads speakup_soft when the systemd service is
>>> started.
>>>
>>> I'm not crazy about that being the way to load speakup particularly
>>> but I'm not that familiar with various distros way of doing things but
>>> it appears the espeakup maintainers figure everyone is running
>>> systemd.
>>
>> To be clear you mean the packagers of most distributions right? there 
>> is no
>> mention of systemd in the source code, of course.
>>
>> As a counter example the daemon manager for Slint is attached.
>>
>>> That's one of the reasons I mentioned getting folks opinions in my
>>> last message to you. For people that don't run systemd it will
>>> certainly break things.
>>
>> Cheers,
>> Didier
>>

