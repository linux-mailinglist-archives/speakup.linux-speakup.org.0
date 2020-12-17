Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 412922DD8B0
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 19:51:03 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B8700380F1F; Thu, 17 Dec 2020 13:51:02 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8944F380F28;
	Thu, 17 Dec 2020 13:51:01 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id AF6DB380BF2; Thu, 17 Dec 2020 13:51:00 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 7FC9838096A
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 13:51:00 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 733B13B3
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 19:50:28 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O9b0bwWdTEkX for <speakup@linux-speakup.org>;
 Thu, 17 Dec 2020 19:50:27 +0100 (CET)
Received: from function.youpi.perso.aquilenet.fr (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id B9DDA31F
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 19:50:27 +0100 (CET)
Received: from samy by function.youpi.perso.aquilenet.fr with local (Exim 4.94)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1kpyM6-007qvC-Pl
 for speakup@linux-speakup.org; Thu, 17 Dec 2020 19:50:26 +0100
Date: Thu, 17 Dec 2020 19:50:26 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Efficiently using terminal with screenreader
Message-ID: <20201217185026.ehntl42wlnd77u3l@function>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
 <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
 <20201217184038.h7b764gsfxtjag4i@function>
 <6d5040f0-5528-4fc4-43c3-48403fbf4a2@hubert-humphrey.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d5040f0-5528-4fc4-43c3-48403fbf4a2@hubert-humphrey.com>
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

Q2hpbWUgSGFydCwgbGUgamV1LiAxNyBkw6ljLiAyMDIwIDEwOjQ0OjI4IC0wODAwLCBhIGVjcml0
Ogo+IFdlbGwsIGlmIFNwZWFrdXAgZG9lcyBzdXBwb3J0IGEgVSBTIEIgY29ubmVjdGlvbiwgdGhl
biB3aHkgbXVzdCBJIHJ1biBteQo+IERlY1RhbGsgaW4gYW4gUlMyMzIgbW9kZT8KCllvdSBtZWFu
LCBiZWNhdXNlIG90aGVyd2lzZSB5b3UgaGF2ZSBhIDRzIGxhdGVuY3k/IEZyb20gZGlzY3Vzc2lu
ZyB3aXRoCk1pa2UgaXQgc2VlbXMgc29tZWhvdyB5b3VyIGNvbXB1dGVyIHBvcnQgZ290IGhpdC4K
ClNhbXVlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51
eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
