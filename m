Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (unknown [IPv6:2001:470:1d:288:8e89:a5ff:fe59:6a4d])
	by mail.lfdr.de (Postfix) with ESMTP id A01FE1A5F82
	for <lists+speakup@lfdr.de>; Sun, 12 Apr 2020 19:18:49 +0200 (CEST)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 750A442804D4; Sun, 12 Apr 2020 13:18:30 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=tait.tech header.i=@tait.tech header.b="T4eKoJqP";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id E19244280463
	for <lists+speakup@lfdr.de>; Sun, 12 Apr 2020 13:17:36 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B0B391C2C5E; Sun, 12 Apr 2020 13:17:36 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=tait.tech header.i=@tait.tech header.a=rsa-sha256 header.s=protonmail header.b=T4eKoJqP;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 781221C57FF;
	Sun, 12 Apr 2020 13:17:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id AD9C31C2C5E; Sun, 12 Apr 2020 13:17:03 -0400 (EDT)
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 673A71C0129
 for <speakup@linux-speakup.org>; Sun, 12 Apr 2020 13:17:00 -0400 (EDT)
Date: Sun, 12 Apr 2020 17:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tait.tech;
 s=protonmail; t=1586711817;
 bh=B2ChemolYetafhZKjuisFhrxncJpfsY9ok/IiNeEcd0=;
 h=Date:To:From:Reply-To:Subject:From;
 b=T4eKoJqPT0xMZa/G/iUx3vv4QXamqPoQgckml2Oe6STbhVrX5GxSyg2f/jIbcocic
 6cY29NnxQk2Fk79+uICO08F1Pcnp6ToA3C+Ua8bic8rraUBf/TkdMzhWU9DlLDuP+p
 TkGq6AnKVhG0Wc8uBnuKw7ZWY/pt19/aQzipSv6s=
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Tait Hoyem <tait@tait.tech>
Subject: Questions More General Than Speakup
Message-ID: <6kVN_WQmeo167AqZoKYo6jwc9KPHubdfHGhujAqvCjefb8eHgBliH-_sWRItn24JRCq-ZVxN4LLG-3Ra8Tu-rjcMO_vOt65VSt6mbjVCajI=@tait.tech>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,HTML_MESSAGE shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on mail.protonmail.ch
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
Reply-To: Tait Hoyem <tait@tait.tech>,
 "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

SGVsbG8gU3BlYWt1cCBtZW1iZXJzLAoKSSBoYXZlIGEgZmV3IHF1ZXN0aW9ucyBhYm91dCBicmFp
bGxlIGRpc3BsYXlzLCB3aGF0IHRoZXkgcnVuLCBhbmQgc29tZSBvdGhlciBtaXNjZWxsYW5lb3Vz
IHF1ZXN0aW9ucyByZWxhdGVkIHRvIHRoZW0uCgpXaGVuIGxvb2tpbmcgaW50byBvcHRpb25zIGZv
ciBhIExpbnV4LWJhc2VkIG5vdGV0YWtlciwgSSB3YXMgZGlyZWN0ZWQgdG93YXJkcyB0aGlzIHBy
b2plY3QuIEknbSBub3QgMTAwJSBzdXJlIHRoaXMgaXMgdGhlIHJpZ2h0IHBsYWNlIG9yIG5vdCwg
YnV0IHdvdWxkIGxvdmUgdG8gaGVhciBmcm9tIHlvdSBndXlzLgoKQXMgcGFydCBvZiBhIHBlcnNv
bmFsIHNpZGUgcHJvamVjdCwgSSBhbSBpbnRlcmVzdGVkIGluIGdldHRpbmcgYSBMaW51eCAob3Ig
KkJTRCkgc3lzdGVtIHJ1bm5pbmcgb24gYSBub3RldGFrZXIuIEFyZSB0aGVyZSBhbnkgY29tbWVy
Y2lhbCBvcHRpb25zIGZvciB0aGlzPwpDb21tZXJjaWFsIG9wdGlvbnMgYXJlIGdvb2QgZm9yIHN0
YWJpbGl0eSwgYnV0IEknbSBhbHNvIGludGVyZXN0ZWQgaW4gd2hhdCdzIGluc2lkZSB0aGVzZSB0
aGluZ3M/CldoYXQga2luZCBvZiBoYXJkd2FyZSBkbyB0aGVzZSBzeXN0ZW1zIHJ1biB0aGVzZSBk
YXlzPyBBUk0sIEludGVsPwpJZiBzbywgY2FuIEkganVzdCBpbnN0YWxsIGEgc3RhbmRhcmQgTGlu
dXggdG8gaXQgYW5kIGhhdmUgc29tZXRoaW5nIHJ1bm5pbmc/IE9yIHdpbGwgc29tZSBvYnNjdXJl
IGRyaXZlcnMgYmUgbmVlZGVkIHRvIG1ha2Ugc3VyZSBpdCBpcyBjb21wYXRpYmxlIHdpdGggdGhp
cyBub3RldGFrZXIgb3IgdGhhdCBub3RldGFrZXI/CkFyZSB0aGV5IGdlbmVyYWxseSBydW5uaW5n
IG9uIFdpbmRvd3M/IE9yIHNvbWUgbW9kaWZpZWQgTGludXgvQlNEIHZhcmlhbnQgdG8gYWNjb21t
b2RhdGUgdGhlaXIgdXNlcnM/CkFsc28sIGRvIHRoZXkgaGF2ZSBzb21lIGtpbmQgb2YgdmlkZW8g
b3V0IGZvciBvcHRpb25hbCB2aWV3aW5nIG9mIHdoYXQncyBiZWluZyB3cml0dGVuPyBPciBpcyB0
aGF0IG5vdCBuZWVkZWQgYmVjYXVzZSB0aGV5IGFyZSBtZWFudCBzcGVjaWZpY2FsbHkgZm9yIHZl
cnkgdmlzdWFsbHkgaW1wYWlyZWQgcGVvcGxlPwoKVGhlIGxhc3QgdGltZSBJIHVzZWQgb25lIHdh
cyBiYWNrIGluIGxpa2UgMjAxMCwgc28gZnJvbSB3aGF0IEkgcmVtZW1iZXIgdGhleSB3ZXJlIHZl
cnkgbGltaXRlZCBpbiB1c2FnZS4gVGhpcyB3YXMgYWxzbyBiZWZvcmUgc21hcnRwaG9uZXMgYW5k
IHdpZGVzcHJlYWQgYWNjZXNzaWJpbGl0eSBpbiBtYWluc3RyZWFtIG9wZXJhdGluZyBzeXN0ZW1z
IGxpa2UgV2luZG93cyBhbmQgTWFjIHdpdGhvdXQgZXhwZW5zaXZlIHNvZnR3YXJlIHBhY2thZ2Vz
LgoKSGFzIHRoZSBzbWFydHBob25lIHJldm9sdXRpb24gY2F1c2VkIGEgZGlzdHVyYmFuY2UgaW4g
dGhlIG5vdGV0YWtlciBtYXJrZXQ/CklmIHNvLCB3aGF0IGlzIGl0IGJlaW5nIHJlcGxhY2VkIHdp
dGg/IEp1c3QgYSBwaG9uZSB3aXRoIGFjY2Vzc2liaWxpdHkgdHVybmVkIG9uPyBPciBhcmUgdGhl
cmUgZG9uZ2xlZCwgYWRhcHRlcnMsIHNwZWNpYWxpemVkIGNhc2VzIG9yIGFueSBvZiB0aGVzZSB0
aGluZ3MgdG8gYWRkIG9uIHRvIHRoZSBiYXNpYyBoYXJkd2FyZT8KCkkgYXBvbG9naXplIGZvciBh
bGwgdGhlIHF1ZXN0aW9ucyBpbiBhIGhhcGhhemFyZCBmb3JtYXQsIGhlcmUgdGhleSBhcmUgaW4g
bGlzdCBmb3JtOgoxLiBBcmUgdGhlcmUgY29tbWVyY2lhbCBMaW51eCBiYXNlZCBub3RldGFrZXJz
PwoyLiBXaGF0IGtpbmQgb2YgaGFyZHdhcmUgaXMgcnVubmluZyBvbiBub3RldGFrZXJzIHRoZXNl
IGRheXM/CjMuIENvdWxkIHlvdSBpbnN0YWxsIExpbnV4IG9uIGFueSBvbGQgbm90ZXRha2VyIGFu
ZCBoYXZlIGl0IHdvcmssIG9yIGlzIHRoZXJlIG1vcmUgaW52b2x2ZWQ/CjMuNSBJcyB0aGVyZSBh
IHZpZGVvIG91dCBvbiBhbG90IG9mIHRoZXNlIGRldmljZXMgc28gaWYgc29tZXRoaW5nIGdvZXMg
d3JvbmcgKGJ1bSBkcml2ZXJzLCBldGMuKSBJIGNhbiBmaXggaXQ/CjQuIEFyZSBub3RldGFrZXJz
IGV2ZW4gcmVhbGx5IHVzZWQgYW55bW9yZSBnaXZlbiB0aGUgYWR2YW5jZSBvZiBzbWFydHBob25l
cz8KNC4xIFdoYXQgYWNjZXNzb3JpZXMgb3IgbGFjay10aGVyZW9mIGFyZSB2aXN1YWxseSBpbXBh
aXJlZCBwZW9wbGUgdXNpbmcgd2l0aCB0aGVpciBwaG9uZXMsIGlmIHRoZXJlIGlzIGEgbW92ZSBh
d2F5IGZyb20gdGhlIG1vcmUgdHJhZGl0aW9uYWwgbm90ZXRha2VyPwo1LiBBcmUgYW55IG9mIHlv
dSBhd2FyZSBvZiBhbnkgKkJTRCBwcm9qZWN0IGRlYWxpbmcgd2l0aCBicmFpbGxlL3NwZWVjaCBv
dXRwdXQgc3BlY2lmaWNhbGx5PwoKVGhhbmtzIGZvciB0aGUgd29yayB5J2FsbCBoYXZlIHB1dCBp
bnRvIHNwZWFrdXAhCk9uIHRoZSBvZmYgY2hhbmNlIHRoYXQgbm90ZXRha2VycyBhcmUgYmVpbmcg
cGhhc2VkIG91dCwgcnVuIFdpbmRvd3MgYW55d2F5LCBkb24ndCBoYXZlIGEgdmlkZW8gb3V0LCBh
bmQgcnVuIHNwZWNpYWxpemVkIENQVXMgaW5jb21wYXRpYmxlIHdpdGggbWFqb3IgdmVyc2lvbnMg
b2YgTGludXjigJR0aGVuIEkgbWF5IG5lZWQgbW9yZSB0aW1lIGF0IHRoZSBkcmF3aW5nIGJvYXJk
LgoKSSB3YW50IHRvIGhlbHAgY29tbWFuZC1saW5lIHRlY2ggdG8gYmUgYWNjZXNzaWJsZSBieSBt
b3JlIHBlb3BsZSwgaWYgdGhhdCBtZWFucyBoZWxwaW5nIHlvdSBndXlzIHdpdGggdGhlIHNwZWFr
dXAgcHJvamVjdDogSSdtIGluISBJZiBpdCBtZWFucyBsb29raW5nIG1vcmUgdG93YXJkcyBCU0Qg
YXMgeW91IGd1eXMgaGF2ZSB0aGlzIGNvdmVyZWQ6IEknbGwgZG8gdGhhdC4KSSB3YW50IHRvIGhl
bHAuIFdpdGggbW9yZSBpbmZvcm1hdGlvbiBJIGNhbiBkZWNpZGUgd2hlcmUgdG8gZ28uCgpUaGFu
a3MgaW4gYWR2YW5jZSBmb3IgcmVhZGluZyB0aGUgc2xpZ2h0bHkgb2ZmLXRvcGljIHJhbWJsZSBh
bmQgYW5zd2VyaW5nIGFueSBxdWVzdGlvbnMgeW91IG1pZ2h0IGhhdmUgYW5zd2VycyB0by4KCuKA
lFRhaXQgSG95ZW0KV2Vic2l0ZTogaHR0cHM6Ly90YWl0LnRlY2gKRW1haWw6IHRhaXRAdGFpdC50
ZWNoCgoiTGl2ZSB1bnRpbCB5b3UgZGllOyBsZWFybiB1bnRpbCB5b3UgZGllLiIKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxp
c3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dp
LWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
