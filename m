Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7CD8F2DA230
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 22:00:22 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F3934380FAD; Mon, 14 Dec 2020 16:00:21 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 161C5380F28;
	Mon, 14 Dec 2020 16:00:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5DF0D380E96; Mon, 14 Dec 2020 16:00:19 -0500 (EST)
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 46A43380967
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 16:00:19 -0500 (EST)
Received: from [192.168.0.14]
 (108-85-191-186.lightspeed.mdsnwi.sbcglobal.net [108.85.191.186])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.0.2.4.20190812 64bit (built Aug 12
 2019)) with ESMTPSA id <0QLC001OVL0FQB70@smtpauth3.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Mon, 14 Dec 2020 15:00:16 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[108.85.191.186]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-3, Version=6.4.7.2805085,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2020.12.14.205117,
 AntiVirus-Engine: 5.79.0, AntiVirus-Data: 2020.12.13.5790000,
 SenderIP=[108.85.191.186]
Subject: Re: Efficiently using terminal with screenreader
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>, 
 Reece O'Bryan <reece.obryan@icloud.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
From: John G Heim <jheim@math.wisc.edu>
Message-id: <cdfd1421-a630-e33f-8590-db788da63f20@math.wisc.edu>
Date: Mon, 14 Dec 2020 15:00:15 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-version: 1.0
In-reply-to: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
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

SSBhbSBhIGxpbnV4IHN5cyBhZG1pbiBmb3IgdGhlIE1hdGggZGVwYXJ0bWVudCBhdCB0aGUgVW5p
dmVyc2l0eSBvZiAKV2lzY29uc2luLiBJIHVzZSBnbm9tZS10ZXJtaW5hbCBmb3IganVzdCBhYm91
dCBldmVyeXRoaW5nIEkgZG8uIElmIHlvdSAKdHlwZSBhbiBscyBjb21tYW5kLCBmb3IgZXhhbXBs
ZSwgeW91IGNhbiBsaXN0ZW4gdG8gdGhlIHJlc3VsdHMgdXNpbmcgdGhlIApudW1wYWQga2V5cy4g
IFNvIHRoZSBudW1wYWQgOCBrZXkgbW92ZXMgeW91IHVwIG9uZSBsaW5lLiBUbyBnZXQgdG8gdGhl
IAp0b3Agb2YgdGhlIGRpc3BsYXkgeW91IGNhbiBwcmVzcyBpbnNlcnQrNyBhbmQgdGhlbiB3b3Jr
IHlvdXIgd2F5IGRvd24gYnkgCnByZXNzaW5nIHRoZSBudW1icGFkIDIga2V5LiBPbmNlIHlvdSBo
YXZlIHRoZSBvcmNhIGN1cnNvciBvbiBzb21lIHRleHQsIAp5b3UgY2FuIHVzZSB0aGUgbnVtcGFk
IGtleXMgdG8gZG8gdGhpbmdzIGxpa2UgcmVhZCBhIHdvcmQsIHNwZWxsIGl0LCAKc2VsZWN0IGl0
LCBldGMuCgpJbiBnbm9tZS10ZXJtaW5hbCB0byBzZWxlY3QgYSB3b3JkLCB5b3UgY2FuIGhpdCB0
aGUgbnVtcGFkIHNsYXNoIGtleSAKdHdpY2UgdG8gc2ltdWxhdGUgYSBkb3VibGUgY2xpY2suIEEg
dHJpcGxlIGNsaWNrIHNlbGVjdHMgdGhlIGVudGlyZSAKbGluZS4gWW91IGNhbiB0aGVuIGNvcHkv
cGFzdGUgdGhlIHdvcmQgb3IgbGluZSBpbnRvIGEgd2luZG93LgoKUGVyaGFwcyBhbiBleGFtcGxl
IHdvdWxkIGhlbHAuIFN1cHBvc2UgeW91IHdhbnRlZCB0byBpbnN0YWxsIGEgcGFja2FnZS4gCnRo
YXQgYWxsb3dzIHlvdSB0byBkb3dubG9hZCBhdWRpbyBmaWxlcyBmcm9tIHlvdXR1YmUuIEhlcmUn
cyB3aGF0IHlvdSdkIApkbyBvbiBhIERlYmlhbi9VYnVudHUgc3lzdGVtOgoKMS4gT3BlbiBhIHRl
cm1pbmFsIHdpbmRvdyBieSBwcmVzc2luZyBhbHQrY29udHJvbCt0LiAgSWYgdGhpcyBkb2Vzbid0
IAp3b3JrLCB5b3UgY2FuIHByZXNzIGFsdCtmMiB0byBvcGVuIGEgcnVuIGRpYWxvZyBib3ggYW5k
IHR5cGUgCiJnbm9tZS10ZXJtaW5hbCIuCgoyLiBTZWFyY2ggZm9yIHRoZSBwYWNrYWdlIGJ5IHR5
cGluZyAiYXB0LWNhY2hlIHNlYXJjaCB5b3V0dWJlIi4KCjMuIFByZXNzIHRoZSBudW1wYWQgOCBr
ZXkgdW50aWwgeW91IGhlYXIgdGhlIG5hbWUgb2YgdGhlIHBhY2thZ2UgeW91IAp3b3VsZCBsaWtl
IHRvIGluc3RhbGwuIEluIHRoaXMgZXhhbXBsZSwgaXQgaXMgeW91dHViZS1kbC4gVXNlIHRoZSBu
dW1wYWQgCjQsIDUsIGFuZCA2IGtleXMgdG8gbW92ZSBsZWZ0IGFuZCByaWdodCBtYWtpbmcgc3Vy
ZSB0aGUgb3JjYSBjdXJzb3IgaXMgCm9uIHRoZSBuYW1lIG9mIHRoZSBwYWNrYWdlIHlvdSB3aXNo
IHRvIGluc3RhbGwKCjQuIFByZXNzIHRoZSBudW1wYWQgc2xhc2hrZXkgdHdpY2UgcXVpY2tseS4g
VGhpcyBzaG91bGQgc2VsZWN0IHRoZSBuYW1lIApvZiB0aGUgcGFja2FnZS4KCjUuIFByZXNzIGNv
bnRyb2wrc2hpZnQrYyB0byBjb3B5IHRoZSBzZWxlY3RlZCB0ZXh0IHRvIHRoZSBjbGlwYm9hcmQu
IApOb3RlIHRoYXQgdGhpcyBpcyBub3QgYW4gb3JjYSBjb21tYW5kLiBJdCdzIGEgc3RhbmRhcmQg
Z25vbWUtdGVybWluYWwgCmNvbW1hbmQuIE90aGVyIHRlcm1pbmFsIHByb2dyYW1zIG1pZ2h0IHVz
ZSB0aGUgbW9yZSBzdGFuZGFyZCBjb250cm9sK2MuCgo2LiBFbnRlciBhIGNvbW1hbmQgdG8gaW5z
dGFsbCB0aGUgcGFja2FnZS4gVHlwZSAic3VkbyBhcHQtZ2V0IGluc3RhbGwgIiAKYW5kIHRoZW4g
cHJlc3MgY29udHJvbCtzaGlmdCtwIHRvIHBhc3RlIHRoZSBwYWNrYWdlIG5hbWUgaW50byB0aGUg
CmNvbW1hbmQuIFByZXNzIGVudGVyIGFuZCBpdCBzaG91bGQgc3RhcnQgdGhlIGluc3RhbGxhdGlv
bi4KCklmIHRoZXJlIGlzIGEgd2F5IHRvIHNlbGVjdCB0ZXh0IGZyb20gMiBvciAzIGxpbmVzLCBJ
IGRvIG5vdCBrbm93IGl0LiBJZiAKSSBuZWVkIHRvIGRvIHRoYXQsIEkgYWx3YXlzIHNlbGVjdCBh
bGwgd2l0aCBjb250cm9sK3NoaWZ0K2EsIHByZXNzIApjb250cm9sK3NoaWZ0K2MgdG8gY29weSBh
bGwgdGhlIHRleHQgaW50byB0aGUgY2xpcGJvYXJkLCBhbmQgdGhlbiBwYXN0ZSAKaXQgaW50byBh
IHRleHQgZWRpdG9yLiBUaGVyZSBJIGNhbiBzZWxlY3QganVzdCB0aGUgY2hhcmFjdGVycyBJIHdh
bnQuCgpPbiAxMi8xNC8yMCAxMjo1MiBQTSwgUmVlY2UgTydCcnlhbiB3cm90ZToKPiBIZWxsbywK
PiAKPiBJ4oCZbSBoYXZpbmcgdHJvdWJsZSBlZmZpY2llbnRseSBhY2Nlc3Npbmcgb3V0cHV0cyBm
cm9tIHRlcm1pbmFsIGluIE9yY2EuIEkgbmVlZCBhIGZ1bGx5IGZ1bmN0aW9uaW5nIHNjcmVlbiBy
ZWFkZXIsIGlzIHRoZXJlIGFuIGVhc3kgd2F5IHRvIG5hdmlnYXRlIGxpbmUgYnkgbGluZSBvZiBv
dXRwdXQgZnJvbSB0ZXJtaW5hbCBpbiBlc3BlYWt1cCBvciBvcmNhPwo+IAo+IFRoYW5rIHlvdSwK
PiAKPiAtUmVlY2UKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+
IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1
cAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVh
a3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1z
cGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
