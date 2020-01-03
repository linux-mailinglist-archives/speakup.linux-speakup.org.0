Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id F393612F6C5
	for <lists+speakup@lfdr.de>; Fri,  3 Jan 2020 11:37:12 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B8E3A1C4756; Fri,  3 Jan 2020 05:37:10 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="M+mywDY4";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 35DD11C4789;
	Fri,  3 Jan 2020 05:36:49 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 778681C2E07; Fri,  3 Jan 2020 05:36:31 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id F20CD1C2E07
 for <speakup@linux-speakup.org>; Fri,  3 Jan 2020 05:36:22 -0500 (EST)
Received: from darkstar.slint.fr
 (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 071A8BE736
 for <speakup@linux-speakup.org>; Fri,  3 Jan 2020 10:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1578044179; bh=hkb0Q01/Xy1fAdqigl5L5N2p4+hpaWXN5oEIEx+z49c=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=M+mywDY4wOZtbIM1WdS6HKxsU2RD8G5nIKt3/YBGZxl65z0ak0WlvYVjosFyBqEJJ
 WF48PeARCyLY6WZtcXLTmnYC36MG6S0kPJvpfCcW1IudAJ9J67eTHHFYXqYi4XpIom
 23TXkPnjijtusAU/O/MypiQbXHARiiyGgtkdKAjY65uHLK2l2u635+XtR/6/ITvMHv
 PuZFejGYvPizFyXSqTEGX4ER66vIwVPjr/MqkHX/D/vgBSvEs5GrKULeqU9wIJ4tsP
 NhsSWQ+/fNbc2azrmhKXNbbk9odoYq7UwzA4ImLDd9YKGB7W56u26M6fAiL1VVnIts
 DDzMzu2YOfi1Q==
Subject: Re: speakup locking box on latest linux 5.3.15-1
To: speakup@linux-speakup.org
References: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
 <20191231114129.GA1937@rednote.net>
 <alpine.DEB.2.21.1912310943070.9526@befuddled.reisers.ca>
 <8d32a2c2-8cbf-c5c7-6f48-b4fd440a5da8@slint.fr>
 <alpine.DEB.2.21.1912311045030.12026@befuddled.reisers.ca>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; prefer-encrypt=mutual; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwH8EEwEKACkCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCXcBjnwUJGlHqEgAKCRDVAgLvYMA+6v/ICAC8Oa2zXOne
 zyuFrPtNsciJWYwWamW+g5TNaY9NPnyMRNKDi7IcP6PoDwHRI8YBgo+Z9w0qFKQ/WVSI/O6s
 gm7LnOX7OEHjnub4sjrr5PHcsPRjm6iJFIgGgD+waz0K5fxcc65ti3lgHLH1tkhORyiT5EFp
 0VllWDQfPHw5avm9oopJv1FuPfZhSlFT6QhjD2ARmOrxfFBjELQZjDidckOYf/8Stoh+aK5F
 5q69DpF+bSZzOtCht+S6LT+Im5zqMgq1Dfqb3FpnVO3MyhSLeGI2nB+OFNTBGByRFKHYRsHc
 VaQBjtfsr4HnC0UR2P/bDIk/oxLnIN9nHJuL6btcf9M6zsBNBFY6fG8BCACqDQKHSw0ElDkw
 PPpNguL0ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliw
 Wyj+9/roJlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+v
 rsNu7T9ro3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19
 Itys/CbNvxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2
 OP3refmSRxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwGUEGAEKAA8CGwwFAl1EQo4F
 CQjq+XYACgkQ1QIC72DAPurGhAf+LKNM5AajZNNnccq3bWawqsY1P5ZtFvZLPxMbx2xsnYaM
 8UPe/tGfuxp+q1ouCRKgvtefjd2eBLGXaysCA5r3Jv+hgdjPKEJut3rARhTJMaDwjKOcOTHG
 AhFtpsjBkVXuCBxEpNBEypyis3w4kQUCxP7nro4yzdXY7s6EbadNd8nG4B8qFt4JxnqJnZWl
 97mBQFJjFXlkAM+0eAkpF+rYzL6QKCKydO2Xcz7UTSMe/blXtZUjHxyr8Nh1G+ywEbkmQP+l
 QhcxJYJbK+q4zNM0U64zzLRwIvVknpdEzJKiFXsydnm9VFE9tzC6a+h40du2OdhkoNDVuFSq
 aG2M5OmN/Q==
Message-ID: <70aee62a-8e5f-f0d9-2260-7eafb16366a2@slint.fr>
Date: Fri, 3 Jan 2020 11:36:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1912311045030.12026@befuddled.reisers.ca>
Content-Language: en-US
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

SGkgS2lyaywgSmFuaW5hLCBTYW11ZWwgYW5kIGFsbDoKCkxlIDMxLzEyLzE5IMOgIDE2OjUzLCBL
aXJrIFJlaXNlciBhIMOpY3JpdCA6Cj4gSSB3b3VsZCBiZSB3aWxsaW5nIHRvIHRlc3QgeW91ciBr
ZXJuZWxzIGlmIHlvdSBjb3VsZCBzZW5kIG1lIGEgZHJvcCBpbgo+IHJlcGxhY2VtZW50IHdpdGgg
dGhlIFN5c3RlbS5tYXAgZXRjLgpQbGVhc2UgZmluZCBhIGNvbXByZXNzZWQgYXJjaGl2ZSBoZXJl
IGFsb25nc2lkZSBpdHMgc2hhMjU2IGNoZWNrc3VtIGhlcmU6Cmh0dHBzOi8vc2xpbnQuZnIvdGVz
dGluZy8KCkluc3RhbGxhdGlvbjoKd2dldCBodHRwczovL3NsaW50LmZyL3Rlc3RpbmcvbGludXgt
NS40LjdfYnVpbGRfZm9yX1NsaW50X3dpdGhfbW9kdWxlcy50YXIueHoKd2dldCBodHRwczovL3Ns
aW50LmZyL3Rlc3RpbmcvbGludXgtNS40LjdfYnVpbGRfZm9yX1NsaW50X3dpdGhfbW9kdWxlcy50
YXIueHouc2hhMjU2CnNoYTI1NnN1bSAtYyBsaW51eC01LjQuN19idWlsZF9mb3JfU2xpbnRfd2l0
aF9tb2R1bGVzLnRhci54ei5zaGEyNTYgI291dHB1dCBzaG91c2wgYmU6IE9LCnRhciB4ZiBsaW51
eC01LjQuN19idWlsZF9mb3JfU2xpbnRfd2l0aF9tb2R1bGVzLnRhci54egpUaGVuIGFzIHJvb3Qg
b3IgdXNpbmcgc3VkbzoKY3AgLXIgYm9vdC8qIC9ib290LwpjcCAtciBsaWIvbW9kdWxlcy81LjQu
NyAvbGliL21vZHVsZXMvClRoZW4gdXBncmFkZSBncnViLgoKSW4gL2Jvb3QveW91IHdpbGwgZmlu
ZDoKY29uZmlnLTUuNC43Lng2NApTeXN0ZW0ubWFwLTUuNC43CnZtbGludXotNS40LjcKcmVuYW1l
IHRoZW0gYXMgeW91IHNlZSBmaXQuCgpBbGwgSSBjYW4gc2F5IGlzIHRoYXQgSSBoYXZlIG5vIGlz
c3VlIGhlcmUgdXNpbmcgZXNwZWFrdXAgd2l0aCB0aGlzCmtlcm5lbCwgaS5lLiBwcmVzc2luZyBz
ZXZlcmFsIHRpbWVzIApzcGsga2V5X2oKc3BrIGtleV9sCnNheSBwcmV2aW91cyBhbmQgbmV4dCB3
b3JkIGV2ZXJ5IHRpbWUgYXMgZXhwZWN0ZWQgYWNjb3JkaW5nIHRvIG15IHRlc3RzLgpCZWluZyBz
aWdodGVkIEkgbWF5IG5vdCBiZSB0aGUgYmVzdCB0ZXN0ZXIgb3V0IHRoZXJlIHRob3VnaC4KCkFs
bCBzcGVha3VwIGRyaXZlcnMgYXJlIHNoaXBwZWQgYXMgbW9kdWxlcywgdGhlIGtlcm5lbCBpcyB2
YW5pbGxhCihub3QgcGF0Y2hlZCkuCgpCZXN0IHJlZ2FyZHMgYW5kIGEgSGFwcHkgTmV3IFllYXIs
CgpEaWRpZXIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9s
aW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
