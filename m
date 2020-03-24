Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 6E213191B47
	for <lists+speakup@lfdr.de>; Tue, 24 Mar 2020 21:46:11 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 56FF8428047E; Tue, 24 Mar 2020 16:46:10 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; secure) header.d=protonmail.com header.i=@protonmail.com header.b="sYHqf1p3";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id DBA3542804B0
	for <lists+speakup@lfdr.de>; Tue, 24 Mar 2020 16:43:52 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9DD0B1C73BD; Tue, 24 Mar 2020 16:43:52 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; secure) header.d=protonmail.com header.i=@protonmail.com header.a=rsa-sha256 header.s=default header.b=sYHqf1p3;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B987D1C73B1;
	Tue, 24 Mar 2020 16:43:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 798F31C57BD; Tue, 24 Mar 2020 16:43:04 -0400 (EDT)
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 818A31C0D87
 for <speakup@linux-speakup.org>; Tue, 24 Mar 2020 16:43:00 -0400 (EDT)
Date: Tue, 24 Mar 2020 20:42:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=default; t=1585082577;
 bh=q/jBMIXBWiyVH0u9HgvdKvF2VOT+pdbGK+HW+NJMhYk=;
 h=Date:To:From:Reply-To:Subject:In-Reply-To:References:From;
 b=sYHqf1p3ijfw9jRh/MsbDXGKoZDSdoQZSyPpLoAGCtmYufgUQazNYrNgKQQcSuMw3
 /t5smRwt+CRGN9f814VIGcRxdoF0y+iatSD6v6ctoQqnqKtfm7WXPoo2bVb+U0QqjB
 OdSO+bwUYlNNO0L1yRoQbtHbjP6KASGIPkTULhtY=
To: Glenn K0LNY <GlennErvin@cableone.net>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Tait Hoyem <tait.hoyem@protonmail.com>
Subject: Re: [raspberry-vi] A bit off topic,
 Speakup and Debian Stretch-Buster (fwd)
Message-ID: <HWIkUX-Dz0ig3A5ZUGYw25Fk_xNO6gOw9_YdvhWYAF9Gi-tsGHVasioSV3rNb_OAHm22PDGYFWAzqdk6uYW42k0I-nnc2Jspxomt8ykoWOk=@protonmail.com>
In-Reply-To: <030f01d601fb$4cb137f0$7001a8c0@NUCPPYH>
References: <Pine.LNX.4.64.2003211738470.31197@server2.shellworld.net>
 <20200322210257.zqxh5jp7fo64hp36@function>
 <030f01d601fb$4cb137f0$7001a8c0@NUCPPYH>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
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
Reply-To: Tait Hoyem <tait.hoyem@protonmail.com>,
 "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

PiBJIHdvdWxkIGxpa2UgdG8gZ2V0IGEgZGVza3RvcCBnb2luZywgYnV0IHRoaXMgUlBJIG1heSBu
b3QgaGF2ZSB0aGUgUkFNIGZvcgoKSSBhbHNvIGhhdmUgYW4gUlBpMi4gSSBjYW4gY29uZmlybSB0
aGF0IGFsdGhvdWdoIHRoZSBkZXNrdG9wIGV4cGVyaWVuY2UgaXMgc2xvdywgaXQgZG9lcyB3b3Jr
LiBObyBuZWVkIHRvIHdvcnJ5IGFib3V0IFJBTSBpbiB0aGlzIGNhc2UuIEkga25vdyBzb21lYm9k
eSBJUkwgd2hvIHVzZXMgaXQgYXMgaGlzIG1haW4gZGVza3RvcCBjb21wdXRlciwgYW5kIHdlIG5l
dmVyIGhhZCBhbnkgcHJvYmxlbXMgZXhjZXB0IGZvciBjb21waWxpbmcgQysrLgpOb3Qgc3VyZSB3
aGF0IERFIGlzIGRlZmF1bHQgdGhvdWdoOyB0aGlzIGd1eSBtYXkgaGF2ZSBiZWVuIHVzaW5nIFhm
Y2Ugb3IgTUFURSBmb3IgYWxsIEkga25vdy4KCkFueXdheSwgZGVza3RvcCBvbiBSUGkgd29ya3Ms
IGJ1dCBpcyBhIGJpdCBzbG93LgoKClNlbnQgd2l0aCBQcm90b25NYWlsIFNlY3VyZSBFbWFpbC4K
CuKAkOKAkOKAkOKAkOKAkOKAkOKAkCBPcmlnaW5hbCBNZXNzYWdlIOKAkOKAkOKAkOKAkOKAkOKA
kOKAkApPbiBUdWVzZGF5LCBNYXJjaCAyNCwgMjAyMCA0OjQwIFBNLCBHbGVubiBLMExOWSA8Z2xl
bm5lcnZpbkBjYWJsZW9uZS5uZXQ+IHdyb3RlOgoKPiBJIGhhdmUgYSBSYXNwYmVycnkgUEkgTW9k
ZWwgQiwgdmVyc2lvbiAyLCBhbmQgSSdtIHRyeWluZyB0byBnZXQgZVNwZWFrIGFuZAo+IHNwZWFr
dXAgZ29pbmcuCj4gSSBpbnN0YWxsZWQgdGhlIHZlcnNpb246Cj4gMjAyMC0wMi0xMy1yYXNwYmlh
bi1idXN0ZXIuaW1nCj4gYW5kIEkgY2FuIFNTSCBpbnRvIGl0LCBhbmQgSSB3YXMgZ2V0dGluZyBh
dWRpbyBvdXQgd2l0aDoKPiBzcGVha2VyLXRlc3QgLWMgMgo+IGJ1dCBpZiBJIHRyaWVkIGVzcGVh
ayAiaGVsbG8iCj4gSSBkaWRuJ3QgZ2V0IGFueXRoaW5nIHVudGlsIEkgaW5zdGFsbGVkIHB1bHNl
YXVkaW8uCj4gTm93IHRoZSBlc3BlYWsgd29ya3MsIGJ1dCBzdGlsbCBubyBzcGVha3VwIG9uIGJv
b3QtdXAuCj4gSSBpbnN0YWxsZWQgc3BlYWt1cCBhbmQgdGhhdCBkaWQgbm90IHdvcmssIGFsdGhv
dWdoIGl0IHNlZW1lZCB0byBpbnN0YWxsCj4gb2theS4KPiBJIGluc3RhbGxlZCBPcmNhIHdpdGg6
Cj4gYXB0LWdldCBpbnN0YWxsIGdub21lLW9yY2EKPiBhbmQgdGhhdCBzZWVtZWQgdG8gaW5zdGFs
bCBva2F5LCBidXQgaXQgZGlkIG5vdCBoZWxwIHNwZWFrdXAuCj4gSSBoYWQgZG9uZSBhIGdlbmVy
YWwgRGViaWFuIHVwZGF0ZSBiZWZvcmUgZG9pbmcgYWxsIHRoZSBhYm92ZS4KPiBUaGUgb25seSB3
YXkgZVNwZWFrIHdvcmtzIHdpdGggc3RyaW5ncyBvZiB0ZXh0IGlzIHZpYSBTU0gsIG5vdCB0aGUg
cGx1Z2dlZAo+IGluIGtleWJvYXJkLgo+IEkgd291bGQgbGlrZSB0byBnZXQgYSBkZXNrdG9wIGdv
aW5nLCBidXQgdGhpcyBSUEkgbWF5IG5vdCBoYXZlIHRoZSBSQU0gZm9yCj4gaXQuCj4gR2xlbm4K
Pgo+IC0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0KPiBGcm9tOiAiU2FtdWVsIFRoaWJhdWx0
IiBzYW11ZWwudGhpYmF1bHRAZW5zLWx5b24ub3JnCj4gVG86ICJLYXJlbiBMZXdlbGxlbiIga2xl
d2VsbGVuQHNoZWxsd29ybGQubmV0OyBvbGQ3OHJwbUBnbWFpbC5jb20KPiBDYzogIlNwZWFrdXAg
aXMgYSBzY3JlZW4gcmV2aWV3IHN5c3RlbSBmb3IgTGludXguIgo+IHNwZWFrdXBAbGludXgtc3Bl
YWt1cC5vcmcKPiBTZW50OiBTdW5kYXksIE1hcmNoIDIyLCAyMDIwIDQ6MDIgUE0KPiBTdWJqZWN0
OiBSZTogW3Jhc3BiZXJyeS12aV0gQSBiaXQgb2ZmIHRvcGljLCBTcGVha3VwIGFuZCBEZWJpYW4K
PiBTdHJldGNoLUJ1c3RlciAoZndkKQo+Cj4gPiBIZWxsbywKPiA+IEthcmVuIExld2VsbGVuLCBs
ZSBzYW0uIDIxIG1hcnMgMjAyMCAxNzozOTo1MyAtMDQwMCwgYSBlY3JpdDoKPiA+Cj4gPiA+IEl0
IGFwcGVhcnMgdGhlIG9sZCBTcGVha3VwIGxpc3QgaXMgbG9uZyBkZWFkLgo+ID4KPiA+ID8gaXQg
aXMgdXAgYW5kIHJ1bm5pbmcsIHRoZXJlIHdlcmUgbWVzc2FnZXMgb24gZWFjaCBvZiB0aGUgcGFz
dCBtb250aHMuCj4gPgo+ID4gPiBBZnRlciBzZXZlcmFsIGF0dGVtcHRzIHRvIGdldCBzb21lYm9k
eSBhdCB0aGUgRGViaWFuIGFjY2Vzc2liaWxpdHkgZW1haWwKPiA+ID4gYWRkcmVzcyB0byByZXNw
b25kCj4gPgo+ID4gTmVpdGhlciB0aGUgc3BlYWt1cCBub3IgdGhlIGRlYmlhbi1hY2Nlc3NpYmls
aXR5IG1haWxpbmcgbGlzdHMgaGF2ZQo+ID4gaG93ZXZlciByZWNlaXZlZCBhbnkgb2YgeW91ciBl
bWFpbHMsIHRoZXJlIG11c3QgYmUgc29tZSBzbXRwIGlzc3VlCj4gPiBiZXR3ZWVuIHlvdXIgSVNQ
IGFuZCB0aGVtLgo+ID4KPiA+ID4gU3BlZWNoIGp1c3QgZ29lcyBkZWFkLgo+ID4gPiBbLi4uXQo+
ID4gPiBJdCBzZWVtcyB0byBiZSByZWxhdGVkIHRvIGhvdyBmcmVxdWVudGx5IEkgY2F1c2Ugc3Bl
ZWNoIGludGVydXB0cyBieQo+ID4gPiB0eXBpbmcKPiA+ID4gb3Igc3RvcHBpbmcgc3BlZWNoIGR1
cmluZyBsb25nIG91dHB1dC4KPiA+Cj4gPiBEaWQgYW55Ym9keSBub3RpY2Ugc29tZXRoaW5nIGxp
a2UgdGhpcz8KPiA+IFNhbXVlbAo+ID4KPiA+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gPiBTcGVh
a3VwQGxpbnV4LXNwZWFrdXAub3JnCj4gPiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJp
bi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPgo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3Bl
YWt1cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmlu
L21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3Bl
YWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5m
by9zcGVha3VwCg==
