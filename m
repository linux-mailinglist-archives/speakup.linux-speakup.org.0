Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8A32423B9F1
	for <lists+speakup@lfdr.de>; Tue,  4 Aug 2020 13:50:58 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E01BD1C076B; Tue,  4 Aug 2020 07:50:57 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E7E8A1C078F;
	Tue,  4 Aug 2020 07:50:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C36CC1C0764; Tue,  4 Aug 2020 07:50:27 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id D7D001C0716
 for <speakup@linux-speakup.org>; Tue,  4 Aug 2020 07:50:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id C93CEE0E8;
 Tue,  4 Aug 2020 13:49:53 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id scU3giwOwsSK; Tue,  4 Aug 2020 13:49:53 +0200 (CEST)
Received: from function.home (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id EB4FE2534;
 Tue,  4 Aug 2020 13:49:52 +0200 (CEST)
Received: from samy by function.home with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1k2vS3-001bAW-C5; Tue, 04 Aug 2020 13:49:51 +0200
Date: Tue, 4 Aug 2020 13:49:51 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] speakup: only build serialio when ISA is enabled
Message-ID: <20200804114951.ijs3hnezi4f64nll@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
References: <20200804111332.dex7jobmabifdzw5@function>
 <20200804113413.GA181242@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804113413.GA181242@kroah.com>
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
Cc: speakup@linux-speakup.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

R3JlZyBLSCwgbGUgbWFyLiAwNCBhb8O7dCAyMDIwIDEzOjM0OjEzICswMjAwLCBhIGVjcml0Ogo+
IE9uIFR1ZSwgQXVnIDA0LCAyMDIwIGF0IDAxOjEzOjMyUE0gKzAyMDAsIFNhbXVlbCBUaGliYXVs
dCB3cm90ZToKPiA+IERyaXZlcnMgdXNpbmcgc2VyaWFsaW8gYXJlIGFscmVhZHkgbWFkZSBhdmFp
bGFibGUgaW4gS2NvbmZpZyBvbmx5IHVuZGVyCj4gPiB0aGUgSVNBIGNvbmRpdGlvbi4KPiA+IAo+
ID4gVGhpcyBzb2x2ZXMgd2FybmluZ3MgaW4gaW5iL291dGIgbWFjcm9zIG9uIHBsYXRmb3JtIHRo
YXQgZG8gbm90IGhhdmUgCj4gPiBzdXBwb3J0IGZvciBJU0EuCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IFNhbXVlbCBUaGliYXVsdCA8c2FtdWVsLnRoaWJhdWx0QGVucy1seW9uLm9yZz4KPiA+IAo+
ID4gSW5kZXg6IGxpbnV4LTIuNi9kcml2ZXJzL2FjY2Vzc2liaWxpdHkvc3BlYWt1cC9NYWtlZmls
ZQo+ID4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PQo+ID4gLS0tIGxpbnV4LTIuNi5vcmlnL2RyaXZlcnMvYWNjZXNzaWJp
bGl0eS9zcGVha3VwL01ha2VmaWxlCj4gPiArKysgbGludXgtMi42L2RyaXZlcnMvYWNjZXNzaWJp
bGl0eS9zcGVha3VwL01ha2VmaWxlCj4gPiBAQCAtMTYsNiArMTYsNyBAQCBvYmotJChDT05GSUdf
U1BFQUtVUF9TWU5USF9UWFBSVCkgKz0gc3BlCj4gPiAgb2JqLSQoQ09ORklHX1NQRUFLVVBfU1lO
VEhfRFVNTVkpICs9IHNwZWFrdXBfZHVtbXkubwo+ID4gIAo+ID4gIG9iai0kKENPTkZJR19TUEVB
S1VQKSArPSBzcGVha3VwLm8KPiA+ICtvYmotJChDT05GSUdfSVNBKSArPSBzZXJpYWxpby5vCj4g
PiAgc3BlYWt1cC15IDo9IFwKPiA+ICAJYnVmZmVycy5vIFwKPiA+ICAJZGV2c3ludGgubyBcCj4g
PiBAQCAtMjUsNyArMjYsNiBAQCBzcGVha3VwLXkgOj0gXAo+ID4gIAlrZXloZWxwLm8gXAo+ID4g
IAlrb2JqZWN0cy5vIFwKPiA+ICAJc2VsZWN0aW9uLm8gXAo+ID4gLQlzZXJpYWxpby5vIFwKPiA+
ICAJc3BrX3R0eWlvLm8gXAo+ID4gIAlzeW50aC5vIFwKPiA+ICAJdGhyZWFkLm8gXAo+IAo+IE9v
cHMsIG5vLCBJIGdldCB0aGUgZm9sbG93aW5nIGJ1aWxkIGVycm9ycyB3aXRoIHRoaXMgcGF0Y2g6
Cj4gCj4gRVJST1I6IG1vZHBvc3Q6ICJzcGtfd2FpdF9mb3JfeG1pdHIiIFtkcml2ZXJzL2FjY2Vz
c2liaWxpdHkvc3BlYWt1cC9zcGVha3VwLmtvXSB1bmRlZmluZWQhCgpZZXMsIGl0IGRlcGVuZHMg
b24gdGhlIGZpcnN0IG9mIHRoZSBxdWV1ZS4KClNhbXVlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxp
bnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4v
bGlzdGluZm8vc3BlYWt1cAo=
