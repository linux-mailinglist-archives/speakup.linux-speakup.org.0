Return-Path: <speakup+bounces-1240-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D6C63A2DCC2
	for <lists+speakup@lfdr.de>; Sun,  9 Feb 2025 12:08:12 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=DVREyvUU;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 10717382229; Sun, 09 Feb 2025 06:08:12 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E516C3818B9
	for <lists+speakup@lfdr.de>; Sun, 09 Feb 2025 06:08:11 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 29F3E38193E; Sun, 09 Feb 2025 06:08:05 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2EE37380E19
	for <speakup@linux-speakup.org>; Sun, 09 Feb 2025 06:08:04 -0500 (EST)
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D720C636BE
	for <speakup@linux-speakup.org>; Sun,  9 Feb 2025 11:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1739095633; bh=8lzNCAcIGPqpSRtkrtlYrkfh4Jqw3pWr8nJ3d/8VHGU=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=DVREyvUU29cisKzxEP3GRwluD8zNwZ5DwtACvuUxu1chNnRCDc4/o+69JAcV1X0WO
	 J4Hq0yKx1Tcq1G5zdbXydX3kpqK28UiEtrb7ZoX9atJOzCT/S9FNLv4otkOVSf4v+R
	 wCA6SEqT0xELKDfAT31GOb6OfgmGzBKnR6ZGR31yHPucgSZ1jpha2bMoyym2TfMRXA
	 BLPZsdDXNTvraj5xuXHHvg9PbpDjmL4DTqyyUoxalMT+Bi3EJaXzjyoesX+o+ojhqr
	 63TjCK6IkDS2uIfDcidaRmsfMUA+MAVGOtLawa0od7JSprDh+czxKgdI/Fnyuie8Lz
	 k7iwutcQX03+w==
Message-ID: <503f8cdc-b15c-48ae-8ee9-64c56d8d2ebe@slint.fr>
Date: Sun, 9 Feb 2025 12:06:28 +0000
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
Subject: Re: speakup laptop keyboard question
To: speakup@linux-speakup.org
References: <Z6h5Qc3VPrCe6-_W@panix.com>
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
In-Reply-To: <Z6h5Qc3VPrCe6-_W@panix.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Jude,

To use the "toggle cursoring" function, if your contact has (or can attach to
the computer) a keyboard with a numeric keypad, this is asterisk or '*' on the
keypad. Else (laptop without a numeric keypad) that would be press and hold the
"speakup key" usually Ctrl and press 8.

At least that's what I read in the file speakupmap.map here in
/usr/src/linux-6.12.8/drivers/accessibility/speakup/speakupmap.map

Cheers,
Didier

PS quote from spkguide.txt below

You may select among the various forms of cursor tracking using the keypad
asterisk key.
Each time you press this key, a new mode is selected, and Speakup speaks
the name of the new mode.  The names for the four possible states of cursor
tracking are: "cursoring on", "highlight tracking", "read window",
and "cursoring off."  The keypad asterisk key moves through the list of
modes in a circular fashion.uide.txt:

On 09/02/2025 09:45, Jude DaShiell wrote:
> On a Toshiba satellite laptop what key or keys get used to enable highlight 
> tracking?  A contact is trying to install a linux on one of these and I never 
> had one of these computers so don't know what to tell him.



