Return-Path: <speakup+bounces-348-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1F2B9480CFB
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 21:15:17 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=pbcRjB+G;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A35A3381163; Tue, 28 Dec 2021 15:15:16 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 90073381155
	for <lists+speakup@lfdr.de>; Tue, 28 Dec 2021 15:15:16 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DB716381158; Tue, 28 Dec 2021 15:15:10 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6D796381155
	for <speakup@linux-speakup.org>; Tue, 28 Dec 2021 15:15:10 -0500 (EST)
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 5F612A37B8;
	Tue, 28 Dec 2021 20:15:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1640718900; bh=8q+M0HpHsxW8cKWmIVux9DjxVesTjO0lM1TUnLOZPe4=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=pbcRjB+Got38MVBsSK7ZGg2Qmq9DvFUEaiJfqLwNEvmaFOEfwl8gqBORfK2KH+sWv
	 ciFbTmF7MLfDKGHK3zTyRBgA9Iy+qTX+vxnFhCaUOWK75ZXYxYZDcq72N61iAxtEAr
	 ZDeXIssPGtQolSobtwnXrgSiqz6/RL3XY2iIKtxlyX37jvM2PpfrAJlp9/jKDTKrFd
	 3xSnulvbHYx6vbTgI0IBbFTb3VN8iLV9/0K064Jskltvx9Dyt9jPkshKKTe3k+Yt3b
	 ckH6NrQ3krlR/XAKVQap62jSf3BcLQmDIwe0ZQY1ng4Ji9xAJjZ/NN81fq3+5Lzhhx
	 s0Krn9KHciQTg==
Subject: Re: Now Fixed: Archlinux Speakup problems after alsa package upgrade
To: Janina Sajka <janina@rednote.net>
Cc: speakup@linux-speakup.org
References: <alpine.LNX.2.22.411.2106090608590.13304@io.coolip.net>
 <20210609110828.kpo76f2zmbixjran@begin>
 <alpine.LNX.2.22.411.2106091332550.28397@whatsup.nkparts.com>
 <YMdZA0DL4BgCAShe@rednote.net>
 <6b4b229d-5e00-22e4-8cf2-33ed7bbd6b93@gmail.com>
 <YNMr0Pathc/mqx1L@rednote.net> <YcNUgwlCFtiAmY3Q@rednote.net>
 <3cefe3e6-f95a-ffe9-5995-543d6e4357db@jasonjgw.net>
 <Ycs60ClBq1jcVDuF@rednote.net>
 <055e3d2d-0653-3edc-4879-484816734d00@slint.fr>
 <YctqoKAZIKdSZH9f@rednote.net>
From: Didier Spaier <didier@slint.fr>
Message-ID: <86d02e30-71fc-50bd-2408-6c658ec2da29@slint.fr>
Date: Tue, 28 Dec 2021 21:15:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <YctqoKAZIKdSZH9f@rednote.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On 28/12/2021 20:50, Janina Sajka wrote:
> Didier Spaier writes:
>> Hi Janina and all,
>>
>> On 28/12/2021 17:26, Janina Sajka wrote:
>>> ...
>>>
>>> Apparently there must be some kind of reason why Espeakup can't be
>>> agnostic between espeak and espeak-ng?
>>
>> espeakup is linked against the shared library installed at time of building it.
>>
>> Here:
>> dance[~]$ ldd /usr/bin/espeakup | grep libespeak
>> 	libespeak-ng.so.1 => /usr/lib64/libespeak-ng.so.1 (0x00007f290df83000)
>>
> Thanks, Didier. This does make sense.
> 
>> My guess is you will find libespeak.so.1 instead running the same command.
>>
>> So you need to rebuild espeakup-0.90 after having removed espeak and installed
>> espeak-ng only.
>>
> Are you saying I need to run ldd by hand? I thought the installation
> process upgrading from 80 to 90 would take care of the ldd?

ldd just gives an information about the dependencies. As its man page says:

ldd  prints the shared objects (shared libraries) required by each program or
shared object specified on the command line.

During the installation process maybe the program in Arch that performs the
installation checks the presence of the required dependency (probably not using
ldd but rather according to the information recorded in some file by the packager).

If so and if my assumption is correct:
1) When the packager built espeakup, espeak (not espeak-ng) was installed.
2) you can check this running the above ldd command
3) therefore espeakup can't use easpeak-ng, only easpeak.

> It's true I did not run an ldd when I tried to upgrade my older machine
> to espeak-ng and espeakup-0.90.

In any case you need to rebuild espeakup-0.90 against espeak-ng. How to do that
in Arch properly is beyond my knowledge. Here "properly" means "in such a way
that the package can be handled by Arch's packages management system". Abyway
the generic steps are:
1) make sure espeak be not installed.
2) make sure espeak-ng is installed.
3) build and install espaekup.

Oh, and computer programs are not agnostic, in the sense that their dependencies
need to meet some specifications so they can run.

Human beings can be agnostics, as Didier, but I digress...

Cheers,
Didier

> 
> Best,
> 
> Janina
> 
>> It could be possible to just make a symlink instead, but that would ugly. Better
>> just get read of espeak.
>>
>> Cheers,
>> Didier
>>
>>
> 

