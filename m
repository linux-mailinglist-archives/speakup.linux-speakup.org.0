Return-Path: <speakup+bounces-952-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D998F718EEA
	for <lists+speakup@lfdr.de>; Thu,  1 Jun 2023 01:05:51 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=uLZ4CsIS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 676253824CB; Wed, 31 May 2023 19:05:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4943938236B
	for <lists+speakup@lfdr.de>; Wed, 31 May 2023 19:05:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 439AB382348; Wed, 31 May 2023 19:05:42 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id E540B382343
	for <speakup@linux-speakup.org>; Wed, 31 May 2023 19:05:41 -0400 (EDT)
Received: from [IPV6:2a01:cb09:b069:2502:4e22:e17a:54a5:6293] (pop.92-184-106-69.mobile.abo.orange.fr [92.184.106.69])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0CCE3E707E;
	Thu,  1 Jun 2023 00:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1685570571; bh=TVHeuCPdCVryEvB+gX0WRxO6cdYmXpHH+1GQwlKAvmU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uLZ4CsISZSvrtdB3MuKCUULvZe4heBI6RZEpPftZHqc3O54r5eI3dXNDrR0zJBJMB
	 dn5x5dNxrLeMCafWGQwCXxlbBJGTem320AslMb2xW8Jef7pv5PETKSzLWAVdekUX4Y
	 4klKWtpvtwTDc3o3jheqLELR9KbBH4LbE7q63UJ67yZO4QhlQ+9ZsKjWPWIsjkgDQ8
	 k0a4Q64JyYeZHlVrtgzn9HRRyT7X856fZQoJcUareiraq8MTNIKAi4xFEe24xA/g5C
	 4PuYhzV/19ZUqzNA6gTCprhhIX00BDAPDiaq20zIAy0NviX3Am4CloPzRMI+j+szRZ
	 CQrUMwXSJ8lKA==
Message-ID: <87e9db08-ba5f-1287-9409-d51fd5c3bad4@slint.fr>
Date: Thu, 1 Jun 2023 01:05:32 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Beep on Backspace in Console Sessions
To: Gregory Nowak <greg@gregn.net>
Cc: speakup@linux-speakup.org
References: <ZHGmQFwqgliD6p3X@rednote.net>
 <b175e143-de30-9fb6-1ed2-d352a3af34a9@slint.fr> <ZHUKjA+f+SLDtpR+@gregn.net>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <ZHUKjA+f+SLDtpR+@gregn.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

It is possible to compile the pcspkr driver built-in the kernel instead as a
module, then it would not appear in the output of lsmod. Maybe that is the case
for your ancient laptop?

Cheers,
Didier

Le 29/05/2023 à 22:26, Gregory Nowak a écrit :
> On my ancient laptop bought in early 2013, I still get a beep from the
> speakers and headphone jack when pressing backspace at the
> console. Looking at the list of loaded sound modules, it isn't
> immediately obvious which one of them is responsible for that. No,
> there is no snd-beep module, and the pcspkr module isn't loaded. I can
> post a list of the loaded sound modules if that would help.
> There is a Beep sound control, which needs to be unmuted, and have its
> sound level adjusted for the beep to be heard.
> 
> For reference, my desktop built in June 2019 has a PC speaker attached
> to the motherboard header, and I do get a beep out of that speaker
> for which the pcspkr module is responsible.
> 
> It may also be worth pointing out that one will not always get a beep
> when pressing backspace on an empty line in the console, if in a
> screen(1) session for example. Good luck with your move Janina.
> 
> Greg
> 
> 
> On Sat, May 27, 2023 at 02:07:07PM +0200, Didier Spaier wrote:
>> Hey Janina,
>>
>> as Joseph suggested I would first check that the kernel driver pcspkr is
>> compiled as a module.
>>
>> The answer is yes if this command gives an output:
>> lsmod|grep pcspkr
>>
>> You coule also check the output of:
>> zgrep INPUT_PCSPKR /proc/config.gz
>> Here it gives:
>> CONFIG_INPUT_PCSPKR=m
>>
>> If this module is provided, check that you have in /etc/inputrc:
>>
>> set bell-style audible (the argument should not be "visible" or "none")
>>
>> If this module is not provided you need to rebuild your kernel or use one that
>> provides it.
>>
>> If you have this module but not the needed hardware you could use this software:
>> https://github.com/Hawk777/abeep
>>
>> It is available for Arch in the AUR:
>> https://aur.archlinux.org/packages/abeep-git
>>
>> I built it in Slint, it works and relies on the libasound.so shared library from
>> alsa
>>
>> But what I don't know is how to tell bash to replace the call to pcspkr by
>> /usr/bin/bell and "man readline" did not give me a clue :(
>>
>> there is also a beep software:
>> https://github.com/spkr-beep/beep also available on Arch:
>> https://archlinux.org/packages/extra/x86_64/beep/
>>
>> It works here (TM) but also needs a the pcspkr module and the hardware.
>>
>> Cheers
>>
>>
> 
> 

