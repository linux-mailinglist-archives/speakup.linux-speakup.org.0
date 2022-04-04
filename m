Return-Path: <speakup+bounces-392-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 361FE4F1C8C
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 23:28:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=svI0JrjO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CADA4380FFC; Mon,  4 Apr 2022 17:28:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B4F96380FF6
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 17:28:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A2A18380D29; Mon,  4 Apr 2022 17:28:42 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7C0D33809A3
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 17:28:42 -0400 (EDT)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0E35420245
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 22:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1649104080; bh=r1VYZs1i/cWr6oZ3Z2Gb7C9qhz8chyPOdQlii7nBXA8=;
	h=Date:Subject:From:To:References:In-Reply-To:From;
	b=svI0JrjOwapn37cqyCg7KSG4JkyDkGjeJuTgVIVvgNXsjIbvpRxo557IhiLDoYu0D
	 tT55z0mYLlKpao7+0jMLcX2QesuSV2m2OZpMx0P7IWSfUJzz3Ocq4K+s2rp8NpkioZ
	 5NNidjywGIztiF5LS6kWZLW2wx3Q05Z80UVrBbbTx7loQs/e/QhL0E3lefD4sP0BJf
	 SQmHqows33TS/4K1nl+YT7N7YtNwQF46Sbf5rXpGFXOGTeNxmd4Pvc/3kwXYn5TGQ0
	 nHrXSfBsVZgtETEA6Z6ijNMEJVTNfUvsw2DNJcJL2mJn4Q0wrZlvqd/p9HpUxFost0
	 TPVBoKFMqnLvQ==
Message-ID: <d53e92a7-264b-b3d8-16b6-322e917bec2c@slint.fr>
Date: Mon, 4 Apr 2022 23:28:14 +0200
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
 Thunderbird/91.7.0
Subject: Re: How Can I Switch Synthesizers on the Fly?
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
To: speakup@linux-speakup.org
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
 <Yko9zLikCNY1qcDX@gregn.net> <dc24ab4c-32c0-1b13-9b27-6ff32d99edc2@slint.fr>
In-Reply-To: <dc24ab4c-32c0-1b13-9b27-6ff32d99edc2@slint.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Correction:
instead of
talkwith spd
read:
talkwith soft spd

Le 04/04/2022 à 23:19, Didier Spaier a écrit :
> Well Chime_and_all, let me chime in.
> 
> 1. Slint doesn't ship the talkwith script, but a different one, named speak-with.
> 
> 2. talkwith can be found in the archive provided here:
> ftp://linux-speakup.org/pub/speakup/speakup-3.1.6.tar.bz2
> in the tools directory
> 
> I ran talkwith here (in a yet to be released Slint64-15.0) and it still works.
> I attach a copy of the script.
> 
> I having both espeakup and speechd-up installed, As in the kernel I run
> currently has the speakup drivers provided as modules, I first typed as root:
> mopdrobe speakup_soft # this also loads the speakup module as a dependency
> then to start espeakup:
> talkwith soft espeakup
> then to start speechd-up
> talkwith spd
> then to start a my (non existing) Dec Talk:
> modprobe speakup_dectlk
> talkwith dectlk
> All worked, but I can't check the last command as I do not owning such hardware.
> 
> So no need to fiddle manually with /sys if you use talkwith.
> 
> I can't help with installating speechd-up in Debian that I do not use.
> 
> PS I also typed:
> tcsh talkwith soft espeakup
> which displayed:
> Illegal variable name
> So Chime, I know that tcsh is the shell you are used to, but you certainly would
> do us a favor typing your commands from another one before requesting help.
> 
> Here I use the bash shell, you could probably use ash or dash as well.
> 
> Cheers,
> Didier
> 
> 
> Le 04/04/2022 à 02:37, Gregory Nowak a écrit :
>> On Sun, Apr 03, 2022 at 12:36:25PM -0700, Chime Hart wrote:
>>> last year I purchased some hi quality voices from Oralux, which are software
>>> speech. When I have Allison installed, I can send her text through spd-say.
>>> Making matters more complex, speech-dispatcher will not seem to install on
>>> this Debian Sid machine.
>>
>> This is contradictory. Having spd-say working implies a working and
>> installed speech-dispatcher. So, I will assume you have
>> speech-dispatcher installed and spd-say installed and working on one
>> machine, but not another. In that case saying speech-dispatcher won't
>> install doesn't help us help you.
>>
>>> Guidance I've received from 2 sources, says I must
>>> install and have espeak talking before I can switch to Allison, which is an
>>> embedded voice.
>>
>> If these voices interface through speech-dispatcher, then that would
>> make sense. However, the only way I know of to interface speakup to
>> speech-dispatcher right now is through speechd-up. So, it seems like
>> you would have to install speechd-up, get that working with
>> speech-dispatcher and espeak-ng, and once you have that working get
>> speech-dispatcher to use your purchased voices.
>>
>>> When I was running Slint on a laptop, Didier had created a
>>> talk-with command to easily switch synths, but his script would need to be
>>> re written for Debian.
>>
>> I can confirm the talkwith provided in the speakup-tools package for
>> debian bullseye seems to be broken. Issuing talkwith soft comes back
>> with:
>>
>> /usr/sbin/talkwith: 88: shift: can't shift that many
>>
>> I took a look at the script, but don't see where the problem is.
>>
>>> In addition, if I unload the DecTalk module, I won't
>>> have speech, or would their be a way of having both DecTalk and software
>>> speech at the same time?
>>
>> No, you can't have both your dectalk and software speech at the same time.
>>
>>> So, can some1 please provide exact commands I can
>>> switch synths on the fly? I ran a locate for softsynth  but nothing found.
>>
>> No surprise. What you want is the speakup_soft module. You would as
>> root load that with:
>>
>> modprobe speakup_soft
>>
>> then start espeakup or speechd-up, depending on which one you use. I
>> think that would be something like:
>>
>> systemctl speechd-up start
>> or
>> systemctl espeakup start
>>
>> I'm not a systemd user, so someone else can correct the above if
>> they're not correct.
>>
>> Now, assuming you have both speakup_soft and speakup_dectlk kernel
>> modules loaded, you can switch between them as root with:
>>
>> echo dectlk >/sys/accessibility/speakup/synth
>>
>> for the dectalk, and
>>
>> echo soft >/sys/accessibility/speakup/synth
>>
>> for software speech. Remember that before switching to dectlk you
>> should stop espeakup or speechd-up, and after switching to soft you
>> should start espeakup or speechd-up. I seem to recall you use csh, so
>> maybe someone can roll all that into a csh script for you.
>>
>> Greg
>>

