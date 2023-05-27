Return-Path: <speakup+bounces-932-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C61F271349C
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 14:07:27 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=W4C2ERTD;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E99F438246F; Sat, 27 May 2023 08:07:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CB35F382419
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 08:07:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A7AEB382421; Sat, 27 May 2023 08:07:17 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 24FC0380F81
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 08:07:17 -0400 (EDT)
Received: from [IPV6:2a01:cb09:e077:9693:abc9:ce8c:85c4:79d4] (pop.92-184-107-76.mobile.abo.orange.fr [92.184.107.76])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9E79CE6EB3
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 13:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1685185472; bh=Rt71rpG6vl/4bGOJl0fEvNdZ9XouvX7C1u6Ykioz1Ng=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=W4C2ERTDRITsNw+eRS4/UT6YIeHLW4rSYgf3oRL0uNRkO/HoYPXwo/bqWO9EmYB22
	 6RxtM85GnbL1Qbng/P8ZWtkN5PdQZyezfM8dCndK/G9+d6hzYAENLf5sGGYBQlESJY
	 R0NcO7BH6or0RK9NDIw7HLBIvMu4Go/xLZyjpU7zBO+3S/k2RTH3I2+taV8Z+MslbZ
	 AaApB4f8bUPKjf3VYrF2RCKInoZVje/pcAK9lSjP9nTziXKYeG0F88t3NHc5iNFR3j
	 cucIyp6hf9gBoFcmCqFiAng/+VL8/8MimvY3YJ8Fn0F2D07Vr9lHs8y9DgzEF2O+/f
	 IjmikICW0DB3w==
Message-ID: <b175e143-de30-9fb6-1ed2-d352a3af34a9@slint.fr>
Date: Sat, 27 May 2023 14:07:07 +0200
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
To: speakup@linux-speakup.org
References: <ZHGmQFwqgliD6p3X@rednote.net>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <ZHGmQFwqgliD6p3X@rednote.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hey Janina,

as Joseph suggested I would first check that the kernel driver pcspkr is
compiled as a module.

The answer is yes if this command gives an output:
lsmod|grep pcspkr

You coule also check the output of:
zgrep INPUT_PCSPKR /proc/config.gz
Here it gives:
CONFIG_INPUT_PCSPKR=m

If this module is provided, check that you have in /etc/inputrc:

set bell-style audible (the argument should not be "visible" or "none")

If this module is not provided you need to rebuild your kernel or use one that
provides it.

If you have this module but not the needed hardware you could use this software:
https://github.com/Hawk777/abeep

It is available for Arch in the AUR:
https://aur.archlinux.org/packages/abeep-git

I built it in Slint, it works and relies on the libasound.so shared library from
alsa

But what I don't know is how to tell bash to replace the call to pcspkr by
/usr/bin/bell and "man readline" did not give me a clue :(

there is also a beep software:
https://github.com/spkr-beep/beep also available on Arch:
https://archlinux.org/packages/extra/x86_64/beep/

It works here (TM) but also needs a the pcspkr module and the hardware.

Cheers


Le 27/05/2023 à 08:42, Janina Sajka a écrit :
> Dear All:
> 
> I'm wondering whether it's still supported in alsa?
> 
> Yes, in ancient history, with speakers in the computer case just for a
> beep on backspace, the old pcskpr module did the trick.
> 
> Then those speakers disappeared, but alsa-lib gave us an snd-beep module
> (as I recall). I'm not finding that module these days, and I'm wondering
> wheter it's just not getting compiled for some reason? Or has it really
> been dropped.
> 
> I know most fot the sighted world hates that beep on backspace. That's
> partly why it's quite hard to google for this question. I don't mind if
> it's off by default, but it should be something those of us who find it
> beneficial should be able to turn on, imo.
> 
> Anyone know.
> 
> Janina
> 

