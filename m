Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E889D2DC867
	for <lists+speakup@lfdr.de>; Wed, 16 Dec 2020 22:38:31 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5940B380F54; Wed, 16 Dec 2020 16:38:31 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 27462380F27;
	Wed, 16 Dec 2020 16:38:30 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5536F380C14; Wed, 16 Dec 2020 16:38:29 -0500 (EST)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3A461380972
 for <speakup@linux-speakup.org>; Wed, 16 Dec 2020 16:38:29 -0500 (EST)
Received: by server2.shellworld.net (Postfix, from userid 1005)
 id 89B54621CE3; Wed, 16 Dec 2020 21:37:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by server2.shellworld.net (Postfix) with ESMTP id 85D1F620216
 for <speakup@linux-speakup.org>; Wed, 16 Dec 2020 16:37:55 -0500 (EST)
Date: Wed, 16 Dec 2020 16:37:55 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Efficiently using terminal with screenreader
In-Reply-To: <20201216130002.GA5313@rednote.net>
Message-ID: <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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

b3V0IG9mIGN1cmlvc2l0eSwgZG9lcyBmZW5yaXIgd29yayB3aXRoIGFueSBkZWN0YWxrIGhhcmR3
YXJlPwpLYXJlCgoKCk9uIFdlZCwgMTYgRGVjIDIwMjAsIEphbmluYSBTYWprYSB3cm90ZToKCj4g
SSBhZ3JlZSB3aXRoIHRoaXMgYWR2aWNlLiBIb3dldmVyLCBnZXR0aW5nIGJvdGggZW52aXJvbm1l
bnRzIGZ1bmN0aW9uCj4gd2l0aCBzcGVlY2ggY291bGQgcHJvdmUgdG8gYmUgYSBjaGFsbGVuZ2Ug
b24geW91ciBoYXJkd2FyZS4KPgo+IFNwZWVjaCBEaXNwYXRjaGVyIGRvZXNuJ3QgcGxheSB3aXRo
IFNwZWFrdXAuIFRoZXJlIGFyZSBvdGhlcgo+IGNvbXBsaWNhdGlvbnMgdGhhdCBtYXksIG9yIG1h
eSBub3QgcHJvdmUgcHJvYmxlbWF0aWNhbC4KPgo+IFlvdXIgYmVzdCBiZXQgbWlnaHQgYmUgRmVu
cmlyLgo+Cj4gTXkgY3VycmVudCBzb2x1dGlvbiBpcyBhcyBmb2xsb3dzOgo+Cj4gU3BlYWt1cCB1
c2luZyBlc3BlYWsgd2l0aCB0aGUgZXNwZWFrdXAgY29ubmVjdG9yLiBOb3RlIHRoaXMgaXMgdGhl
IG9sZAo+IGVzcGVhaywgbm90IGVzcGVhay1uZy4KPgo+IE9yY2Egd2l0aCBTcGVlY2gtRGlzcGF0
Y2hlciB1c2luZyBSSCBWb2ljZS4KPgo+IEZZSTogSSdtIG9uIGEgZnVsbHkgdXBkYXRlZCBBcmNo
Lgo+Cj4gQmVzdCwKPgo+IEphbmluYQo+Cj4gWmFjaGFyeSBLbGluZSB3cml0ZXM6Cj4+IEhpLAo+
Pgo+PiBUbyBiZSBwZXJmZWN0bHkgaG9uZXN0LCBJIHJlY29tbWVuZCB1c2luZyBTcGVha3VwIGZv
ciBnb29kIHRlcm1pbmFsIHN1cHBvcnQuIE9yY2EgaXMgcmF0aGVyIHN1Yi1wYXIgaW4gdGhpcyBy
ZWdhcmQsIGFuZCBTcGVha3VwIHdhcyBkZXNpZ25lZCB0byBmdWxseSBzdXBwb3J0IGNvbW1hbmQt
bGluZSBvdXRwdXQgZnJvbSB0aGUgc3RhcnQuCj4+IEJlc3QsCj4+IFphY2suCj4+Cj4+PiBPbiBE
ZWMgMTQsIDIwMjAsIGF0IDEwOjUyIEFNLCBSZWVjZSBPJ0JyeWFuIDxyZWVjZS5vYnJ5YW5AaWNs
b3VkLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gSGVsbG8sCj4+Pgo+Pj4gSeKAmW0gaGF2aW5nIHRyb3Vi
bGUgZWZmaWNpZW50bHkgYWNjZXNzaW5nIG91dHB1dHMgZnJvbSB0ZXJtaW5hbCBpbiBPcmNhLiBJ
IG5lZWQgYSBmdWxseSBmdW5jdGlvbmluZyBzY3JlZW4gcmVhZGVyLCBpcyB0aGVyZSBhbiBlYXN5
IHdheSB0byBuYXZpZ2F0ZSBsaW5lIGJ5IGxpbmUgb2Ygb3V0cHV0IGZyb20gdGVybWluYWwgaW4g
ZXNwZWFrdXAgb3Igb3JjYT8KPj4+Cj4+PiBUaGFuayB5b3UsCj4+Pgo+Pj4gLVJlZWNlCj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gU3BlYWt1
cCBtYWlsaW5nIGxpc3QKPj4+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4+IGh0dHA6Ly9s
aW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+Pgo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBTcGVha3Vw
IG1haWxpbmcgbGlzdAo+PiBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4+IGh0dHA6Ly9saW51
eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+Cj4gLS0gCj4K
PiBKYW5pbmEgU2Fqa2EKPiBodHRwczovL2xpbmtlZGluLmNvbS9pbi9qc2Fqa2EKPgo+IExpbnV4
IEZvdW5kYXRpb24gRmVsbG93Cj4gRXhlY3V0aXZlIENoYWlyLCBBY2Nlc3NpYmlsaXR5IFdvcmtn
cm91cDoJaHR0cDovL2ExMXkub3JnCj4KPiBUaGUgV29ybGQgV2lkZSBXZWIgQ29uc29ydGl1bSAo
VzNDKSwgV2ViIEFjY2Vzc2liaWxpdHkgSW5pdGlhdGl2ZSAoV0FJKQo+IENvLUNoYWlyLCBBY2Nl
c3NpYmxlIFBsYXRmb3JtIEFyY2hpdGVjdHVyZXMJaHR0cDovL3d3dy53My5vcmcvd2FpL2FwYQo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGVh
a3VwIG1haWxpbmcgbGlzdAo+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPiBodHRwOi8vbGlu
dXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcg
bGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9j
Z2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
