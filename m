Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 3A5FE1638A2
	for <lists+speakup@lfdr.de>; Wed, 19 Feb 2020 01:42:38 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id A0C4B4280484; Tue, 18 Feb 2020 19:42:37 -0500 (EST)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 212514280475
	for <lists+speakup@lfdr.de>; Tue, 18 Feb 2020 19:42:37 -0500 (EST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E7E4E1C721C; Tue, 18 Feb 2020 19:42:36 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 283BD1C7211;
	Tue, 18 Feb 2020 19:42:27 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id AE18A1C6CF0; Tue, 18 Feb 2020 19:42:24 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 159791C0D8E
 for <speakup@linux-speakup.org>; Tue, 18 Feb 2020 19:42:23 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id ADC8D2D9D;
 Wed, 19 Feb 2020 01:41:50 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 562eYc6pACkp; Wed, 19 Feb 2020 01:41:50 +0100 (CET)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id E92F82D72;
 Wed, 19 Feb 2020 01:41:49 +0100 (CET)
Received: from samy by function.home with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1j4DQy-000BCH-Sv; Wed, 19 Feb 2020 01:41:48 +0100
Date: Wed, 19 Feb 2020 01:41:48 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
Subject: Re: speakup: kernel panics on 5.2+
Message-ID: <20200219004148.x4y7aevnfvr5czuv@function>
References: <a817aeb9-b980-838e-70a8-114dfd2b0387@gmail.com>
 <20200218204131.onnmxo46navmlq24@function>
 <3a989e1a-86ca-916f-63a1-42da9e203772@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a989e1a-86ca-916f-63a1-42da9e203772@gmail.com>
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

QWxleGFuZHIgRXBhbmVzaG5pa292LCBsZSBtZXIuIDE5IGbDqXZyLiAyMDIwIDAwOjE1OjM2ICsw
MzAwLCBhIGVjcml0Ogo+IHN1cmUuIGhlcmU6Cj4gaHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL29w
ZW4/aWQ9MVF5elFIR2dPX3ZEWTN5UWlhblQ1U1JBLWRXRDZQUm9jCj4gCj4gaWYgeW91IG5lZWQg
c29tZXRoaW5nIG1vcmUganVzdCBhc2suCgpJdCBzZWVtcyB0aGVyZSBhcmUgbm8gZGVidWdnaW5n
IHN5bWJvbHMsIGNvdWxkIHlvdSBhbHNvIHBvc3QgdGhlCmNvcnJlc3BvbmRpbmcgU3lzdGVtLm1h
cCBmaWxlPwoKU2FtdWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0
cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
