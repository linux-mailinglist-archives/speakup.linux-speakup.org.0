Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4EE3E2DA290
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 22:29:27 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2BE7D380F32; Mon, 14 Dec 2020 16:29:26 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3F7AF380F27;
	Mon, 14 Dec 2020 16:29:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9BEA3380C18; Mon, 14 Dec 2020 16:29:23 -0500 (EST)
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 71B98380967
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 16:29:23 -0500 (EST)
Received: from darkstar.example.slint (unknown
 [IPv6:2a01:e34:ed09:d470:ad84:e490:f8f1:b361])
 by smtp2-g21.free.fr (Postfix) with ESMTP id A42E72003C6
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 22:28:48 +0100 (CET)
Subject: Re: Efficiently using terminal with screenreader
To: speakup@linux-speakup.org
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <8326BC97-9410-4773-A453-222573C17E33@icloud.com>
From: Didier Spaier <didier@slint.fr>
Message-ID: <e88d9fbb-5d3c-b3da-7f2d-3e6080ea9ecb@slint.fr>
Date: Mon, 14 Dec 2020 22:28:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8326BC97-9410-4773-A453-222573C17E33@icloud.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

WW91IGNhbid0IHVzZSBTcGVha3VwIChub3QgdG8gYmUgY29uZnVzZWQgd2l0aCBFc3BlYWspIGlu
IGEgZ3JhcGhpY2FsIAplbnZpcm9ubWVudCBhdCBhbGwsIG9ubHkgaW4gYSBjb25zb2xlLgpTcGVh
a3VwIGlzIGEgY29uc29sZSBzY3JlZW4gcmVhZGVyLCBFc3BlYWsgaXMgb25lIG9mIHRoZSBUVFMg
ZW5naW5lcyAKKHdpdGggYXNzb2NpYXRlZCB2b2ljZXMpIHRoYXQgY2FuIGJlIHVzZWQgd2l0aCBP
cmNhLgoKRnVydGhlciBhcyB5b3VyIHF1ZXN0aW9uIGlzIGFjdHVhbGx5IGFib3V0IE9yY2EsIHlv
dSBjb3VsZCBnZXQgbW9yZSAKYW5zd2VycyBwb3N0aW5nIGluIHRoZSBPcmNhIG1haWxpbmcgbGlz
dC4KSW4gY2FzZSB5b3UgZGlkbid0IGNvbWUgYWNyb3NzIGl0LCBoZXJlIGlzIGEgbGluazoKaHR0
cHM6Ly9tYWlsLmdub21lLm9yZy9tYWlsbWFuL2xpc3RpbmZvL29yY2EtbGlzdAoKRGlkaWVyCgpP
biAxNC8xMi8yMDIwIDIxOjU2LCBSZWVjZSBPJ0JyeWFuIHdyb3RlOgo+IFRoaXMgaXMgZ3JlYXQg
dG8gaGVhci4gU28gY2FuIEkgcnVuIGJvdGggRXNwZWFrIGFuZCBPcmNhIGF0IHRoZSBzYW1lIHRp
bWUgb3Igd2lsbCBJIG5lZWQgdG8gY2xvc2Ugb3JjYSB3aGVuIEkgd2FudCB0byBvcGVuIHRoZSB0
ZXJtaW5hbCBhbmQgdXNlIGVzcGVha3VwPwo+IAo+IAo+IFRoYW5rIHlvdSwKPiAKPiAtUmVlY2UK
PiAKPj4gT24gRGVjIDE0LCAyMDIwLCBhdCAyOjA0IFBNLCBaYWNoYXJ5IEtsaW5lIDx6a2xpbmVA
c3BlZWRwb3N0Lm5ldD4gd3JvdGU6Cj4+Cj4+IEhpLAo+Pgo+PiBUbyBiZSBwZXJmZWN0bHkgaG9u
ZXN0LCBJIHJlY29tbWVuZCB1c2luZyBTcGVha3VwIGZvciBnb29kIHRlcm1pbmFsIHN1cHBvcnQu
IE9yY2EgaXMgcmF0aGVyIHN1Yi1wYXIgaW4gdGhpcyByZWdhcmQsIGFuZCBTcGVha3VwIHdhcyBk
ZXNpZ25lZCB0byBmdWxseSBzdXBwb3J0IGNvbW1hbmQtbGluZSBvdXRwdXQgZnJvbSB0aGUgc3Rh
cnQuCj4+IEJlc3QsCj4+IFphY2suCj4+Cj4+PiBPbiBEZWMgMTQsIDIwMjAsIGF0IDEwOjUyIEFN
LCBSZWVjZSBPJ0JyeWFuIDxyZWVjZS5vYnJ5YW5AaWNsb3VkLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4g
SGVsbG8sCj4+Pgo+Pj4gSeKAmW0gaGF2aW5nIHRyb3VibGUgZWZmaWNpZW50bHkgYWNjZXNzaW5n
IG91dHB1dHMgZnJvbSB0ZXJtaW5hbCBpbiBPcmNhLiBJIG5lZWQgYSBmdWxseSBmdW5jdGlvbmlu
ZyBzY3JlZW4gcmVhZGVyLCBpcyB0aGVyZSBhbiBlYXN5IHdheSB0byBuYXZpZ2F0ZSBsaW5lIGJ5
IGxpbmUgb2Ygb3V0cHV0IGZyb20gdGVybWluYWwgaW4gZXNwZWFrdXAgb3Igb3JjYT8KPj4+Cj4+
PiBUaGFuayB5b3UsCj4+Pgo+Pj4gLVJlZWNlCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4+IFNwZWFr
dXBAbGludXgtc3BlYWt1cC5vcmcKPj4+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmlu
L21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBTcGVha3VwIG1haWxpbmcgbGlzdAo+PiBTcGVha3Vw
QGxpbnV4LXNwZWFrdXAub3JnCj4+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21h
aWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPiBTcGVha3VwQGxpbnV4LXNw
ZWFrdXAub3JnCj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0
aW5mby9zcGVha3VwCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0
cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
