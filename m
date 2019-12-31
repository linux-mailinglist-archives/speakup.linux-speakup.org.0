Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5D48D12DA04
	for <lists+speakup@lfdr.de>; Tue, 31 Dec 2019 17:03:44 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BAC8E1C46D4; Tue, 31 Dec 2019 11:03:43 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B34C41C471C;
	Tue, 31 Dec 2019 11:03:40 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A876C1C46B9; Tue, 31 Dec 2019 11:03:38 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 793B01C446B
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 11:03:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id CCDEE11D1
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 17:03:34 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KIC-DllpRu6l for <speakup@linux-speakup.org>;
 Tue, 31 Dec 2019 17:03:34 +0100 (CET)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 5A5345F8
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 17:03:34 +0100 (CET)
Received: from samy by function.home with local (Exim 4.92.3)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1imJzZ-0006RL-VB
 for speakup@linux-speakup.org; Tue, 31 Dec 2019 17:03:33 +0100
Date: Tue, 31 Dec 2019 17:03:33 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup locking box on latest linux 5.3.15-1
Message-ID: <20191231160333.llw4xqg55jyudkzg@function>
References: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
 <20191231114129.GA1937@rednote.net>
 <alpine.DEB.2.21.1912310943070.9526@befuddled.reisers.ca>
 <8d32a2c2-8cbf-c5c7-6f48-b4fd440a5da8@slint.fr>
 <alpine.DEB.2.21.1912311045030.12026@befuddled.reisers.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1912311045030.12026@befuddled.reisers.ca>
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

SGVsbG8sCgpLaXJrIFJlaXNlciwgbGUgbWFyLiAzMSBkw6ljLiAyMDE5IDEwOjUzOjI0IC0wNTAw
LCBhIGVjcml0Ogo+IEhleSBEaWRpZXI6IEFsbCBvZiB0aGUga2VybmVscyBJIHRlc3RlZCB3ZXJl
IGRlYmlhbiBzaWQgcGFja2FnZXMuIFRoZQo+IG1vc3QgcmVjZW50IHdhcyBhIERlY2VtYmVyIHR3
ZWx2ZSBidWlsZCBJIGJlbGlldmUuIEkgaGF2ZSBub3Qgc2VlbiBhbnkKPiA1LjQueCBrZXJuZWxz
IGF2YWlsYWJsZSB1bmRlciBzaWQgeWV0LiBBZG1pdHRlZGx5LCBJIGRvbid0IHRyeSB0bwo+IHVw
Z3JhZGUgZXZlcnkgZGF5IG9yIGFueXRoaW5nLgoKSXQgaGFzIGJlZW4gdXBsb2FkZWQgdG8gc2lk
IG9ubHkgcmVjZW50bHksIG9uIDI4dGggZGVjZW1iZXIgOikKClNhbXVlbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApT
cGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmlu
L21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
