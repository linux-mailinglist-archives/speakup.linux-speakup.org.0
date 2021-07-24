Return-Path: <speakup+bounces-255-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 71D043D49BD
	for <lists+speakup@lfdr.de>; Sat, 24 Jul 2021 22:06:48 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 54743380F9C; Sat, 24 Jul 2021 16:06:47 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=RkK0tgtn;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 41836380AF9
	for <lists+speakup@lfdr.de>; Sat, 24 Jul 2021 16:06:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7B189380B59; Sat, 24 Jul 2021 16:06:42 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1482F380AF9
	for <speakup@linux-speakup.org>; Sat, 24 Jul 2021 16:06:42 -0400 (EDT)
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id DF929A3FA3
	for <speakup@linux-speakup.org>; Sat, 24 Jul 2021 20:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1627149981; bh=JHHxBb2nT/HG/dWdNEfiqjJxXcK4/49hFUYt0z4tAus=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=RkK0tgtnH4IrKeSQMx5Oih1VdagsnjygV5nnePm8ejKC3IKjtGo9lcwxYTFy0N03e
	 A4TFT1Y2i8oqb8suTDAl5ACalNcQ6UhtVdJfsQkktJAjK+wJJAQdYzWAVen22ct3+1
	 AvF8cLd6Kmr6fPjis8GXgSYs+/1UustC5FywykCfgguSWAxiAxoVdC49eIWdupfhMy
	 N5h3hWYpfuDs1Dh5yh1HKDjyYsnydTpYsFs9ByE5NfY4BXLvLOkVtqggp2r7u6GIzV
	 v4IYI/W0wkK2nNxRB8yZEYU754wqe/rneKaIDnYOJMtWEaazjszF8Hteb5cCS9jwar
	 Z3DU9v2jXkm4Q==
Subject: Re: Speakup on Arch Linux
To: speakup@linux-speakup.org
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
 <YPwaIT2oJm+7+Hpl@rednote.net>
From: Didier Spaier <didier@slint.fr>
Message-ID: <4bf62c3a-5683-93d1-26fa-75fb6dad3bba@slint.fr>
Date: Sat, 24 Jul 2021 22:06:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <YPwaIT2oJm+7+Hpl@rednote.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Janina,

<off topic>
Friendly reminder: Slint is free for chairs of committees of the W3C.
Not so bleeding edge than Arch globally but with a fairly up to date 
a11y stack,
fully accessible in all contexts and more stable than Arch.
Caveat: now with an automatic mode of installation. I know, it's not the 
Arch
way, sorry about that...
link: https://slint.fr/doc/HandBook.html
</off topic>

Cheers,
Didier

PS: please let me know any accessibility issue of the handbook you could 
come
across.

Le 24/07/2021 à 15:48, Janina Sajka a écrit :
> I have two machines running Arch that will not talk with the latest espeakup
> using the latest alsa. I don't know for a fact, but presume there's some
> discrepency with pipewire.
> 
> Solution/workaround of the moment is to keep alsa-lib, alsa-utils, and
> espeakup out of any system updates. I do this in my /etc/pacman.conf
> with lines like the following:
> 
> IgnorePkg   =espeakup
> IgnorePkg   =alsa-lib
> IgnorePkg   =alsa-utils
> 
> If I slip up and somehow get one of these upgraded, I can downversion by
> going to my machine via ssh, becoming root, followed by:
> 
> cd /var/cache/pacman/pkg
> 
> This cache directory holds previous versions of installed packages, and
> you can downversion with a command like:
> 
> pacman -U ./alsa-lib-1.2.4-3-x86_64.pkg
> 
> The 1.2.4 alsa versions work for me, where the 1.2.5 versions do not.
> The 0.9.0 espeakup also doesn't help on either of my machines.
> 
> Best,
> 
> Janina
> 
> Joseph C. Lininger writes:
>> Good day all,
>> I saw a couple of messages earlier about ALSA issues on Arch Linux with
>> espeakup. I can't find them now though. The latest versions of alsa,
>> speakup, linux kernel, etc. cause the speach to lag while typing. Is there a
>> workaround to this, packages I should not upgrade right now, etc? I can
>> revert my system to a previous state, but I need to know how to avoid this
>> problem when I go to update packages going forward. Also, anyone know if a
>> fix is in the works? Obviously just permanently using older package versions
>> isn't a good solution.
>>
>> Thanks in advance.
>> Joe
> 

