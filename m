Return-Path: <speakup+bounces-335-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E391F458631
	for <lists+speakup@lfdr.de>; Sun, 21 Nov 2021 20:51:36 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.a=rsa-sha256 header.s=mail header.b=AfO9p4/c;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA9D5381162; Sun, 21 Nov 2021 14:51:35 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 865BB3809FA
	for <lists+speakup@lfdr.de>; Sun, 21 Nov 2021 14:51:35 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AC0D8380BBB; Sun, 21 Nov 2021 14:51:29 -0500 (EST)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1D385380195
	for <speakup@linux-speakup.org>; Sun, 21 Nov 2021 14:51:29 -0500 (EST)
Received: from [10.0.2.1] (unknown [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 2692032052
	for <speakup@linux-speakup.org>; Sun, 21 Nov 2021 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
	s=mail; t=1637524287;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4YdntjsJ24g//irmq6dekn44GN7R5WoHxVJZP6G9oSs=;
	b=AfO9p4/cQz1Nvnvonp29npy3taYgaM8BAI3ZHS/0OA2XePyydpoxTI04T6vjsvNiCbuxcT
	fngBf+eP4aahSTbFBn8RqtrEi8duuW2u0bGLfXqfrWQye9xYpRYbtDNapTM9Xcgt8DGHca
	SaL8ZqCiNn5ENYr0Tad4M0UkFzDVh8cMweVavRlxp14ySxC1sB/LrP7eorUZyU/noPPZBX
	bw6STzfv08H4W7MQEXbDSbO7/ewkVXFph91J9S6Xw69kDPdQueAkDglM3hRCm4Sm4eH4Mj
	yU66Tffe6jZVBkl8/YgLXSfv/X4/GzpYXUI+UWl5KkO9JGPB5KRKkL3O4Fp5iA==
Message-ID: <b2d907ca-5d48-9ec1-84af-062787ec3386@jasonjgw.net>
Date: Sun, 21 Nov 2021 14:51:26 -0500
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
 Thunderbird/91.3.1
Subject: Re: speech/braille live rescue?
Content-Language: en-US
To: speakup@linux-speakup.org
References: <228234727.2.1637378390667@localhost>
 <20211120160717.qwmgazxxvxbuqzfa@alex-pc>
From: Jason White <jason@jasonjgw.net>
In-Reply-To: <20211120160717.qwmgazxxvxbuqzfa@alex-pc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


On 20/11/21 11:07, Alexander Epaneshnikov wrote:
> On Fri, Nov 19, 2021 at 07:20:04PM -0800, Mike Keithley wrote:
>> Which linux rescue systems have speech/braille as a live bootable image I can put on a USB stick?
> Arch Linux does[1].

I used it when it required a separate "Talking Arch" image to be 
downloaded. It worked well for installing Arch Linux (I have a braille 
display and I can use speech also).

I have also used GRML, but this was a number of years ago - at least 7, 
probably more. Again, the experience was positive.

As the Arch documentation states, braille displays should be 
automatically detected by BRLTTY if connected via USB.


