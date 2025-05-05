Return-Path: <speakup+bounces-1264-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7919BAA9DD8
	for <lists+speakup@lfdr.de>; Mon,  5 May 2025 23:09:11 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=K/sf0v0D;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DBAF838298B; Mon, 05 May 2025 17:09:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BB1283820E2
	for <lists+speakup@lfdr.de>; Mon, 05 May 2025 17:09:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E35F9382042; Mon, 05 May 2025 17:09:00 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8F87C382008
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 17:09:00 -0400 (EDT)
Received: from [192.168.1.186] (128-79-193-9.hfc.dyn.abo.bbox.fr [128.79.193.9])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 1E15C16144D
	for <speakup@linux-speakup.org>; Mon,  5 May 2025 22:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1746475617; bh=3E19c0AjqNCiYsoOZSdd2YF1Xa0f12JCMAw5jwetJEs=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=K/sf0v0DkM31oVQ/7NGik9lKRCs4Y2YGzW+DIJPHZfKxeU2EYApg82NlVvps1JSJc
	 DFCnM6ozGoFEcfddMW9OoFM28GglvadvE8lap5qlUySO1Ussj7cmQK69tfsm6fwwm4
	 3Jleg9mnXEdHyRExF+qxAmSJn0dgkF4YESeyxm1Xc1OFUl9d/kYZdb9xQiq/X6w6cI
	 oXPcXwo4Z1O2JP+JuhykqP+Vj2bKg9OHA9UW1d0SGhK/aaOueXU80WHryL+h66aP49
	 bZpb20RgCvUIlidaC1w3FQmnRcL+9yb001Lf9Pg+GbLgyY21wnCkTiQmWtOUHp5Fcs
	 B922clgAB3zYQ==
Message-ID: <2626db49-eec2-4311-98c5-7fdb06dc4c1d@slint.fr>
Date: Mon, 5 May 2025 23:08:43 +0200
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
Subject: Re: Load speakup module as kernel parameter?
To: speakup@linux-speakup.org
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
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
In-Reply-To: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,

On 05/05/2025 22:48, John G. Heim wrote:
> Anybody know if it is still possible to load a speakup module as a kernel
> parameter? The reason i want to do this is that I've been playing around with
> GRML, the Linux distro designed to be booted from a USB stick, and I want to
> tell it to load a speakup module during boot. If I could do that, then I could
> make a custom GRML image that would come up talking via my hardware synth.

Indeed, like described in:
https://slint.fr/en/HandBook.html#first_steps_after_installation
Take this as an example only: in this case using GRUB and the layout of of the
GRUB menu can of course vary across distributions/isos/installers

Cheers,
Didier

