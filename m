Return-Path: <speakup+bounces-1164-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 447A592E330
	for <lists+speakup@lfdr.de>; Thu, 11 Jul 2024 11:14:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=Hr/XKcPk;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8D933382084; Thu, 11 Jul 2024 05:14:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6A284382068
	for <lists+speakup@lfdr.de>; Thu, 11 Jul 2024 05:14:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4D2EF382079; Thu, 11 Jul 2024 05:14:44 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3EAD7382068
	for <speakup@linux-speakup.org>; Thu, 11 Jul 2024 05:14:43 -0400 (EDT)
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C7EF5625D8
	for <speakup@linux-speakup.org>; Thu, 11 Jul 2024 11:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1720689126; bh=LNmvQy1fCjjs27nbwpewR8LhWk/YEegG1pPNgtuEhVw=;
	h=Date:From:Subject:To:References:In-Reply-To:From;
	b=Hr/XKcPk1J/LkC+vYVMzE67j9hVEomG77rPPj+7lPsFzYxjk7IDF1uH9Be4FyQRS9
	 nwicY1i1lJjISrY3Rjk87NrVGQ+eX/1piM82fjHzVK4iVo/7tgcAgC7DDjiRuXktQ+
	 XoY3FZDAhBaWvVetsrzGkpIQTT76uqewXFxK8neaPAt2SHHl/3U6o/ejtOsg1xQmsd
	 kvmzLVkxlAJpgnQF0rk0lKy6ZHEzBFRS4ES3J0zWlRLYjxx3sCEf1GiDnD/wLh8Xfe
	 f7sEpj0PdrN638c1fJ1i+ymQHwaV+Q5rwlYl/0hPlExnYJAjD2xyiNQgITgzAExb9W
	 o5qKx0XOvFrfQ==
Message-ID: <9a0c0bd3-70c3-42a3-af0d-ebd414369e12@slint.fr>
Date: Thu, 11 Jul 2024 11:14:41 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Didier Spaier <didier@slint.fr>
Subject: Re: How to enable speech during boot up?
To: speakup@linux-speakup.org
References: <ZoP_ogmiMrg_BtDu@cudneys.ca>
 <20240710232918.hpfxyppxphbgufoy@begin> <Zo9Y3m_Yu61vGlHK@cudneys.ca>
Content-Language: en-US
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <Zo9Y3m_Yu61vGlHK@cudneys.ca>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Terry,

Le 7/11/24 à 06:00, Terry D. Cudney a écrit :

> --> The problem will them be concurrent access to the audio card between
> --> espeakup and speech-dispatcher. If in the desktop you use alsa and the
> --> dmix module, that should work fine.
> 
>     Ah! That seems to be where the problem lies! The desktop is using pipewire/pulseaudio.
> 
> 
> **--**> *** Key question:
> What is the best way to disable pulseaudio/pipewire/wireplumber/whatever and force the desktop to use alsa, dmix?

You do not have to.

You can set in /etc/speech-dispatcher/speechd.conf alsa as AudioOutputMethod
or set it as libao and set default_driver=alsa on /etc/libao.conf.

Then you can redirect the audio output deop puse to dmix. For instance in
/etc/pulse/default.pa:

### In Slint, we want to share audio resources between speech apps that
### rely on alsa and other apps that rely on pulseaudio.
load-module module-alsa-sink device=dmix
load-module module-alsa-source device=dsnoop

With this setting pulse is not disabled (but started only in demand, by
applications that require it), I have speech during boot up, both if the system
stats in console mode or in a graphical environment, I can hear the music
started in a graphical environment while in a tty.

Caveat: I remember that Samuel had objections about this setup, I do not
remember which ones, maybe he does? All I can say is I do not receive complaints
by Slint users about these default settings.

Another solution is proposed in the Arch wiki:
https://wiki.archlinux.org/title/PulseAudio/Examples#PulseAudio_as_a_minimal_unintrusive_dumb_pipe_to_ALSA


> -->If you use pulseaudio or pipewire
> --> you'll get a conflict. This is a concern that I've never found time
> --> to tackle, and I have hoped for years that somebody else would have
> --> a look at it since it won't involve coding, but discussing properly
> --> with pulseaudio/pipewire people to work out a proper solution. In the
> --> meanwhile people have rather looked at workarounds and stay half-happy
> --> with that...
> --> 
> --> Samuel
> 
>     I'm happy to lose pulseaudio/pipewire et al and use alsa/dmix.
>     
>     Question out of curiosity: What does pulseaudio add; why are  distributions seeming to abandon alsa in favour of pulseaudio?

Well, to know everything about pulseaudio, you can read  PulseAudio under the
hood from Victor Gaydov: https://gavv.net/articles/pulseaudio-under-the-hood/


>     My naive observation is that pulseaudio just adds a lot of complexity...

Amazingly the introduction of pulseaudio in Slackware triggered the same
question some years ago and even flame wars, leading Patrick Volkerding
 to during some time propose a variant "alsa only" ;)

All this being said I know nothing about pipewire and systemd.

Cheers,
Didier


