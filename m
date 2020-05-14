Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 05D1E1D3879
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 19:41:03 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 35E141C0B1E; Thu, 14 May 2020 13:41:02 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=s6o4A2qr;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 590971C0BE6;
	Thu, 14 May 2020 13:39:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5B40C1C0AD9; Thu, 14 May 2020 13:39:20 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id 097421C083F
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 13:39:15 -0400 (EDT)
Received: from darkstar.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 332D5BE797
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 18:38:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1589474331; bh=wMBokIVgbodSBHfUr4lxRX6M+UCoGsSDllJlQLBD7yM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=s6o4A2qrg6xBR4GDKfI3YMm6CPToK6Y0IilfFCOt9Rk57aYoxD72cpA8YchNdvtLc
 45qEeQKjB/Tgub/5jmqkLlfSwNHRoM2Z5kHXW2PTM8jVM13op5DVKajRpJ614wTAy4
 0t69oig/NdqcKWQM1vuMjgw4X/+U6vB54MobYoUOrfy/l+xcgWcwuq0Uh9EWPlEEG1
 3iY270D+zTerb4pS4plYAG7EzJHuhh3nVG0uQ9nQpZmQOLoIWqeVmYPYQ+2utL7pho
 iOpu9L3mGEFR2jXfPd1mVMFTgialFGEThDgEIiJ5hF6O3s5QjIsdQek/tI9vFKwl7c
 p0K0mp0XyY2+A==
Subject: Re: calling all dectalk users
To: speakup@linux-speakup.org
References: <20200514022100.GA6582@gregn.net>
 <Pine.LNX.4.64.2005141023131.14733@server2.shellworld.net>
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
Message-ID: <89c2cff4-ba17-8074-ba80-dc068fcfc11e@slint.fr>
Date: Thu, 14 May 2020 19:39:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2005141023131.14733@server2.shellworld.net>
Content-Language: fr
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

V2hpY2ggTGludXggZGlkIHlvdSB0cnk/CgpTbGludCBjYW4gYmUgaW5zdGFsbGVkIHdpdGggYSBk
ZWN0YWxrLgoKVGhlIGluc3RhbGxlciBzdGFydHMgdGFsa2luZyB1c2luZyBzcGVha3VwIGEgZmV3
IHNlY29uZHMgYWZ0ZXIgYm9vdGluZy4KCkNoZWVycywKRGlkaWVyCgpMZSAxNC8wNS8yMDIwIMOg
IDE2OjI0LCBLYXJlbiBMZXdlbGxlbiBhIMOpY3JpdMKgOgo+IFdlbGwsIEkgaGF2ZSBhIGRlY3Rh
bGssIGJ1dCBjYW5ub3QgaW5zdGFsbCBMaW51eCBvciBzcGVha3VwwqAgYmVjYXVzZSB0aGUKPiDC
oERlY3RhbGsgaXMgbm90IGEgZGVmYXVsdCB2b2ljZSBvcHRpb24uCj4gSnVzdCBzaGFyaW5nIGlu
IGNhc2UgeW91IGhlYXIgZnJvbSBubyBvbmUgZWxzZS4KPiAKPiAKPiAKPiBPbiBXZWQsIDEzIE1h
eSAyMDIwLCBHcmVnb3J5IE5vd2FrIHdyb3RlOgo+IAo+PiBIaSBhbGwuCj4+Cj4+IEp1c3Qgd2Fu
dGVkIHRvIGZvbGxvdyB1cC4gQ2FuIHNvbWVvbmUgd2l0aCBhIGRlY3RhbGsgYW5kIHdobyBpcwo+
PiBjb21mb3J0YWJsZSB3cml0aW5nIGFuZCByZWFkaW5nCj4+IC9zeXMvYWNjZXNzaWJpbGl0eS9z
cGVha3VwL3N5bnRoX2RpcmVjdCB0cnkgdGhlIHRlc3RzIFNhbXVlbCBhc2tlZAo+PiBmb3IsIGFu
ZCByZXBvcnQgYmFjayB3aXRoIHRoZSByZXN1bHRzOgo+Pgo+PiA8aHR0cDovL2xpbnV4LXNwZWFr
dXAub3JnL3BpcGVybWFpbC9zcGVha3VwLzIwMjAtQXByaWwvMDYyMjM1Lmh0bWw+Cj4+Cj4+IEkg
ZG9uJ3QgaGF2ZSBhIGRlY3RhbGsgbXlzZWxmLiBJZiBub2JvZHkgaGVyZSByZXBvcnRzIGJhY2ss
IHRoZXJlIGlzCj4+IG9uZSBwZXJzb24gd2hvIGlzbid0IG9uIHRoaXMgbGlzdCBhcyBmYXIgYXMg
SSBrbm93LCBidXQgaGFzIGEgZGVjdGFsawo+PiB0aGF0IEkgY2FuIGFzayBpZiBoZSBjb3VsZCBy
ZXBvcnQgYmFjay4KPj4KPj4gR3JlZwo+Pgo+Pgo+PiAtLcKgCj4+IHdlYiBzaXRlOiBodHRwOi8v
d3d3LmdyZWduLm5ldAo+PiBncGcgcHVibGljIGtleTogaHR0cDovL3d3dy5ncmVnbi5uZXQvcHVi
a2V5LmFzYwo+PiBza3lwZTogZ3JlZ24xCj4+IChhdXRob3JpemF0aW9uIHJlcXVpcmVkLCBhZGQg
bWUgdG8geW91ciBjb250YWN0cyBsaXN0IGZpcnN0KQo+PiBJZiB3ZSBoYXZlbid0IGJlZW4gaW4g
dG91Y2ggYmVmb3JlLCBlLW1haWwgbWUgYmVmb3JlIGFkZGluZyBtZSB0byB5b3VyIGNvbnRhY3Rz
Lgo+Pgo+PiAtLSAKPj4gRnJlZSBkb21haW5zOiBodHRwOi8vd3d3LmV1Lm9yZy8gb3IgbWFpbCBk
bnMtbWFuYWdlckBFVS5vcmcKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4gU3BlYWt1cEBsaW51eC1zcGVh
a3VwLm9yZwo+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3Rp
bmZvL3NwZWFrdXAKPj4KPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3BlYWt1cEBsaW51eC1zcGVha3Vw
Lm9yZwo+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8v
c3BlYWt1cApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51
eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
