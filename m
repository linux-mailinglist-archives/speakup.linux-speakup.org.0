Return-Path: <speakup+bounces-1232-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7CC8AA1A102
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 10:43:23 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=up0+/mBP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 22AE93820F4; Thu, 23 Jan 2025 04:43:22 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0175F38073C
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 04:43:22 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 322533818D8; Thu, 23 Jan 2025 04:43:15 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id E018738073C
	for <speakup@linux-speakup.org>; Thu, 23 Jan 2025 04:43:13 -0500 (EST)
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7898662B68
	for <speakup@linux-speakup.org>; Thu, 23 Jan 2025 09:42:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1737621765; bh=hKECD6n/Mrlrp8zSYahKX0V0qSDRsgznrCBSEPeacLM=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=up0+/mBPDaM6/ctomYQtv/D4UzQ6yDkeoW22v3ps5HEg87TJTZ9WTUME6n3Kl9MFU
	 R3Qput3T9LE6Z4f7XsVE0hUkzv0/yZc3QzsQsCOakS3uAQ70hDJB6YI+gj4RSz92i8
	 lhpusN6CYjrTGKLA79rcaNiJOYchi2MKeqAMAzoMrKfTkfQhBe9a4IaXnIX9geRm7g
	 6FDE6CKjtDUZRwlGmQ/sYvjNR5Vnxm5BUHndX5O8PUVZqtF/nRY9STveCY2wCr2WoS
	 IoWX9uhq1unqKD1YHtnORXp8LCHuPQBXaa1IV439Cmt+KnFA89MsCa2N9wjeRtV46y
	 wm3oiEfs/szCw==
Message-ID: <64579362-2eac-46a7-9f89-c341c3bfee90@slint.fr>
Date: Thu, 23 Jan 2025 10:41:54 +0100
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
Subject: Re: Good old Speakup
To: speakup@linux-speakup.org
References: <E1tafn8-000EhT-0P@wb5agz>
 <9ee14d99-9197-4560-a97a-73dd8d4fc89a@linux-a11y.org>
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
In-Reply-To: <9ee14d99-9197-4560-a97a-73dd8d4fc89a@linux-a11y.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chrys,

nice to hear from you!

On 22/01/2025 23:40, chrys wrote:
> well running multible screenreaders at once will never be a good idea. they will
> read the input twice but also fight for exclusive access to your keyboard (as
> both want to consume shortcuts not ment for the terminal but the screenreader.
> only one application can have exclusive access to an device.

Well, that's of course true if you speak about screen readers on a console, like
espeakup, fenrir (used on the console), speechd-up or tdsr.

However there is no issue having a console screen reader + Orca or Cthulu
running, so user have keep speech (with the same voice or not) when toggling
between a console and a graphical environment, hearing one or the other but not
both together.

Cheers,
Didier

