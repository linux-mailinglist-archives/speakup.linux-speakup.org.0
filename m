Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 06E0E16333D
	for <lists+speakup@lfdr.de>; Tue, 18 Feb 2020 21:42:15 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 1D6E842804A3; Tue, 18 Feb 2020 15:42:11 -0500 (EST)
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 597D44280493
	for <lists+speakup@lfdr.de>; Tue, 18 Feb 2020 15:42:09 -0500 (EST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4F0861C7211; Tue, 18 Feb 2020 15:42:09 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 024981C7228;
	Tue, 18 Feb 2020 15:41:41 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B4AB71C7211; Tue, 18 Feb 2020 15:41:38 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B37521C2727
 for <speakup@linux-speakup.org>; Tue, 18 Feb 2020 15:41:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id D2E3B22A4;
 Tue, 18 Feb 2020 21:41:33 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d1qdawcbntD2; Tue, 18 Feb 2020 21:41:33 +0100 (CET)
Received: from function (lputeaux-656-1-124-130.w92-154.abo.wanadoo.fr
 [92.154.99.130])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 5E69522A3;
 Tue, 18 Feb 2020 21:41:33 +0100 (CET)
Received: from samy by function with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1j49gR-0004oR-TR; Tue, 18 Feb 2020 21:41:31 +0100
Date: Tue, 18 Feb 2020 21:41:31 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
Subject: Re: speakup: kernel panics on 5.2+
Message-ID: <20200218204131.onnmxo46navmlq24@function>
References: <a817aeb9-b980-838e-70a8-114dfd2b0387@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a817aeb9-b980-838e-70a8-114dfd2b0387@gmail.com>
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

QWxleGFuZHIgRXBhbmVzaG5pa292LCBsZSBtYXIuIDE4IGbDqXZyLiAyMDIwIDIwOjAyOjQ1ICsw
MzAwLCBhIGVjcml0Ogo+IEkgZ290IGHCoFsxXW9vcHMgcmVjb3JkLiBidXQgSSBkb27igJl0IGtu
b3cgaWYgaXQgd2lsbCBiZSB1c2VmdWwuCgpZZXMgaXQgd2lsbCwgY291bGQgeW91IGFsc28gcHV0
IHRoZSBjb3JyZXNwb25kaW5nIHZtbGludXogZmlsZSBzb21ld2hlcmUKc28gd2UgY2FuIGRvd25s
b2FkIGl0LCB0byBkZXRlcm1pbmUgd2hhdCB0aGUgaGV4IHZhbHVlcyBvZiB0aGUgcmVjb3JkCmNv
cnJlc3BvbmQgdG8/CgpTYW11ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9y
ZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFr
dXAK
