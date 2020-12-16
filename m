Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A46182DC961
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 00:06:47 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41DBD380F3B; Wed, 16 Dec 2020 18:06:47 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1122E380F1D;
	Wed, 16 Dec 2020 18:06:46 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7A3B6380EBA; Wed, 16 Dec 2020 18:06:44 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 57085380B14
 for <speakup@linux-speakup.org>; Wed, 16 Dec 2020 18:06:44 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 8303BE73
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 00:06:41 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OyZi8Z8N3KbZ for <speakup@linux-speakup.org>;
 Thu, 17 Dec 2020 00:06:40 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr
 (lfbn-bor-1-56-204.w90-50.abo.wanadoo.fr [90.50.148.204])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id BC1E4E45
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 00:06:40 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kpfqQ-0068zs-78
 for speakup@linux-speakup.org; Thu, 17 Dec 2020 00:04:30 +0100
Date: Thu, 17 Dec 2020 00:04:30 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: 8-bit characters in output
Message-ID: <20201216230430.cog65dc5ay6d65zo@function>
References: <E1kosWy-0005Aq-Ua@wb5agz>
 <20201214234815.ovab4h362z2swvdv@function>
 <E1kpfoC-0007Pr-Tr@wb5agz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1kpfoC-0007Pr-Tr@wb5agz>
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

TWFydGluIE1jQ29ybWljaywgbGUgbWVyLiAxNiBkw6ljLiAyMDIwIDE3OjAyOjEyIC0wNjAwLCBh
IGVjcml0Ogo+IFNhbXVlbCBUaGliYXVsdCA8c2FtdWVsLnRoaWJhdWx0QGVucy1seW9uLm9yZz4g
d3JpdGVzOgo+ID4gV2hpY2ggc3BlZWNoIHN5bnRoZXNpcyBhcmUgeW91IHVzaW5nPwo+IAo+IEl0
IGlzIHRoZSBzb2Z0d2FyZSBzcGVlY2ggb25lIGhlYXJzIGlmIGluc3RhbGxpbmcgZGViaWFuIGZy
b20gYSBsaXZlCj4gQ0QKCk9rIDopCgo+IEl0IGhhcyBiZWVuIGRpZmZpY3VsdCB0byBmaWd1cmUg
b3V0IGV4YWN0bHkgd2hhdCBhbHdheXMgdHJpZ2dlcnMgdGhpcwo+IGVmZmVjdCBidXQgSSBtYXkg
d3JpdGUgYSBwZXJsIHNjcmlwdCB0byBnZW5lcmF0ZSA4LWJpdCBvdXRwdXQgdG8gc2VlCj4gaWYg
SSBjYW4gZmlndXJlIG91dCB3aGF0IGlzIGNhdXNpbmcgaXQKClRoYXQgY291bGQgYmUgdXNlZnVs
IGluZGVlZC4gT25jZSB3ZSBoYXZlIGFuIGVhc3kgcmVwcm9kdWNlciwgaXQncwp1c3VhbHkgdmVy
eSBlYXN5IHRvIGZpeCB0aGUgYnVnIDopCgpTYW11ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51
eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xp
c3RpbmZvL3NwZWFrdXAK
