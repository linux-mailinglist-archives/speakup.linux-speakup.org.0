Return-Path: <speakup+bounces-1165-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 460BF932386
	for <lists+speakup@lfdr.de>; Tue, 16 Jul 2024 12:03:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=Q7YSM1Mw;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B855A382510; Tue, 16 Jul 2024 06:03:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 961BC3820B2
	for <lists+speakup@lfdr.de>; Tue, 16 Jul 2024 06:03:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9D7D7382223; Tue, 16 Jul 2024 06:03:33 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id B09D33820B2
	for <speakup@linux-speakup.org>; Tue, 16 Jul 2024 06:03:32 -0400 (EDT)
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 07B1762606;
	Tue, 16 Jul 2024 12:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1721124052; bh=lLinkMdJGuOiLIIXUFdVau+YtDRUuvGLbQp9ImXyjAQ=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=Q7YSM1MwyBjEt1cKNPE/5SiApnZbQDdI2er3VKIMw1u2eGHjZBJmwgKqJtUKijwUI
	 WDgUOZYDI9VS3B79+Fkpk8KtPkR34Sa8xP2rPCRA7i9x0mGSnoTyWQoNBntnizEG1M
	 jLe/tHHQiaop9aBKYRiWmoTusWhlExjLDgrv8+sL1Cois5jf6RxCNpwFrOrGGH47hG
	 tMXOy72f/DFzwo28yxo87HKFVJjRHokZkET8jT1FcNxEe9hvFUltD9/NTR8453M077
	 D9wnvmkIbdWdkpeziOToSXj5hTDZHsomQP/orNDx1dSAWxj1hDdTS4eYFHwFcvC3cL
	 Kwd18gye6ZuPw==
Message-ID: <0c709023-98e8-4ad9-b717-f01752f37a39@slint.fr>
Date: Tue, 16 Jul 2024 12:03:24 +0200
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
Subject: Re: speakup and elinks interaction
To: blinux-list@redhat.com
References: <ZpXs8Lk1QKF-3nHB@panix.com>
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
Cc: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>, Storm Dragon <storm_dragon@linux-a11y.org>
In-Reply-To: <ZpXs8Lk1QKF-3nHB@panix.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello Rudy and All,

a quick look at "man elinks.conf" did not give me a clue, maybe there is one i
didn't find?

However, I observed that using fenrir instead of espeakup and still running
elinks in a tty, each letter is spoken as typed, so I'm afraid the behavior you
reported comes from speakup or at at least from elinks+speakup.

Maybe Storm (in CC), co-author of fenrir can give us a clue?

I also CC the speakup mailing list.

Cheers,
Didier

PS Please tell when you receive this message as it seems that not all I sent
recently to the blinux list reached it.

Le 7/16/24 à 05:45, Rudy Vener a écrit :
> 
> I'm just starting to use elinks on my Slint Linux 15.0 system with speakup and
> notice an annoying situation whenever elinks prompts me to enter a filename.
> 
> When I type in each letter, speakup will say the letter  followed by the partially spelled out word.
> 
> For example, if I enter the file name junk as the 
> save file for the current rendered screen speakup says:
> j,
> j,
> u,
> ju,
> n,
> jun,
> k,
> junk.
> 
> This is driving me nuts.  Elinks is obviously refreshing the input
> line after each typed letter and forcing speakup to
> doublespeak.
> Is there an elinks option which would prevent this behavior?
> I don't want to tamper with speakup since its settings work fine with everything else.
> 
> Thanks.
> 
> Rudy 

