Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 270B828C0B4
	for <lists+speakup@lfdr.de>; Mon, 12 Oct 2020 21:07:44 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B8A03380BD5; Mon, 12 Oct 2020 15:07:43 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=SZDqtbX1;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 49662380BE2;
	Mon, 12 Oct 2020 15:07:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 0183B380BBF; Mon, 12 Oct 2020 15:07:41 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id 92A2D380BB8
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 15:07:41 -0400 (EDT)
Received: from darkstar.machine.fr (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id E0E09BE27E
 for <speakup@linux-speakup.org>; Mon, 12 Oct 2020 20:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1602526012; bh=cdDAuh17ijaAZ1zst8kMhFxhzzXekXrxospb6nQqHoY=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=SZDqtbX1ySFl7BKER2JSNIfz6z74SjvOG9SuYpEGNoTSxshMEO0B6kwya1oYaHGkx
 wHSCeaUa5ZGnFje3n3rxUUymLnAVsIKk1tJoDvrk0K07nIZF+Rgrqob/BGxh8HvTpB
 9YPPb/iVygwzBns49W/TdO0W6kHRjFWbfaLNm/mm4mF/A8lwDkZAUWouK9VG1tSsz8
 IuRvifO8fqDeQ5k/eUWJ/C9rJC93KGjYIng5zQp0DQRPCyFcf69d5vE2x0Kb3uzeK3
 WeBO1yj1GWk51C+8KeTx8IZDoJ1lJ8Kl5K//7YOwHnlWYKTSTmT8s8p4Jw7FHpotcm
 XTmRo80oIpxVQ==
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
 <8340cb18-2ca2-b94e-3b58-f07f061ba8a8@pcdesk.net>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; prefer-encrypt=mutual; keydata=
 mQENBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAG0H0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj6JAT8EEwEKACkCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCXcBjnwUJGlHqEgAKCRDVAgLvYMA+6v/ICAC8Oa2zXOne
 zyuFrPtNsciJWYwWamW+g5TNaY9NPnyMRNKDi7IcP6PoDwHRI8YBgo+Z9w0qFKQ/WVSI/O6s
 gm7LnOX7OEHjnub4sjrr5PHcsPRjm6iJFIgGgD+waz0K5fxcc65ti3lgHLH1tkhORyiT5EFp
 0VllWDQfPHw5avm9oopJv1FuPfZhSlFT6QhjD2ARmOrxfFBjELQZjDidckOYf/8Stoh+aK5F
 5q69DpF+bSZzOtCht+S6LT+Im5zqMgq1Dfqb3FpnVO3MyhSLeGI2nB+OFNTBGByRFKHYRsHc
 VaQBjtfsr4HnC0UR2P/bDIk/oxLnIN9nHJuL6btcf9M6
Message-ID: <a3dfad6d-b39e-f462-a645-cfd5eacab88e@slint.fr>
Date: Mon, 12 Oct 2020 21:07:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8340cb18-2ca2-b94e-3b58-f07f061ba8a8@pcdesk.net>
Content-Language: fr
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

SGksCgpzcGtndWlkZS50eHQgaXMgaW5kZWVkIG91dGRhdGVkLgpBcyBhbiBhc2lkZSBpbiB0aGUg
NS45IGtlcm5lbCB0cmVlIGl0IGhhcyBtaWdyYXRlZCBoZXJlOgpEb2N1bWVudGF0aW9uL2FkbWlu
LWd1aWRlL3Nwa2d1aWRlLnR4dApBbmQgdGhlIGZpbGUgIHN5c2ZzLWRyaXZlci1zcGVha3VwIGlz
IG5vdyB0aGVyZToKRG9jdW1lbnRhdGlvbi9BQkkvc3RhYmxlL3N5c2ZzLWRyaXZlci1zcGVha3Vw
CgpNYXliZSBvbmUgY2FuIGZpbmQgZ2VubWFwIGluIGFuIG9sZCBrZXJuZWwgdHJlZT8KCkRpZGll
cgoKTGUgMTIvMTAvMjAyMCDDoCAyMDo0MiwgVHlsZXIgU3BpdmV5IGEgw6ljcml0wqA6Cj4gV2hl
cmUgaXMgdGhlIGdlbm1hcCB1dGlsaXR5IGRpc2N1c3NlZCBpbiB0aGUgZ3VpZGUgKHNwa2d1aWRl
LnR4dCBpbiBteSBrZXJuZWwgc291cmNlKT8KPiBUaGF0IHdheSB3ZSBjb3VsZCBqdXN0IGFkZCBv
dXIgb3duIGtleSBiaW5kaW5ncy4gSXMgdGhlIGd1aWRlIG91dGRhdGVkPwo+IAo+IE9uIDEwLzEy
LzIwMjAgMTE6MzEgQU0sIEthcmVuIExld2VsbGVuIHdyb3RlOgo+PiBJIGNhbiByZXNwZWN0IHRo
YXQgc3RhbmNlLiBIb3dldmVyIHRoZXJlIGFyZSBhcyBtYW55IHdheXMgdG/CoCBkZWNpZGUgd2hh
dCBpc8KgIGRlc2lyZWQgaW4gb25lJ3MgY29tcHV0ZXIgdG9vbHMgYXMgdGhlcmUgYXJlIGluZGl2
aWR1YWxzIHVzaW5nIHRoZW0uCj4+IGJldHRlciB0byBidWlsZCBhbiBleGlzdGluZyBidWZmZXQg
b2Ygb3B0aW9ucyB0aGFuIGhhdmUgdG8gYWRkIHRoaW5ncyBpbiBvbmXCoCBhdCBhIHRpbWUgbGF0
ZXIuCj4+Cj4+Cj4+Cj4+IE9uIE1vbiwgMTIgT2N0IDIwMjAsIFNhbXVlbCBUaGliYXVsdCB3cm90
ZToKPj4KPj4+IEthcmVuIExld2VsbGVuLCBsZSBsdW4uIDEyIG9jdC4gMjAyMCAxNDoxOTo0MCAt
MDQwMCwgYSBlY3JpdDoKPj4+PiBvbmUgZGVzaXJlcyB0aGUgZmxleGliaWxpdHkgb2YgYWRqdXN0
aW5nIGhvdyBtdWNoIG9yIGhvdyBsaXR0bGUKPj4+PiBpbmZsZWN0aW9uIGlzIHByb3ZpZGVkLi53
aXRob3V0IGhhdmluZyB0byBiZSBhIGNvbXB1dGVyIHByb2dyYW1tZXIgYW5kCj4+Pj4gZWRpdCB0
aGF0IHdheS4KPj4+Cj4+PiBTdXJlLCBJIGp1c3QgbWVhbiB0aGF0IHRoZXJlIGFyZW4ndCBzbyBt
YW55IHNob3J0Y3V0cyBwb3NzaWJpbGl0aWVzIG91dAo+Pj4gdGhlcmUuIEl0J3MgdXAgdG8gdGhl
IHNwZWFrdXAgY29tbXVuaXR5IHRvIGRlY2lkZSB3aGV0aGVyIGFzc2lnbmluZyBhCj4+PiBkZWZh
dWx0IHNob3J0Y3V0IGlzIGRlc2lyZWQuCj4+Pgo+Pj4gU2FtdWVsCj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gU3BlYWt1cCBtYWlsaW5nIGxp
c3QKPj4+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4+IGh0dHA6Ly9saW51eC1zcGVha3Vw
Lm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo+Pj4KPj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFNwZWFrdXAgbWFpbGlu
ZyBsaXN0Cj4+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4gaHR0cDovL2xpbnV4LXNwZWFr
dXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGVha3VwIG1haWxpbmcgbGlzdAo+
IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dp
LWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgt
c3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0
aW5mby9zcGVha3VwCg==
