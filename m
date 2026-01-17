Return-Path: <speakup+bounces-1513-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 36532D391A7
	for <lists+speakup@lfdr.de>; Sun, 18 Jan 2026 00:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1768692476;
	bh=L9OmoLItJ7+9h6gD7b1ODYsJRGgeZ4eVc6hvnfNrVhE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=K9FlcknX6rTAsFt7H7eVAMRcyYtuYAl/XAVH7t2510LRhzuek2qv2NZ0pRv8Gto5O
	 d28UCiIzQ+ZfV8WaQu/8pNN5zG02h14S6Zdv9fUV8y1Z3VuYflfBsyG+/49mrPNZh5
	 8TOYymLLuztlTLO/D06L8nPu3PlAT5yC6PIXjzXk=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6A7B538190F; Sat, 17 Jan 2026 18:27:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1768692476;
	bh=L9OmoLItJ7+9h6gD7b1ODYsJRGgeZ4eVc6hvnfNrVhE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=K9FlcknX6rTAsFt7H7eVAMRcyYtuYAl/XAVH7t2510LRhzuek2qv2NZ0pRv8Gto5O
	 d28UCiIzQ+ZfV8WaQu/8pNN5zG02h14S6Zdv9fUV8y1Z3VuYflfBsyG+/49mrPNZh5
	 8TOYymLLuztlTLO/D06L8nPu3PlAT5yC6PIXjzXk=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 498843817B9
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 18:27:56 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1768692470;
	bh=L9OmoLItJ7+9h6gD7b1ODYsJRGgeZ4eVc6hvnfNrVhE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=XZBhXS1+sFF40W/3GUXSCXZzIVr461r5NqqjOQkAOclILSQKuMmRTq/tHj/tFXp9H
	 48sMc5fuBZPnQgIhT9ScMTGCCmh86aEFRqmL7UTMiWK+LrnDk06m5l5yxabQ3w/S1z
	 5YyNERhZdJ7FvrHbNu+hZ6xx9DVc6YCGdvnN283c=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5F28D3817B8; Sat, 17 Jan 2026 18:27:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1768692468;
	bh=L9OmoLItJ7+9h6gD7b1ODYsJRGgeZ4eVc6hvnfNrVhE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=ul0s73GbfS7pDknwGPnnHziwKDQQixNiKzsLfHE8AtFD3Nay+iIRKUaDoE7if48Bf
	 muGVj1XPGDsNuXBed1daG48Zv2XAqXZQbAiJPBF7vM1BqHsRSghvYrOyDDAfuowTBG
	 8rUXAAM9pJPjHtbgEVy55Xm8Q2eCoHwVWs14ooMA=
Received: from localhost (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4C14F3817B5;
	Sat, 17 Jan 2026 18:27:48 -0500 (EST)
Date: Sat, 17 Jan 2026 18:27:48 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Gregory Nowak <greg@gregn.net>
cc: Janina Sajka <janina@a11y.nyc>, speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
In-Reply-To: <aWrM5ulF9rgeEMRW@gregn.net>
Message-ID: <470c3532-a524-5cdf-e351-38f5e8bd62e2@reisers.ca>
References: <aWpRKvcLNxlSLfbU@A11y.NYC> <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca> <aWrM5ulF9rgeEMRW@gregn.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello Greg and Jude, I'll try to address both posts in one.

You are correct about me using debian sid although I don't really
think that is the issue. I am using all the same versions of debian on
those boxes. I am running to other void linux systems which I do not
have the espeakup issue on. One of the systems that does have the
issue is a raspberry pi 4B although the others are desktops.

How did you figure out the frequency scaling problem Greg? I also guess I don't quite understand the issue?

   kirk

On Fri, 16 Jan 2026, Gregory Nowak wrote:

> I'm not seeing latency issues with espeak/espeak-ng on machines
> running devuan Daedalus, based on debian 12. I seem to recall Kirk is
> running debian testing or unstable. Janina, what distribution are you
> using?
>
> I don't have anything running Devuan Excalibre yet. However, I don't
> remember latency issues with espeakup/espeak-ng when I was testing
> it. That was a couple of months ago though.
>
> The garbled output when speech is long enough is due to frequency
> scaling. Disable frequency scaling on your processor, and that issue
> should go away, at the expense of your CPU always running at the same
> speed. No one has yet figured out a way to cause this to happen
> consistently, so until someone is able to, this won't get fixed.
>
> Greg
>
>
> On Fri, Jan 16, 2026 at 06:01:16PM -0500, Kirk Reiser wrote:
>> Hi Janina: Your question is very much a valid one. I was hoping
>> someone else would answer you and we might all benefit from a solid
>> answer.
>>
>> I use espeakup with espeak-ng on at least four computers and my
>> experience is that on a few it instantly flushes when a control or
>> another key is typed The exact reaction it was designed to be. But
>> more often than not on some computers it is not instantaneous and when
>> moving back across the screen with the review keys it becomes mushy
>> because the text sounds like it is all running together.
>>
>> The fact that I use debian on these boxes would somewhat seem to
>> indicate that the software should all be exactly the same but at las
>> it certainly doesn't seem so.
>>
>> Sometimes I can restart espeakup and it starts behaving itself
>> properly but other times theres no difference.
>>
>> Yes, it is very frustrating just like the jumbled speech towards the
>> bottom of the screen when you just allow the standard output to rattle
>> on.
>>
>> I'm sorry I don't have a nice answer for you but I wished to let you
>> know you are not alone with your experiences.
>>
>>   kirk
>>
>>
>>
>
>
>

