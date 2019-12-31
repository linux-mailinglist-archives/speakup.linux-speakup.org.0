Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0CB5A12D9F7
	for <lists+speakup@lfdr.de>; Tue, 31 Dec 2019 16:54:42 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 421471C46D3; Tue, 31 Dec 2019 10:54:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1577807681;
	bh=f+rhZMdAKWYfnNnRpGF8Cr4/8q96zm9fAIRVmGKxvV4=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=bazp0mWo0fXITqoR0N/QPR12f58AAPh9VABo7Cr+zDRxFxRw+Anw8kshPvk3lMpD7
	 U341+Z4Yysbj3MjQT30US37rEpnJT5wTUNOa5iL+0tgfhtoMJ+wL5dEziF4PNOps+a
	 glTuxQ+XcACDJXS63PJI+rwSk3uLIbXEHBvD0sNw=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E23031C46E4;
	Tue, 31 Dec 2019 10:53:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1577807624;
	bh=f+rhZMdAKWYfnNnRpGF8Cr4/8q96zm9fAIRVmGKxvV4=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=OJXGmBVP+lZvqfLEd64K+or6jjFB+CX9t7Ksrj20b6pQZfEnee90SI/U0tNU6eDhY
	 43p9yeqcECdH48B6+lPUllc838+ecsaraJ4wLOmH5IG/jpqbbDcH99XzvSC/i6xZWW
	 4YsYgR/VmBvnB2+Ds6/EksHTWYw6wi397vPYWw2k=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id AACC71C46B9; Tue, 31 Dec 2019 10:53:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1577807613;
 bh=ShHLbkRXlbAImr3w3Lo8Gsx05HexVzGRGln1NHtIvis=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=aXFtU473t2KKbboYyMA2S27o20WD+B/o2hb3ozfhq9O/efEaFz3Zj870+rtwdGnkv
 q39kPqMT6ksq421QInIIzDD9mJFuoUjvDlSSWCqTTgdxW5sVKcrmUJVEIlIpaASPHe
 oBsESDqA0oQ7vMY9IAsQPn3VudDA0Ym5pmTV5lWU=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B747B1C446B
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 10:53:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1577807604;
 bh=ShHLbkRXlbAImr3w3Lo8Gsx05HexVzGRGln1NHtIvis=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=QNCKTfSgIxiDGpdu7yv5r8RiUkgGFByYnTmoAqgRZGzUHm3iD7THu3KxJSD4G/8AM
 JuZDGaawXkgHUKeAqR5yFli2wBRWua38ds7pjYlhVIBrvwAy6jiZyqddpLj1KvWt69
 857ay4VAWbAkYClZU5RalTu+lOOQ4JkoDEiZY1nM=
Date: Tue, 31 Dec 2019 10:53:24 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup locking box on latest linux 5.3.15-1
In-Reply-To: <8d32a2c2-8cbf-c5c7-6f48-b4fd440a5da8@slint.fr>
Message-ID: <alpine.DEB.2.21.1912311045030.12026@befuddled.reisers.ca>
References: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
 <20191231114129.GA1937@rednote.net>
 <alpine.DEB.2.21.1912310943070.9526@befuddled.reisers.ca>
 <8d32a2c2-8cbf-c5c7-6f48-b4fd440a5da8@slint.fr>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

SGV5IERpZGllcjogQWxsIG9mIHRoZSBrZXJuZWxzIEkgdGVzdGVkIHdlcmUgZGViaWFuIHNpZCBw
YWNrYWdlcy4gVGhlCm1vc3QgcmVjZW50IHdhcyBhIERlY2VtYmVyIHR3ZWx2ZSBidWlsZCBJIGJl
bGlldmUuIEkgaGF2ZSBub3Qgc2VlbiBhbnkKNS40Lngga2VybmVscyBhdmFpbGFibGUgdW5kZXIg
c2lkIHlldC4gQWRtaXR0ZWRseSwgSSBkb24ndCB0cnkgdG8KdXBncmFkZSBldmVyeSBkYXkgb3Ig
YW55dGhpbmcuCgpJIHByZXR0eSBtdWNoIHN0cmljdGx5IHVzZSBzcGVha3VwX3NvZnQgd2l0aCBl
c3BlYWt1cC4gSSBmaXJzdCB0aG91Z2h0Cml0IG1pZ2h0IGJlIGFuIGVzcGVha3VwIHByb2JsZW0g
c2luY2UgaXQgaXMgYXMgZmxha2V5IGFzIGV2ZXIgd2l0aCB0aGUKbGFjayBvZiBzcGVlY2ggaW50
ZXJydXB0IGFiaWxpdHkgaW4gYSB0aW1lbHkgbWFubmVyIGJ1dCB0aGUgcHJvYmxlbQpzdGlsbCBw
ZXJzaXN0cyB3aXRoIG15IG9sZCBzb2xpZCBlc3BlYWt1cCBhbmQgdGhlIG9sZCBlc3BlYWsKbGli
cmFyaWVzLgoKSSB3b3VsZCBiZSB3aWxsaW5nIHRvIHRlc3QgeW91ciBrZXJuZWxzIGlmIHlvdSBj
b3VsZCBzZW5kIG1lIGEgZHJvcCBpbgpyZXBsYWNlbWVudCB3aXRoIHRoZSBTeXN0ZW0ubWFwIGV0
Yy4KCiAgIEtpcmsKCk9uIFR1ZSwgMzEgRGVjIDIwMTksIERpZGllciBTcGFpZXIgd3JvdGU6Cgo+
IEhpIEtpcmsgYW5kIEphbmluYSwKPgo+IEkgd29uJ3Qgc2hpcCBhIDUuMy54IEtlcm5lbCBpbiBT
bGludCBhbnl3YXkgYXMgaXQgaXMgb2ZmaWNpYWxseSBFT0wKPiB1cHN0cmVhbSwgaG93ZXZlciBJ
IHBsYW4gdG8gcHJvdmlkZSBhIDUuNCBrZXJuZWwgc29vbiBhbmQgd291bGQgbGlrZQo+IHRvIGhh
dmUgaXQgdGVzdGVkIHdydCB0aGlzIGlzc3VlLgo+Cj4gSSBkbyBub3Qgb3duIGEgaGFyZCBzeW50
aCBzbyBjYW4gb25seSB0ZXN0IHdpdGggc3BlYWt1cF9zb2Z0IG15c2VsZiwgYnV0Cj4gSSBjb3Vs
ZCBhc2sgU2xpbnQgdXNlcnMgdG8gZG8gc28gd2l0aCBhIGhhcmQgc3ludGggKGx0bGsgYXQgbGVh
c3QgYW5kCj4gcHJvYmFibHkgYXBvbGxvIGFzIHdlbGwpLgo+Cj4gV2l0aCB3aGljaCBkcml2ZXIg
ZGlkIHlvdSB0cnk6IHNvZnQgb3IgaGFyZCBhbmQgdGhlbiB3aGljaCBoYXJkIHN5bnRoPwo+Cj4g
QWxzbyBKYW5pbmEsIGRvZXMgdGhpcyBpc3N1ZSBvY2N1ciBhbHNvIHdpdGggbGludXggNS40LjYu
YXJjaDMtMT8KPgo+IEFzIGFuIGFzaWRlLCBLaXJrIGRpZCB5b3UgdHJ5IG9uZSBvZiB0aGUgcGFj
a2FnZSBsYWJlbGVkCj4gbGludXgtaW1hZ2UtNS40LjAtMS08c29tZXRoaW5nPiBwcm92aWRlZCBm
b3IgRGViaWFuIFNJRD8KPgo+IEJlc3QgcmVnYXJkcywKPgo+IERpZGllcgo+Cj4gTGUgMzEvMTIv
MTkgw6AgMTU6NDYsIEtpcmsgUmVpc2VyIGEgw6ljcml0wqA6Cj4+IFllcyBKYW5pbmE6IE9uIG15
IGJveGVzIHRoZSBtYWNoaW5lIGlzIGxvY2tlZCB1cCBzb2xpZCBhcyBpbiBub3QgYWJsZQo+PiB0
byBldmVuIHNzaCBvciBwaW5nIHRoZSBtYWNoaW5lLgo+PiAKPj4gSSBoYXZlIGhhZCB0byByZXZl
cnQgYmFjayB0byBhIDUuMi54IHNlcmllcyBrZXJuZWwgdG8gYnktcGFzcyB0aGUKPj4gcHJvYmxl
bS4gSSB0cmllZCB0aHJlZSBkaWZmZXJlbnQgNS4zLngga2VybmVscyBleHRlbnNpdmVseSBiZWZv
cmUKPj4gcmV2ZXJ0aW5nLgo+PiAKPj4gwqAgS2lyawo+PiAKPj4gT24gVHVlLCAzMSBEZWMgMjAx
OSwgSmFuaW5hIFNhamthIHdyb3RlOgo+PiAKPj4+IEtpcms6Cj4+Pgo+Pj4gSSB0aGluayBJJ20g
YWxzbyBzZWVpbmcgdGhpcyBvbiBteSBBcmNoIHN5c3RlbS4KPj4+Cj4+PiBUaGUgYmVoYXZpb3Ig
aXMgc3BlZWNoIGRpZXMsIGFuZCB0aGVyZSBzZWVtcyBubyB3YXkgdG8gZ2V0IGl0IGJhY2sgc2hv
cnQKPj4+IG9mIGEgcmVib290Lgo+Pj4KPj4+IEJlc3QsCj4+Pgo+Pj4gSmFuaW5hCj4+Pgo+Pj4g
S2lyayBSZWlzZXIgd3JpdGVzOgo+Pj4+IEhlbGxvIGZvbGtzOiBJdCBhcHBlYXJzIHRoZSBidWcg
dGhhdCB2aXNpdGVkIHNwZWFrdXAgYmFjayBpbiBsYXRlCj4+Pj4gQXVndXN0IGlzIGJhY2sgYW5k
IGFjdGl2ZS4gSW4ga2VybmVsIHZlcnNpb24gNS4zLjE1LTEgYnVpbHQgb24KPj4+PiAyMDE5LTEy
LTA3LiBJdCBjYW4gdmVyeSBlYXNpbHkgYmUgcmVwcm9kdWNlZCBieSBoaXR0aW5nIHRoZSBuZXh0
LXdvcmQKPj4+PiBvciBwcmV2aW91cy13b3JkIGZ1bmN0aW9ucyBxdWlja2x5IGluIHNlcmllcy4g
SW4gZmFjdCBpdCBpcyB2ZXJ5ZAo+Pj4+IGlmZmljdWx0IHRvIG5vdCB0cmlnZ2VyIHRoZSBidWcu
IFRoaXMgaXMgaW4gZGViaWFuIHNpZCBCVFcuIE15Cj4+Pj4gbWFjaGluZXMgYXJlIGFtZDY0IGJh
c2VkIHNvIEknbSBub3Qgc3VyZSBpZiBpdCdzIGFjdGl2ZSBvbiBJbnRlbAo+Pj4+IHByb2Nlc3Nv
cnMuCj4+Pj4KPj4+PiDCoCBLaXJrCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBTcGVha3VwIG1haWxpbmcgbGlzdAo+IFNwZWFrdXBAbGludXgtc3Bl
YWt1cC5vcmcKPiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3Rp
bmZvL3NwZWFrdXAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8v
bGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
