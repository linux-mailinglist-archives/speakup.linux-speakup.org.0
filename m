Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E318D2E0284
	for <lists+speakup@lfdr.de>; Mon, 21 Dec 2020 23:30:32 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7DE9E380FA9; Mon, 21 Dec 2020 17:30:32 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=qmPbog7S;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 49B01380F4E;
	Mon, 21 Dec 2020 17:30:31 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3102E380F3B; Mon, 21 Dec 2020 17:30:30 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id 970FA380F21
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 17:30:29 -0500 (EST)
Received: from darkstar.example.slint
 (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 72AFEBE2C7
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 22:29:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1608586167; bh=YJDyaVn/JElLycBfOrviQvaEVUbGRnVLymNqxxUxWfU=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=qmPbog7SULhSvXDV7NlEeVXzYlTWnKvafCc0tCLlxGpLRwfFtwk6RKFLcr1MV+2QC
 w3oKrUHGX0ptlpJ6ZEFNMtTfq6vTa8elaPPvY3WPWHg8W/1QW2miMR9vChkj24XqXM
 nDo0pDnuEvHNj7XzgZVTzvUtq+wXw3NCbmsqNonG2HC3J1o/kNPzQxhI4BDqjQmEvV
 FL3iFnGVbAh+64sQehWKiPeypnfx9muvBuetbM02syIH1IPg6zeT0ZqMIsntZbnJjR
 urQn/G/usUcL6x6qb8NCTge+pnqUmubUBshmiR2RhE3zavZPqgOmueHjvGUifxdcTr
 LT2XJj1sRlvyw==
Subject: Re: Hosting speakup on freedesktop?
To: speakup@linux-speakup.org
References: <20201221214457.hu7cg3ino7yqqswn@function>
 <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>
 <1acbbe44-f099-a08b-e788-cc64496eee88@poczta.onet.pl>
From: Didier Spaier <didier@slint.fr>
Message-ID: <7b4f6ec0-7519-5ab8-5569-40372aee9407@slint.fr>
Date: Sun, 20 Dec 2020 23:30:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <1acbbe44-f099-a08b-e788-cc64496eee88@poczta.onet.pl>
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

SSBkb24ndCBzZWUgYW4gaXNzdWUgdXNpbmcgZ2l0aHViLiBSZWNlbnRseSBNaWNyb3NvZnQgc2hv
d2VkIGludGVyZXN0CmZvciBMaW51eCBhbmQgb3BlbiBzb3VyY2U6ClRoZXkgYXJlIGEgbWVtYmVy
IG9mIHRoZSBPcGVuIEludmVudGlvbiBOZXR3b3JrLCBhbG9uZ3NpZGUgTGludXgKZGlzdHJpYnV0
aW9ucyBpbmNsdWRpbmcgU2xpbnQgOi0pIHNvIHRoZXkgc2lnbmVkIGFuIGFncmVlbWVudCBsaWtl
CnRoaXMgb25lIGh0dHA6Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50LTE0LjIuMS9h
Z3JlZW1lbnQucGRmCndoaWNoIHByb3RlY3QgYWxsIG1lbWJlcnMuClJlY2VudGx5IHRoZXkgZGlk
IHRoZWlyIGJlc3QgdG8gcHJvdGVjdCB5b3V0dWJlLWRsIGZyb20gYSBETUNBIHRha2Vkb3duOgpo
dHRwczovL3lvdXR1YmUtZGwub3JnLwpodHRwczovL2dpdGh1Yi5ibG9nLzIwMjAtMTEtMTYtc3Rh
bmRpbmctdXAtZm9yLWRldmVsb3BlcnMteW91dHViZS1kbC1pcy1iYWNrLwoKQWRkaXRpb25hbGx5
IEkgcHJlZmVyIHRoZSBpbnRlcmZhY2Ugb2YgZ2l0aHViIG92ZXIgZ2l0bGFiJ3MKCkluIHRoZSAo
dW5saWtlbHksIEkgdGhpbmspIGV2ZW50IHRoYXQgZ2l0aHViIGJlIHRha2VuIGRvd24sIGl0IHdp
bGwgCnN0aWxsIGJlIHBvc3NpYmxlIHRvIHRpbWUgdG8gZmluZCBhbm90aGVyIGhvbWUgZm9yIHNw
ZWFrdXAsIEkgdGhpbmsuCgpKdXN0IG15IHR3byBldXJvIGNlbnRzLgoKQ2hlZXJzLCBEaWRpZXIK
Ck9uIDIxLzEyLzIwMjAgMjM6MTIsIE1pY2hhxYIgWmVnYW4gd3JvdGU6Cj4gSnVzdCBvbmUgbm90
ZTogaXQgbWF5IG5vdCBiZSBpbXBvcnRhbnQgZW5vdWdoLCBidXQgd2hhdGV2ZXIgdGhlIHByb2Js
ZW0KPiBtYXkgb3IgbWF5IG5vdCBiZSB3aXRoIGdpdGh1YiwgaXQgaXMgZmFyIG1vcmUgYWNjZXNz
aWJsZSBhcyBhIHNpdGUgdGhhbgo+IGdpdGxhYi4gSSBkb24ndCB0aGluayBnaXRsYWIgZml4ZWQg
YWNjZXNzaWJpbGl0eSwgZXZlci4KPiAKPiBXIGRuaXUgMjEuMTIuMjAyMCBvwqAyMzowMywgS2ly
ayBSZWlzZXIgcGlzemU6Cj4+IEhpIFNhbXVlbCBldCBhbDogVGhhdCB3b3JrcyBmaW5lIGZvciBt
ZS4gSSBoYXZlbid0IHJlYWxseSBoYWQgbXVjaCB0bwo+PiBkbyB3aXRoIGRldmVsb3BtZW50IHdv
cmsgb24gc3BlYWt1cCBmb3IgYSBsb25nZyB0aW1lLiBZb3UgaGFkIGFuCj4+IGFjY291bnQgb24g
bXkgc2VydmVyIGJ1dCBJIHNlZSBpdCBhcHBlYXJzIHRvIGhhdmUgZGlzYXBwZWFyZWQgc29tZXRp
bWUKPj4gb3ZlciB0aGUgeWVhcnMgZm9yIG5vIHJlYXNvbiBJIGNhbiB0aGluayBvZi4KPj4KPj4g
IMKgIEtpcmsKPj4KPj4gT24gTW9uLCAyMSBEZWMgMjAyMCwgU2FtdWVsIFRoaWJhdWx0IHdyb3Rl
Ogo+Pgo+Pj4gSGVsbG8sCj4+Pgo+Pj4gQ3VycmVudGx5IHdlIGhhdmUgYW4gb2xkIGdpdCByZXBv
c2l0b3J5IG9uCj4+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvc3BlYWt1cC5naXQgLCB0aGF0
IHdhcyBub3QgdXBkYXRlZCBzaW5jZQo+Pj4gfjIwMTMuwqAgSSBkb24ndCBzZWVtIHRvIGhhdmUg
cHVzaCBhY2Nlc3MgdG8gaXQuIFdlIGFsc28gaGF2ZSBzb21lCj4+PiBidWcgdHJhY2tpbmcgb24g
aHR0cHM6Ly9naXRodWIuY29tL2J5dGVmaXJlL3NwZWFrdXAvaXNzdWVzIC4gVGhpcwo+Pj4gbG9v
a3MgcXVpdGUgc2NhdHRlcmVkLCBhbmQgZ2l0aHViLmNvbSBkZXBlbmRzIG9uIHRoZSBnb29kIHdp
bGwKPj4+IG9mIE1pY3Jvc29mdC4gSSdtIHRoaW5raW5nIHRoYXQgd2UgY291bGQgaGF2ZSBzcGVh
a3VwIGhvc3RlZCBvbgo+Pj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnIChmcmVlZGVz
a3RvcCBpcyBhICJjb21wbGV0ZWx5IHZvbHVudGVlcgo+Pj4gb3JnYW5pc2F0aW9uIHdpdGggbm8g
Y29ycG9yYXRlIGJhY2tpbmcgb3IgZnVuZGluZyBzdHJlYW0iLCBub3RhYmx5IHBhcnQKPj4+IG9m
IFgub3JnKS4gV2UgY2FuIGtlZXAgdGhlIG1haWxpbmcgbGlzdCBhcyBpdCBpcywgYnV0IHdlIGNv
dWxkIG1vdmUgdGhlCj4+PiBnaXQgcmVwb3NpdG9yeSBhbmQgdGhlIGlzc3VlIHRyYWNraW5nIHRo
ZXJlLCB3aGVyZSBpdCBpcyBlYXN5IHRvIGNyZWF0ZQo+Pj4gYWNjb3VudHMsIGdpdmUgcmlnaHRz
LCBmb2xsb3ctdXAgb24gYnVncyBldGMuwqAgSSBoYXZlIG1hZGUgYSByZXF1ZXN0IGZvcgo+Pj4g
YSBzcGVha3VwIGdyb3VwIGNyZWF0aW9uIHRvIGZyZWVkZXNrdG9wIHBlb3BsZS4KPj4+Cj4+PiBU
aGUgaWRlYSBpcyB0aGF0IG9uIHRoYXQgcmVwb3NpdG9yeSB3ZSBjb3VsZCBob3N0IHRoZSBsYXRl
c3QgdmVyc2lvbiBvZgo+Pj4gdGhlIHNwZWFrdXAgc291cmNlIGNvZGUsIHNvIHRoYXQgcGVvcGxl
IGNhbiB0cnkgaXQgd2l0aG91dCBoYXZpbmcgdG8KPj4+IHBhdGNoIGFuZCByZWJ1aWxkIHRoZWly
IHdob2xlIGtlcm5lbCBldGMuCj4+Pgo+Pj4gU2FtdWVsCj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4+
IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9j
Z2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+Pj4KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4g
U3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dp
LWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPj4KPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4gU3Bl
YWt1cEBsaW51eC1zcGVha3VwLm9yZwo+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJp
bi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVh
a3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZv
L3NwZWFrdXAK
