Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id BDB091D3DF0
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 21:51:00 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4875E1C0B43; Thu, 14 May 2020 15:51:00 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=FdOxzwfS;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 484D61C0C61;
	Thu, 14 May 2020 15:48:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5CD931C0B1D; Thu, 14 May 2020 15:48:40 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id 58EAC1C0AD5
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 15:48:27 -0400 (EDT)
Received: from darkstar.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 40C9BBE791
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 20:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1589482084; bh=Z0SqqQtVO19lYzTHEfNYTHiUpK1LZEQ9jYX7RHBhCPI=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=FdOxzwfSyKhzsEXlKLsLpFD90RrTfFmvIYkb6map3yyac0Bhis98o9AhhZ2MLI2XU
 dQrFaOC+r+WyMrUCY7GuO5zuFOrMCP+017rClj8N83qFMCWXRkd+snO1gAfpEAjeqw
 5Q+UjzDdppL3bQlI9IHhCdcgE5dvDsJAXG/b+5cJVsPlVgtAG/CaQ5/A775rpIMGei
 dYRW717YmMJRhdRXo+o+o8LsgLpJd3ZcCqeofalDGcVdv1loWKZRrVZ/FrB4o5ASow
 qn2QnDmef356qDjlZczpiw8zmVFi53/88RKjXjR4Tn680Xa+9FQknVH2Rm3WZpPBkG
 evNst9dSyt+1w==
Subject: Re: calling all dectalk users
To: speakup@linux-speakup.org
References: <20200514022100.GA6582@gregn.net>
 <Pine.LNX.4.64.2005141023131.14733@server2.shellworld.net>
 <89c2cff4-ba17-8074-ba80-dc068fcfc11e@slint.fr>
 <Pine.LNX.4.64.2005141509190.18853@server2.shellworld.net>
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
Message-ID: <c5f86227-1782-b346-38b2-c24a88378e87@slint.fr>
Date: Thu, 14 May 2020 21:48:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2005141509190.18853@server2.shellworld.net>
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

SGkgS2FyZW4sCgpTbGludCBpcyBub3QgcHJvdmlkZWQgYXMgYSBsaXZlIENELCBzb3JyeS4KCkJ1
dCB5b3Ugc3RpbGwgY2FuIHN0YXJ0IHRoZSBpbnN0YWxsZXIgd2l0aG91dCBhY3R1YWxseSBpbnN0
YWxsaW5nIChub3QKdG91Y2hpbmcgYW55IGRyaXZlKSB0byBhdCBsZWFzdCBjaGVjayB0aGF0IHlv
dSBkbyBoYXZlIHNwZWVjaCBhZnRlciB0aGUKaW5zdGFsbGVyIGhhcyBzdGFydGVkLgoKSW5zdHJ1
Y3Rpb25zIGZvciBpbnN0YWxsYXRpb24gYXJlIGhlcmU6Cmh0dHA6Ly9zbGFja3dhcmUudWsvc2xp
bnQveDg2XzY0L3NsaW50LTE0LjIuMS9SRUFETUUuaW5zdGFsbGF0aW9uCkJ1dCB5b3UganVzdCBu
ZWVkIHRvIGRvd25sb2FkIHRoZSBJU086Cmh0dHA6Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0
L3NsaW50LTE0LjIuMS9pc28vc2xpbnQ2NC0xNC4yLjEuMi5pc28KVGhlIGFzc29jaWF0ZWQgbWQ1
IGNoZWNrc3VtIGFsbG93IHRvIGNoZWNrIHRoZSBpbnRlZ3JpdHkgb2YgdGhlIElTTyEKaHR0cDov
L3NsYWNrd2FyZS51ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL2lzby9zbGludDY0LTE0LjIu
MS4yLmlzby5zaGEyNTZzdW0KdGhlbiB3cml0ZSBpdCBvbiBEVkQgb3IgYW4gVVNCIHN0aWNrLgoK
SW5mb3JtYXRpb24gYWJvdXQgU2xpbnQgYWNjZXNzaWJpbGl0eToKaHR0cDovL3NsYWNrd2FyZS51
ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL2RvYy9BY2Nlc3NpYmlsaXR5L0FjY2Vzc2liaWxp
dHkKUmVhZCBqdXN0IHRoZSBwYXJ0IEEgSW5zdGFsbGF0aW9uLgoKSW5kZWVkIHBsdWcgaW4gYW5k
IHN3aXRjaCBvbiB0aGUgc3ludGhlc2l6ZXIgYmVmb3JlIGJvb3RpbmcgdGhlIGluc3RhbGxlciEK
CklmIHlvdSBkb24ndCB3YW50IHRvIGFjdHVhbGx5IGluc3RhbGwgZG9uJ3QgZ28gZnVydGhlciB0
aGFuIGxvZ2dpbmcgaW4Kd2hlbiBhc2tlZCB0by4KCkknZCBiZSBpbnRlcmVzdGVkIHRvIGtub3cg
aWYgeW91ciBEZWNUYWxrIHdvcmtlZC4gSWYgaXQgZGlkIHlvdQpzaG91bGRuJ3QgaGF2ZSBhbnkg
aXNzdWUgdXNpbmcgaXQgaW4gYW4gaW5zdGFsbGVkIFNsaW50IHN5c3RlbS4KCkNoZWVycywKRGlk
aWVyCiAKTGUgMTQvMDUvMjAyMCDDoCAyMToxMiwgS2FyZW4gTGV3ZWxsZW4gYSDDqWNyaXTCoDoK
PiBJIHdhcyB0b2xkwqAgdGhhdCBvbmx5IGZyZWUgc3BlZWNoIHNvdXJjZXPCoCBhcmUgdGhlIGRl
ZmF1bHQgbWVhbmluZyB0aGF0IGRlY3RhbGsgaGFkIHRvIGJlIHNlbGVjdGVkwqAgYWZ0ZXLCoCBh
biBpbnN0YWxsIGF0dGVtcHQuCj4gR2l2ZW4gc29mdHdhcmUgc3BlZWNowqAgY2F1c2VzIHNldmVy
ZSBkaXp6aW5lc3MgZHVlIHRvIGFuIGF1ZGl0b3J5IHByb2Nlc3NpbmfCoCBjb25kaXRpb24gSSB3
YXMgbm90IGdvaW5nIHRvIGdhbWJsZS4KPiBXaGF0IGlzIHRoZSBzb3VyY2Ugb2YgdGhlIGRlY3Rh
bGvCoCBpbiB0aGlzIGVkaXRpb24sIGl0IG11c3QgYmUgbGl2ZSwgYW5kIHdoZXJlIGNhbiBvbmUg
ZG93bmxvYWQgdGhlIGxpdmUgY2Q/Cj4gCj4gCj4gCj4gT24gVGh1LCAxNCBNYXkgMjAyMCwgRGlk
aWVyIFNwYWllciB3cm90ZToKPiAKPj4gV2hpY2ggTGludXggZGlkIHlvdSB0cnk/Cj4+Cj4+IFNs
aW50IGNhbiBiZSBpbnN0YWxsZWQgd2l0aCBhIGRlY3RhbGsuCj4+Cj4+IFRoZSBpbnN0YWxsZXIg
c3RhcnRzIHRhbGtpbmcgdXNpbmcgc3BlYWt1cCBhIGZldyBzZWNvbmRzIGFmdGVyIGJvb3Rpbmcu
Cj4+Cj4+IENoZWVycywKPj4gRGlkaWVyCj4+Cj4+IExlIDE0LzA1LzIwMjAgw6AgMTY6MjQsIEth
cmVuIExld2VsbGVuIGEgw6ljcml0wqA6Cj4+PiBXZWxsLCBJIGhhdmUgYSBkZWN0YWxrLCBidXQg
Y2Fubm90IGluc3RhbGwgTGludXggb3Igc3BlYWt1cMKgIGJlY2F1c2UgdGhlCj4+PiDCoERlY3Rh
bGsgaXMgbm90IGEgZGVmYXVsdCB2b2ljZSBvcHRpb24uCj4+PiBKdXN0IHNoYXJpbmcgaW4gY2Fz
ZSB5b3UgaGVhciBmcm9tIG5vIG9uZSBlbHNlLgo+Pj4KPj4+Cj4+Pgo+Pj4gT24gV2VkLCAxMyBN
YXkgMjAyMCwgR3JlZ29yeSBOb3dhayB3cm90ZToKPj4+Cj4+Pj4gSGkgYWxsLgo+Pj4+Cj4+Pj4g
SnVzdCB3YW50ZWQgdG8gZm9sbG93IHVwLiBDYW4gc29tZW9uZSB3aXRoIGEgZGVjdGFsayBhbmQg
d2hvIGlzCj4+Pj4gY29tZm9ydGFibGUgd3JpdGluZyBhbmQgcmVhZGluZwo+Pj4+IC9zeXMvYWNj
ZXNzaWJpbGl0eS9zcGVha3VwL3N5bnRoX2RpcmVjdCB0cnkgdGhlIHRlc3RzIFNhbXVlbCBhc2tl
ZAo+Pj4+IGZvciwgYW5kIHJlcG9ydCBiYWNrIHdpdGggdGhlIHJlc3VsdHM6Cj4+Pj4KPj4+PiA8
aHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL3BpcGVybWFpbC9zcGVha3VwLzIwMjAtQXByaWwvMDYy
MjM1Lmh0bWw+Cj4+Pj4KPj4+PiBJIGRvbid0IGhhdmUgYSBkZWN0YWxrIG15c2VsZi4gSWYgbm9i
b2R5IGhlcmUgcmVwb3J0cyBiYWNrLCB0aGVyZSBpcwo+Pj4+IG9uZSBwZXJzb24gd2hvIGlzbid0
IG9uIHRoaXMgbGlzdCBhcyBmYXIgYXMgSSBrbm93LCBidXQgaGFzIGEgZGVjdGFsawo+Pj4+IHRo
YXQgSSBjYW4gYXNrIGlmIGhlIGNvdWxkIHJlcG9ydCBiYWNrLgo+Pj4+Cj4+Pj4gR3JlZwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxp
bmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9y
Zy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
