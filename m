Return-Path: <speakup+bounces-253-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 43B043D4485
	for <lists+speakup@lfdr.de>; Sat, 24 Jul 2021 05:42:43 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9DD58380F77; Fri, 23 Jul 2021 23:42:42 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=fFEnE19C;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 89896380FAB
	for <lists+speakup@lfdr.de>; Fri, 23 Jul 2021 23:42:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F39E0380C5E; Fri, 23 Jul 2021 23:42:39 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with UTF8SMTPS id DB0A1380A3B
	for <speakup@linux-speakup.org>; Fri, 23 Jul 2021 23:42:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1627098157;
	bh=vJ0zBIKz9+9v6IhwUIcGmtCbhInlTOcbhu4nXA+xSH0=; l=2622;
	h=Subject:To:Cc:References:From:Date:In-Reply-To;
	b=fFEnE19C0d99YSxS3BUV83jxWo5DNAaRnyIOLamF6vmVc4rhbBw/FzemU00WvAx7I
	 BXRNfsBaSSEALM7YHWas4noe7rdOkvbnVTc3RncZ94zcGz/9vx41aIeWGlgPvxfZKq
	 YGCz4/LkQ1yhPu4V1B6Xuaym/H9ZpM4DY7OJWZf4MNLvLsPoo++WcfvjLRKipM4a/t
	 O1dR/F1BvEBOyf3GqfJyqvlzZ32QEcaYv55SQiA5Zt7BRjLIPAtSvBEk8cIyemE9q/
	 1iE/JUflOZFan9r+AINY9CjGM5MNJOy/hmbFYlMBCGU+16ttSvb1NhGeArYyJZcFQ5
	 o+tjEt1k6ZbwQ==
Original-Subject: Re: Speakup on Arch Linux
Original-From: "Joseph C. Lininger" <joe@pcdesk.net>
Original-Cc:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speakup on Arch Linux
To: Jude DaShiell <jdashiel@panix.com>
Cc:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
 <20210723162731.ybyg2okeqgydfzph@alex-pc>
 <alpine.NEB.2.23.451.2107231308430.13529@panix1.panix.com>
From: "Joseph C. Lininger" <joe@pcdesk.net>
Message-ID: <963c1fbb-e960-88de-a962-b80c8859f1d2@pcdesk.net>
Date: Fri, 23 Jul 2021 23:42:36 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.6.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2107231308430.13529@panix1.panix.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

HI there,
I personally don't use the archinstall script. It's relatively new 
anyway, but I actually prefer to set things up manually. That way I can 
have it exactly the way I want it. My system worked perfectly until 
something broke with ALSA. I managed to update the rest of my system, as 
long as I don't let it touch alsa packages, espeak, or espeakup. It 
talks if I update those packages, but it does this thing where the 
keyboard lags while typing and it hiccups at the end of some phrases. I 
reverted using a snapshot to a pre-upgrade state and then updated 
everything but the previously mentioned packages and things work now. 
This isn't a long term workable solution, but it got things running for 
now until the developers fix the broken packages.
Joe

On 7/23/2021 1:15 PM, Jude DaShiell wrote:
> I tried installing a clear archlinux installation using archinstall and
> though the installer talked when booted correctly, the installed system
> failed to talk with espeak-ng and espeak.  I'm going to try two things
> next.
> First boot the installed archlinux system and hit down-arrow then enter
> during the boot process and see if that turns speech on.
> If that fails, the next thing I'll try is to install a new version of
> jenux and see if that comes up talking.  I usually go with a minimal
> installation (no desktops) since in the past such installations were more
> stable for me.
> When I tried the archlinux installs recently, I chose minimal rather than
> desktop install choices.  Before I knew about the archinstall script, I
> installed archlinux according to directions in the large
> installation-guide and have braille notes for that kind of installation.
>
>
> On Fri, 23 Jul 2021, Alexander Epaneshnikov wrote:
>
>> On Fri, Jul 23, 2021 at 12:12:12PM -0400, Joseph C. Lininger wrote:
>>> Good day all,
>> hello Joseph.
>>
>>> I saw a couple of messages earlier about ALSA issues on Arch Linux with
>>> espeakup. I can't find them now though. The latest versions of alsa,
>>> speakup, linux kernel, etc. cause the speach to lag while typing. Is there a
>>> workaround to this, packages I should not upgrade right now, etc? I can
>>> revert my system to a previous state, but I need to know how to avoid this
>>> problem when I go to update packages going forward. Also, anyone know if a
>>> fix is in the works? Obviously just permanently using older package versions
>>> isn't a good solution.
>> can you describe problem in more details? or maybe you can record sound?
>>> Thanks in advance.
>>> Joe
>>>
>> --
>> Sincerely, Alexander
>>
>>


