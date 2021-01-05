Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B620F2EAC0A
	for <lists+speakup@lfdr.de>; Tue,  5 Jan 2021 14:40:23 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 36941380FB6; Tue,  5 Jan 2021 08:40:19 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2F016380FA9;
	Tue,  5 Jan 2021 08:40:18 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 27002380ED3; Tue,  5 Jan 2021 08:40:17 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CC548380EC6
 for <speakup@linux-speakup.org>; Tue,  5 Jan 2021 08:40:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id C5B6460F;
 Tue,  5 Jan 2021 14:39:37 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id doaz35AjzFCr; Tue,  5 Jan 2021 14:39:37 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 04C53186;
 Tue,  5 Jan 2021 14:39:36 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1kwmYh-002Fjm-TQ; Tue, 05 Jan 2021 14:39:35 +0100
Date: Tue, 5 Jan 2021 14:39:35 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [patch 1/3] speakup: Add synth parameter to io functions
Message-ID: <20210105133935.3kk47m5ae6mkl4k2@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
References: <20201209205829.693745475@ens-lyon.org>
 <20201209205838.531299374@ens-lyon.org>
 <X9I9Xwh+Q3tHXh88@kroah.com>
 <20201210200300.oqwb2zieoxhahiio@function>
 <X/RsI/qmMXcGVVtc@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X/RsI/qmMXcGVVtc@kroah.com>
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

R3JlZyBLSCwgbGUgbWFyLiAwNSBqYW52LiAyMDIxIDE0OjM5OjQ3ICswMTAwLCBhIGVjcml0Ogo+
IE9uIFRodSwgRGVjIDEwLCAyMDIwIGF0IDA5OjAzOjAwUE0gKzAxMDAsIFNhbXVlbCBUaGliYXVs
dCB3cm90ZToKPiA+IEdyZWcgS0gsIGxlIGpldS4gMTAgZMOpYy4gMjAyMCAxNjoyMzoxMSArMDEw
MCwgYSBlY3JpdDoKPiA+ID4gVGhlIGJ1aWxkIHN0aWxsIGJyZWFrcyB3aGVuIHRoaXMgcGF0Y2gg
aXMgYXBwbGllZDoKPiA+IAo+ID4gPiBkcml2ZXJzL2FjY2Vzc2liaWxpdHkvc3BlYWt1cC9zcGtf
dHR5aW8uYzozNDQ6MTg6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhTUEtfU1lOVEhf
VElNRU9VVOKAmQo+ID4gPiAgIDM0NCB8ICByZXR1cm4gdHR5aW9faW4oU1BLX1NZTlRIX1RJTUVP
VVQpOwo+ID4gCj4gPiBTb3JyeSwgSSBoYWQgYSByZWZyZXNoIG1pc3NpbmcuIEkgZG9uJ3QgY29u
dHJpYnV0ZSBvZnRlbiBlbm91Z2ggdG8gTGludXgKPiA+IGFueSBtb3JlLCBteSBxdWlsdC1mdSBp
cyBsYWNraW5nIDopCj4gPiAKPiA+IEknbGwgcmVzZW5kIHRoZSBzZXJpZXMuCj4gCj4gRGlkIHlv
dSByZXNlbmQgdGhpcz8gIEkgY2FuJ3QgZmluZCBpdC4uLgoKSSBiZWxpZXZlIHNvLCBidXQgSSds
bCByZXNlbmQgYWdhaW4gYW55d2F5ICh3aXRoIHNvbWUgbW9yZSBjaGFuZ2VzIGlpcmMpCgpTYW11
ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BlYWt1
cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgtc3Bl
YWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
