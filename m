Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id D74AF183EAE
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:31:49 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 7B7494280479; Thu, 12 Mar 2020 21:31:42 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id C2BFC428047F
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:31:41 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AEF4C1C727E; Thu, 12 Mar 2020 21:31:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 51A4F1C7226;
	Thu, 12 Mar 2020 21:30:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 326B71C26ED; Sun, 23 Feb 2020 11:01:13 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 18F451C0D6E
 for <speakup@linux-speakup.org>; Sun, 23 Feb 2020 11:01:12 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 7BAAE1B46;
 Sun, 23 Feb 2020 17:00:36 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pIxNazIaEtLK; Sun, 23 Feb 2020 17:00:35 +0100 (CET)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 397E69C3;
 Sun, 23 Feb 2020 17:00:35 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1j5te7-005TFX-Gy; Sun, 23 Feb 2020 16:58:19 +0100
Date: Sun, 23 Feb 2020 16:58:19 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] staging: speakup: remove redundant initialization of
 pointer p_key
Message-ID: <20200223155819.hycmdvrsiid27jeg@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Colin King <colin.king@canonical.com>,
 William Hubbs <w.d.hubbs@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200223153954.420731-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223153954.420731-1-colin.king@canonical.com>
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 William Hubbs <w.d.hubbs@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Q29saW4gS2luZywgbGUgZGltLiAyMyBmw6l2ci4gMjAyMCAxNTozOTo1NCArMDAwMCwgYSBlY3Jp
dDoKPiBGcm9tOiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2luZ0BjYW5vbmljYWwuY29tPgo+IAo+
IFBvaW50ZXIgcF9rZXkgaXMgYmVpbmcgaW5pdGlhbGl6ZWQgd2l0aCBhIHZhbHVlIHRoYXQgaXMg
bmV2ZXIgcmVhZCwKPiBpdCBpcyBhc3NpZ25lZCBhIG5ldyB2YWx1ZSBsYXRlciBvbi4gVGhlIGlu
aXRpYWxpemF0aW9uIGlzIHJlZHVuZGFudAo+IGFuZCBjYW4gYmUgcmVtb3ZlZC4KPiAKPiBBZGRy
ZXNzZXMtQ292ZXJpdHk6ICgiVW51c2VkIHZhbHVlIikKPiBTaWduZWQtb2ZmLWJ5OiBDb2xpbiBJ
YW4gS2luZyA8Y29saW4ua2luZ0BjYW5vbmljYWwuY29tPgoKSW5kZWVkLCB0aGFua3MhCgpSZXZp
ZXdlZC1ieTogU2FtdWVsIFRoaWJhdWx0IDxzYW11ZWwudGhpYmF1bHRAZW5zLWx5b24ub3JnPgoK
PiAtLS0KPiAgZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAva2V5aGVscC5jIHwgMiArLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAva2V5aGVscC5jIGIvZHJpdmVycy9zdGFnaW5nL3Nw
ZWFrdXAva2V5aGVscC5jCj4gaW5kZXggNWYxYmRhMzdmODZkLi44MjJjZWFjODMwNjggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3NwZWFrdXAva2V5aGVscC5jCj4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL3NwZWFrdXAva2V5aGVscC5jCj4gQEAgLTQ5LDcgKzQ5LDcgQEAgc3RhdGljIGlu
dCBjdXJfaXRlbSwgbnN0YXRlczsKPiAgc3RhdGljIHZvaWQgYnVpbGRfa2V5X2RhdGEodm9pZCkK
PiAgewo+ICAJdV9jaGFyICprcCwgY291bnRlcnNbTUFYRlVOQ1NdLCBjaCwgY2gxOwo+IC0JdV9z
aG9ydCAqcF9rZXkgPSBrZXlfZGF0YSwga2V5Owo+ICsJdV9zaG9ydCAqcF9rZXksIGtleTsKPiAg
CWludCBpLCBvZmZzZXQgPSAxOwo+ICAKPiAgCW5zdGF0ZXMgPSAoaW50KShzdGF0ZV90YmxbLTFd
KTsKPiAtLSAKPiAyLjI1LjAKPiAKCi0tIApTYW11ZWwKaidldGFpcyBlbiB0cmFpbiBkZSBuZXR0
b3llciBtYSBzb3VyaXMgZXQgbGUgY291cCBlc3QgcGFydGkuLi4KIC0rLSBzIHN1ciAjZW5zLW1p
bSAtIGV0IGVuIHBsdXMgYyB2cmFpLi4uIC0rLQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNw
ZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGlu
Zm8vc3BlYWt1cAo=
