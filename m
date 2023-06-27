Return-Path: <speakup+bounces-973-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D8F6E73FEFC
	for <lists+speakup@lfdr.de>; Tue, 27 Jun 2023 16:52:18 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=epNBAkZK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CAA7838257E; Tue, 27 Jun 2023 10:52:17 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AAE48382320
	for <lists+speakup@lfdr.de>; Tue, 27 Jun 2023 10:52:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DC19938238C; Tue, 27 Jun 2023 10:52:09 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 12BF4382320
	for <speakup@linux-speakup.org>; Tue, 27 Jun 2023 10:52:09 -0400 (EDT)
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1))
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 452AE321C9;
	Tue, 27 Jun 2023 14:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1687877496;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rwRIzZKXMpA9QdbyK6XyfLJ6ki52brNY8Wcbt2uUSLA=;
	b=epNBAkZK2NP2Ije6GiHGbzUwbbhd3oW8nKx6z6eHNQMYs/6md5Jhjrjk6H/8GbUmfxNCsn
	ud5cXHvCBm3S2OCehTurEGA0ekH6XZE2FHx+ca4u3r87NY8j8cZ8LiTNlKUTbrmZf2cX+N
	XmUn6Nm86xvN/x8Zbo1zrjNp5m6ZCWhPiQNUlk30YPOqKuKsQHmF3EgDOpPNmemMz9wUNZ
	AHhTJN+D8GolBaVI60sD6CtOcakEgE3VodAOXK/boajnqPR3UOEmTqItiu7I3tXF/yqAF3
	9njdjHsMtvreMAdqgDik6iUw/x8lgD4Zk0NKqun9pyfIYHbkiyMKZ5U7o1SJ7Q==
Message-ID: <9fc54a25-a1f0-f57e-d240-170089548b35@jasonjgw.net>
Date: Tue, 27 Jun 2023 10:51:35 -0400
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
 Thunderbird/102.12.0
Content-Language: en-US
To: Karen Lewellen <klewellen@shellworld.net>
Cc: speakup@linux-speakup.org
References: <Pine.LNX.4.64.2306241500460.774016@users.shellworld.net>
 <1486e800-a981-31bd-05da-86699f680285@pcdesk.net>
 <Pine.LNX.4.64.2306242309530.778686@users.shellworld.net>
 <ZJextwg4IF88wZpM@titan>
 <Pine.LNX.4.64.2306242321590.778686@users.shellworld.net>
 <ZJezr66-vWtVj5zE@titan>
 <Pine.LNX.4.64.2306242359540.779316@users.shellworld.net>
 <208a3964-66c6-35ed-028c-1126bd0da3bf@jasonjgw.net>
 <Pine.LNX.4.64.2306262114360.806990@users.shellworld.net>
From: Jason White <jason@jasonjgw.net>
Subject: Re: ot: dectalk internal drivers?
In-Reply-To: <Pine.LNX.4.64.2306262114360.806990@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Whenever you return to the problem, try testing the DECtalk card with 
one of the demonstration programs included with the software (after all 
of the necessary software is loaded onto the card by running the batch 
file).

On 26/6/23 21:18, Karen Lewellen wrote:
> Hi folks,
> Jason, I have yet to find a reading edge driver for Linux, that alone 
> keeps me  from seriously considering the operating system.
> It would run on DOS which is what I use.
> For now though, as I cannot tell what the sound issue might be, this 
> project will wait.
> Indeed though  all the screen readers I have checked, still need to 
> try ASAP run the .bat file as it were, all finding the  card too.
> At the moment my main source of synthesis is doing better, what a 
> difference changing a cable can make!
> Thanks all,
> Kare
>
>
>
> On Sun, 25 Jun 2023, Jason White wrote:
>
>>
>> On 25/6/23 00:02, Karen Lewellen wrote:
>>>  I note no install, does that mean I need only say  run dt.bat for the
>>>  drivers to run?
>>>  i. e. place that in my autoexec.bat?
>>>
>> If I remember correctly, and this was a long time ago, you simply 
>> have to run the batch file, then whatever screen reader you plan to 
>> use. The batch file loads a large amount of software onto the card, 
>> and runs it.
>>
>> If you're planning to use this under Linux as well, I would be 
>> astonished if it were supported by modern kernels. In fact, I don't 
>> know whether Linux still runs on x86 machines with ISA slots.
>>
>>
>>

