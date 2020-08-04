Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2B9D523BD40
	for <lists+speakup@lfdr.de>; Tue,  4 Aug 2020 17:36:25 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8AAD11C0766; Tue,  4 Aug 2020 11:36:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 147031C07B5;
	Tue,  4 Aug 2020 11:35:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id DE05B1C0766; Tue,  4 Aug 2020 11:35:47 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 90EDD1C074E
 for <speakup@linux-speakup.org>; Tue,  4 Aug 2020 11:35:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 7450B1689;
 Tue,  4 Aug 2020 17:35:44 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NNp9mwS61FzL; Tue,  4 Aug 2020 17:35:43 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id A37C4154E;
 Tue,  4 Aug 2020 17:35:43 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1k2yyc-00278t-Dr; Tue, 04 Aug 2020 17:35:42 +0200
Date: Tue, 4 Aug 2020 17:35:42 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 2/2] speakup: only build serialio when ISA is enabled
Message-ID: <20200804153542.zowupa4ygdgxnciu@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, speakup@linux-speakup.org
References: <20200804111332.dex7jobmabifdzw5@function>
 <20200804113413.GA181242@kroah.com>
 <20200804114951.ijs3hnezi4f64nll@function>
 <20200804115817.GC203147@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804115817.GC203147@kroah.com>
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

R3JlZyBLSCwgbGUgbWFyLiAwNCBhb8O7dCAyMDIwIDEzOjU4OjE3ICswMjAwLCBhIGVjcml0Ogo+
IAlFUlJPUjogbW9kcG9zdDogInNwa19zZXJpYWxfaW9fb3BzIiBbZHJpdmVycy9hY2Nlc3NpYmls
aXR5L3NwZWFrdXAvc3BlYWt1cF9rZXlwYy5rb10gdW5kZWZpbmVkIQo+IAlFUlJPUjogbW9kcG9z
dDogInNwa19zdG9wX3NlcmlhbF9pbnRlcnJ1cHQiIFtkcml2ZXJzL2FjY2Vzc2liaWxpdHkvc3Bl
YWt1cC9zcGVha3VwX2tleXBjLmtvXSB1bmRlZmluZWQhCgpPaCwgaW5kZWVkLCB0aGVzZSBhcmUg
bm90IGNvdmVyZWQgYnkgdGhlIGZpcnN0IHBhdGNoLgoKSSByZWFsaXplIHRoYXQgS0VZUEMgZGVw
ZW5kcyBvbiBJU0EsIGJ1dCB3aXRoIENPTVBJTEVfVEVTVCBhcwphbHRlcm5hdGl2ZS4gV2UgY2Fu
IGJ1aWxkIHNlcmlhbGlvIGluIHRoZSBDT01QSUxFX1RFU1QgY2FzZSB0b28sIEknbGwKdXBkYXRl
IHRoZSBwYXRjaGVzLgoKQnV0IHRoZW4gd2UnbGwgc3RpbGwgaGF2ZToKCj4gdGhlIHJpc2N2IGJ1
aWxkIGlzc3Vlcy4KCkFjdHVhbGx5IEkgd2FzIHN1cnByaXNlZCBieSB0aGUgcmlzY3YgYnVpbGQg
aXNzdWU6IHRoZSBpc3N1ZSBpcyB3aXRoaW4KcmlzY3YncyBpbmIoKSBpbXBsZW1lbnRhdGlvbiwg
c2VyaWFsaW8uYyBpcyBvbmx5IGNhbGxpbmcgaXQuCmFyY2gvcmlzY3YvaW5jbHVkZS9hc20vaW8u
aCBzYXlzOgoKI2RlZmluZSBQQ0lfSU9CQVNFCQkoKHZvaWQgX19pb21lbSAqKVBDSV9JT19TVEFS
VCkKWy4uLl0KI2RlZmluZSBpbmIoYykJCSh7IHU4ICBfX3Y7IF9faW9fcGJyKCk7IF9fdiA9IHJl
YWRiX2NwdSgodm9pZCopKFBDSV9JT0JBU0UgKyAoYykpKTsgX19pb19wYXIoX192KTsgX192OyB9
KQoKYW5kIHRodXMgeWVzIGl0J3MgYXJpdGhtZXRpYyBvdmVyIGEgKHZvaWQqKSBwb2ludGVyLCB0
aGUgY2FsbGVyIGNhbm5vdApkbyBhbnl0aGluZyBhYm91dCBpdC4KCjgyNTBfcG9ydC5jIGl0c2Vs
ZiB1c2VzIGluYigpLCBkb2Vzbid0IGl0IGdldCBhIHdhcm5pbmcgYXMgd2VsbD8gT3IgaXMKaXQg
Z2V0dGluZyBjb21waWxlZC1vdXQgb24gcmlzY3YgYmVjYXVzZSBvZiBzb21lIEtjb25maWcgY29u
ZGl0aW9uPyAgSQpzZWUgdGhhdCB0aGUgd2hvbGUgZHJpdmVycy90dHkvc2VyaWFsIGlzIHVuZGVy
IEhBU19JT01FTSwgYW5kIHRoYXQncyB0aGUKb25seSBjb25kaXRpb24gSSBjYW4gc2VlIGZvciA4
MjUwX3BvcnQuYyAoZXhjZXB0IFNFUklBTF84MjUwIG9mIGNvdXJzZSksCmlzIHRoYXQgaXQsIG9y
IGlzIFNFUklBTF84MjUwIGp1c3Qgbm90IGVuYWJsZWQgaW4gdGhlIHJpc2N2IGJvdD8KCkFjdHVh
bGx5IHRoZSB3YXJuaW5nIHNlZW1zIG5ldywgd2hlbiBsb29raW5nIGF0IHRoZSBEZWJpYW4gYnVp
bGQgbG9nOgoKaHR0cHM6Ly9idWlsZGQuZGViaWFuLm9yZy9zdGF0dXMvZmV0Y2gucGhwP3BrZz1s
aW51eCZhcmNoPXJpc2N2NjQmdmVyPTUuNy4xMC0xJnN0YW1wPTE1OTU4MDM0OTkmcmF3PTAKCmFu
ZCBsb29raW5nIGZvciBzZXJpYWxpby5jLCBJIGRvIG5vdCBzZWUgYSB3YXJuaW5nLCBhbmQgaXRz
IGNvZGUgaGFzbid0CmNoYW5nZWQuIElzIHRoZSBidWlsZCBib3QgY29tcGlsZXIganVzdCBtb3Jl
IHRhbGthdGl2ZT8KClNhbXVlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3Jn
Cmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1
cAo=
