Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AC0072DD863
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 19:33:55 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E5FB7380C14; Thu, 17 Dec 2020 13:33:54 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 30C4D380F24;
	Thu, 17 Dec 2020 13:33:51 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 89485380BE3; Thu, 17 Dec 2020 13:33:50 -0500 (EST)
Received: from wmauth2.doit.wisc.edu (wmauth2.doit.wisc.edu [144.92.197.222])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 73030380967
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 13:33:50 -0500 (EST)
Received: from [192.168.0.14]
 (108-85-191-186.lightspeed.mdsnwi.sbcglobal.net [108.85.191.186])
 by smtpauth2.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.0.2.4.20190812 64bit (built Aug 12
 2019)) with ESMTPSA id <0QLH00O3NY3IAD60@smtpauth2.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Thu, 17 Dec 2020 12:30:55 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[108.85.191.186]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-2, Version=6.4.7.2805085,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2020.12.17.182717,
 AntiVirus-Engine: 5.79.0, AntiVirus-Data: 2020.11.17.5790001,
 SenderIP=[108.85.191.186]
Subject: Re: Efficiently using terminal with screenreader
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>, 
 Reece O'Bryan <reece.obryan@icloud.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
From: John G Heim <jheim@math.wisc.edu>
Message-id: <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
Date: Thu, 17 Dec 2020 12:30:54 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-version: 1.0
In-reply-to: <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
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

QSBoYXJkd2FyZSBzcGVlY2ggc3ludGggIGNvbm5lY3RzIHRvIHRoZSBVU0Igb3Igc2VyaWFsIHBv
cnQgb24geW91ciAKY29tcHV0ZXIuIFlvdSBoYXZlIHRvIGhhdmUgc3BlY2lhbCBzb2Z0d2FyZSB0
byB1c2UgaXQuIFNwZWFrdXAgCm9yaWdpbmFsbHkgd29ya2VkIG9ubHkgd2l0aCBoYXJkd2FyZSBz
cGVlY2ggc3ludGhzIGJlY2F1c2Ugbm9ib2R5IGhhZCAKd3JpdHRlbiBhIHNvZnR3YXJlIHNwZWVj
aCBkcml2ZXIgZm9yIGl0LiBVbnRpbCByZWNlbnRseSwgc3BlYWt1cCAKcmVxdWlyZWQgYSBzcGVl
Y2ggc3ludGggdGhhdCBjb25uZWN0ZWQgdG8gYSBzZXJpYWwgcG9ydC4gSXQgZGlkIG5vdCAKc3Vw
cG9ydCBzeW50aHMgY29ubmVjdGVkIHRvIGEgVVNCIHBvcnQuIEkgZG9uJ3Qga25vdyBpZiB0aGF0
J3Mgc3RpbGwgCnRydWUuIEkgZG9uJ3QgdGhpbmsgc28uIEEgVVNCIHN5bnRoIGNvc3RzIGFib3V0
ICQyMDAuIEkgc3BlbnQgJDQ1MCBmb3IgCnRoZSBvbmUgSSBoYXZlIHdoaWNoIGhhcyBib3RoIFVT
QiBhbmQgc2VyaWFsIHBvcnQgY29ubmVjdGlvbnMuCgpNb3N0aGUgaGFyZHdhcmUgc3BlZWNoIHN5
bnRocyBoYXZlIGEgc3BlYWtlciBidXQgbW9zdCBoYXZlIGEgaGVhZHBob25lIApqYWNrIHRvby4K
CgoKCgpPbiAxMi8xNy8yMCA3OjI0IEFNLCBSZWVjZSBPJ0JyeWFuIHdyb3RlOgo+IFdvdy4gVGhp
cyBwcm9kdWN0IHNvdW5kcyBhbWF6aW5nLiBXb3VsZCB5b3UgY2FyZSB0byBzaGFyZSB0aGUgbWFu
dWZhY3R1cmUgb2YgeW91ciBoYXJkd2FyZSBzeW50aGVzaXplciBvciBoYXZlIGEgY29tcGFueSB0
byByZWNvbW1lbmQ/IFlvdSBzYXZlIHRoaXMgd29ya3Mgd2l0aCBhIGRldmljZSBldmVuIGlmIGl0
IGRvZXMgbm90IGhhdmUgc3BlYWtlcnMsIHNvIHRoaXMgbWVhbnMgaXQgZWl0aGVyIGhhcyBhIHNw
ZWFrZXIgaW4gYmVkZGVkIG9yIHlvdSBjb25uZWN0IGhlYWRwaG9uZXMsIGV0Yy4gSXMgaXQgcG9z
c2libGUgdG8gdXNlIG9uZSBvZiB0aGVzZSwgYSBoYXJkd2FyZSBzcGVlY2ggc3ludGhlc2l6ZXIs
IHRvIHJlYWQgYW55dGhpbmcgdGhhdCBvdXRwdXRzIHRleHQ7IHNvIHdpdGggdGhpcyBtZWFuIHRo
YXQgaW4gdGhlb3J5IHlvdSBjb3VsZCBldmVuIHVzZSBvbmUgb2YgdGhlc2Ugd2l0aCBhbiBvcGVy
YXRpbmcgc3lzdGVtIGFuZCBubyBzb2Z0d2FyZSBzY3JlZW4gcmVhZGVyIG9yIGV2ZW4gYSBtYWNo
aW5lIHRoYXQgZG9lc27igJl0IGhhdmUgYW55dGhpbmcgZm9yIGFjY2Vzc2liaWxpdHksIHN1Y2gg
YXMgYSBUViBvciBBVE0gbWFjaGluZT8gSeKAmW0gZ3Vlc3NpbmcgaXQganVzdCBncmFicyB0aGUg
cGxhaW50ZXh0IHRoYXQgaXMgdmlzdWFsbHkgb3V0cHV0LCBJIHdvdWxkIHRoaW5rIHRoYXQgd291
bGQgYWxsb3cgeW91IHRvIHVzZSBhIGRldmljZSBsaWtlIHRoYXQgd2l0aCBhbG1vc3QgYW55dGhp
bmcgdGhhdCBoYXMgYSBVU0IgcG9ydCBhbmQgb3V0cHV0cyB0ZXh0LCBhbSBJIGNvcnJlY3Qgb24g
dGhhdCBhc3N1bXB0aW9uPwo+IAo+IAo+IFRoYW5rIHlvdSwKPiAKPiAtUmVlY2UKPiAKPj4gT24g
RGVjIDE2LCAyMDIwLCBhdCA0OjM3IFBNLCBLYXJlbiBMZXdlbGxlbiA8a2xld2VsbGVuQHNoZWxs
d29ybGQubmV0PiB3cm90ZToKPj4KPj4gb3V0IG9mIGN1cmlvc2l0eSwgZG9lcyBmZW5yaXIgd29y
ayB3aXRoIGFueSBkZWN0YWxrIGhhcmR3YXJlPwo+PiBLYXJlCj4+Cj4+Cj4+Cj4+PiBPbiBXZWQs
IDE2IERlYyAyMDIwLCBKYW5pbmEgU2Fqa2Egd3JvdGU6Cj4+Pgo+Pj4gSSBhZ3JlZSB3aXRoIHRo
aXMgYWR2aWNlLiBIb3dldmVyLCBnZXR0aW5nIGJvdGggZW52aXJvbm1lbnRzIGZ1bmN0aW9uCj4+
PiB3aXRoIHNwZWVjaCBjb3VsZCBwcm92ZSB0byBiZSBhIGNoYWxsZW5nZSBvbiB5b3VyIGhhcmR3
YXJlLgo+Pj4KPj4+IFNwZWVjaCBEaXNwYXRjaGVyIGRvZXNuJ3QgcGxheSB3aXRoIFNwZWFrdXAu
IFRoZXJlIGFyZSBvdGhlcgo+Pj4gY29tcGxpY2F0aW9ucyB0aGF0IG1heSwgb3IgbWF5IG5vdCBw
cm92ZSBwcm9ibGVtYXRpY2FsLgo+Pj4KPj4+IFlvdXIgYmVzdCBiZXQgbWlnaHQgYmUgRmVucmly
Lgo+Pj4KPj4+IE15IGN1cnJlbnQgc29sdXRpb24gaXMgYXMgZm9sbG93czoKPj4+Cj4+PiBTcGVh
a3VwIHVzaW5nIGVzcGVhayB3aXRoIHRoZSBlc3BlYWt1cCBjb25uZWN0b3IuIE5vdGUgdGhpcyBp
cyB0aGUgb2xkCj4+PiBlc3BlYWssIG5vdCBlc3BlYWstbmcuCj4+Pgo+Pj4gT3JjYSB3aXRoIFNw
ZWVjaC1EaXNwYXRjaGVyIHVzaW5nIFJIIFZvaWNlLgo+Pj4KPj4+IEZZSTogSSdtIG9uIGEgZnVs
bHkgdXBkYXRlZCBBcmNoLgo+Pj4KPj4+IEJlc3QsCj4+Pgo+Pj4gSmFuaW5hCj4+Pgo+Pj4gWmFj
aGFyeSBLbGluZSB3cml0ZXM6Cj4+Pj4gSGksCj4+Pj4KPj4+PiBUbyBiZSBwZXJmZWN0bHkgaG9u
ZXN0LCBJIHJlY29tbWVuZCB1c2luZyBTcGVha3VwIGZvciBnb29kIHRlcm1pbmFsIHN1cHBvcnQu
IE9yY2EgaXMgcmF0aGVyIHN1Yi1wYXIgaW4gdGhpcyByZWdhcmQsIGFuZCBTcGVha3VwIHdhcyBk
ZXNpZ25lZCB0byBmdWxseSBzdXBwb3J0IGNvbW1hbmQtbGluZSBvdXRwdXQgZnJvbSB0aGUgc3Rh
cnQuCj4+Pj4gQmVzdCwKPj4+PiBaYWNrLgo+Pj4+Cj4+Pj4+IE9uIERlYyAxNCwgMjAyMCwgYXQg
MTA6NTIgQU0sIFJlZWNlIE8nQnJ5YW4gPHJlZWNlLm9icnlhbkBpY2xvdWQuY29tPiB3cm90ZToK
Pj4+Pj4KPj4+Pj4gSGVsbG8sCj4+Pj4+Cj4+Pj4+IEnigJltIGhhdmluZyB0cm91YmxlIGVmZmlj
aWVudGx5IGFjY2Vzc2luZyBvdXRwdXRzIGZyb20gdGVybWluYWwgaW4gT3JjYS4gSSBuZWVkIGEg
ZnVsbHkgZnVuY3Rpb25pbmcgc2NyZWVuIHJlYWRlciwgaXMgdGhlcmUgYW4gZWFzeSB3YXkgdG8g
bmF2aWdhdGUgbGluZSBieSBsaW5lIG9mIG91dHB1dCBmcm9tIHRlcm1pbmFsIGluIGVzcGVha3Vw
IG9yIG9yY2E/Cj4+Pj4+Cj4+Pj4+IFRoYW5rIHlvdSwKPj4+Pj4KPj4+Pj4gLVJlZWNlCj4+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IFNw
ZWFrdXAgbWFpbGluZyBsaXN0Cj4+Pj4+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4+Pj4g
aHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3Vw
Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4+Pj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9y
Zwo+Pj4+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8v
c3BlYWt1cAo+Pj4KPj4+IC0tIAo+Pj4KPj4+IEphbmluYSBTYWprYQo+Pj4gaHR0cHM6Ly9saW5r
ZWRpbi5jb20vaW4vanNhamthCj4+Pgo+Pj4gTGludXggRm91bmRhdGlvbiBGZWxsb3cKPj4+IEV4
ZWN1dGl2ZSBDaGFpciwgQWNjZXNzaWJpbGl0eSBXb3JrZ3JvdXA6ICAgIGh0dHA6Ly9hMTF5Lm9y
Zwo+Pj4KPj4+IFRoZSBXb3JsZCBXaWRlIFdlYiBDb25zb3J0aXVtIChXM0MpLCBXZWIgQWNjZXNz
aWJpbGl0eSBJbml0aWF0aXZlIChXQUkpCj4+PiBDby1DaGFpciwgQWNjZXNzaWJsZSBQbGF0Zm9y
bSBBcmNoaXRlY3R1cmVzICAgIGh0dHA6Ly93d3cudzMub3JnL3dhaS9hcGEKPj4+Cj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gU3BlYWt1cCBt
YWlsaW5nIGxpc3QKPj4+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4+IGh0dHA6Ly9saW51
eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+Pj4KPj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gU3BlYWt1cCBt
YWlsaW5nIGxpc3QKPj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+PiBodHRwOi8vbGludXgt
c3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwZWFrdXAgbWFpbGluZyBs
aXN0Cj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9y
Zy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+IApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3Vw
QGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxt
YW4vbGlzdGluZm8vc3BlYWt1cAo=
