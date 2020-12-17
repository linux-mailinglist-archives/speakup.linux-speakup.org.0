Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C343F2DDC09
	for <lists+speakup@lfdr.de>; Fri, 18 Dec 2020 00:48:46 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3155C380FA8; Thu, 17 Dec 2020 18:48:46 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=speedpost.net header.i=@speedpost.net header.a=rsa-sha256 header.s=fm2 header.b=rhKYv31v;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=NlpKGsIP;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1E108380F4E;
	Thu, 17 Dec 2020 18:48:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 70714380C16; Thu, 17 Dec 2020 18:48:43 -0500 (EST)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3BF18380BE3
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 18:48:42 -0500 (EST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 3ED9F7B2
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 18:48:41 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 17 Dec 2020 18:48:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=speedpost.net;
 h=from:content-type:mime-version:subject:date:references:to
 :in-reply-to:message-id; s=fm2; bh=rdNyck9apBhUsUDp/RwV9Q07R98Ft
 XnOeleaqmuMDSU=; b=rhKYv31vJrHAvl6POUKM99REUIRiuxtFGIzPzDjF26WKd
 cuG6HtI6UsN3mx2FoJY/i4tOw9jyEmU8L+kC2bHfMp4oDQbibl33jSxeXCrcbu7t
 KDC2/3/d0/EEAV5TwzvRCTeCKKf06yoTJBcU4+clhJkhOtQwPINfUu3niU//RZ5y
 BQLvUIDaW9vTv3oKDQU/2LphnQ3y6zIU0fBkqmRxHFqTR+Y6Cc/Mf7pw+BLDvgTQ
 1AMEYUYWRYgFQFyzdoxWgVKYcpFJiZYID51PObw+EDmMGbdkj0BD64H32KXyIxc/
 guSKRPd+p0px+AMCTrGWXqIZjX3xmJPkZExzV5QeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=rdNyck
 9apBhUsUDp/RwV9Q07R98FtXnOeleaqmuMDSU=; b=NlpKGsIPoh/dnqRbDzdxje
 8aCIbSN1JUf9raakssSlIjFFA4v9LQUkaudgVXmli/xUWgZnHyM7rihKCpDA6kKX
 jmHZOvhloGXW9spBQhVVODa6uqVux+BWu+06cA7le9azDtx8gP4IJHouUc5izOw/
 LDgtyilwEe+v3TI266tWMWDBCHTyBDTJRFWQ4zIxJEp6Zp/yK/29bnGA18n1UXwk
 eAA5Uy7sLmiQOAif7HNBcYSIEV4D2Rbezrek+ThfU5fwNYFwLjvL660y5JA1eQU6
 IInK0FfMSPGwGjZKr40jEMEjx47AWL7YVul8tbn1k67u5r9S6MfQceFkeoduhB9A
 ==
X-ME-Sender: <xms:WO7bX0SOYTowSbqTCZZjQS_r2unpTqA2rN6GFWiWzy0DY7akuMxyGg>
 <xme:WO7bX3C0Ca-Mu2tSZD0MIGNMuYCKUYVKtwVI84Bn0kGlL6WFF6T7NjG0uGcV3Magq
 RAp3K6Q7gnVXgnV>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudelhedgudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhushhpvggtthffohhmrghinhculdegledmnecujfgurhephfgtggfuffhfvfgjkffo
 segrtdhmrehhtdejnecuhfhrohhmpegkrggthhgrrhihucfmlhhinhgvuceoiihklhhinh
 gvsehsphgvvgguphhoshhtrdhnvghtqeenucggtffrrghtthgvrhhnpeffgedvgfffffdu
 gfelfeekgeehhedvfedtffehhfdtfefggeeugfeifeejleefgeenucffohhmrghinhepgh
 hithhhuhgsrdgtohhmpdhgrhgvghhnrdhnvghtpdgvuhdrohhrghdplhhinhhugidqshhp
 vggrkhhuphdrohhrghenucfkphepieejrddukeefrddufeegrddvhedvnecuvehluhhsth
 gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepiihklhhinhgvsehsphgv
 vgguphhoshhtrdhnvght
X-ME-Proxy: <xmx:WO7bXzgTEo9EUBbNT9h2pD5BzXQe9FXfo3aACJVwZcePaWjxUdHGMQ>
 <xmx:WO7bXwN136OwgKUGfAo6lXrFdJIs7wWnraVj2e3_I7YWAdhtA6lm5A>
 <xmx:WO7bX07N4yn16EGpwyc9lFwhOkCvceIowkfRWCT06cCKLxZyRodtnw>
 <xmx:WO7bX3_Ea3ELpsctjYKNRgwV3R3SDr4jHTDD4IA_M4xtzhsmq4-KwA>
Received: from [10.0.0.222] (c-67-183-134-252.hsd1.wa.comcast.net
 [67.183.134.252])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1402A108005F
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 18:48:39 -0500 (EST)
From: Zachary Kline <zkline@speedpost.net>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.40.0.2.32\))
Subject: Re: Efficiently using terminal with screenreader
Date: Thu, 17 Dec 2020 15:48:38 -0800
References: <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
 <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
 <20201217184038.h7b764gsfxtjag4i@function>
 <B7379CEB-D226-42D2-B99A-46558F5B7D4D@speedpost.net>
 <20201217185942.ilfu5kbg2lmcwidi@function>
 <C0260469-C483-4C7D-A5CC-0CDBA6B3D6BD@speedpost.net>
 <12561F5D-AFC7-4753-B2C4-1ED017E1C020@icloud.com>
 <20201217202733.GA5439@gregn.net>
 <469ABC0F-0BFB-4F61-95D7-CCD11653FBA1@icloud.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
In-Reply-To: <469ABC0F-0BFB-4F61-95D7-CCD11653FBA1@icloud.com>
Message-Id: <2E1C2958-ADED-42BC-84F1-B4D0BF5178B4@speedpost.net>
X-Mailer: Apple Mail (2.3654.40.0.2.32)
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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

SGV5LAoKQSBmZXcgdGhvdWdodHMgYWJvdXQgdGhlIHRlcm1pbmFsIGluIE1hYyBPUy4KClRoZXJl
IGlzIGEgc2NyZWVuIHJlYWRlciBjYWxsZWQgVERTUiwgd2hpY2ggY2FuIGJlIGZvdW5kIGhlcmUg
b24gR2l0aHViIDxodHRwczovL2dpdGh1Yi5jb20vdHNwaXZleS90ZHNyPi4gSXQgaGFzIGJldHRl
ciBUZXJtaW5hbCBzdXBwb3J0IHRoYW4gVm9pY2VPdmVyLCB0aG91Z2ggdGFrZXMgc29tZSBnZXR0
aW5nIHVzZWQgdG8uCgpBcyBmYXIgYXMgeW91ciBtYWMgYW5kIGEgaGFyZHdhcmUgc3BlZWNoIHN5
bnRoZXNpemVyLCB1c2luZyBpdCB3aXRoIGEgdmlydHVhbCBtYWNoaW5lIGlzIHlvdXIgb25seSBv
cHRpb24uIFZvaWNlT3ZlciBkb2VzbuKAmXQgc3VwcG9ydCBoYXJkd2FyZSBzeW50aHMgYXQgYWxs
LiBGb3J0dW5hdGVseSwgaWYgeW91IHVzZSBpdCB3aXRoIGEgdmlydHVhbCBtYWNoaW5lLCB3aGlj
aCBJ4oCZdmUgZG9uZSBiZWZvcmUsIGl0IHNob3VsZCB3b3JrIGZhaXJseSB3ZWxsLgoKVGhhdCBi
ZWluZyBzYWlkLCBURFNSIGlzIHdvcnRoIGEgbG9vayBpZiB5b3XigJlyZSBvcGVuIHRvIGEgbGln
aHRlci13ZWlnaHQgc29sdXRpb24uCkJlc3QsClphY2suCj4gT24gRGVjIDE3LCAyMDIwLCBhdCAx
MjozNyBQTSwgUmVlY2UgTydCcnlhbiA8cmVlY2Uub2JyeWFuQGljbG91ZC5jb20+IHdyb3RlOgo+
IAo+IEdyZWF0ISBTZWVtcyB0byBiZSB0aGUgc2FtZSBwcm9jZXNzIGFzIGNvbm5lY3RpbmcgYSBu
ZXR3b3JrIGFkYXB0ZXIgdG8gYSB2aXJ0dWFsIG1hY2hpbmUuCj4gVGhhdCBpcyBhIGxpdHRsZSBk
aXNjb3VyYWdpbmcgSSBjYW7igJl0IGNvbXBpbGUgb24gbXkgTWFjQm9vay4gVGhlIG5hdGl2ZSB0
ZXJtaW5hbCBkb2VzbuKAmXQgc2VlbSB0byBiZSBhY2Nlc3NpYmxlLiBJIGNhbuKAmXQgcmVhZCB0
aGUgb3V0cHV0IGxpbmUgYnkgbGluZSwgb25seSB0aGUgZW50aXJlIG91dHB1dCBmcm9tIHRvcCB0
byBib3R0b20gb2YgdGhlIHRlcm1pbmFsLiBJIGNvdWxkIGJlIG1pc3Npbmcgc29tZXRoaW5nLCBJ
IGFtIHN0aWxsIHF1aXRlIG5ldyB0byB2b2ljZW92ZXIuIEFsdGhvdWdoIEkgaGF2ZSB0YWxrZWQg
d2l0aCBhIGNvdXBsZSBvZiBNYWNCb29rIHVzZXJzIHRoYXQgaGF2ZSB1c2VkIHZvaWNlb3ZlciBm
b3IgcXVpdGUgYSBmZXcgeWVhcnMsIHRoZXkgYXJlIG5vdCBmYW1pbGlhciB3aXRoIHRlcm1pbmFs
LCBidXQgc3RpbGwgY291bGQgbm90IGZpZ3VyZSBvdXQgaG93IHRvIG5hdmlnYXRlIGl0IGVhc2ls
eSBlaXRoZXIuIE1heWJlIHRoZSBoYXJkd2FyZSBzeW50aGVzaXplciBjb3VsZCBoZWxwIHRoZXJl
LiAoPykKPiAKPiBUaGFuayB5b3UsCj4gCj4gLVJlZWNlIAo+IAo+PiBPbiBEZWMgMTcsIDIwMjAs
IGF0IDM6MjcgUE0sIEdyZWdvcnkgTm93YWsgPGdyZWdAZ3JlZ24ubmV0PiB3cm90ZToKPj4gCj4+
PiBPbiBUaHUsIERlYyAxNywgMjAyMCBhdCAwMzowMDo1MlBNIC0wNTAwLCBSZWVjZSBPJ0JyeWFu
IHdyb3RlOgo+Pj4gSXMgaXQgcG9zc2libGUgdG8gY29tcGlsZSBzcGVhayB1cCBvbiBteSBNYWNC
b29rPwo+PiAKPj4gTm8uCj4+IAo+Pj4gT24gVGh1LCBEZWMgMTcsIDIwMjAgYXQgMDM6MTI6NTRQ
TSAtMDUwMCwgUmVlY2UgTydCcnlhbiB3cm90ZToKPj4+IEp1c3QgdG8gY29uZmlybSwgSeKAmW0g
Z29pbmcgdG8gbmVlZCBhIHNlcmlhbCBhZGFwdGVyIHRvIHBsdWcgaW4gdG8gbXkKPj4gVVNCIGh1
YiBjb25uZWN0ZWQgdG8gbXkgTWFjQm9vaywgdGhlbiBjb25uZWN0IGEgaGFyZHdhcmUgc3ludGhl
c2l6ZXIKPj4gdG8gdGhlIGNlcmVhbC4KPj4gCj4+IENvcnJlY3QuCj4+IAo+Pj4gRG9pbmcgaXQg
dGhpcyB3YXkgd291bGQgSSBiZSBhYmxlIHRvIHVzZSB0aGUgaGFyZHdhcmUgc3ludGhlc2l6ZXIg
aW5zaWRlIG9mIHZpcnR1YWxCb3ggcnVubmluZyBEZWJpYW4gYW5kIFNwZWFrdXA/IEkgYXNzdW1l
IHRoYXQgaXQgc2hvdWxkIGluIHRoZW9yeSwgYnV0IGlmIG5vdCBiZWNhdXNlIG9mIHRoZSB2aXJ0
dWFsaXphdGlvbiwgdGhlbiBwbGFuIEIgaXMgZG9pbmcgdGhlIGV4YWN0IHNhbWUgdGhpbmcgd2hp
bGUgYm9vdGluZyBmcm9tIHNvbWV0aGluZyBsaWtlIFVidW50dSBvbiB0aGUgVVNCLgo+PiAKPj4g
WWVzLCB0aGF0IHNob3VsZCB3b3JrLCB0aG91Z2ggSSBoYXZlbid0IGRvbmUgdGhhdCBpbiBhIHdo
aWxlLiBZb3UgaGF2ZQo+PiB0byBvcHRpb25zIGhlcmUuIEZpcnN0IG9wdGlvbiBpcyB0byBkZWZp
bmUgYSBzZXJpYWwgcG9ydCB3aGljaCB3b3VsZAo+PiBhcHBlYXIgaW4geW91ciBndWVzdCBhcyBh
IHBoeXNpY2FsIHNlcmlhbCBwb3J0LCBhbmQgeW91IHdvdWxkIHNldCB0aGF0Cj4+IHVwIHRvIGlu
dGVyZmFjZSB0byB5b3VyIFVTQiBzZXJpYWwgcG9ydCBvbiB0aGUgaG9zdC4gVGhlIHNlY29uZCBv
cHRpb24KPj4gaXMgdG8gZGlycmVjdGx5IHBhc3MgdGhlIFVTQiBzZXJpYWwgYWRhcHRlciB0aHJv
dWdoIHRvIHRoZSBndWVzdC4gVGhlCj4+IHZpcnR1YWxib3ggdXNlcidzIG1hbnVhbCBoYXMgbW9y
ZSBkZXRhaWxzLgo+PiAKPj4gR3JlZwo+PiAKPj4gCj4+IC0tIAo+PiB3ZWIgc2l0ZTogaHR0cDov
L3d3dy5ncmVnbi5uZXQKPj4gZ3BnIHB1YmxpYyBrZXk6IGh0dHA6Ly93d3cuZ3JlZ24ubmV0L3B1
YmtleS5hc2MKPj4gc2t5cGU6IGdyZWduMQo+PiAoYXV0aG9yaXphdGlvbiByZXF1aXJlZCwgYWRk
IG1lIHRvIHlvdXIgY29udGFjdHMgbGlzdCBmaXJzdCkKPj4gSWYgd2UgaGF2ZW4ndCBiZWVuIGlu
IHRvdWNoIGJlZm9yZSwgZS1tYWlsIG1lIGJlZm9yZSBhZGRpbmcgbWUgdG8geW91ciBjb250YWN0
cy4KPj4gCj4+IC0tCj4+IEZyZWUgZG9tYWluczogaHR0cDovL3d3dy5ldS5vcmcvIG9yIG1haWwg
ZG5zLW1hbmFnZXJARVUub3JnCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4+IFNwZWFrdXBAbGludXgtc3Bl
YWt1cC5vcmcKPj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0
aW5mby9zcGVha3VwCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBTcGVha3VwIG1haWxpbmcgbGlzdAo+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcK
PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFr
dXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFr
dXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNw
ZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
