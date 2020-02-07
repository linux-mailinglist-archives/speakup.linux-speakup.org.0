Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 16B75155384
	for <lists+speakup@lfdr.de>; Fri,  7 Feb 2020 09:11:16 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 567FE1C2C6C; Fri,  7 Feb 2020 03:11:15 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A89401C2E82;
	Fri,  7 Feb 2020 03:10:31 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 744DA1C2C6B; Fri,  7 Feb 2020 03:10:29 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C67701C0D97
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 03:10:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 1A76014A7
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 09:10:26 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TpEmN-FgDy0Z for <speakup@linux-speakup.org>;
 Fri,  7 Feb 2020 09:10:25 +0100 (CET)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 680B8149C
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 09:10:25 +0100 (CET)
Received: from samy by function.home with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1izyiW-0017l5-Ai
 for speakup@linux-speakup.org; Fri, 07 Feb 2020 09:10:24 +0100
Date: Fri, 7 Feb 2020 09:10:24 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: driving a serial synthesizer through speech-dispatcher
Message-ID: <20200207081024.o7e7hm7k7ddi7cj2@function>
References: <20200207000127.GA6319@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207000127.GA6319@gregn.net>
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

R3JlZ29yeSBOb3dhaywgbGUgamV1LiAwNiBmw6l2ci4gMjAyMCAxNzowMToyNyAtMDcwMCwgYSBl
Y3JpdDoKPiBXaGlsZSBzcGVlY2gtZGlzcGF0Y2hlciBpdHNlbGYgaGFzIG5vIGZhY2lsaXR5IGEg
ZmFyIGFzIEkgY2FuIHRlbGwgdG8KPiBjb21tdW5pY2F0ZSB0aHJvdWdoIHNlcmlhbCBwb3J0cywg
c29tZXRoaW5nIGxpa2UgY2F0IGNvdWxkIGJlIHVzZWQgdG8KPiBzZW5kIGEgdGV4dCBvZiBzdHJp
bmcgdG8gdGhlIHNlcmlhbCBwb3J0IGZvciB0aGUgc3ludGhlc2l6ZXIgdG8KPiBzcGVhay4gVGhp
cyBpcyBjcnVkZSwgYW5kIHRoZXJlIGlzIG5vIHdheSB0byBpbnRlcnJ1cHQgc3BlZWNoIHVudGls
IGl0Cj4gY29tcGxldGVzLgo+IAo+IEFuIGV2ZW4gYmV0dGVyIGFwcHJvYWNoIGlzIHRvIHVzZQo+
IC9zeXMvYWNjZXNzaWJpbGl0eS9zcGVha3VwL3N5bnRoX2RpcmVjdCBmb3IgdGhlIHNwZWVjaCBv
dXRwdXQuIFRoaXMKPiB3b3VsZCB1c2Ugc3BlYWt1cCBzZXR0aW5ncyBpbiB1c2UgZm9yIHRoZSBz
eW50aGVzaXplci4gVGhlIHByb2JsZW0KPiB3aXRoIHRoaXMgaXMgdGhlIHNhbWUgYXMgd2l0aCB0
aGUgY2F0IGNvbW1hbmQ7IG5vIHdheSB0byBpbnRlcnJ1cHQKPiBzcGVlY2gsCgpJbmRlZWQuIEJ1
dCB0aGVyZSBpcyBhbm90aGVyIGFwcHJvYWNoLCB3aGljaCB3YXMgbWFkZSBmb3IgdGhpczogdXNp
bmcKL2Rldi9zeW50aC4gRm9yIG5vdyB0aGF0IGZpbGUgb25seSBzdXBwb3J0cyB3cml0aW5nIHRv
IGl0IHRvIGdldAp0ZXh0IGVtaXR0ZWQsIGJ1dCBpb2N0bHMgY2FuIGJlIGRlZmluZWQgdG8gZHJp
dmUgaXQsIHN1Y2ggYXMgc2V0dGluZwpwaXRjaCBldGMuIGluIGEgcG9ydGFibGUgd2F5IGFjcm9z
cyBzeW50aGVzaXplcnMgKHNwZWFrdXAgd2lsbCBoYW5kbGUKdGhlc2UgZGV0YWlscyksIGJ1dCBh
bHNvIGludGVycnVwdGluZy4gVGhhdCBhbGwgaGFwcGVucyBpbiBzcGVha3VwJ3MKZGV2c3ludGgu
YyBhbmQgY2FuIGJlIGEgcmVsYXRpdmVseSBlYXN5IHRhc2sgZm9yIGtlcm5lbCBoYWNraW5nCmJl
Z2lubmVycy4KClNhbXVlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0
dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
