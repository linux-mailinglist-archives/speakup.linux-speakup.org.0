Return-Path: <speakup+bounces-1202-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9616D968F2E
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 23:38:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=feSu+DBJ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9EB89383CBD; Mon, 02 Sep 2024 17:38:57 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7FC13383CAB
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 17:38:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 85F62383CAF; Mon, 02 Sep 2024 17:38:50 -0400 (EDT)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D0BC0383CA9
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 17:38:49 -0400 (EDT)
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id D853432033
	for <speakup@linux-speakup.org>; Mon,  2 Sep 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1725313096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=3FR/3MbwCoU33JbksE2DkUpbUjhotlugAx6CPpNBLIA=;
	b=feSu+DBJRaGcaAVaqIpOC1NoFjmdW8JWHVkJkdNYcK707coq4g2HHqMiVEvi55J5fqtxZw
	ZDRjBTXlPZq4HVAo3YoIv9Ih0g5fIOcOK9fhKmuLxoIlO0htoQtPc9DcH6SLpZ5r62qT3b
	33+x09pkovuTc3iV5dz2Gafa1CNw/VmF+4JhUZ/Xjnr1Nm0jd9EqKaZNdvLuxxbFjuUVM9
	Wpebmp8iLabrJ8nmV5SsuvGGM4tblQA7Iap7/Bd3mIlnVYLGpwd7yRJRg5GSWFI/cHKH+W
	+arRPZIt23mOVZ7fci9iKtIedx3LFRvrsAXiRzzRKt5ZGzEKIaWCC97Mu1xnYw==
Message-ID: <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net>
Date: Mon, 2 Sep 2024 17:38:16 -0400
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
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
To: speakup@linux-speakup.org
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net>
 <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
 <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
 <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
Content-Language: en-US, en-AU-large, en-US-large
From: "Jason J.G. White" <jason@jasonjgw.net>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

While we're discussing clarifications, note that Pulseaudio is 
effectively deprecated now. Pipewire has superseded it. Also, Pipewire 
includes an implementation of the Pulseaudio client API, so that client 
applications designed for Pulseaudio still work normally under Pipewire.

If you want a good, long-term solution to your audio issues, which seem 
to be at the core of what you're discussing here, then supporting 
Pipewire and Wireplumber would be the best path to take.

Wireplumber configures audio routing policies for Pipewire. Its 
configuration language was recently changed, and I haven't had any 
experience with it.

On 2/9/24 14:42, Kirk Reiser wrote:
> Hi Martin: I am quite dense, so maybe you already stated the issue and
> I just missed it. What is the exact issue? Speakup doesn't start on
> boot? Speakup doesn't run at all? Speakup won't run while gnome and
> orca are running? If it is the boot issue, zookia posted a link on the
> speakup list about getting that working. If it's they don't play nice
> together, you'll need to provide more info because they work just fine
> together here. But, having said that I don't use gnome, I use i3 and
> storms i38 scripts and startx. I'd appreciate it if you could clarify
> the issue please.
>
>   Kirk
>
> On Mon, 2 Sep 2024, Martin McCormick wrote:
>
>> It looks like speech-dispatcher is running and was started on
>> boot and is serving all the gnome terminals that is, the first
>> two consoles.  They both talk but behave identically as gnome
>> consoles.  The remaining 3 consoles are not GUI so are mute right
>> now except for the beep which comes from the sounder on the main
>> board but sound does result if I play noise, tones or anything
>> else through sox so, if speakup was in the output path, it should
>> speak.
>>
>>     As I said, I don't want to mess up orca speech since it
>> works fine, just switch inputs to speakup from gnome while I am
>> using the text consoles and then go back to gnome when needed.
>>
>>     This installation started as a debian install a couple of
>> years ago in which I got speech going by typing the s character
>> to get a talking installer and then went from there after
>> installing the gnome desktop.  I didn't even know that pulseaudio
>> is not the sound system of choice but pipewire is so I'm getting
>> smarter by the minute.  I'm still not sure what I am learning,
>> but so far, so good.
>>
>> Martin
>>
>

