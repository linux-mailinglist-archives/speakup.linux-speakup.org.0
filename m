Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7806E2F3C25
	for <lists+speakup@lfdr.de>; Tue, 12 Jan 2021 23:11:36 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EB6D2380FBB; Tue, 12 Jan 2021 17:11:35 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=MO5rqYG9;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B6D79380BE9;
	Tue, 12 Jan 2021 17:11:35 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 0D130380BA8; Tue, 12 Jan 2021 17:11:34 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id AF91F380AC5
 for <speakup@linux-speakup.org>; Tue, 12 Jan 2021 17:11:33 -0500 (EST)
Received: from darkstar.example.slint
 (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 6CAD0BE2FB
 for <speakup@linux-speakup.org>; Tue, 12 Jan 2021 22:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1610485828; bh=RkVnZ++X93BtVMXyPpXATHYJZA34zFL0a7U2v/vOH7g=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=MO5rqYG9w5OguNin7FyFJpWlY/ltqmAYD+J/HTx9l6Zd+2B3kvmFhfRBeNPeTd8/N
 etv9hhL/hI40TlcK3CrmJIyg5osuCR64HnyrJ3WMe8j5VBbEME2cWh0R2IZqVe4QtP
 6z4/plVME7N06zaexvWVImxFXiV4Cn6P6xAD1AIRi/u4Der5V31zMEpd8gfP9pflBM
 dtShwcux8lLaqd5agtf0ivKJ+UJD1hHZ8UHPOghRO3tmJtJhXeNLkRukmhxFdNnj8N
 GZ1Pvw+ikAzLA7xlIkPs0MF3VkbLszxzUCIdt49/FYKBZos3hyICsPfp6uDUbIGrk8
 10dJ5WZ23k/fQ==
Subject: Re: talkwith vs speak-with messages language
To: speakup@linux-speakup.org
References: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
 <20210111223737.697336-5-samuel.thibault@ens-lyon.org>
 <3101bb04-38f3-9bc2-453d-3da37a50b7d9@slint.fr>
 <ce1ac3fb-16e8-93c5-6271-a8c232f89c8a@slint.fr>
 <20210112001036.o4eq4rrl35m576in@function>
From: Didier Spaier <didier@slint.fr>
Message-ID: <78604202-a5a9-93cd-361c-c4dfd9e083dc@slint.fr>
Date: Tue, 12 Jan 2021 23:11:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20210112001036.o4eq4rrl35m576in@function>
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

CgpMZSAxMi8wMS8yMDIxIMOgIDAxOjEwLCBTYW11ZWwgVGhpYmF1bHQgYSDDqWNyaXTCoDoKPiBJ
cyB0aGlzIHN1cHBvc2VkIHRvIGNvbXBsZXRlbHkgcmVwbGFjZSB0YWxrd2l0aD8KClllcy4gQ2F2
ZWF0IG5vdCBleGFjdGx5IGEgZHJvcC1pbiByZXBsYWNlbWVudCBhcyBpdCBoYXMKYSB3aWRlciBz
Y29wZS4KCj4gUGxlYXNlIHNlZSB3aXRoIHRhbGt3aXRoIHVzZXJzIHdoZXRoZXIgdGhlaXIgbmVl
ZHMgYXJlIGZ1bGxmaWxsZWQgYnkKPiB0aGlzLiAgSSBkb24ndCB0aGluayB3ZSB3YW50IHRvIG1h
aW50YWluIHR3byB0b29scyBkb2luZyB0aGUgc2FtZSB0aGluZy4KCkkgYXNrZWQgb24gdGhlIFNs
aW50IG1haWxpbmcgbGlzdC4gSSBkb24ndCBrbm93IGhvdyB0byBhc2sgdG8Kb3RoZXIgdXNlcnMu
Cgo+PiAJCXNoIC9ldGMvcmMuZC9yYy5lc3BlYWt1cCBzdGFydAo+PiAJCXNsZWVwIDEKPj4gCQlw
cmludGYgIlNob3VsZCBlc3BlYWt1cCBiZSBhbHNvIHN0YXJ0ZWQgYXQgbmV4dCBib290PyBbWS9u
XSAiCj4+IAkJcmVhZCBBTlNXRVIKPiAKPiBTbyBpcyB0aGlzIHN1cHBvc2VkIHRvIGJlIG9ubHkg
cnVuIGludGVyYWN0aXZlbHkgYnkgdXNlcnMsIGFuZCBuZXZlciBieQo+IHNjcmlwdHM/CgpUaGlz
IGlzIHN1cHBvc2VkIHRvIGJlIHJ1biBpbnRlcmFjdGl2ZWx5IGJ5IHVzZXJzIGlmIGFuZCB3aGVu
IHRoZXkgd2FudCAKdG8gc3dpdGNoIHRvL2Zyb206Ci0gbm8gc3BlZWNoCi0gc3BlZWNoIHdpdGgg
ZmVucmlyCi0gc3BlZWNoIHdpdGggZXNwZWFrdXAKLSBzcGVlY2ggd2l0aCBzcGVlY2hkLXVwCi0g
c3BlZWNoIHdpdGggc3BlYWt1cCB1c2luZyBvbmUgb2YgdGhlIGF2YWlsYWJsZSBzeW50aGVzaXpl
cnMKT25seSBhdmFpbGFibGUgb3B0aW9ucyBhcmUgcHJlc2VudGVkCgoKPj4gCQkJY2htb2QgNzU1
IC9ldGMvcmMuZC9yYy5lc3BlYWt1cAo+PiAJCQljaG1vZCA2NDQgL2V0Yy9yYy5kL3JjLnNwZWVj
aGQtdXAKPiAKPiBUaGlzIHNlZW1zIHNsaW50LXNwZWNpZmljLgoKSXQgaXMuIHRoZXNlIGNvbW1h
bmRzIHNob3VsZCBiZSByZXBsYWNlZCBpZiBhbm90aGVyIGluaXQgc3lzdGVtLgoKVGhpcyBzaG91
bGRuJ3QgYmUgZGlmZmljdWx0LCBidXQgSSBoYXZlIHplcm8gZXhwZXJpZW5jZSB3aXRoIG90aGVy
IGluaXQgCnN5c3RlbXMKCkNoZWVycywgRGlkaWVyCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgt
c3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0
aW5mby9zcGVha3VwCg==
