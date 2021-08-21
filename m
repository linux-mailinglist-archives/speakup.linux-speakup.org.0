Return-Path: <speakup+bounces-270-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 624283F3AD7
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 15:58:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E51EB380C5E; Sat, 21 Aug 2021 09:58:50 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=x1jkHf0r;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C722F380B28
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 09:58:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC54D380C17; Sat, 21 Aug 2021 09:58:44 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id C8148380B28
	for <speakup@linux-speakup.org>; Sat, 21 Aug 2021 09:58:44 -0400 (EDT)
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id EF443A3886;
	Sat, 21 Aug 2021 13:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1629547114; bh=cff5Z4qgPBBK82YigsuVsHc8IMv2QmApJsSM7l9ZHSA=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=x1jkHf0ruzXWdBZMxY/pvQKwbkmc35o/6ljiaLttZD9mh0vDWG8Q3TZMwvjrL/Q8V
	 DoZXa0d+7KKAK3Bip7X3E/YzfJjhNyP1mD/6E3lphsxhqWTNaQIaiaCzfZBp/fVIDf
	 Z1Puv1IY2ERKrz7kWNQe2lhVaYmo2qA9p1FXUiRP7MKIcoYcY2XL0HD5Wg0G7EFy1q
	 ILunSVYivlYE5Huo7OwczI8koD5+UB/LF0Dizwci5feKvi94IwHh5fJ+FMdX55MyZj
	 ZflpMQfdcPzznXK+bq1kqvRsHWsPjjhNK2PKsbe0YyiM1nbeDUjujXBu1Wyr1Uranx
	 ILPCuA7ZFsbOw==
Subject: Re: Archlinux Speakup problems after alsa package upgrade
To: Janina Sajka <janina@rednote.net>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
 Alexander Epaneshnikov <aarnaarn2@gmail.com>,
 Kelly Prescott <kprescott@coolip.net>, speakup@linux-speakup.org,
 Alexander Epaneshnikov <alex19ep@archlinux.org>
References: <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net> <20210819205617.l76b7fxume3lrf67@begin>
 <20210820152606.r5nznst2t5532th3@alex-pc>
 <20210820155212.rlj4addvh726cgbb@begin> <YSDtfiv5yYy/FfQq@rednote.net>
 <20210821121814.vbyw4vxysowqf7as@begin> <YSD2SHLJ+hWMEj7Z@rednote.net>
 <1a2514f9-d6cc-7aa2-2e6f-890a1ef76e1b@slint.fr>
 <YSEAz0j7+gy2WNk9@rednote.net>
From: Didier Spaier <didier@slint.fr>
Message-ID: <59ee45f7-ffcb-545a-e6ff-4e7c57caa155@slint.fr>
Date: Sat, 21 Aug 2021 15:58:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <YSEAz0j7+gy2WNk9@rednote.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I don't know. Why it work only after some amount of time is beyond me.

Didier

Le 21/08/2021 à 15:34, Janina Sajka a écrit :
> Hmmm, now it's working. I never did reboot. I switched to the minuet
> machine with my kvm and found espeakup working. I still see no error
> neither on the root console, which has not returned after the by hand
> start with -d, nor via the ssh from the concerto machine.
> 
> So, it seems it will work after some amount of time?
> 
> 
> Didier Spaier writes:
>> Hi Janina,
>>
>> You are not running this command as regular user, are you?
>>
>> Best,
>>
>> Didier
>>
>> [fist sent privately my mistake, sorry]
>>
>> Le 21/08/2021 à 14:49, Janina Sajka a écrit :
>>> Hi, Samuel:
>>>
>>> espeakup -d gives me:
>>>
>>> Unable to open the softsynth device: Permission denied
>>>
>>> Best,
>>>
>>> Janina
>>>
>>> Samuel Thibault writes:
>>>> Janina Sajka, le sam. 21 août 2021 08:11:42 -0400, a ecrit:
>>>>> I have confirmed my audio devices can aplay without problems, but no joy
>>>>> from espeakup.
>>>>
>>>> Would you be able to run espeakup by hand with the -d flag? That'll dump
>>>> the alsa errors and whatnot.
>>>>
>>>> Samuel
>>>
> 

