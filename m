Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 94F2D2D67EA
	for <lists+speakup@lfdr.de>; Thu, 10 Dec 2020 21:03:14 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A1A85380F24; Thu, 10 Dec 2020 15:03:12 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F1012380F19;
	Thu, 10 Dec 2020 15:03:08 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id ED834380EB0; Thu, 10 Dec 2020 15:03:06 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CB58C380BC8
 for <speakup@linux-speakup.org>; Thu, 10 Dec 2020 15:03:06 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 1ED2ECE0;
 Thu, 10 Dec 2020 21:03:05 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D0xrO6R4wL3V; Thu, 10 Dec 2020 21:03:04 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 0E56FA25;
 Thu, 10 Dec 2020 21:03:03 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1knS9U-00AfPF-67; Thu, 10 Dec 2020 21:03:00 +0100
Date: Thu, 10 Dec 2020 21:03:00 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [patch 1/3] speakup: Add synth parameter to io functions
Message-ID: <20201210200300.oqwb2zieoxhahiio@function>
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
IFRoZSBidWlsZCBzdGlsbCBicmVha3Mgd2hlbiB0aGlzIHBhdGNoIGlzIGFwcGxpZWQ6Cgo+IGRy
aXZlcnMvYWNjZXNzaWJpbGl0eS9zcGVha3VwL3Nwa190dHlpby5jOjM0NDoxODogbm90ZTogaW4g
ZXhwYW5zaW9uIG9mIG1hY3JvIOKAmFNQS19TWU5USF9USU1FT1VU4oCZCj4gICAzNDQgfCAgcmV0
dXJuIHR0eWlvX2luKFNQS19TWU5USF9USU1FT1VUKTsKClNvcnJ5LCBJIGhhZCBhIHJlZnJlc2gg
bWlzc2luZy4gSSBkb24ndCBjb250cmlidXRlIG9mdGVuIGVub3VnaCB0byBMaW51eAphbnkgbW9y
ZSwgbXkgcXVpbHQtZnUgaXMgbGFja2luZyA6KQoKSSdsbCByZXNlbmQgdGhlIHNlcmllcy4KClNh
bXVlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVh
a3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1z
cGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
