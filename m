Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id BD8492A21EF
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 22:40:07 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5F121380F28; Sun,  1 Nov 2020 16:40:07 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2F159380F25;
	Sun,  1 Nov 2020 16:40:05 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id ABB4A380F13; Sun,  1 Nov 2020 16:40:03 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 894DE380F0E
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 16:40:03 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 9545A919
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 22:40:02 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3docKB0KDrFH for <speakup@linux-speakup.org>;
 Sun,  1 Nov 2020 22:40:02 +0100 (CET)
Received: from function (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr
 [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id E1C5779F
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 22:40:01 +0100 (CET)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kZL4y-009t9X-OJ
 for speakup@linux-speakup.org; Sun, 01 Nov 2020 22:40:00 +0100
Date: Sun, 1 Nov 2020 22:40:00 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup crashes with kernel 5.4.69
Message-ID: <20201101214000.u6al47enhggqputs@function>
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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

RGlkaWVyIFNwYWllciwgbGUgZGltLiAwMSBub3YuIDIwMjAgMjI6Mjg6NDYgKzAxMDAsIGEgZWNy
aXQ6Cj4gTGUgMDEvMTEvMjAyMCDDoCAyMTo1OSwgU2FtdWVsIFRoaWJhdWx0IGEgw6ljcml0wqA6
Cj4gPiBKb2huIENvdmljaSwgbGUgbWFyLiAxMyBvY3QuIDIwMjAgMDQ6MDI6MDkgLTA0MDAsIGEg
ZWNyaXQ6Cj4gPj4gSGkuICBXaGVuIEkganVzdCB0cmllZCB0byBib290IHdpdGgga2VybmVsIDUu
NC42OSwgaXQgZGlkIGNvbWUgdXAsIGJ1dAo+ID4+IHNvb24gY3Jhc2hlZCB3aXRoIGEgbG90IG9m
IGtlcm5lbDogYmFzZCBzY2hlZHVsZSBmcm9tIGlkbGUgdGhyZWFkLgo+ID4gCj4gPiBPaywgSSBz
ZWUgdGhlIGNvbmNlcm4uIFdvdWxkIHlvdSBiZSBhYmxlIHRvIHRyeSB0aGUgYXR0YWNoZWQgcGF0
Y2g/Cj4gCj4gRG9lcyB0aGlzIGlzc3VlIGFmZmVjdC9jYW4gdGhpcyBwYXRjaCBiZSBhcHBsaWVk
IGFnYWluc3QvIDUuNC42Mi81LjQuNzI/CgpZZXMsIG5vdCBtdWNoIGhhcyBjaGFuZ2VkIGluIHRo
ZSA1LjQgc2VyaWVzLgoKPiBJIGFzayBhcyBTbGludCBjdXJyZW50bHkgaW5jbHVkZXMgNS40LjYy
IGJ1dCBJIHdhcyBhYm91dCB0byB1cGdyYWRlIHRvIDUuNS43Mgo+IChhbmQgbm8gU2xpbnQgdXNl
ciBjb21wbGFpbmVkIHNvIGZhci4gTWF5YmUgb25seSBzb21lIHVzZXMgY2FzZXMgb3IKPiBoYXJk
IHN5bnRocyBhcmUgaW4gY29uY2Vybj8pCgpJdCdzIHNwZWNpZmljIHRvIHRoZSBsdGxrIGFuZCBz
cGtvdXQgc3ludGhzLgoKU2FtdWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5v
cmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVh
a3VwCg==
