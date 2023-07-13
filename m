Return-Path: <speakup+bounces-1005-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 43BF2751A11
	for <lists+speakup@lfdr.de>; Thu, 13 Jul 2023 09:40:09 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=bluegrasspals.com header.i=@bluegrasspals.com header.a=rsa-sha256 header.s=default header.b=qV6V5mql;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F8703825A1; Thu, 13 Jul 2023 03:40:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7F71138076C
	for <lists+speakup@lfdr.de>; Thu, 13 Jul 2023 03:40:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0816638246F; Thu, 13 Jul 2023 03:40:01 -0400 (EDT)
Received: from bluegrasspals.com (bluegrasspals.com [96.126.127.231])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B6D81382392
	for <speakup@linux-speakup.org>; Thu, 13 Jul 2023 03:40:00 -0400 (EDT)
Received: from [192.168.1.2] (198-89-28-28.pool.dsl.nctc.com [198.89.28.28])
	(authenticated bits=0)
	by bluegrasspals.com (8.15.2/8.15.2/Debian-22) with ESMTPSA id 36D7dq8Y2311042
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Thu, 13 Jul 2023 03:39:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=bluegrasspals.com;
	s=default; t=1689233994;
	bh=OVWUVotjJjQKPKzY2TuM/TbaHIemS8OA5f6dhNH9iAE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qV6V5mqlcmsuqhIH9u6DJHlKo1h04pS22W4lDXXsyP0sPbNhJYNnKmV2llciyiqid
	 zwbgcNqTg65c3mV7oUw7pRvPWLriLYNjK9mYxa4SMQVOVs6bLUtKgOs+GL9m6CyBWR
	 726DhfKoHBat1+GuUQcQGnIFgZN7FBKV1CQcJs9w=
Message-ID: <889cbcc4-c567-8c3f-fb8a-2e2ef02dc0d2@bluegrasspals.com>
Date: Thu, 13 Jul 2023 03:39:51 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Announcing pod-kast with a k
Content-Language: en-US
To: Jookia <contact@jookia.org>, Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org
References: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com>
 <m31qhczy5s.wl-covici@ccs.covici.com>
 <b0e002e0-265c-109e-66a9-3e346efccb17@slint.fr> <ZK-YSWJQLIBTcJgu@titan>
From: Jayson Smith <jaybird@bluegrasspals.com>
In-Reply-To: <ZK-YSWJQLIBTcJgu@titan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,

This sounds interesting. I built it on a Debian system, no problem. Not 
surprisingly, I tried to build on Windows 10 and it failed, one of its 
dependencies didn't build. Here's the line that told me which dep failed 
to build:

error: could not compile `libsystemd` due to 18 previous errors

I have the feeling that this dependency is specific to Linux, so because 
it won't build, it stops the process right then and there.

Jayson

On 7/13/2023 2:23 AM, Jookia wrote:
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
>>>> Hi All: I have been waiting a long time to offer a newer much
>>>> more intuative podcast client for those of us who like
>>>> menus-and-simplicity. I am and will be announcing here-and-in the
>>>> Blinux list, but since this works especially well in Speakup,
>>>> this list will enjoy it first.
>>>> DESCRIPTION
>>>>         Welcome to Pod-kast 0.8.0 written by Marc Lytle and
>>>> conceived by myself, Chime Hart.
>>>>
>>>>         Over  many  years almost all podcast clients seemed to be
>>>> lacking an interface which made sense, as well as features I was
>>>> hoping for.  The only one I understood was hpodder, but it is no
>>>> longer available.  In Pod-kast, since I
>>>>         am totally blind and listen with Speakup, a Linux
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


