Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id B4A8E183EB2
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:38:12 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 49EF842804D1; Thu, 12 Mar 2020 21:38:12 -0400 (EDT)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id B4B3242804C0
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:38:11 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 95B641C7240; Thu, 12 Mar 2020 21:38:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E13CB1C72C4;
	Thu, 12 Mar 2020 21:30:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 803291C26F0; Sun,  1 Mar 2020 10:36:23 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id F40E11C0D99
 for <speakup@linux-speakup.org>; Sun,  1 Mar 2020 10:36:20 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 3708B2FAE;
 Sun,  1 Mar 2020 16:36:16 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zwf-_BVHZEmz; Sun,  1 Mar 2020 16:36:15 +0100 (CET)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 86C0B29D7;
 Sun,  1 Mar 2020 16:36:15 +0100 (CET)
Received: from samy by function.home with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1j8Qda-004aB2-94; Sun, 01 Mar 2020 16:36:14 +0100
Date: Sun, 1 Mar 2020 16:36:14 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
Subject: Re: speakup: kernel panics on 5.2+
Message-ID: <20200301153614.sspgpav5pt33yl5p@function>
References: <a817aeb9-b980-838e-70a8-114dfd2b0387@gmail.com>
 <20200218204131.onnmxo46navmlq24@function>
 <3a989e1a-86ca-916f-63a1-42da9e203772@gmail.com>
 <20200219004148.x4y7aevnfvr5czuv@function>
 <8ff2f707-9203-90aa-e6c0-de7da334e93f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ff2f707-9203-90aa-e6c0-de7da334e93f@gmail.com>
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
Cc: speakup@linux-speakup.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

SGVsbG8sCgpBbGV4YW5kciBFcGFuZXNobmlrb3YsIGxlIG1lci4gMTkgZsOpdnIuIDIwMjAgMjE6
MzE6MTQgKzAzMDAsIGEgZWNyaXQ6Cj4gaGVsbG8gU2FtdWVsLiBJIGJ1aWxkIGEga2VybmVsIHdp
dGggZGVidWdnaW5nIHN5bWJvbHMuIEkgaG9wZSBJIGRpZAo+IGV2ZXJ5dGhpbmcgcmlnaHQuIEkg
YWxzbyB1cGRhdGVkIGdpc3Qgd2l0aCBsb2cuCgpJIGhhZG4ndCBoYWQgdGhlIHRpbWUgdG8gZG93
bmxvYWQgdGhlIGdpc3QsIEkgY2FuJ3QgZmluZCBpdCBhbnkgbW9yZQp0aGVyZSwgY291bGQgeW91
IHB1dCBzb21ld2hlcmU/Cgo+IGZpbGUgd2l0aCBrZXJuZWwgYW5kIFN5c3RlbS5tYXA6Cj4gaHR0
cHM6Ly9yZXBvLnRhbGtpbmdhcmNoLmluZm8vbGludXgtZGVidWcudGFyLnpzdAoKKGp1c3QgdG8g
bWFrZSBzdXJlOiB0aGUgbG9nIG5lZWRzIHRvIG1hdGNoIHRoaXMga2VybmVsIGJ1aWxkIHNvIHRo
YXQgdGhlCmFkZHJlc3NlcyBtYXRjaCkKClNhbXVlbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4
LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlz
dGluZm8vc3BlYWt1cAo=
