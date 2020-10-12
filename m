Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6F6D928BFE8
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 20:42:36 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2E230380BF1; Mon, 12 Oct 2020 14:42:35 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=20200519 header.b=MUQY8e1m;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8A167380BE0;
	Mon, 12 Oct 2020 14:42:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 6CE3C380BB9; Mon, 12 Oct 2020 14:42:33 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [198.167.140.45])
 by befuddled.reisers.ca (Postfix) with UTF8SMTPS id C40A3380BB6
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 14:42:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
 s=20200519; t=1602528144;
 bh=85FybtTyxC9+9sMTThytUecd1SL2r1SLmMWyP3tXgvA=; l=1305;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=MUQY8e1mtDHyuZPGcMNqmUoxY50DmvtPqUkYl0a3Bj1r2Xv55UP66GglNW1/3yZlj
 5/4gpY68+TuGGliTF3P50bs76sNaAzexLy6rcIGtKVuTHVX0T99COWL1b9oNugNsZz
 qcQvYJYloJbhfprUi/OK8ph9CTvtpWUQ2Gc5AlD6q3KGBU4+EQY1QYgxZMdKAwhbRc
 z7ms8Uud4Qr1wK94RnuVnb2WXU7dKQWEWHzhptrbolSMX10rNsvtsaP5kKVbyX25Y2
 KkXFZNhRqzn/ZsQYcSu93uNUqOomNH0D20CT3Pg+jldmS1zPjjh/Da0ure+UIZE2Kk
 48tKweBeCuMiw==
Received: from [192.168.4.2] ([::ffff:64.180.234.143])
 (AUTH: LOGIN tspivey@pcdesk.net, TLS: TLSv1.3, 128bits, TLS_AES_128_GCM_SHA256)
 by mail.pcdesk.net with ESMTPSA
 id 000000000002A445.000000005F84A390.00027C36; Mon, 12 Oct 2020 14:42:24 -0400
Subject: Re: So, where'd the volume controls get to?
To: speakup@linux-speakup.org
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
 <20201010193636.35lws35s7dyliyto@function> <20201012045350.GA3377@gregn.net>
 <alpine.DEB.2.23.453.2010120941280.74954@befuddled.reisers.ca>
 <Pine.LNX.4.64.2010121338340.8392@server2.shellworld.net>
 <20201012174753.zb567shppwc2rapz@function>
 <Pine.LNX.4.64.2010121414500.8392@server2.shellworld.net>
 <20201012182441.gcupraubokst2j3q@function>
 <Pine.LNX.4.64.2010121429570.8392@server2.shellworld.net>
From: Tyler Spivey <tspivey@pcdesk.net>
Message-ID: <8340cb18-2ca2-b94e-3b58-f07f061ba8a8@pcdesk.net>
Date: Mon, 12 Oct 2020 11:42:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2010121429570.8392@server2.shellworld.net>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

V2hlcmUgaXMgdGhlIGdlbm1hcCB1dGlsaXR5IGRpc2N1c3NlZCBpbiB0aGUgZ3VpZGUgKHNwa2d1
aWRlLnR4dCBpbiBteSAKa2VybmVsIHNvdXJjZSk/ClRoYXQgd2F5IHdlIGNvdWxkIGp1c3QgYWRk
IG91ciBvd24ga2V5IGJpbmRpbmdzLiBJcyB0aGUgZ3VpZGUgb3V0ZGF0ZWQ/CgpPbiAxMC8xMi8y
MDIwIDExOjMxIEFNLCBLYXJlbiBMZXdlbGxlbiB3cm90ZToKPiBJIGNhbiByZXNwZWN0IHRoYXQg
c3RhbmNlLiBIb3dldmVyIHRoZXJlIGFyZSBhcyBtYW55IHdheXMgdG/CoCBkZWNpZGUgCj4gd2hh
dCBpc8KgIGRlc2lyZWQgaW4gb25lJ3MgY29tcHV0ZXIgdG9vbHMgYXMgdGhlcmUgYXJlIGluZGl2
aWR1YWxzIHVzaW5nIAo+IHRoZW0uCj4gYmV0dGVyIHRvIGJ1aWxkIGFuIGV4aXN0aW5nIGJ1ZmZl
dCBvZiBvcHRpb25zIHRoYW4gaGF2ZSB0byBhZGQgdGhpbmdzIGluIAo+IG9uZcKgIGF0IGEgdGlt
ZSBsYXRlci4KPiAKPiAKPiAKPiBPbiBNb24sIDEyIE9jdCAyMDIwLCBTYW11ZWwgVGhpYmF1bHQg
d3JvdGU6Cj4gCj4+IEthcmVuIExld2VsbGVuLCBsZSBsdW4uIDEyIG9jdC4gMjAyMCAxNDoxOTo0
MCAtMDQwMCwgYSBlY3JpdDoKPj4+IG9uZSBkZXNpcmVzIHRoZSBmbGV4aWJpbGl0eSBvZiBhZGp1
c3RpbmcgaG93IG11Y2ggb3IgaG93IGxpdHRsZQo+Pj4gaW5mbGVjdGlvbiBpcyBwcm92aWRlZC4u
d2l0aG91dCBoYXZpbmcgdG8gYmUgYSBjb21wdXRlciBwcm9ncmFtbWVyIGFuZAo+Pj4gZWRpdCB0
aGF0IHdheS4KPj4KPj4gU3VyZSwgSSBqdXN0IG1lYW4gdGhhdCB0aGVyZSBhcmVuJ3Qgc28gbWFu
eSBzaG9ydGN1dHMgcG9zc2liaWxpdGllcyBvdXQKPj4gdGhlcmUuIEl0J3MgdXAgdG8gdGhlIHNw
ZWFrdXAgY29tbXVuaXR5IHRvIGRlY2lkZSB3aGV0aGVyIGFzc2lnbmluZyBhCj4+IGRlZmF1bHQg
c2hvcnRjdXQgaXMgZGVzaXJlZC4KPj4KPj4gU2FtdWVsCj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4+IFNw
ZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1i
aW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCj4+Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGVha3VwIG1haWxpbmcgbGlzdAo+IFNwZWFr
dXBAbGludXgtc3BlYWt1cC5vcmcKPiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9t
YWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3Vw
Lm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3Nw
ZWFrdXAK
