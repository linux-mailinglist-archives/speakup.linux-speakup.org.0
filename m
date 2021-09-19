Return-Path: <speakup+bounces-306-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3A821410D86
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 23:53:03 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=AhlfwE3O;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C1E863811E2; Sun, 19 Sep 2021 17:53:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AD679380996
	for <lists+speakup@lfdr.de>; Sun, 19 Sep 2021 17:53:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E5CD0380C5A; Sun, 19 Sep 2021 17:52:56 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id BECB8380996
	for <speakup@linux-speakup.org>; Sun, 19 Sep 2021 17:52:56 -0400 (EDT)
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 20E6BA451C;
	Sun, 19 Sep 2021 21:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1632081157; bh=6xdVZWVM9/Q+M93NALfsnyoQEPZ+RCPI8t0fGzLgd3U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AhlfwE3OT/bJ971ZV652ghXkE2WlssKeYrcKGqB9Wqfy4NC2tT/fo3kqMQlGgR6n5
	 F+vGrMc6lvIsn+Bqg3ABh9dIm+kYW5EspjGZ3SlzSfrMXxXc1ZTzTncaS9HPuxy/4M
	 MEPOD3oryxZ5yU+ldKVO8dg2FkEaw5kySOfwYWFtvRfHCxyvCne+dTgoo0GVWWElu5
	 poIB5GN2T4gWIzJKuGN9XMp2j94HbP9JOEMLMjsjzaC2iS7neOSdPm4REEZt2RKsOp
	 N+1XjYQxJ0eSXIR4tECqJpN70kofup9cg1aO67vTzSkbY9DYZNsW+gBufeXZHKTDSG
	 3GMTgc4bP+S7w==
Message-ID: <c1c800dd-d7a4-34ec-e65e-4b84588446a8@slint.fr>
Date: Sun, 19 Sep 2021 23:52:54 +0200
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
Subject: Re: loading speakup_soft, was: Re: Broken espeakup on debian sid
Content-Language: en-US
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>,
 Gregory Nowak <greg@gregn.net>
Cc: speakup@linux-speakup.org
References: <dd651c4c-1178-8d83-125d-23ad3d2cef88@reisers.ca>
 <20210919035755.GA11947@gregn.net> <20210919170150.pp3u54hbqfjidy7y@alex-pc>
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <20210919170150.pp3u54hbqfjidy7y@alex-pc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Alexander,

Le 19/09/2021 à 19:01, Alexander Epaneshnikov a écrit :
> On Sat, Sep 18, 2021 at 08:57:56PM -0700, Gregory Nowak wrote:
>> On Sat, Sep 18, 2021 at 03:26:02PM -0400, Kirk Reiser wrote:
>>> I noticed in the espeakup build systemd
>>> services that it loads speakup_soft when the systemd service is
>>> started.
>>>
>>> I'm not crazy about that being the way to load speakup particularly
>>> but I'm not that familiar with various distros way of doing things but
>>> it appears the espeakup maintainers figure everyone is running
>>> systemd.
>>
>> No, not everyone is running systemd. I wonder where the espeakup
>> maintainers got such a notion from?
>>
> 
> answering as an espeakup maintainer. I understand that not everyone
> uses systemd and respect their choice.
> 
> unlike other init systems, systemd encourages upstreams to provide systemd
> units on there own, I see no reason why we shouldn't do this, especially
> since it's all optional.

I have no issue with that. I just don't package the systemd service.

I do the same for brltty.

Cheers,
Didier

> I have plans to integrate more closely with systemd, but I will do my best
> to maintain compatibility with other init systems.

As long as systemd does not become a hard dependency of espekaup I will
continue to include it in Slint.
> testing is encouraged in any case.
> 
>>>
>>> That's one of the reasons I mentioned getting folks opinions in my
>>> last message to you. For people that don't run systemd it will
>>> certainly break things.
>>
>> Great. Something else to look forward to fixing when devuan 5 is
>> coming out, sigh. Fortunately, that's a couple of years from now.
>>
>> Greg
>>
>> --
>> web site: http://www.gregn.net
>> gpg public key: http://www.gregn.net/pubkey.asc
>> skype: gregn1
>> (authorization required, add me to your contacts list first)
>> If we haven't been in touch before, e-mail me before adding me to your contacts.
>>
>> --
>> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>>
> 
> --
> Sincerely, Alexander
> 

