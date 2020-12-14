Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 079C22DA244
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 22:07:34 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8C727380F2D; Mon, 14 Dec 2020 16:07:33 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9DE4B380F28;
	Mon, 14 Dec 2020 16:07:31 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 22C15380EDA; Mon, 14 Dec 2020 16:07:30 -0500 (EST)
Received: from wmauth4.doit.wisc.edu (wmauth4.doit.wisc.edu [144.92.197.145])
 by befuddled.reisers.ca (Postfix) with ESMTPS id D5C7F38097A
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 16:07:29 -0500 (EST)
Received: from [192.168.0.14]
 (108-85-191-186.lightspeed.mdsnwi.sbcglobal.net [108.85.191.186])
 by smtpauth4.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.0.2.4.20190812 64bit (built Aug 12
 2019)) with ESMTPSA id <0QLC02IQRLCEA340@smtpauth4.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Mon, 14 Dec 2020 15:07:27 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[108.85.191.186]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-4, Version=6.4.7.2805085,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2020.12.14.210018,
 AntiVirus-Engine: 5.79.0, AntiVirus-Data: 2020.11.19.5790001,
 SenderIP=[108.85.191.186]
Subject: Re: Efficiently using terminal with screenreader
From: John G Heim <jheim@math.wisc.edu>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>, 
 Reece O'Bryan <reece.obryan@icloud.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <cdfd1421-a630-e33f-8590-db788da63f20@math.wisc.edu>
Message-id: <82a08742-289f-ad0c-2b22-cfa57150f5da@math.wisc.edu>
Date: Mon, 14 Dec 2020 15:07:26 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-version: 1.0
In-reply-to: <cdfd1421-a630-e33f-8590-db788da63f20@math.wisc.edu>
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

Q29ycmVjdGlvbi4gVGhlIGNvbW1hbmQgdG8gcGFzdGUgdGV4dCBpbnRvIGdub21lLXRlcm1pbmFs
IGlzIApjb250cm9sK3NoaWZ0K3YgYXMgaW4gdmljdG9yLiBOb3QgY29udHJvbCtzaGlmdCtwIGFz
IGluIHBvcHBhLiBJIGRvbid0IAprbm93IHdoeSBJIG1hZGUgdGhhdCBlcnJvci4gSSBkbyB0aGF0
IGxpa2UgYSBtaWxsaW9uIHRpbWVzIGV2ZXJ5IGRheSBpbiAKZ25vbWUtdGVybWluYWwuCgoKT24g
MTIvMTQvMjAgMzowMCBQTSwgSm9obiBHIEhlaW0gd3JvdGU6Cj4gSSBhbSBhIGxpbnV4IHN5cyBh
ZG1pbiBmb3IgdGhlIE1hdGggZGVwYXJ0bWVudCBhdCB0aGUgVW5pdmVyc2l0eSBvZiAKPiBXaXNj
b25zaW4uIEkgdXNlIGdub21lLXRlcm1pbmFsIGZvciBqdXN0IGFib3V0IGV2ZXJ5dGhpbmcgSSBk
by4gSWYgeW91IAo+IHR5cGUgYW4gbHMgY29tbWFuZCwgZm9yIGV4YW1wbGUsIHlvdSBjYW4gbGlz
dGVuIHRvIHRoZSByZXN1bHRzIHVzaW5nIHRoZSAKPiBudW1wYWQga2V5cy7CoCBTbyB0aGUgbnVt
cGFkIDgga2V5IG1vdmVzIHlvdSB1cCBvbmUgbGluZS4gVG8gZ2V0IHRvIHRoZSAKPiB0b3Agb2Yg
dGhlIGRpc3BsYXkgeW91IGNhbiBwcmVzcyBpbnNlcnQrNyBhbmQgdGhlbiB3b3JrIHlvdXIgd2F5
IGRvd24gYnkgCj4gcHJlc3NpbmcgdGhlIG51bWJwYWQgMiBrZXkuIE9uY2UgeW91IGhhdmUgdGhl
IG9yY2EgY3Vyc29yIG9uIHNvbWUgdGV4dCwgCj4geW91IGNhbiB1c2UgdGhlIG51bXBhZCBrZXlz
IHRvIGRvIHRoaW5ncyBsaWtlIHJlYWQgYSB3b3JkLCBzcGVsbCBpdCwgCj4gc2VsZWN0IGl0LCBl
dGMuCj4gCj4gSW4gZ25vbWUtdGVybWluYWwgdG8gc2VsZWN0IGEgd29yZCwgeW91IGNhbiBoaXQg
dGhlIG51bXBhZCBzbGFzaCBrZXkgCj4gdHdpY2UgdG8gc2ltdWxhdGUgYSBkb3VibGUgY2xpY2su
IEEgdHJpcGxlIGNsaWNrIHNlbGVjdHMgdGhlIGVudGlyZSAKPiBsaW5lLiBZb3UgY2FuIHRoZW4g
Y29weS9wYXN0ZSB0aGUgd29yZCBvciBsaW5lIGludG8gYSB3aW5kb3cuCj4gCj4gUGVyaGFwcyBh
biBleGFtcGxlIHdvdWxkIGhlbHAuIFN1cHBvc2UgeW91IHdhbnRlZCB0byBpbnN0YWxsIGEgcGFj
a2FnZS4gCj4gdGhhdCBhbGxvd3MgeW91IHRvIGRvd25sb2FkIGF1ZGlvIGZpbGVzIGZyb20geW91
dHViZS4gSGVyZSdzIHdoYXQgeW91J2QgCj4gZG8gb24gYSBEZWJpYW4vVWJ1bnR1IHN5c3RlbToK
PiAKPiAxLiBPcGVuIGEgdGVybWluYWwgd2luZG93IGJ5IHByZXNzaW5nIGFsdCtjb250cm9sK3Qu
wqAgSWYgdGhpcyBkb2Vzbid0IAo+IHdvcmssIHlvdSBjYW4gcHJlc3MgYWx0K2YyIHRvIG9wZW4g
YSBydW4gZGlhbG9nIGJveCBhbmQgdHlwZSAKPiAiZ25vbWUtdGVybWluYWwiLgo+IAo+IDIuIFNl
YXJjaCBmb3IgdGhlIHBhY2thZ2UgYnkgdHlwaW5nICJhcHQtY2FjaGUgc2VhcmNoIHlvdXR1YmUi
Lgo+IAo+IDMuIFByZXNzIHRoZSBudW1wYWQgOCBrZXkgdW50aWwgeW91IGhlYXIgdGhlIG5hbWUg
b2YgdGhlIHBhY2thZ2UgeW91IAo+IHdvdWxkIGxpa2UgdG8gaW5zdGFsbC4gSW4gdGhpcyBleGFt
cGxlLCBpdCBpcyB5b3V0dWJlLWRsLiBVc2UgdGhlIG51bXBhZCAKPiA0LCA1LCBhbmQgNiBrZXlz
IHRvIG1vdmUgbGVmdCBhbmQgcmlnaHQgbWFraW5nIHN1cmUgdGhlIG9yY2EgY3Vyc29yIGlzIAo+
IG9uIHRoZSBuYW1lIG9mIHRoZSBwYWNrYWdlIHlvdSB3aXNoIHRvIGluc3RhbGwKPiAKPiA0LiBQ
cmVzcyB0aGUgbnVtcGFkIHNsYXNoa2V5IHR3aWNlIHF1aWNrbHkuIFRoaXMgc2hvdWxkIHNlbGVj
dCB0aGUgbmFtZSAKPiBvZiB0aGUgcGFja2FnZS4KPiAKPiA1LiBQcmVzcyBjb250cm9sK3NoaWZ0
K2MgdG8gY29weSB0aGUgc2VsZWN0ZWQgdGV4dCB0byB0aGUgY2xpcGJvYXJkLiAKPiBOb3RlIHRo
YXQgdGhpcyBpcyBub3QgYW4gb3JjYSBjb21tYW5kLiBJdCdzIGEgc3RhbmRhcmQgZ25vbWUtdGVy
bWluYWwgCj4gY29tbWFuZC4gT3RoZXIgdGVybWluYWwgcHJvZ3JhbXMgbWlnaHQgdXNlIHRoZSBt
b3JlIHN0YW5kYXJkIGNvbnRyb2wrYy4KPiAKPiA2LiBFbnRlciBhIGNvbW1hbmQgdG8gaW5zdGFs
bCB0aGUgcGFja2FnZS4gVHlwZSAic3VkbyBhcHQtZ2V0IGluc3RhbGwgIiAKPiBhbmQgdGhlbiBw
cmVzcyBjb250cm9sK3NoaWZ0K3AgdG8gcGFzdGUgdGhlIHBhY2thZ2UgbmFtZSBpbnRvIHRoZSAK
PiBjb21tYW5kLiBQcmVzcyBlbnRlciBhbmQgaXQgc2hvdWxkIHN0YXJ0IHRoZSBpbnN0YWxsYXRp
b24uCj4gCj4gSWYgdGhlcmUgaXMgYSB3YXkgdG8gc2VsZWN0IHRleHQgZnJvbSAyIG9yIDMgbGlu
ZXMsIEkgZG8gbm90IGtub3cgaXQuIElmIAo+IEkgbmVlZCB0byBkbyB0aGF0LCBJIGFsd2F5cyBz
ZWxlY3QgYWxsIHdpdGggY29udHJvbCtzaGlmdCthLCBwcmVzcyAKPiBjb250cm9sK3NoaWZ0K2Mg
dG8gY29weSBhbGwgdGhlIHRleHQgaW50byB0aGUgY2xpcGJvYXJkLCBhbmQgdGhlbiBwYXN0ZSAK
PiBpdCBpbnRvIGEgdGV4dCBlZGl0b3IuIFRoZXJlIEkgY2FuIHNlbGVjdCBqdXN0IHRoZSBjaGFy
YWN0ZXJzIEkgd2FudC4KPiAKPiBPbiAxMi8xNC8yMCAxMjo1MiBQTSwgUmVlY2UgTydCcnlhbiB3
cm90ZToKPj4gSGVsbG8sCj4+Cj4+IEnigJltIGhhdmluZyB0cm91YmxlIGVmZmljaWVudGx5IGFj
Y2Vzc2luZyBvdXRwdXRzIGZyb20gdGVybWluYWwgaW4gCj4+IE9yY2EuIEkgbmVlZCBhIGZ1bGx5
IGZ1bmN0aW9uaW5nIHNjcmVlbiByZWFkZXIsIGlzIHRoZXJlIGFuIGVhc3kgd2F5IAo+PiB0byBu
YXZpZ2F0ZSBsaW5lIGJ5IGxpbmUgb2Ygb3V0cHV0IGZyb20gdGVybWluYWwgaW4gZXNwZWFrdXAg
b3Igb3JjYT8KPj4KPj4gVGhhbmsgeW91LAo+Pgo+PiAtUmVlY2UKPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QK
Pj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcv
Y2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3Bl
YWt1cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmlu
L21haWxtYW4vbGlzdGluZm8vc3BlYWt1cApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFr
dXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8v
c3BlYWt1cAo=
