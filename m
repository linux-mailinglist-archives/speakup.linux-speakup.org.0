Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8D83912D9CE
	for <lists+speakup@lfdr.de>; Tue, 31 Dec 2019 16:31:05 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B5D831C46BB; Tue, 31 Dec 2019 10:31:04 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="q1WT+A2z";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 59F5D1C46CF;
	Tue, 31 Dec 2019 10:30:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 1C24D1C31B9; Tue, 31 Dec 2019 10:30:25 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id 757AD1C31B9
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 10:30:15 -0500 (EST)
Received: from darkstar.slint.fr
 (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 7A986BE730
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 15:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1577802606; bh=9xTII6zyMuB30YtPn4SQMFVMcj+w9x/A5pM02Hf38Gk=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=q1WT+A2zxjtLu15odY5AfWo4ffU/eZ5YvI2xp3P54HoCOD1z/0gSHA25rA20Wqgfn
 Av7pBmBQOQviElRruQYrHlDy7//WN8y1m5ichoRqoHaHujGYGKmViHgHAveT4+kA4h
 OSPuvhrJji6g4jOVlqycyDziA6E7HUZV0KLEdz9VzQt4Yk6kBpFerMk9HE5ceBGmyh
 7pHV05QpEfX8zvsF2fqQmY7fmAEbpWIzwW99I60fgskphhuqH5ckjBvn6HlvPrpXFQ
 CWVNY20fg6wL9gf4conGjXFbIGMlI50q77fAZi7IjX0Qlrz57VQnLciar/aO1DnsUx
 jB57AE5Y7oE3Q==
Subject: Re: speakup locking box on latest linux 5.3.15-1
To: speakup@linux-speakup.org
References: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
 <20191231114129.GA1937@rednote.net>
 <alpine.DEB.2.21.1912310943070.9526@befuddled.reisers.ca>
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
Message-ID: <8d32a2c2-8cbf-c5c7-6f48-b4fd440a5da8@slint.fr>
Date: Tue, 31 Dec 2019 16:30:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1912310943070.9526@befuddled.reisers.ca>
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

SGkgS2lyayBhbmQgSmFuaW5hLAoKSSB3b24ndCBzaGlwIGEgNS4zLnggS2VybmVsIGluIFNsaW50
IGFueXdheSBhcyBpdCBpcyBvZmZpY2lhbGx5IEVPTAp1cHN0cmVhbSwgaG93ZXZlciBJIHBsYW4g
dG8gcHJvdmlkZSBhIDUuNCBrZXJuZWwgc29vbiBhbmQgd291bGQgbGlrZQp0byBoYXZlIGl0IHRl
c3RlZCB3cnQgdGhpcyBpc3N1ZS4KCkkgZG8gbm90IG93biBhIGhhcmQgc3ludGggc28gY2FuIG9u
bHkgdGVzdCB3aXRoIHNwZWFrdXBfc29mdCBteXNlbGYsIGJ1dApJIGNvdWxkIGFzayBTbGludCB1
c2VycyB0byBkbyBzbyB3aXRoIGEgaGFyZCBzeW50aCAobHRsayBhdCBsZWFzdCBhbmQKcHJvYmFi
bHkgYXBvbGxvIGFzIHdlbGwpLgoKV2l0aCB3aGljaCBkcml2ZXIgZGlkIHlvdSB0cnk6IHNvZnQg
b3IgaGFyZCBhbmQgdGhlbiB3aGljaCBoYXJkIHN5bnRoPwoKQWxzbyBKYW5pbmEsIGRvZXMgdGhp
cyBpc3N1ZSBvY2N1ciBhbHNvIHdpdGggbGludXggNS40LjYuYXJjaDMtMT8KCkFzIGFuIGFzaWRl
LCBLaXJrIGRpZCB5b3UgdHJ5IG9uZSBvZiB0aGUgcGFja2FnZSBsYWJlbGVkCmxpbnV4LWltYWdl
LTUuNC4wLTEtPHNvbWV0aGluZz4gcHJvdmlkZWQgZm9yIERlYmlhbiBTSUQ/CgpCZXN0IHJlZ2Fy
ZHMsCgpEaWRpZXIKCkxlIDMxLzEyLzE5IMOgIDE1OjQ2LCBLaXJrIFJlaXNlciBhIMOpY3JpdMKg
Ogo+IFllcyBKYW5pbmE6IE9uIG15IGJveGVzIHRoZSBtYWNoaW5lIGlzIGxvY2tlZCB1cCBzb2xp
ZCBhcyBpbiBub3QgYWJsZQo+IHRvIGV2ZW4gc3NoIG9yIHBpbmcgdGhlIG1hY2hpbmUuCj4gCj4g
SSBoYXZlIGhhZCB0byByZXZlcnQgYmFjayB0byBhIDUuMi54IHNlcmllcyBrZXJuZWwgdG8gYnkt
cGFzcyB0aGUKPiBwcm9ibGVtLiBJIHRyaWVkIHRocmVlIGRpZmZlcmVudCA1LjMueCBrZXJuZWxz
IGV4dGVuc2l2ZWx5IGJlZm9yZQo+IHJldmVydGluZy4KPiAKPiDCoCBLaXJrCj4gCj4gT24gVHVl
LCAzMSBEZWMgMjAxOSwgSmFuaW5hIFNhamthIHdyb3RlOgo+IAo+PiBLaXJrOgo+Pgo+PiBJIHRo
aW5rIEknbSBhbHNvIHNlZWluZyB0aGlzIG9uIG15IEFyY2ggc3lzdGVtLgo+Pgo+PiBUaGUgYmVo
YXZpb3IgaXMgc3BlZWNoIGRpZXMsIGFuZCB0aGVyZSBzZWVtcyBubyB3YXkgdG8gZ2V0IGl0IGJh
Y2sgc2hvcnQKPj4gb2YgYSByZWJvb3QuCj4+Cj4+IEJlc3QsCj4+Cj4+IEphbmluYQo+Pgo+PiBL
aXJrIFJlaXNlciB3cml0ZXM6Cj4+PiBIZWxsbyBmb2xrczogSXQgYXBwZWFycyB0aGUgYnVnIHRo
YXQgdmlzaXRlZCBzcGVha3VwIGJhY2sgaW4gbGF0ZQo+Pj4gQXVndXN0IGlzIGJhY2sgYW5kIGFj
dGl2ZS4gSW4ga2VybmVsIHZlcnNpb24gNS4zLjE1LTEgYnVpbHQgb24KPj4+IDIwMTktMTItMDcu
IEl0IGNhbiB2ZXJ5IGVhc2lseSBiZSByZXByb2R1Y2VkIGJ5IGhpdHRpbmcgdGhlIG5leHQtd29y
ZAo+Pj4gb3IgcHJldmlvdXMtd29yZCBmdW5jdGlvbnMgcXVpY2tseSBpbiBzZXJpZXMuIEluIGZh
Y3QgaXQgaXMgdmVyeWQKPj4+IGlmZmljdWx0IHRvIG5vdCB0cmlnZ2VyIHRoZSBidWcuIFRoaXMg
aXMgaW4gZGViaWFuIHNpZCBCVFcuIE15Cj4+PiBtYWNoaW5lcyBhcmUgYW1kNjQgYmFzZWQgc28g
SSdtIG5vdCBzdXJlIGlmIGl0J3MgYWN0aXZlIG9uIEludGVsCj4+PiBwcm9jZXNzb3JzLgo+Pj4K
Pj4+IMKgIEtpcmsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8v
bGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
