Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B6B8C2DA24F
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 22:09:33 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5E5F9380FAB; Mon, 14 Dec 2020 16:09:32 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CDD18380F20;
	Mon, 14 Dec 2020 16:09:31 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 43A49380EDA; Mon, 14 Dec 2020 16:09:30 -0500 (EST)
Received: from wmauth4.doit.wisc.edu (wmauth4.doit.wisc.edu [144.92.197.145])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 1986B38097A
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 16:09:30 -0500 (EST)
Received: from [192.168.0.14]
 (108-85-191-186.lightspeed.mdsnwi.sbcglobal.net [108.85.191.186])
 by smtpauth4.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.0.2.4.20190812 64bit (built Aug 12
 2019)) with ESMTPSA id <0QLC02IWLLFRA340@smtpauth4.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Mon, 14 Dec 2020 15:09:28 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[108.85.191.186]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-4, Version=6.4.7.2805085,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2020.12.14.210018,
 AntiVirus-Engine: 5.79.0, AntiVirus-Data: 2020.11.19.5790001,
 SenderIP=[108.85.191.186]
Subject: Re: Efficiently using terminal with screenreader
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>, 
 Reece O'Bryan <reece.obryan@icloud.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <8326BC97-9410-4773-A453-222573C17E33@icloud.com>
From: John G Heim <jheim@math.wisc.edu>
Message-id: <f99b5965-3058-cbb2-ece8-b19ff5e2ef6f@math.wisc.edu>
Date: Mon, 14 Dec 2020 15:09:27 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-version: 1.0
In-reply-to: <8326BC97-9410-4773-A453-222573C17E33@icloud.com>
Content-language: en-US
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
Reply-To: jheim@math.wisc.edu, "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Ck15IG9waW5pb24gaXMgdGhhdCB5b3Ugc2hvdWxkIGp1c3QgdXNlIG9uZSBvZiB0aGUgbWFueSB0
ZXJtaW5hbCAKZW11bGF0b3JzIGluIHRoZSBncmFwaGljYWwgdXNlciBpbnRlcmZhY2UuIFBlcnNv
bmFsbHksIEkgdXNlIApnbm9tZS10ZXJtaW5hbC4KT24gMTIvMTQvMjAgMjo1NiBQTSwgUmVlY2Ug
TydCcnlhbiB3cm90ZToKPiBUaGlzIGlzIGdyZWF0IHRvIGhlYXIuIFNvIGNhbiBJIHJ1biBib3Ro
IEVzcGVhayBhbmQgT3JjYSBhdCB0aGUgc2FtZSB0aW1lIG9yIHdpbGwgSSBuZWVkIHRvIGNsb3Nl
IG9yY2Egd2hlbiBJIHdhbnQgdG8gb3BlbiB0aGUgdGVybWluYWwgYW5kIHVzZSBlc3BlYWt1cD8K
PiAKPiAKPiBUaGFuayB5b3UsCj4gCj4gLVJlZWNlCj4gCj4+IE9uIERlYyAxNCwgMjAyMCwgYXQg
MjowNCBQTSwgWmFjaGFyeSBLbGluZSA8emtsaW5lQHNwZWVkcG9zdC5uZXQ+IHdyb3RlOgo+Pgo+
PiBIaSwKPj4KPj4gVG8gYmUgcGVyZmVjdGx5IGhvbmVzdCwgSSByZWNvbW1lbmQgdXNpbmcgU3Bl
YWt1cCBmb3IgZ29vZCB0ZXJtaW5hbCBzdXBwb3J0LiBPcmNhIGlzIHJhdGhlciBzdWItcGFyIGlu
IHRoaXMgcmVnYXJkLCBhbmQgU3BlYWt1cCB3YXMgZGVzaWduZWQgdG8gZnVsbHkgc3VwcG9ydCBj
b21tYW5kLWxpbmUgb3V0cHV0IGZyb20gdGhlIHN0YXJ0Lgo+PiBCZXN0LAo+PiBaYWNrLgo+Pgo+
Pj4gT24gRGVjIDE0LCAyMDIwLCBhdCAxMDo1MiBBTSwgUmVlY2UgTydCcnlhbiA8cmVlY2Uub2Jy
eWFuQGljbG91ZC5jb20+IHdyb3RlOgo+Pj4KPj4+IEhlbGxvLAo+Pj4KPj4+IEnigJltIGhhdmlu
ZyB0cm91YmxlIGVmZmljaWVudGx5IGFjY2Vzc2luZyBvdXRwdXRzIGZyb20gdGVybWluYWwgaW4g
T3JjYS4gSSBuZWVkIGEgZnVsbHkgZnVuY3Rpb25pbmcgc2NyZWVuIHJlYWRlciwgaXMgdGhlcmUg
YW4gZWFzeSB3YXkgdG8gbmF2aWdhdGUgbGluZSBieSBsaW5lIG9mIG91dHB1dCBmcm9tIHRlcm1p
bmFsIGluIGVzcGVha3VwIG9yIG9yY2E/Cj4+Pgo+Pj4gVGhhbmsgeW91LAo+Pj4KPj4+IC1SZWVj
ZQo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4+PiBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4+PiBo
dHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
U3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+PiBodHRw
Oi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwZWFrdXAg
bWFpbGluZyBsaXN0Cj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9saW51eC1z
cGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+IApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlz
dApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2kt
YmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
