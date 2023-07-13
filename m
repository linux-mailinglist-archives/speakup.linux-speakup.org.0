Return-Path: <speakup+bounces-1004-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 30E1F7518F0
	for <lists+speakup@lfdr.de>; Thu, 13 Jul 2023 08:41:04 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=Mjcp+ybK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C0D5738256A; Thu, 13 Jul 2023 02:41:03 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A091938239C
	for <lists+speakup@lfdr.de>; Thu, 13 Jul 2023 02:41:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 22389382464; Thu, 13 Jul 2023 02:40:56 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id E3D7538239C
	for <speakup@linux-speakup.org>; Thu, 13 Jul 2023 02:40:55 -0400 (EDT)
Received: from [192.168.0.12] (unknown [88.176.55.76])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 02006E754F;
	Thu, 13 Jul 2023 06:40:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1689223244; bh=VI3Ijv+FlscBs2v64E/0+BUJuzejoJYFnKh3/7zPI1I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Mjcp+ybKM+WDJUNQSp9nmio1UFgVHAnCuteivDTpiv5U31UmZheYMNdrA7D96rOz7
	 0c1GFl9Va6H1cesjziRYvx8P+SiMjYxyKRlJfDvmjEUnZkhes8GUlnmWlkDOVHMq0J
	 QEwMqYYM2T3chYi4luza7xbEDvB+Ks3//z4CPUpRauT+qempvXQ3Kmkv9bhlWttt94
	 jPKUpzoUGMs5B5yVw0Qhyy8dH7Uopj1eLpzTaitN13reALMoautUcULJ1f57HFcDzN
	 +5cuhzINH55bHH4Wsvzug56txLt5jwqoOFTIrF+6/K0Ys4ic0aUrhuTjTTSen+MaaZ
	 vQh8Q6zjmWylA==
Message-ID: <5fb7d95b-389c-e21d-c57e-b97b0996041b@slint.fr>
Date: Thu, 13 Jul 2023 08:40:45 +0200
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
 Thunderbird/102.13.0
Subject: Re: Announcing pod-kast with a k
To: Jookia <contact@jookia.org>
Cc: speakup@linux-speakup.org
References: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com>
 <m31qhczy5s.wl-covici@ccs.covici.com>
 <b0e002e0-265c-109e-66a9-3e346efccb17@slint.fr> <ZK-YSWJQLIBTcJgu@titan>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <ZK-YSWJQLIBTcJgu@titan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks Marc, I will try it.

Cheers,
Didier


Le 13/07/2023 à 08:23, Jookia a écrit :
> Here is the source code:
> 
> https://github.com/mlytle4218/pod-kast-rust
> 
> On Thu, Jul 13, 2023 at 07:55:12AM +0200, Didier Spaier wrote:
>> I second what John said.
>>
>> Moreover I would try only a new software if/when the source is publicly
>> available and I can build/compile it myself.
>>
>> Cheers,
>> Didier
>>
>> Le 12/07/2023 à 22:13, John Covici a écrit :
>>> Since I use gentoo, a .deb would not do me much good.  Can I compile
>>> your app somehow?  Also, how do I search for a particular podcast in
>>> your client and do you have a facility where I can use a username and
>>> password if the feed requires it?
>>>
>>> Thanks, sounds interesting.
>>>
>>> On Wed, 12 Jul 2023 13:57:32 -0400,
>>> Chime Hart wrote:
>>>>
>>>> Hi All: I have been waiting a long time to offer a newer much
>>>> more intuative podcast client for those of us who like
>>>> menus-and-simplicity. I am and will be announcing here-and-in the
>>>> Blinux list, but since this works especially well in Speakup,
>>>> this list will enjoy it first.
>>>> DESCRIPTION
>>>>        Welcome to Pod-kast 0.8.0 written by Marc Lytle and
>>>> conceived by myself, Chime Hart.
>>>>
>>>>        Over  many  years almost all podcast clients seemed to be
>>>> lacking an interface which made sense, as well as features I was
>>>> hoping for.  The only one I understood was hpodder, but it is no
>>>> longer available.  In Pod-kast, since I
>>>>        am totally blind and listen with Speakup, a Linux
>>>> screen-reader, we took great care to make all functions really
>>>> obvious by having numbered menus and yes having the word "number"
>>>> before each digit removing any ambiguity.
>>>> Back again live, while you may be able to grab from a github
>>>> page, which seems really messy in L Y N X an easier option would
>>>> be a direct url from my web-site, but not linked from my site.
>>>> https://hubert-humphrey.com/pod-kast_0.8.0_amd64.deb
>>>> This is beta software-and-there still may be inconsistancies in
>>>> the man-page. Rather than clutterup the list, if you have
>>>> opperational issues, please write myself directly, or write an
>>>> author Marc at an address listed in the man-page. I `sincerely
>>>> hope all of you enjoy-and-find alot of success with this new
>>>> client, which I named with an alternative spelling, as there are
>>>> several podcast clients with the regular spelling.
>>>> Thanks so much in advance
>>>> Chime
>>>>
>>>
>>

