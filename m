Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0DA282D4C93
	for <lists+speakup@lfdr.de>; Wed,  9 Dec 2020 22:14:54 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9FA5B380F97; Wed,  9 Dec 2020 16:14:53 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7551C380FA5;
	Wed,  9 Dec 2020 16:14:52 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id F1001380F1A; Wed,  9 Dec 2020 16:14:51 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C6EB9380EDC
 for <speakup@linux-speakup.org>; Wed,  9 Dec 2020 16:14:51 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id B7CBCB42;
 Wed,  9 Dec 2020 22:14:20 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IyGpdNaeq0Nx; Wed,  9 Dec 2020 22:14:20 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 0D2E0ABE;
 Wed,  9 Dec 2020 22:14:20 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kn6mx-006kS2-1r; Wed, 09 Dec 2020 22:14:19 +0100
Date: Wed, 9 Dec 2020 22:14:19 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [patch 1/3] speakup: Add synth parameter to io functions
Message-ID: <20201209211419.5waw2q6o35s67ncw@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
References: <20201130220626.854574234@ens-lyon.org>
 <20201130220719.168900798@ens-lyon.org>
 <X9Dh3exc0rN1YitF@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X9Dh3exc0rN1YitF@kroah.com>
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

R3JlZyBLSCwgbGUgbWVyLiAwOSBkw6ljLiAyMDIwIDE1OjQwOjI5ICswMTAwLCBhIGVjcml0Ogo+
IE9uIE1vbiwgTm92IDMwLCAyMDIwIGF0IDExOjI2OjQxUE0gKzAxMDAsIFNhbXVlbCBUaGliYXVs
dCB3cm90ZToKPiA+IFRoaXMgbWVyZWx5IGFkZHMgdGhlIG1pc3Npbmcgc3ludGggcGFyYW1ldGVy
IHRvIGFsbCBpbyBmdW5jdGlvbnMuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFNhbXVlbCBUaGli
YXVsdCA8c2FtdWVsLnRoaWJhdWx0QGVucy1seW9uLm9yZz4KPiAKPiBUaGlzIHBhdGNoIGJyZWFr
cyB0aGUgYnVpbGQgOigKPiAKPiBDYW4geW91IHJlYmFzZSBhbmQgcmVzZW5kIHRoaXMgd2hvbGUg
c2VyaWVzLCBhcyB0aGUgb3RoZXIgcGF0Y2hlcyBkbyBub3QKPiBhcHBseSBhbnltb3JlIGR1ZSB0
byB0aGUgcmVjZW50IGZpeGVzIGluIHRoZSBzcGVha3VwIGNvZGUuCgpPaywgSSByZWJhc2VkIGFu
ZCByZXNlbnQuCgpTYW11ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpo
dHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
