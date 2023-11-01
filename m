Return-Path: <speakup+bounces-1046-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 271067DE1D8
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 15:03:56 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=AV+sZF8A;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9BF7138262E; Wed,  1 Nov 2023 10:03:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 77530382115
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 10:03:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CD5DE382126; Wed,  1 Nov 2023 10:03:47 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5D842382115
	for <speakup@linux-speakup.org>; Wed,  1 Nov 2023 10:03:47 -0400 (EDT)
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 23F1B3216D;
	Wed,  1 Nov 2023 14:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1698847426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=MnutgBtaqlIIiFEFQutt213lXs9Kmw9z/g/wRCpKGCM=;
	b=AV+sZF8Al82rSFZEu9ajwMUtuEFBid61yX0g5Jq+sHIyKxZr7xll9eGkb0bubjOZTz3hs9
	0Q56jg+Ccc2T4nJuZcEjp9EEo+wbR9+WnlN7he2cyaOhxDjoY+O5JCeToftS4AJoumXPNs
	/18LfhK/88OemT7Xx27EQ8ql8yg2+N2Rm3PCNI/X4mHs6PBWtpNOfOLva/BPNlAZ9Czw1Q
	3F5+Y9H1mKcaWyhYd73BB/fqg2NLNMW9qGRez+8yH7OM9bdQPDipVRa9PGsIzPe7opKEy/
	/vyI9zkGVtzEaU2kN+fLkuZfXzJGyAysFu2sqv2oDM813k4Sg+hDr/p7U3kRGg==
Message-ID: <eac5b293-834a-4b6c-9062-74abc37ed96f@jasonjgw.net>
Date: Wed, 1 Nov 2023 10:03:45 -0400
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Jason J.G. White" <jason@jasonjgw.net>
Subject: Re: slightly different dectalk question.
To: Karen Lewellen <klewellen@shellworld.net>
Cc: speakup@linux-speakup.org
References: <Pine.LNX.4.64.2310311538430.3146024@users.shellworld.net>
 <aafd9e68-028e-4122-8479-f966f6eecbe4@jasonjgw.net>
 <Pine.LNX.4.64.2311010944430.3172797@users.shellworld.net>
Content-Language: en-US, en-AU-large, en-US-large
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2311010944430.3172797@users.shellworld.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

As a matter of clarification: the software and the hardware obviously 
both need to refer to the same IRQ and I/O address, etc. In addition, 
those addresses need to be chosen to avoid conflicts with other hardware 
on the system, which is why experimentation with different switch 
settings may be needed. So far as I know, success isn't guaranteed.

On 1/11/23 09:48, Karen Lewellen wrote:
> Hi Jason,
> Certainly respect your stance.
> Speaking personally, because my physical experience is somewhat 
> unique, what some call old for me is often life critical where 
> connecting is concerned.
> My goal for this card is indeed a backup for my preferred synthesis, 
> my reading edge.
> Still intend locating  the Macbook pro most suitable for my 
> experiences though, providing a different kind of backup.
> for now, happily tapping the case of the newly built just last week 
> machine meeting my needs, I will explore how to incorporate this 
> backup option.
> Kare
>
>
>
> On Tue, 31 Oct 2023, Jason J.G. White wrote:
>
>>
>> On 31/10/23 15:41, Karen Lewellen wrote:
>>>  Given dt.bat can be edited it seems,
>>>  any tool that will locate the dectalk internal card?
>>>
>> I am not aware of any such tool. There may be a conflict with the 
>> addresses and interrupts used by other hardware in the machine, in 
>> hich case you'll have to change the settings on the DECtalk card.
>>
>> I've long since forgotten the details. The manual should be included 
>> with the software, though, and it should document the switches. If I 
>> remember rightly, eliminating these issues was among the reasons why 
>> there was a move in the 1990s to the PCI bus.
>>
>> I would suggest putting together a good plan for what you're going to 
>> do if you can't get this working, especially if you expect to rely on 
>> it. If it's just a hobby at this point to experiment with old 
>> technology, that's fine, but if you plan to use it for serious work 
>> than make sure you have alternative options in place.
>>
>>
>>
>

