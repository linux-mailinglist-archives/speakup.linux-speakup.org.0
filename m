Return-Path: <speakup+bounces-1466-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A5A6BC3D613
	for <lists+speakup@lfdr.de>; Thu, 06 Nov 2025 21:39:40 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=SSKrpkYf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1D16B38212C; Thu, 06 Nov 2025 15:39:38 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ECBA6381978
	for <lists+speakup@lfdr.de>; Thu, 06 Nov 2025 15:39:37 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E0622381981; Thu, 06 Nov 2025 15:39:30 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 03863381976
	for <speakup@linux-speakup.org>; Thu, 06 Nov 2025 15:39:30 -0500 (EST)
Received: from [10.11.222.154] (128-79-193-9.hfc.dyn.abo.bbox.fr [128.79.193.9])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C6AB31602F2
	for <speakup@linux-speakup.org>; Thu,  6 Nov 2025 19:34:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1762454045; bh=qGxe1kaz8OogQ+GPTURbujbPvHedsFVyx+B/mrtApyg=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=SSKrpkYfEGPJCbMpkdli8p22rba+iPm55AMHAAovyWKo65iV+fNdetZqF6WliPGaR
	 +ULXWzJOwhBz4/HA4Jef8n3ReQMYY7WcIKNS7YG6g6XHnFz2w4yaiaoWncNSEbusz0
	 YAmaXTJCWuZeXZ4QHMd7VexuR/Ol4FEuRG63UIJM/BAv96JUSQd7MnIkYr1d1iweES
	 SilIEbZhoLl09G+2rF7ARyIbiJQUi4itmSweK9Vq3fvAAoUtYMm9AQsm9cilusc2tV
	 5mkTx2qLuRx5pLHFUGcezRRgQKURrfbeadvuo+JaGp6wCHbuBGjFq1iXi9DJSbr4B6
	 2JiT8273KxQTg==
Content-Type: multipart/mixed; boundary="------------OUxkHr28nPJzk45DGevcBDHH"
Message-ID: <d0bbe40a-1903-48ef-bec2-abfbd878236e@slint.fr>
Date: Thu, 6 Nov 2025 21:39:26 +0100
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
Subject: Re: enable espeakup for debian
To: speakup@linux-speakup.org
References: <IA2PR84MB3952FFF80EE8FFE8B416E285DAC2A@IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM>
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
In-Reply-To: <IA2PR84MB3952FFF80EE8FFE8B416E285DAC2A@IA2PR84MB3952.NAMPRD84.PROD.OUTLOOK.COM>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.
--------------OUxkHr28nPJzk45DGevcBDHH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello,

The answer to the second question is no.

However the attached script, to be run as root or using sudo, allows to display
from a running system the GRUB menu as it will be shown after a reboot, so you
know in advance how many "down" key presses you will need to reach a given boot
entry before pressing Enter. It is not 100% accurate but should help.

There is also grub-emu, but using it with a screen reader is confusing.

Cheers,
Didier

On 11/6/25 18:45, crisspro wrote:
> Hello.
> 
> 
> I enabled espeakup service with systemctl enable espeakup, butn doesn’t announce
> anything., espeakup is runing.
> 
> How enable espeakup correctly?. I have a second question, is possible get
> espeakup for grub menu? I need this to load other OS or load snapshot.


--------------OUxkHr28nPJzk45DGevcBDHH
Content-Type: text/plain; charset=UTF-8; name="list_boot_entries"
Content-Disposition: attachment; filename="list_boot_entries"
Content-Transfer-Encoding: base64

IyEvYmluL3NoCiMgVGhpcyBzY3JpcHQgaGFzIGJlZW4gd3JpdHRlbiBmcm9tIHNjcmF0Y2gg
YW5kIGRlZGljYXRlZCB0byB0aGUgcHVibGljCiMgZG9tYWluIGJ5IGl0cyBhdXRob3I6IERp
ZGllciBTcGFpZXIsIFBhcmlzLgojIEZvciBtb3JlIGluZm9ybWF0aW9uLCBwbGVhc2UgcmVm
ZXIgdG8gPGh0dHA6Ly91bmxpY2Vuc2Uub3JnLz4KCiMgTGFzdCB1cGRhdGVkIEZyaWRheSAy
MSBNYXJjaCAyMDI0CgpleHBvcnQgVEVYVERPTUFJTj1zbGludC1zY3JpcHRzCmlmIFsgISAi
JChpZCAtdSkiIC1lcSAwIF07IHRoZW4KCWdldHRleHQgIlBsZWFzZSBydW4gdGhpcyBjb21t
YW5kIGFzIHJvb3QuIjsgZWNobwoJZXhpdApmaQppZiBbICEgLWYgL2Jvb3QvZ3J1Yi9ncnVi
LmNmZyBdOyB0aGVuCglnZXR0ZXh0ICJUaGUgZmlsZSAvYm9vdC9ncnViL2dydWIuY2ZnIGRv
ZXMgbm90IGV4aXN0LiI7IGVjaG8KCWdldHRleHQgIlByaW9yIHRvIHJ1bm5pbm5nIHRoaXMg
Y29tbWFuZCB5b3Ugc2hvdWxkIGluc3RhbGwgZ3J1YiBhbmQgcnVuIGVpdGhlcjoiOyBlY2hv
CgllY2hvICJ1cGRhdGUtZ3J1YiIKCWdldHRleHQgIm9yIGlmIHRoaXMgY29tbWFuZCBkb2Vz
IG5vdCBleGlzdDoiOyBlY2hvCgllY2hvICJncnViLW1rY29uZmlnIC1vIC9ib290L2dydWIv
Z3J1Yi5jZmciCmZpCnJtIC1mIC90bXAvbGlzdF9ib290X2VudHJpZXMKc2VkIC9eW1s6c3Bh
Y2U6XV0qbWVudWVudHJ5W1s6c3BhY2U6XV0vcyNcIiNcJyNnIC9ib290L2dydWIvZ3J1Yi5j
ZmcgPiAvdG1wL2VkaXRlZGdydWIuY2ZnCnNlZCAtbiAieyAKCS9zdWJtZW51LywvXn0kLyB7
CgkvXltbOnNwYWNlOl1dKnN1Ym1lbnUgL3MlW1s6c3BhY2U6XV0qW14nXSonXChbXiddKlwp
Jy4qJVwxJXAKCS9eW1s6c3BhY2U6XV0qXG1lbnVlbnRyeSAvcyVbXiddKidcKFteJ10qXCkn
LiolICBcMSVwCgl9CgkvXltbOnNwYWNlOl1dKlxtZW51ZW50cnkgL3MlW14nXSonXChbXidd
KlwpJy4qJVwxJXAKfSIgL3RtcC9lZGl0ZWRncnViLmNmZyA+PiAvdG1wL2xpc3RfYm9vdF9l
bnRyaWVzCmZvciBpIGluICQoZmluZCAvYm9vdC9ncnViLyogLXBydW5lIC1uYW1lICIqLmNm
ZyJ8Z3JlcCAtdiBncnViLmNmZyk7IGRvCglzZWQgLW4gIi9eW1s6c3BhY2U6XV0qXG1lbnVl
bnRyeSAvcyVbXiddKidcKFteJ10qXCknLiolXDElcCIgIiRpIiA+PiAvdG1wL2xpc3RfYm9v
dF9lbnRyaWVzCmRvbmUKcm0gLWYgL3RtcC9lZGl0ZWRncnViLmNmZwp7CmVjaG8KZ2V0dGV4
dCAiQWZ0ZXIgYm9vdGluZywgdGhlIGJvb3QgbWVudSB3aWxsIGJlIGRpc3BsYXllZCBhcyBh
Ym92ZS4iCmVjaG8KZWNobwpnZXR0ZXh0ICJUbyBuYXZpZ2F0ZSBpbiB0aGUgbWVudSB5b3Ug
d2lsbCB1c2UgdGhlIGRvd24gYW5kIHVwIGFycm93IGtleXMsIHRoZW4KcHJlc3MgRW50ZXIg
dG8gdXNlIHRoZSBzZWxlY3RlZCBib290IGVudHJ5LiIKZWNobwpnZXR0ZXh0ICJUbyBkaXNw
bGF5IHRoZSBib290IGVudHJpZXMgaW5zaWRlIGEgc3VibWVudSwgc2VsZWN0IGl0IHRoZW4g
cHJlc3MgRW50ZXIuIgplY2hvCmdldHRleHQgIlRvIGJvb3QgZGlyZWN0bHkgdGhlIG1vc3Qg
cmVjZW50IHNuYXBzaG90IChpZiBhbnkpLCBqdXN0IHByZXNzIDEuIgplY2hvCn0gPj4gL3Rt
cC9saXN0X2Jvb3RfZW50cmllcwppZiBjb21tYW5kIC12IHczbSA+L2Rldi9udWxsOyB0aGVu
Cgl7CgllY2hvCglnZXR0ZXh0ICJQcmVzcyBxIHF1aXQgdGhpcyBkaXNwbGF5LiIKCWVjaG8K
CX0gPj4gL3RtcC9saXN0X2Jvb3RfZW50cmllcwoJdzNtIC1vIGNvbmZpcm1fcXE9ZmFsc2Ug
L3RtcC9saXN0X2Jvb3RfZW50cmllcwplbGlmIGNvbW1hbmQgLXYgbW9zdCA+L2Rldi9udWxs
OyB0aGVuCgl7CgllY2hvCglnZXR0ZXh0ICJQcmVzcyBxIHF1aXQgdGhpcyBkaXNwbGF5LiIK
CWVjaG8KCX0gPj4gL3RtcC9saXN0X2Jvb3RfZW50cmllcwogICAgbGVzcyAvdG1wL2xpc3Rf
Ym9vdF9lbnRyaWVzCmVsaWYgY29tbWFuZCAtdiBsZXNzID4vZGV2L251bGw7IHRoZW4KCXsK
CWVjaG8KCWdldHRleHQgIlByZXNzIHEgcXVpdCB0aGlzIGRpc3BsYXkuIgoJZWNobwoJfSA+
PiAvdG1wL2xpc3RfYm9vdF9lbnRyaWVzCiAgICBsZXNzIC90bXAvbGlzdF9ib290X2VudHJp
ZXMKZWxzZSBjYXQgL3RtcC9saXN0X2Jvb3RfZW50cmllcwpmaQpybSAvdG1wL2xpc3RfYm9v
dF9lbnRyaWVzCg==

--------------OUxkHr28nPJzk45DGevcBDHH--

