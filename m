Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B902D2E0318
	for <lists+speakup@lfdr.de>; Tue, 22 Dec 2020 00:53:56 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 31DF9380F87; Mon, 21 Dec 2020 18:53:56 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=VEUhHPL4;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 15A59380F63;
	Mon, 21 Dec 2020 18:53:54 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id ABEE3380C1A; Mon, 21 Dec 2020 18:53:52 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 52139380974
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 18:53:52 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a37:aca3:28bb:a8b8:1c87:d62b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id F272CCE8
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 15:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1608594830; bh=zjNv2OdjQdex1mcFl+wINeeg7AOBh8Nzpy+XXKzAJ0g=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=VEUhHPL4+yp+yuEJ4XHrGFmYGvVhKTyUFn0FnDtz70OficYbjBSN6178yI1W4enYy
 dbEvETUzXNZj6KRryduirJ3EiwZdqMcjEjMZ/h/WQ5s/0nEkMNie5l5dN5R+b1VceH
 7/aaFhHfCy8wlo1nbsm3+aBzIcDwrP6VZVzBjSxCBO4fheNwwlr59xdZd/8d0d7KTZ
 Cdi6RfazXKZG13DCRMZVwGYGyHW7L2lu0VkRZLojmrJXOeWU3aPvgzF/PFZUE9qF0v
 ItO4iic5wWbL1dfcw1ekFBF/PVXjb799RnnQpi7Iqf0KwC/mQWunDxxX3Ch+bApifR
 E3zl2ZYiH0NdQ==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1krUzs-0002Lx-F0
 for speakup@linux-speakup.org; Mon, 21 Dec 2020 16:53:48 -0700
Date: Mon, 21 Dec 2020 16:53:48 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Hosting speakup on freedesktop?
Message-ID: <20201221235348.GA7688@gregn.net>
References: <20201221214457.hu7cg3ino7yqqswn@function>
 <alpine.DEB.2.23.453.2012211701310.533489@befuddled.reisers.ca>
 <1acbbe44-f099-a08b-e788-cc64496eee88@poczta.onet.pl>
 <20201221222327.64thcwi6jb66fasc@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201221222327.64thcwi6jb66fasc@function>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
X-Virus-Status: Clean
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

T24gTW9uLCBEZWMgMjEsIDIwMjAgYXQgMTE6MjM6MjdQTSArMDEwMCwgU2FtdWVsIFRoaWJhdWx0
IHdyb3RlOgo+IE1pY2hhxYIgWmVnYW4sIGxlIGx1bi4gMjEgZMOpYy4gMjAyMCAyMzoxMjoxMSAr
MDEwMCwgYSBlY3JpdDoKPiA+IEp1c3Qgb25lIG5vdGU6IGl0IG1heSBub3QgYmUgaW1wb3J0YW50
IGVub3VnaCwgYnV0IHdoYXRldmVyIHRoZSBwcm9ibGVtCj4gPiBtYXkgb3IgbWF5IG5vdCBiZSB3
aXRoIGdpdGh1YiwgaXQgaXMgZmFyIG1vcmUgYWNjZXNzaWJsZSBhcyBhIHNpdGUgdGhhbgo+ID4g
Z2l0bGFiLgo+IAo+IEFoLCB0aGF0J3MgYW4gaW1wb3J0YW50IHBvaW50LiBEbyBwZW9wbGUgYWdy
ZWUgb24gdGhpcz8KClllcy4gSSBoYWQgYSBnaXRsYWIgYWNjb3VudCB3aXRoIHRoZSBkZXZ1YW4g
cHJvamVjdCBub3QgdG9vIGxvbmcgYWdvCndoZW4gdGhleSB3ZXJlIHN0aWxsIHVzaW5nIGdpdGxh
Yi4gSSBmb3VuZCBnaXRsYWIgbW9yZSBkaWZpY3VsdCB0bwp3b3JrIHdpdGggdGhhbiBnaXRodWIu
IEFsc28sIEkgYWxyZWFkeSBoYXZlIGEgZ2l0aHViIGFjY291bnQgd2hpY2ggSQpjYW4gdXNlIGZv
ciBsb3RzIG9mIHByb2plY3RzLCBhbmQgSSBkb24ndCByZWxpc2ggdGhlIGlkZWEgb2YgY3JlYXRp
bmcKb25lIG1vcmUgYWNjb3VudCB0aGF0IEkgd291bGQgcHJvYmFibHkgb25seSB1c2UgZm9yIG9u
ZSBwcm9qZWN0LCBzaW5jZQpJJ20gbm90IGEgZmFuIG9mIHRoZSBvdGhlciBmcmVlZGVza3RvcC5v
cmcgcHJvamVjdHMgbGlrZSBwdWxzZWF1ZGlvCmFuZCBzeXN0ZW1kLiBXaGlsZSBJJ20gbm90IGEg
ZmFuIG9mIE1pY3Jvc29mdCBlaXRoZXIsIEkgdGhpbmsgaXQKdW5saWtlbHkgdGhleSB3b3VsZCBj
bG9zZSBkb3duIGdpdGh1YiBvbiBzaG9ydCBub3RpY2UuIEp1c3QgbXkgJDAuMDEgd29ydGguCgpH
cmVnCgoKLS0gCndlYiBzaXRlOiBodHRwOi8vd3d3LmdyZWduLm5ldApncGcgcHVibGljIGtleTog
aHR0cDovL3d3dy5ncmVnbi5uZXQvcHVia2V5LmFzYwpza3lwZTogZ3JlZ24xCihhdXRob3JpemF0
aW9uIHJlcXVpcmVkLCBhZGQgbWUgdG8geW91ciBjb250YWN0cyBsaXN0IGZpcnN0KQpJZiB3ZSBo
YXZlbid0IGJlZW4gaW4gdG91Y2ggYmVmb3JlLCBlLW1haWwgbWUgYmVmb3JlIGFkZGluZyBtZSB0
byB5b3VyIGNvbnRhY3RzLgoKLS0KRnJlZSBkb21haW5zOiBodHRwOi8vd3d3LmV1Lm9yZy8gb3Ig
bWFpbCBkbnMtbWFuYWdlckBFVS5vcmcKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3Vw
Lm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3Nw
ZWFrdXAK
