Return-Path: <speakup+bounces-267-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 16E8F3F3AB9
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 15:07:42 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A32DD380F64; Sat, 21 Aug 2021 09:07:41 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=NjEbvhLY;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 84E0F380A11
	for <lists+speakup@lfdr.de>; Sat, 21 Aug 2021 09:07:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A9115380B28; Sat, 21 Aug 2021 09:07:35 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4E2D4380A13
	for <speakup@linux-speakup.org>; Sat, 21 Aug 2021 09:07:35 -0400 (EDT)
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B3888A3872;
	Sat, 21 Aug 2021 13:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1629544037; bh=VUQfOzid6vqBXcTdws3oBbLHwsNAdIaEiF/nOcw7NyE=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=NjEbvhLYbBxZ+nYWrlzPb4sx/FIocP12Ep4+9Arsymw0CSdN9jZ5LzuUnqFlK3eCd
	 bHUhC3BvgWLsiS2eaTgIbdDYm6JOEqtiW0aM0ZySIvoNHWmNADZTuZ3J7RtzJmoZux
	 E8Zpj6JfBb6qtYS+ZQ0siM/NKG4jXpG2ODMkqriD5ioI+gB/6172w9Kqaav1yfAG/a
	 UzOPD6d/1xmOU7IHf/ooQVI/dSSY1FXh01lFezhx65uxfxsTuA2+OzJKxmL4ov9Cfh
	 jwZTnjqRL1ruUQa91UpiYS2ufZ1UC89E/wra6Mxx0RbFlHgkzkCsXwPpXheANUCRMB
	 ERd+pY65JUy4A==
Subject: Re: Archlinux Speakup problems after alsa package upgrade
To: Janina Sajka <janina@rednote.net>,
 Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: Alexander Epaneshnikov <aarnaarn2@gmail.com>,
 Kelly Prescott <kprescott@coolip.net>, speakup@linux-speakup.org,
 Alexander Epaneshnikov <alex19ep@archlinux.org>
References: <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net> <20210819205617.l76b7fxume3lrf67@begin>
 <20210820152606.r5nznst2t5532th3@alex-pc>
 <20210820155212.rlj4addvh726cgbb@begin> <YSDtfiv5yYy/FfQq@rednote.net>
 <20210821121814.vbyw4vxysowqf7as@begin> <YSD2SHLJ+hWMEj7Z@rednote.net>
From: Didier Spaier <didier@slint.fr>
Message-ID: <1a2514f9-d6cc-7aa2-2e6f-890a1ef76e1b@slint.fr>
Date: Sat, 21 Aug 2021 15:07:23 +0200
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
In-Reply-To: <YSD2SHLJ+hWMEj7Z@rednote.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Janina,

You are not running this command as regular user, are you?

Best,

Didier

[fist sent privately my mistake, sorry]

Le 21/08/2021 à 14:49, Janina Sajka a écrit :
> Hi, Samuel:
> 
> espeakup -d gives me:
> 
> Unable to open the softsynth device: Permission denied
> 
> Best,
> 
> Janina
> 
> Samuel Thibault writes:
>> Janina Sajka, le sam. 21 août 2021 08:11:42 -0400, a ecrit:
>>> I have confirmed my audio devices can aplay without problems, but no joy
>>> from espeakup.
>>
>> Would you be able to run espeakup by hand with the -d flag? That'll dump
>> the alsa errors and whatnot.
>>
>> Samuel
> 

