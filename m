Return-Path: <speakup+bounces-1137-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ECDBF9247F3
	for <lists+speakup@lfdr.de>; Tue,  2 Jul 2024 21:16:26 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=rNfyeRRY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 87B78C81C90; Tue, 02 Jul 2024 15:16:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 662DDC80894
	for <lists+speakup@lfdr.de>; Tue, 02 Jul 2024 15:16:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 50EF0C80894; Tue, 02 Jul 2024 15:16:18 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2753FC80879
	for <speakup@linux-speakup.org>; Tue, 02 Jul 2024 15:16:17 -0400 (EDT)
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 8D2AC625F9
	for <speakup@linux-speakup.org>; Tue,  2 Jul 2024 21:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1719947630; bh=jJ4U+6RRQ8HhFrE1UqUHoxk7hx8PGo+Qzpp1RZF/j30=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=rNfyeRRYRThE26HQCyxEHQIMXDe8P4gPNqAyADlHt1DmHu1cgmL3Myhp/D8znxw/d
	 3g9H/7hh76auXFPs4TfsDG1LjhEcMnw9TJZiKvrSM+hvWWseTQRfmXFtXBiqHJiOXu
	 OFQrb7c9WQVx5daTcBonunHlMdmwZwZmUGxKW49g8vCQa1I4jALzM9eOuCfmOoZm3T
	 G4zvfXfCWGkZsddzTNuZ1Re/bnm9uL9T4iG+buzjTtmc2DtcvudMn6mqHF9Cj3NYCn
	 vq/ySxAz4Ab1kcoeyR8MaM2uvvLj40LuPCM7lxo2iSWwlBpYApYwNR/NlOos6/Fw7N
	 M5e7KgubRhdag==
Message-ID: <9d90552f-72c5-464c-b2cd-213b5229fb84@slint.fr>
Date: Tue, 2 Jul 2024 21:15:52 +0200
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
Subject: Re: Can We Use Open Mary with Speakup?
To: speakup@linux-speakup.org
References: <74c245c5-99a9-1fe3-57f8-82dbce6cb42f@hubert-humphrey.com>
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
In-Reply-To: <74c245c5-99a9-1fe3-57f8-82dbce6cb42f@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,

according to https://github.com/brailcom/speechd/blob/master/README.overview.md
Mary-TTS is supported by Speech-dispatcher, GitHub repository:
https://github.com/marytts/marytts
so it should work with speechd-up.

As for building and configuration I have no clue beyond un-commenting this line
in /etc/speech-dispatcher/speechd.conf:
#AddModule "mary-generic"             "sd_generic"   "mary-generic.conf"

Maybe Samuel will tell you more.

Cheers,
Didier

Le 7/2/24 à 20:21, Chime Hart a écrit :
> Hi All: First of all, I want to thank Chuck-and-Samuel in 2009 for creating
> "talkwith" so I can now switch among my DecTalk-and-Voxin Allison. While both
> have plusses-and-minuses, I think a more perfect sounding speech is Open Mary.
> Supposedly there are versions for Linux, but looking around, Github is quite a
> challenge if a creator doesn't have a direct download link, especially viewing
> in L Y N X. So, forst, can some1 please inform an easiest way of
> grabbing-and-installing Mary? 2nd, would it just be an entry in speechd-up.conf,
> or would speakup need an additional driver? Thanks so much in advance
> Chime
> 

