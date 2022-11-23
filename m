Return-Path: <speakup+bounces-864-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 84236634F74
	for <lists+speakup@lfdr.de>; Wed, 23 Nov 2022 06:24:23 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=zwKMWw5M;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 66D59382A10; Wed, 23 Nov 2022 00:24:22 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 466CC382926
	for <lists+speakup@lfdr.de>; Wed, 23 Nov 2022 00:24:22 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E32C1382928; Wed, 23 Nov 2022 00:24:12 -0500 (EST)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 992CB38000A
	for <speakup@linux-speakup.org>; Wed, 23 Nov 2022 00:24:12 -0500 (EST)
Received: from [IPV6:fd6e:ebcf:467e:3::1] (jdc.jasonjgw.net [IPv6:fd6e:ebcf:467e:3::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 42DF0320EA
	for <speakup@linux-speakup.org>; Wed, 23 Nov 2022 05:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1669181013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O8uYVoYM9DDqRXXOClAEDf5a5BgScQ0QGgiikOoeZeA=;
	b=zwKMWw5MVdvTCv+wHWhdbuxB8I7rGj1Ihs6Xy+DOz+r7+9LBEyYzDBRWKyWP7JmYXcOV8s
	jvt6Q63juGRQUT8FHyZxmJf/6JAXDuFHklTHqUdVJks5N/+wleTe3p4vSEGlKSdom+90cn
	/ob6bnsbmdPKVYexe1vuTIUuWO9WZp+EOnlrRdFCjApbzmnWYYKsFJ6tpGbw1lGteQvRcK
	K31ip/pdo3LIFJT2yY61VvDXgxyNUF2vK6E+A8xlbjFi1BUekiVnlWZszFIwEASU7aKew+
	w+H72OC/en93FUiJiIYpXEJoGdsJZE4jMFpcu/ffX9ACIHvInGnvjbYWb5TCaw==
Message-ID: <f2b5cdc5-4d50-0958-4746-227f5d22f9a4@jasonjgw.net>
Date: Wed, 23 Nov 2022 16:23:29 +1100
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
 Thunderbird/102.5.0
Subject: Re: Could someone help with bash scripting?
Content-Language: en-US
To: speakup@linux-speakup.org
References: <D9069478-2D9A-4DC3-97D7-BB365C7A4222@gena-j.me.uk>
From: Jason White <jason@jasonjgw.net>
In-Reply-To: <D9069478-2D9A-4DC3-97D7-BB365C7A4222@gena-j.me.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Have you considered C-Kermit?

It's a long time since I've worked with a serial device, but C-Kermit 
used to be an excellent tool for the purpose.

On 23/11/22 05:07, Georgina Joyce wrote:
> Hello All,
>
> I would like to write a bash script to control a Yaesu FT-991A transceiver. I have been using rigctl a part of the hamlib libraries. However, I find the command structure difficult and doesn't contain some of the daily commands like nudging the frequency up in Kilohertz etc.
>
> I have looked and researched  that I can change the tty device baud rate by using stty with the -speed switch but can't really get my head around the stty syntax.
>
> I see from a unix stack exchange listing that I can crudely use echo and cat to the device using 2 console windows. The answer on Stack Exchange suggests using screen. I recall some members here were a fan of screen but I have never used it myself.
>
> According to the CAT reference manual. If I send "FA145500000;" as a set command The transceiver will respond with the same as a read command. So I want to clean up the responses and put them in human form. You might note that the radio deals with integers in this case. But us humans like decimals, so there is some cleaning up the output. I think I might be able to do that. But it is this issue of sending commands to the tty device and reading the responses that I haven't a clue.
>
> Anyone can offer suggestions?
>
> Thanks,
>
> Georgina
>
>
> Call: M0EBP
> DMR ID: 2346259
> Allstar: 52178
> Locater: IO83PS
>
>
>

