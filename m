Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B56302D5F85
	for <lists+speakup@lfdr.de>; Thu, 10 Dec 2020 16:24:16 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 33684380F33; Thu, 10 Dec 2020 10:24:16 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8F08C380F11;
	Thu, 10 Dec 2020 10:24:14 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id EE583380E96; Thu, 10 Dec 2020 10:24:13 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CCA44380B10
 for <speakup@linux-speakup.org>; Thu, 10 Dec 2020 10:24:13 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 8D7ECCF7;
 Thu, 10 Dec 2020 16:24:12 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id duy2vdE50n8e; Thu, 10 Dec 2020 16:24:11 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id D0E95CF6;
 Thu, 10 Dec 2020 16:24:11 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1knNne-009ptZ-DX; Thu, 10 Dec 2020 16:24:10 +0100
Date: Thu, 10 Dec 2020 16:24:10 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [patch 1/3] speakup: Add synth parameter to io functions
Message-ID: <20201210152410.xwmpludozj2vklio@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 speakup@linux-speakup.org
References: <20201209205829.693745475@ens-lyon.org>
 <20201209205838.531299374@ens-lyon.org>
 <X9I9Xwh+Q3tHXh88@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X9I9Xwh+Q3tHXh88@kroah.com>
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

R3JlZyBLSCwgbGUgamV1LiAxMCBkw6ljLiAyMDIwIDE2OjIzOjExICswMTAwLCBhIGVjcml0Ogo+
IE9uIFdlZCwgRGVjIDA5LCAyMDIwIGF0IDA5OjU4OjMwUE0gKzAxMDAsIHNhbXVlbC50aGliYXVs
dEBlbnMtbHlvbi5vcmcgd3JvdGU6Cj4gPiBUaGlzIG1lcmVseSBhZGRzIHRoZSBtaXNzaW5nIHN5
bnRoIHBhcmFtZXRlciB0byBhbGwgaW8gZnVuY3Rpb25zLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBTYW11ZWwgVGhpYmF1bHQgPHNhbXVlbC50aGliYXVsdEBlbnMtbHlvbi5vcmc+Cj4gPiAKPiAK
PiBUaGUgYnVpbGQgc3RpbGwgYnJlYWtzIHdoZW4gdGhpcyBwYXRjaCBpcyBhcHBsaWVkOgoKPz8g
SSdsbCBoYXZlIHRvIGNoZWNrCgo+IFlvdSBjYW4ndCBicmVhayB0aGUgYnVpbGQgb24gYW55IHBh
dGNoZXMgaW4gYSBzZXJpZXMgOigKClN1cmXCoCEgSW4gbXkgdGVzdHMgdGhlIGJ1aWxkIHBhc3Nl
cyBmaW5lIHdpdGhvdXQgYW55IHdhcm5pbmcgYXQgZWFjaApwYXRjaC4uLgoKU2FtdWVsCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGlu
ZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3Jn
L2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
