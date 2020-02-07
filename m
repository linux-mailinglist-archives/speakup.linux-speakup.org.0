Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 319C5155349
	for <lists+speakup@lfdr.de>; Fri,  7 Feb 2020 08:54:27 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 740F81C2C6C; Fri,  7 Feb 2020 02:54:26 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DC11E1C2CD9;
	Fri,  7 Feb 2020 02:53:54 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id D98171C2C6B; Fri,  7 Feb 2020 02:53:52 -0500 (EST)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 008C61C0D97
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 02:53:49 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 97A64366
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 08:53:47 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LiZWNBAsR2X8 for <speakup@linux-speakup.org>;
 Fri,  7 Feb 2020 08:53:47 +0100 (CET)
Received: from function.home (unknown
 [IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id E961221F
 for <speakup@linux-speakup.org>; Fri,  7 Feb 2020 08:53:46 +0100 (CET)
Received: from samy by function.home with local (Exim 4.93)
 (envelope-from <samuel.thibault@ens-lyon.org>) id 1izySQ-0017XB-1W
 for speakup@linux-speakup.org; Fri, 07 Feb 2020 08:53:46 +0100
Date: Fri, 7 Feb 2020 08:53:46 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: driving a serial synthesizer through speech-dispatcher
Message-ID: <20200207075346.vzponjq6kibrjzpp@function>
References: <20200207000127.GA6319@gregn.net>
 <m3v9ojhwb3.wl-covici@ccs.covici.com>
 <20200207042943.GA12133@gregn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207042943.GA12133@gregn.net>
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

R3JlZ29yeSBOb3dhaywgbGUgamV1LiAwNiBmw6l2ci4gMjAyMCAyMToyOTo0MyAtMDcwMCwgYSBl
Y3JpdDoKPiBSaWdodCwgdGhpcyB3b3VsZCByZXF1aXJlIGEgc3BlZWNoLWRpc3BhdGNoZXIgbW9k
dWxlIGZpbGUuIFRoZSB0aGluZwo+IEknbSBub3Qgc3VyZSBhYm91dCBpcyBob3cgdG8gZG8gdGhl
IHNlcmlhbCBwb3J0IEkvTyBmcm9tCj4gc3BlZWNoLWRpc3BhdGNoZXIuIFRoZSBzcGVlY2gtZGlz
cGF0Y2hlciBtb2R1bGVzIGFyZSAuY29uZiBmaWxlcywKCk5vdCBleGFjdGx5LiBzcGVlY2gtZGlz
cGF0Y2hlciBtb2R1bGVzIGFyZSAuYyBwcm9ncmFtcywgd2hpY2ggY2FuIHVzZSBhCi5jb25mIGZp
bGUgdG8gYmUgY29uZmlndXJlZC4KCkl0IGhhcHBlbnMgdGhhdCB0aGVyZSBpcyB0aGUgZ2VuZXJp
YyBtb2R1bGUgd2hpY2ggY2FuIGJlIG1hZGUgdG8gcnVuCndoYXRldmVyIGNvbW1hbmQgeW91IHdh
bnQgYnkgY29uZmlndXJpbmcgaXQgaW4gYSAuY29uZiBmaWxlLgoKQnV0IHlvdSBjYW4gcmVhbGx5
IGRvIHdoYXRldmVyIHlvdSB3YW50IGluIGFuIGVudGlyZWx5IG5ldyAuYyBzcGVlY2hkCm1vZHVs
ZS4KClNhbXVlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9s
aW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
