Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 929662DDA67
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 21:57:00 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2F8DD380F51; Thu, 17 Dec 2020 15:57:00 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8CBEC380F28;
	Thu, 17 Dec 2020 15:56:58 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7F5C9380C19; Thu, 17 Dec 2020 15:56:57 -0500 (EST)
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 68495380BF2
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 15:56:57 -0500 (EST)
Received: from [192.168.0.14]
 (108-85-191-186.lightspeed.mdsnwi.sbcglobal.net [108.85.191.186])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.0.2.4.20190812 64bit (built Aug 12
 2019)) with ESMTPSA id <0QLI00DSB4UVM920@smtpauth3.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Thu, 17 Dec 2020 14:56:56 -0600 (CST)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[108.85.191.186]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-3, Version=6.4.7.2805085,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2020.12.17.204817,
 AntiVirus-Engine: 5.79.0, AntiVirus-Data: 2020.12.13.5790000,
 SenderIP=[108.85.191.186]
Subject: Re: Efficiently using terminal with screenreader
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>, 
 Reece O'Bryan <reece.obryan@icloud.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
 <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
 <20201217184038.h7b764gsfxtjag4i@function>
 <B7379CEB-D226-42D2-B99A-46558F5B7D4D@speedpost.net>
 <20201217185942.ilfu5kbg2lmcwidi@function>
 <C0260469-C483-4C7D-A5CC-0CDBA6B3D6BD@speedpost.net>
 <FD9C8E4B-57AC-4F83-A529-B0B5B3087B8E@icloud.com>
From: John G Heim <jheim@math.wisc.edu>
Message-id: <1cff10f9-af8e-71ee-559a-0161e3b38345@math.wisc.edu>
Date: Thu, 17 Dec 2020 14:56:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-version: 1.0
In-reply-to: <FD9C8E4B-57AC-4F83-A529-B0B5B3087B8E@icloud.com>
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

VGhpcyBpcyBvZmYtdG9waWMgYnV0IGFyZSB5b3UgdGFsa2luZyBhYm91dCB0aGUgVGVybWluYWwg
YXBwIGluIE1hY09TPyAKVG8gbmF2aWdhdGUgbGluZS1ieS1saW5lLCB5b3UgcHJlc3Mgc2hpZnQr
b3B0aW9uK2NvbnRyb2wrZG93bkFycm93IGFuZCAKdGhlbiB5b3UgY2FuIHVzZSB0aGUgb3B0aW9u
K2NvbnRyb2wrYXJyb3dLZXlzIHRvIG5hdmlnYXRlIHRoZSBzY3JlZW4uIEkgCmRvbid0IGtub3cg
aG93IHRvIGRvIHRoaW5ncyBsaWtlIHNlbGVjdCB0ZXh0IGFuZCBhbGwgdGhhdC4gSSBkb24ndCB1
c2UgCnRoZSBNYWMgVGVybWluYWwgYXBwIHZlcnkgb2Z0ZW4uCgoKCgpPbiAxMi8xNy8yMCAyOjAw
IFBNLCBSZWVjZSBPJ0JyeWFuIHdyb3RlOgo+IE9LLCBJIHVuZGVyc3RhbmQgd2hhdCB5b3XigJly
ZSBzYXlpbmcgbm93ISBJ4oCZbSBkZWZpbml0ZWx5IGdvaW5nIHRvIGdldCBvbmUgb2YgdGhlc2Ug
dG8gcGxheSBhcm91bmQgd2l0aC4KPiAKPiBJIHZlcnkgbXVjaCBhcHByZWNpYXRlIHlvdXIgZXhj
bGFtYXRpb24gb2YgdGhlIGhpc3Rvcnkgb2YgdGhpcy4gSeKAmW0gc29ycnkgaWYgbXkgcXVlc3Rp
b25zIGFyZSBvYnZpb3VzLCBidXQgSSBoYXZlIG9ubHkgYmVlbiBibGluZCBhIGZldyB5ZWFycyBh
bmQgdGhpcyBwYXJ0IG9mIGNvbXB1dGVycyBpcyBxdWl0ZSBkaWZmZXJlbnQgd2l0aG91dCBhIEdV
SS4KPiAgIAo+IAo+IFRoYW5rIHlvdSwKPiAKPiBJcyBpdCBwb3NzaWJsZSB0byBjb21waWxlIHNw
ZWFrIHVwIG9uIG15IE1hY0Jvb2s/IEnigJltIHN0aWxsIGhhdmluZyB0cm91YmxlIG5hdmlnYXRp
bmcgYSB0ZXJtaW5hbCBhbmQgaWYgSSBjb3VsZCBydW4gc3BlYWsgdXAsIEkgY291bGQgc2V0IHVw
IGFuIGF1dG9tYXRlZCB3b3JrZmxvdyB0byB0dXJuIG9mZiB2b2ljZW92ZXIsIHJ1biBzcGVhayB1
cCBhbmQgcnVuIHRlcm1pbmFsPyBJIGRvbuKAmXQgdW5kZXJzdGFuZCB3aHkgdGhlcmUgYXJlIG5v
dCBjb21tYW5kcyB0byBuYXZpZ2F0ZSBsaW5lIGJ5IGxpbmUgaW4gdGhlIG5hdGl2ZSB0ZXJtaW5h
bCBvbiBPUyBYLgo+IAo+IC1SZWVjZQo+IAo+PiBPbiBEZWMgMTcsIDIwMjAsIGF0IDI6MDQgUE0s
IFphY2hhcnkgS2xpbmUgPHprbGluZUBzcGVlZHBvc3QubmV0PiB3cm90ZToKPj4KPj4gU2FtdWVs
LAo+Pgo+PiBObywgdGhleSBkZWZpbml0ZWx5IGRvbuKAmXQuIEFzIGZhciBhcyBJ4oCZbSBhd2Fy
ZSB0aGV5IHVzZSBhbiBlbnRpcmVseSBkaWZmZXJlbnQgaW50ZXJmYWNlLiBUaGUgYWRhcHRvciBl
eHBvc2VzIC9kZXYvdHR5VVNCMCBidXQgdGhlIHN5bnRoZXNpemVyIGlzIHN0aWxsIGluIHNlcmlh
bC9yczIzMiBtb2RlLiBUaGVyZeKAmXMgYSBoYXJkd2FyZSB0b2dnbGUgc3dpdGNoIHRvIHNlbGVj
dCBvbmUgbW9kZSBvciB0aGUgb3RoZXIuCj4+IEJlc3QsCj4+IFphY2suCj4+Cj4+PiBPbiBEZWMg
MTcsIDIwMjAsIGF0IDEwOjU5IEFNLCBTYW11ZWwgVGhpYmF1bHQgPHNhbXVlbC50aGliYXVsdEBl
bnMtbHlvbi5vcmc+IHdyb3RlOgo+Pj4KPj4+IFphY2hhcnkgS2xpbmUsIGxlIGpldS4gMTcgZMOp
Yy4gMjAyMCAxMDo1NToxMyAtMDgwMCwgYSBlY3JpdDoKPj4+PiBidXQgZG9lc27igJl0IHN1cHBv
cnQgdXNpbmcgc3ludGhzIGluIG5hdGl2ZSBVU0IgbW9kZS4KPj4+Cj4+PiBEb24ndCB0aGVzZSBz
aW1wbHkgZXhwb3NlIGEgL2Rldi90dHlVU0IwIHBvcnQ/Cj4+Pgo+Pj4gU2FtdWVsCj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gU3BlYWt1cCBt
YWlsaW5nIGxpc3QKPj4+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4+IGh0dHA6Ly9saW51
eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBTcGVha3VwIG1h
aWxpbmcgbGlzdAo+PiBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4+IGh0dHA6Ly9saW51eC1z
cGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BlYWt1cCBtYWlsaW5nIGxp
c3QKPiBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3Jn
L2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCj4gCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBA
bGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1h
bi9saXN0aW5mby9zcGVha3VwCg==
