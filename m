Return-Path: <speakup+bounces-257-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D4C983D4FCA
	for <lists+speakup@lfdr.de>; Sun, 25 Jul 2021 21:59:47 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 52A7F380F82; Sun, 25 Jul 2021 15:59:47 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=U5J0QMNm;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3D54E380C60
	for <lists+speakup@lfdr.de>; Sun, 25 Jul 2021 15:59:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 52BC1380C71; Sun, 25 Jul 2021 15:59:41 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with UTF8SMTPS id 129B7380B14
	for <speakup@linux-speakup.org>; Sun, 25 Jul 2021 15:59:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1627243178;
	bh=H4eNqIl5DkIIUtfpC7MIeh08ZJU98q2TXzQVFLBF/Kk=; l=2305;
	h=Subject:To:Cc:References:From:Date:In-Reply-To;
	b=U5J0QMNmw+H/illAHNSKHGJGIhvX1wZd2tQISqIy/E7EhELa918zbYE9/czl389jz
	 hpUyuQyj3+YsZHUOm3scszmiOWL2liQ6fv/FUvY9sJSZxebglDOURng8XuvBeLrVKw
	 vT5yKUzS1FBL5sQ/NASUu/OyFGi5rKyN71PlANLByQzAHOHEbEbZygQspcekmr8PK8
	 TGJKOry3FktQcPpLwesWjIH2iU2c9c9dVQmrIo2cwBGuDaxGLiswKYNfCMYDhNUQS0
	 NsD2FFDfNpzMn09W4V0Weob2xoB0fg6qLBD4Vai6Q4icWUj3KjGJFG4i7HzFA42zny
	 gxmyxuEPf0eUg==
Original-Subject: Re: Speakup on Arch Linux
Original-From: "Joseph C. Lininger" <joe@pcdesk.net>
Original-Cc:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speakup on Arch Linux
To: Janina Sajka <janina@rednote.net>
Cc:
  "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net>
 <YPwaIT2oJm+7+Hpl@rednote.net>
From: "Joseph C. Lininger" <joe@pcdesk.net>
Message-ID: <a98d3dd2-75d4-0542-54fb-7eb7e2f2f245@pcdesk.net>
Date: Sun, 25 Jul 2021 15:59:34 -0400
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
In-Reply-To: <YPwaIT2oJm+7+Hpl@rednote.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks Janina. My experience has been similar to yours. The difference 
is that I can get speech with later versions, it's just that it drags a 
bit when echoing keys and it hiccups sometimes at the when it finishes 
talking. I had to restore my system from a BTRFS snapshot after 
upgrading (the pacman solution didn't work because I didn't have old 
enough versions) , but I've done similar to you for the moment and 
excluded alsa-lib, alsa-utils, alsa-tools, espeak, and espeakup. 
Hopefully they fix this so that we don't eventually have a situation 
where we can't, for example, upgrade the kernel because of an 
incompatible change to alsa.
Joe

On 7/24/2021 9:48 AM, Janina Sajka wrote:
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


