Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 7B0641A7A47
	for <lists+speakup@lfdr.de>; Tue, 14 Apr 2020 14:04:45 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 675CD1C73BC; Tue, 14 Apr 2020 08:04:44 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=rbo5yGK5;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 71F3C1C73C1;
	Tue, 14 Apr 2020 08:04:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D265B1C57AE; Tue, 14 Apr 2020 08:04:11 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id B7DC61C2C7B
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 08:04:08 -0400 (EDT)
Received: from darkstar.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id C662DBE791
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 13:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1586862227; bh=HN2PwQpHDNSYGYqvx2S7xJRmGE3ootGVtdAD23H/ppE=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=rbo5yGK5GEC1Z/WU6p16K5qXk6XMbgJ+B+XSHa6YEcU0CjxB1iE9klt1F0bVaY4Xn
 yZ/K8lZlUWsA6T6Ka+vLdUADKESQ6VSL61lQ4lzuhzmDP2+jHBaTLdAfAQGD1SDbtL
 BqLweJxoczLrLuFXic4ppVuf5bVWY8iFk2wARvA6pY7f3RJJlLYiYVFhS2AZ5bgxIq
 ZxTvMx0phKcI+IQ9KjDMe44yqZ8Pdp82ipdHVHlVgHGBZ3zlkFlBHSFBjuLDzGQeea
 grEcTlw8Z3uy1Rmf3LTw5uTt5tChnarukWuZj1xlYOFMk0YbECNdsE32hWb77Vi6lk
 bPZ1kpK4QxQ9w==
Subject: Re: speakup soon out of staging?
To: speakup@linux-speakup.org
References: <0e72318b-5271-b55d-c340-0ea13a9d46b0@slint.fr>
 <ad934fe6-a20b-3aaa-8784-930ac144c727@gmail.com>
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
Message-ID: <9a033b9a-8ac8-70df-d7b5-200900c7d5d5@slint.fr>
Date: Tue, 14 Apr 2020 14:04:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <ad934fe6-a20b-3aaa-8784-930ac144c727@gmail.com>
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

TGUgMTQvMDQvMjAyMCDDoCAwOTozOSwgQWxleGFuZGVyIEVwYW5lc2huaWtvdiBhIMOpY3JpdCA6
Cj4gYXMgZm9yIGx0cy4uLiBpIGRvbid0IHRoaW5rIHRoYXQgNS44IHdpbGwgYmVjYW1lIGEgbHRz
IGtlcm5lbC4gYnV0IHRoaXMKPiBpcyBub3Qgc28gaW1wb3J0YW50IGluIG15IG9waW5pb24uCgpN
YXliZSBub3Qgc28gaW1wb3J0YW50IGZvciBBcmNoIHRoYXQgc2hpcHMgdGhlIGtlcm5lbCBvZiB0
aGUgZGF5IGFzIHdlbGwKYXMgbGludXgtbHRzLCBidXQgaW1wb3J0YW50IGZvciBTbGFja3dhcmUg
YW5kIGRlcml2YXRpdmVzIGxpa2UgU2xpbnQKdGhhdCBoYXZlIHNoaXBwZWQgb25seSBhIHZhbmls
bGEgbHRzIGtlcm5lbCBvbmUgc28gZmFyLgoKQ2hlZXJzLApEaWRpZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3Bl
YWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9t
YWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
