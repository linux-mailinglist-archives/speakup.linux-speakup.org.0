Return-Path: <speakup+bounces-1436-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DDEDBBEEDE9
	for <lists+speakup@lfdr.de>; Mon, 20 Oct 2025 00:03:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=tXM9T2k0;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5ED9D38294B; Sun, 19 Oct 2025 18:03:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3FD193821E5
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 18:03:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA40F3821D4; Sun, 19 Oct 2025 18:03:05 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id A99E73820D2
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 18:03:05 -0400 (EDT)
Received: from [10.184.133.159] (unknown [176.173.208.123])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D22221602AE
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 21:58:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1760903893; bh=KO1wuQOqCKNW2QTGO3VOtP3OU3JJCnDwet1y1fPNAHk=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=tXM9T2k0TgegnvpN7XAUmMu7oA3X18WvQdHVxJBkAFf0j5/jazrNT3l6nIgoCNHtM
	 XYgcJH8uDljTKO4xeFR3ZTKRbkZqohXRA0IXu0EuPz+gmJZS1BCliln7WHwp2hau6t
	 +2s16l1wyFIIAhKx+PtYYGPtSzLEJqhgxVanvR4Jya60daxhfwBbNnY0g6jnppMYuP
	 NbKqhIuSU2KFzwYsvvKeXklIc7hwAmgDvSYtBeVMF0SWCHVwty/isgqsMpwOfNxNC/
	 QG3KLm9Q2lT+aVpnrpHc7rtWkghm/FxQcU3Y/uAzVN4SMiHzuS7tyFLTUuLpSoNfVX
	 3Zp84aJWBYIMw==
Message-ID: <859eaef2-b3ae-4e10-9caa-6bc1d59ef1df@slint.fr>
Date: Mon, 20 Oct 2025 00:03:01 +0200
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
 <36b36e62-fecb-4bc9-8302-15dbe4f3b0fc@slint.fr>
 <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br>
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
In-Reply-To: <bf1f95b5-63d5-4474-8f8e-888df7884bfb@posteo.com.br>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi, I just tried to build voxinup-2.3.3 but make install complains about a
missing header named eci.h

As an aside Glenn posted a similar issue, but that was 13 years ago:
https://ubuntu-accessibility.narkive.com/kNob1CmE/voxin-installed-but-wiped-out-speakup
and he did not get an answer.

Cheers,
Didier

On 10/19/25 23:39, Cleverson Casarin Uliana wrote:
> Hi, besides speechd-up and Fenrir, I believe Voxinup, developed by Oralux, still
> works.
> https://github.com/Oralux/voxinup_install
> 
> Cheers,
> Cleverson


