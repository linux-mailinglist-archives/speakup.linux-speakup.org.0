Return-Path: <speakup+bounces-1434-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D31F1BEED85
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 23:29:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=s4rQ3hdI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5D62E382945; Sun, 19 Oct 2025 17:29:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3CE83381941
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 17:29:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0D5B0382039; Sun, 19 Oct 2025 17:29:01 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2D25F381941
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 17:29:00 -0400 (EDT)
Received: from [10.184.133.159] (176-173-208-123.abo.bbox.fr [176.173.208.123])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 62B131602AE
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 21:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1760901850; bh=PKUR08jCQiAK/iFRO9NOQHMqYc4n+fsJmG/ZDJdZ/2w=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=s4rQ3hdIaq5EYlBELBBz3shJ77U4U3hf0pH/H7QfgMmA+Q2bcZGVZcwNhRlGBTFrC
	 pLDfM0P6vNSm6D80WJ5Ko4mIv/GhzpRz9YfJv0GW19W105+8yp4HMzIXCQxNEi3N3k
	 iT0BQcis4MNQltjoDHUNadoikpy51Oho7ZirU4plum8TXYo7T320kjjlTIoYYPdTyz
	 uMti7mJ4gZsx6IJrv4lCSk2FYkOIhcxwHOWoFpre+UGz0oq2EE4NUotWIOvuERaTC7
	 6W+ucTZKGJ/52xwrx3XHBPlkOi3LMqsZU0KjecR3/j6gKzfZvDXOHQHaivk/0+aR2x
	 rmRqIufpIQtBQ==
Message-ID: <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr>
Date: Sun, 19 Oct 2025 23:28:57 +0200
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
Subject: Re: Switching To Voxin
To: speakup@linux-speakup.org
References: <021401dc413d$e3e246a0$01ffa8c0@nucwin10>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <021401dc413d$e3e246a0$01ffa8c0@nucwin10>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Glenn,

that's not possible, espeakup can only use voices provided by espeak-ng

To use a Voxin voice on the console you need to use either speechd-up or fenrir
as both communicate with speech-dispatcher, but espeakup does not.

Cheers,
Didier

On 10/19/25 23:18, K0LNY ?? wrote:
> Hi All again,
> Well I got the Voxin installed, and set up spd-conf to use voxin.
> Voxin talks with spd-say, and now espeak has no voice.
> Which almost solves the talking on startup, but not the right solution, LOL
> So, how do I tell espeakup to use the Voxin, which is set up in speech-dispatcher?
> Thanks.
>  
> Glenn
> 
> It used to be wine, women, and song,
> Now it's beer, the old lady, and TV.
>  
> Glenn K0LNY & WSAT439


