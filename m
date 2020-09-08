Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 61A7C260E2C
	for <lists+speakup@lfdr.de>; Tue,  8 Sep 2020 10:56:06 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0505E1C0706; Tue,  8 Sep 2020 04:56:04 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=DCzjVcZV;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C66CB1C0748;
	Tue,  8 Sep 2020 04:54:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 706B71C0706; Tue,  8 Sep 2020 04:54:43 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id 9613B1C0135
 for <speakup@linux-speakup.org>; Tue,  8 Sep 2020 04:54:38 -0400 (EDT)
Received: from darkstar.machine.fr (static-176-175-66-67.ftth.abo.bbox.fr
 [176.175.66.67])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 3BE8CBE797;
 Tue,  8 Sep 2020 09:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1599551633; bh=7RR5nWAlArTjIvascRWKKvnYm/hhxJtG+C2z51NsurQ=;
 h=From:Subject:To:References:Date:In-Reply-To:From;
 b=DCzjVcZVT3hQUfcIgZk26utBAHJlHhdrHg8mEdlxZbGWxDkS76THI4hITfUnOSLCQ
 hel2A/iNNktbfdZl1iiR0t+0ZXqaIhgZai6Vatln221HdhdUTIlLOLhfWPWeOi2Lvk
 +aFWnsRHgDBCXZ1/jESDGJJ7YPD+GLAW2VqNDM1guq0ng5sA94vEbo+RnLxc+nFpBF
 E7xO018yIeM9N1n76wuB94+/LOoN5XltFiCLAxi4lBsBfcf/kvjTl4VkqO8wOybT6T
 NDZR1S/566bJurZeEwQW0nMgKIl8q/8W+QVwBSbHu7cNs0G+K0oRpHpV4javgQMKz5
 xghQZoNpkztWg==
From: Didier Spaier <didier@slint.fr>
Subject: Re: [slint] Re: Fwd: New kernel, automatic handling of kernel
 upgradess.
To: slint@freelists.org,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <f0c4a735.76bc.4cdd.aabc.76c4d1d3aab8@samobile.net>
Message-ID: <68157db2-1b90-f216-47ea-e2239649f737@slint.fr>
Date: Tue, 8 Sep 2020 10:54:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <f0c4a735.76bc.4cdd.aabc.76c4d1d3aab8@samobile.net>
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

SGkgVG9ueSwKCkNDaW5nIHRoaXMgYW5zd2VyIHRvIHRoZSBzcGVha3VwIG1haWxpbmcgbGlzdC4K
CkBzcGVha3VwIGxpc3Q6IHRoZSByZXBvcnQgaXMgYWZ0ZXIgdXBncmFkaW5nIGEga2VybmVsIGZy
b20gNC4xOS42NyB0byA1LjQuNjIuCkRpZCBhbnlvbmUgb2JzZXJ2ZWQgYSBzaW1pbGFyIGJlaGF2
aW9yPwoKVGhlIGlzc3VlIHdpdGggdGhlIGxpbmUgaW4gcmMubG9jYWwgaW5lZmZlY3RpdmUgYXQg
Ym9vdCB0aW1lIGlzIGluZGVlZCB3ZWlyZC4KCQpUaGlzIGZpbGUgaXMgZXhlY3V0ZWQgYXQgdGhl
IHZlcnkgZW5kIG9mIHRoZSBib290aW5nIHNlcXVlbmNlLCBzbyBJIHByZXR0eQptdWNoIGRvdWJ0
IHRoYXQgc3lzZnMgYmUgbm90IHlldCBhdmFpbGFibGUuCgpUbyBjaGVjayBJIGRpZCB0aGlzIChh
biB5b3UgY2FuIGRvIGl0IHRvbyk6CkkgaW5zZXJ0ZWQgdGhlIGZvbGxvd2luZyBsaW5lIGluIC9l
dGMvcmMuZC9yYy5sb2NhbDoKZWNobyAidGhlIGNvbW1hbmQgcnVuIGJ5IHJjLmxvY2FsIHNob3Vs
ZCBiZSBleGVjdXRlZCBub3cuIiA+IC9kZXYva21zZwp0aGVuIG1hZGUgZXhlY3V0YWJsZSByYy5s
b2NhbCB0eXBpbmcgImNobW9kIDc1NSAvZXRjL3JjLmQvcmMubG9jYWwiCgpUaGVuIGFmdGVyIGEg
cmVib290IEkgdHlwZWQgYXMgcm9vdDoKZG1lc2d8Z3JlcCByYy5sb2NhbApUaGUgb3V0cHV0IHdh
czoKWyAgIDE3LjEyODc4NF0gdGhlIGNvbW1hbmQgcnVuIGJ5IHJjLmxvY2FsIHNob3VsZCBiZSBl
eGVjdXRlZCBub3cuCgpTbyB5b3VyIGNvbW1hbmQgd291bGQgaGF2ZSBiZWVuIGV4ZWN1dGVkIDE3
IHNlY29uZHMgYWZ0ZXIgYm9vdGluZy4KCkluY2lkZW50YWxseSwgaW5zdGVhZCBvZiBpbmNsdWRp
bmcgdGhlIGVjaG8gY29tbWFuZCBpbiByYy5sb2NhbCB5b3UgY291bGQsIG9uY2UKeW91ciBzcGVh
a3VwIHNldHRpbmdzIGFyZSBkb25lIHRvIHlvdXIgbGlraW5nLCBqdXN0IHR5cGUgYXMgcm9vdDoK
c3BlYWt1cC1zYXZlCgpUaGVuIHRoZXNlIHNldHRpbmdzIHNob3VsZCBiZSByZXN0b3JlZCBhZnRl
ciBuZXh0IGJvb3QuCgpUaGV5IGFyZSBzdG9yZWQgaW5kZXBlbmRlbnRseSBmb3IgZWFjaCBoYXJk
IHN5bnRoZXNpemVyIGFuZCB0aGUgc29mdCBvbmUuCgpEb2VzIHRoaXMgd29yayBmb3IgeW91PwoK
Q2hlZXJzLApEaWRpZXIKCkxlIDA4LzA5LzIwMjAgw6AgMDI6MDgsIHRvbnkgc2V0aCBhIMOpY3Jp
dMKgOgo+IEhleWEgdGhlcmUgYW5kIGdvb2QgZXZlbmluZyEKPiBXZWxsLCB5YSB0b2xkIG1lIHRv
IGluc3RhbGwgdGhlIGtlcm5lbCBhbmQgc2VlIHdoYXQgYnJlYWtzLCBhbmQgSSBkaWQuCj4gVGhl
IGtlcm5lbCB1cGdyYWRlIHdlbnQgZmluZSwgYW5kIGFsbCBzZWVtcyBmaW5lLCBleGNlcHQgZm9y
IGEgdGlueSBidXQgaW1wb3J0YW50IHRoaW5nLgo+IEkgaGF2ZSBhbiAvZXRjL3JjLmQvcmMubG9j
YWwgZmlsZSB3aGljaCB0dXJucyBvZmYgZWNob2luZyBvZiBjaGFyYWN0ZXJzIHR5cGVkIGluIHRo
ZSBjb25zb2xlIHdoZW4gSSB1c2UgU3BlYWt1cC4KPiBUaGUgbGluZSBpbiB0aGUgZmlsZSBpcyB0
aGlzOgo+IGVjaG8gMCA+IC9zeXMvYWNjZXNzaWJpbGl0eS9zcGVha3VwL2tleV9lY2hvCj4gCj4g
VXAgdW50aWwgdGhlIHVwZ3JhZGUgdGhpcyB3b3JrZWQganVzdCBmaW5lLCBidXQgYWZ0ZXJ3YXJk
LCBpdCBkb2Vzbid0LiBDaGFyYWN0ZXJzIGFyZSBlY2hvZWQgYWdhaW4sIHVubGVzcyBJIHJ1biBh
cyByb290Ogo+IC9ldGMvcmMuZC9yYy5sb2NhbAo+IFRoaXMgZml4ZXMgdGhlIHByb2JsZW0gdW50
aWwgbmV4dCByZWJvb3QuCj4gSnVzdCBjdXJpb3VzIGhvdyBJIGNvdWxkIGZpeCB0aGlzLCBvciBp
cyBpdCB0aGF0IHRoZSBzeXNmcyBpc24ndCBiZWluZyBjcmVhdGVkIGVhcmx5IGVub3VnaCBmb3Ig
dGhlIHJjLmxvY2FsIGZpbGUgdG8gd29yayBvbiB0aGUga2V5X2VjaG8gZW50cnk/Cj4gVGhhbmtz
IG11Y2ggYXMgYWx3YXlzIHRob3VnaCwgb3RoZXIgdGhlbiB0aGF0IEkndmUgbm90IGhhZCBhbnkg
cHJvYmxlbXMsIGFuZCB0aGUgYnJhaWxsZSBkaXNwbGF5IHdvcmtzIGZpbmUgYXMgd2VsbC4KPiBJ
IGJyaW5nIHRoYXQgdXAgYmVjYXVzZSB5b3UgbWVudGlvbmVkIFBoaWxsaXAgaGF2aW5nIHRoZSBi
cmFpbGxlIGRpc3BsYXkgcHJvYmxlbS4KPiBJJ20gdXNpbmcgYW4gSW5jZXB0b3IgQnJhaWxsZSBN
ZSBpbiB1c2IgbW9kZS4KPiBUaGFua3MgYWdhaW4uLi4KPiBUYWtlIGNhcmUuLi4gQ2hlZXJlbyEK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFr
dXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNw
ZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
