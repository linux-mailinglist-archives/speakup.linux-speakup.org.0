Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 98F4D23BDD6
	for <lists+speakup@lfdr.de>; Tue,  4 Aug 2020 18:12:15 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DE6621C076B; Tue,  4 Aug 2020 12:12:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8B0F91C0803;
	Tue,  4 Aug 2020 12:12:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 4076D1C0769; Tue,  4 Aug 2020 12:12:09 -0400 (EDT)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 812C71C0758
 for <speakup@linux-speakup.org>; Tue,  4 Aug 2020 12:12:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 8E93DE765;
 Tue,  4 Aug 2020 18:11:37 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sDQfZDMn0Rnd; Tue,  4 Aug 2020 18:11:36 +0200 (CEST)
Received: from function (lfbn-bor-1-797-11.w86-234.abo.wanadoo.fr
 [86.234.239.11])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id D4671E2D2;
 Tue,  4 Aug 2020 18:11:36 +0200 (CEST)
Received: from samy by function with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1k2zXL-0027ud-Um; Tue, 04 Aug 2020 18:11:35 +0200
Date: Tue, 4 Aug 2020 18:11:35 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/2] speakup: only build serialio when ISA is enabled
Message-ID: <20200804161135.pgwqbaahdtxhe7cq@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, speakup@linux-speakup.org
References: <20200804111332.dex7jobmabifdzw5@function>
 <20200804113413.GA181242@kroah.com>
 <20200804114951.ijs3hnezi4f64nll@function>
 <20200804115817.GC203147@kroah.com>
 <20200804153542.zowupa4ygdgxnciu@function>
 <20200804154952.GB495852@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804154952.GB495852@kroah.com>
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
Cc: linux-riscv@lists.infradead.org, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

R3JlZyBLSCwgbGUgbWFyLiAwNCBhb8O7dCAyMDIwIDE3OjQ5OjUyICswMjAwLCBhIGVjcml0Ogo+
ID4gI2RlZmluZSBpbmIoYykJCSh7IHU4ICBfX3Y7IF9faW9fcGJyKCk7IF9fdiA9IHJlYWRiX2Nw
dSgodm9pZCopKFBDSV9JT0JBU0UgKyAoYykpKTsgX19pb19wYXIoX192KTsgX192OyB9KQo+ID4g
Cj4gPiBhbmQgdGh1cyB5ZXMgaXQncyBhcml0aG1ldGljIG92ZXIgYSAodm9pZCopIHBvaW50ZXIs
IHRoZSBjYWxsZXIgY2Fubm90Cj4gPiBkbyBhbnl0aGluZyBhYm91dCBpdC4KPiAKPiBBbmQgdGhh
dCdzIGZpbmUsIG1hdGggd2l0aCBwb2ludGVycywgZXZlbiB2b2lkIG9uZXMsIGlzIG9rLgoKQysr
IGRvZXNuJ3QgbGlrZSBpdCwgYnV0IGluIGdlbmVyYWwgY29tcGlsZXJzIHByb3ZpZGUgc29tZSBz
ZW1hbnRpYyBmb3IKaXQsIHllcy4KCj4gSSB3b25kZXIgd2h5IHJpc2N2IHdhcyBjb21wbGFpbmlu
ZyBhYm91dCB0aGF0LiAgSXQncyBub3QgbmljZSwgYnV0IGl0IGlzCj4gdmFsaWQgQy4KClN0cmlj
dGx5IEMgc3BlYWtpbmcsIG5vLCBidXQgR05VIEMgeWVzLgoKPiBMZXQncyBzZWUgaWYgYW55IG9m
IHRoZWlyIGRldmVsb3BlcnMgY2FyZSBhYm91dCBpdCA6KQoKT2sgOikgSW4gdGhlIG1lYW53aGls
ZSBJIHNlbnQgYSB2MiBzZXJpZXMgdGhhdCBzaG91bGQgZml4IHRoZSBkaWZmZXJlbnQKbGluayBj
YXNlcywganVzdCBub3QgdGhlIHBhcnRpY3VsYXIgcmlzY3Ygd2FybmluZy4KClNhbXVlbApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxp
bmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9y
Zy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
