Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 18D8D3A0D5
	for <lists+speakup@lfdr.de>; Sat,  8 Jun 2019 19:04:39 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 531151C5A5F; Sat,  8 Jun 2019 13:04:38 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=slint.fr header.i=@slint.fr header.b="LITSmpuv";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7D0B51C6B45;
	Sat,  8 Jun 2019 13:03:40 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 1FFF11C5A3F; Sat,  8 Jun 2019 13:03:38 -0400 (EDT)
Received: from lobby.o2switch.cloud (lobby.o2switch.cloud [109.234.163.68])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B368D1C43BE
 for <speakup@linux-speakup.org>; Sat,  8 Jun 2019 13:03:35 -0400 (EDT)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
 score=0.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
 DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
 Service Provider for details
X-MailPropre-MailScanner-ID: DC814100735.A2543
X-MailPropre-MailScanner-Information: Please contact the ISP for more
 information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
 s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BUEipMAbvFOU2SJjajxOU8/MOlCJf6n6goY4iZq5BAQ=; b=LITSmpuvVNyRfCx0JkVgPrR5j6
 tN554T5wegz9kAWT7mJKmHTaRIgZT38LDU8kR0jl0dWp5MEAg+e6uqcOkpzQZ5B0e2Qi/OBy30/Lr
 WpmBN3Ye4jnPfHwT7SDuYZaZasrAqH1kWMa80anMR+BhU0b3NCx5AG5VjwFSv4bn3qjw=;
Subject: Re: no sound except speakup
To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>, JOHN G HEIM <jheim@math.wisc.edu>,
 Kirk Reiser <kirk@reisers.ca>
References: <bb706092-7289-2093-e7d0-e1788722cc37@math.wisc.edu>
 <alpine.DEB.2.21.1906051019050.12923@befuddled.reisers.ca>
 <f072f5e3-caf0-aab8-4224-c1fc9f142ace@math.wisc.edu>
From: Didier Spaier <didier@slint.fr>
Openpgp: preference=signencrypt
Message-ID: <2036fe0f-e249-6902-3c7c-4001c9d3b690@slint.fr>
Date: Sat, 8 Jun 2019 19:03:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <f072f5e3-caf0-aab8-4224-c1fc9f142ace@math.wisc.edu>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - linux-speakup.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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

SGVsbG8sCgpUbyBlbGFib3JhdGUgb24gd2hhdCBLaXJrIHNhaWQgYW5kIGZvciB0aGUgcmVjb3Jk
cywgaXMgaXMgcG9zc2libGUgdG8KbWFrZSBwdWxzZSBwZWFjZWZ1bGx5IGNvZXhpc3Qgd2l0aCBh
cHBzIHJlbHlpbmcgb24gQUxTQSB3aXRob3V0IHJ1bm5pbmcKUHVsc2VBdWRpbyBzeXN0ZW0gd2lk
ZS4KCkp1c3QgdGVsbCBQdWxzZUF1ZGlvIHRvIHVzZSBkbWl4LiBGb3IgaW5zdGFuY2UgaW4gL2V0
Yy9wdWxzZS9kZWZhdWx0LnBhOgpsb2FkLW1vZHVsZSBtb2R1bGUtYWxzYS1zaW5rIGRldmljZT1k
bWl4CmxvYWQtbW9kdWxlIG1vZHVsZS1hbHNhLXNvdXJjZSBkZXZpY2U9ZHNub29wCgpBbmQgbWFr
ZSBzdXJlIHRoYXQgbm8gQUxTQSBjb25maWd1cmF0aW9uIGZpbGUgdGVsbHMgaXQgdG8gZGlyZWN0
IHRoZQpzdHJlYW1zIHRvIFB1bHNlQXVkaW8sIG9mIGNvdXJzZSA8c21pbGU+CgpBbHNvLCBJIHN0
YXJ0IFB1bHNlQXVkaW8gb24gZGVtYW5kICh3aGVuIGFuIGFwcGxpY2F0aW9uIHJlcXVlc3RzIGl0
KSwKbm90IHdoZW4gc3RhcnRpbmcgYSBjb25zb2xlIG9yIGRlc2t0b3Agc2Vzc2lvbi4KCkJlc3Qs
IERpZGllcgoKT24gMDgvMDYvMjAxOSAxODozNiwgSk9ITiBHIEhFSU0gd3JvdGU6Cj4gCj4gSXQg
d2FzIGluZGVlZCBwdWxzZWF1ZGlvLiBJIGtpbGxlZCB0aGUgcHVsc2VhdWRpbyBwcm9jZXNzIGFu
ZCByYW4gYXBsYXkgCj4gYWdhaW4gYnV0IGl0IHN0aWxsIGRpZCBub3Qgd29yay4gQnV0IEkgbm90
aWNlZCB0aGF0IGFub3RoZXIgcHVsc2VhdWRpbyAKPiBwcm9jZXNzIGhhZCBiZWVuIHN0YXJ0ZWQu
IFNvIHRoZW4gSSByZW1vdmVkIHRoZSBwdWxzZWF1ZGlvIHBhY2thZ2UgCj4gZW50aXJlbHkuIE5v
dyBpdCB3b3Jrcy4gQnV0IHRoZW4gSSByYW4gc3RhcnR4IGFuZCBnb3Qgbm8gc3BlZWNoIGZyb20g
Cj4gb3JjYS4gQnV0IHRoZW4gSSByYW4gc3BkLWNvbmYgYW5kIGNvbmZpZ3VyZWQgc3BlZWNoLWRp
c3BhdGNoZXIgZm9yIGFsc2EgCj4gYW5kIG5vdyBJIGdldCBzcGVlY2ggaW4gdGhlIEdVSSB0b28u
IFNvIHRoaXMgaXMgYWxsIGdvb2QuIFRoaXMgaXMgbXkgCj4gbmV0d29yayBzZXJ2ZXIgc28gSSBk
b24ndCBjYXJlIGFib3V0IHRoZSBHVUkgdG9vIG11Y2ggYW55d2F5LiBCdXQgaXQgCj4gbG9va3Mg
bGlrZSBpZiBJIHJlYWxseSBuZWVkIGEgR1VJLCBJJ2xsIGhhdmUgaXQuCj4gCj4gCj4gVGhhbmtz
IGV2ZXJ5Ym9keS4gTGludXggcm9ja3MuIFdlbGwsIHRoZSBsaW51eCBzdXBwb3J0IGNvbW11bml0
eSwgCj4gc3BlY2lmaWNhbGx5IHNwZWFrdXAgYW5kIG9yY2EsIHJvY2tzLgo+IAo+IAo+IE9uIDYv
NS8xOSA5OjIyIEFNLCBLaXJrIFJlaXNlciB3cm90ZToKPj4gSGV5IEpvaG46IFdoZW4gSSd2ZSBo
YWQgc2ltaWxhciBpc3N1ZXMgd2l0aCBzb3VuZCBpdCdzIGJlY2F1c2UgdGhlcmUKPj4gaXMgdXN1
YWxseSBhIHB1bHNlIGF1ZGlvIHByb2Nlc3MgcnVubmluZyBvciB0cnlpbmcgdG8gcnVuLiBUaGVy
ZSBhcmUKPj4gd29yayBhcm91bmRzIHRvIGJlIGFibGUgdG8gdXNlIHB1bHNlIGF1ZGlvIGJ1dCBJ
IGJlbGlldmUgaXQgaW5jbHVkZXMKPj4gcnVubmluZyBpdCBhcyByb290IG9yIHNvbWV0aGluZy4g
SSBkb24ndCB1c2UgcHVsc2UgYXVkaW8gc28gSSdtIG5vdAo+PiBzdXJlIG9mIHRoZSB3b3JrIGFy
b3VuZCBidXQgb3RoZXJzIGFyZSB1c2luZyBpdC4KPj4KPj4gwqAgS2lyawo+Pgo+PiBPbiBXZWQs
IDUgSnVuIDIwMTksIEpvaG4gRyBIZWltIHdyb3RlOgo+Pgo+Pj4gSSBhbSBydW5uaW5nIGEgZGVi
aWFuIGJ1c3RlciBtYWNoaW5lIGluIGNoYXJhY3RlciBtb2RlLiBTcGVha3VwIHdpdGggCj4+PiBz
b2Z0d2FyZSBzcGVlY2ggd29ya3MgZmluZSBidXQgSSBjYW4ndCBnZXQgYW55IG90aGVyIHNvdW5k
LiBXaGVuIEkgCj4+PiB1c2UgYXBsYXkgdG8gcGxheSBhIHdhdiBmaWxlLCBpdCBwcmludHMgdGhl
IGRhdGEgaW5kaWNhdGluZyB0aGF0IGl0IAo+Pj4gaXMgcGxheWluZyB0aGUgZmlsZSBidXQgdGhl
cmUgaXMgbm8gc291bmQuIFRoZSBzYW1lIHdpdGggZXNwZWFrIGFuZCAKPj4+IHNwZC1zYXkgYXQg
dGhlIGNvbW1hbmQgbGluZS4gTm8gZXJyb3IgbWVzc2FnZXMgYXJlIGRpc3BsYXllZCBidXQgCj4+
PiB0aGVyZSBpcyBubyBzb3VuZC4gSSB3b3VsZCB0aGluayBpdCB3YXMgYSB2b2x1bWUgcHJvYmxl
bSBleGNlcHQgSSBjYW4gCj4+PiBoZWFyIHNwZWFrdXAuIFRoZSBzb3VuZCBjYXJkIGNvbnRyb2xz
IGhhdmUgdm9sdW1lIHNldHRpbmdzLCB0aGV5IGFyZSAKPj4+IG5vdCB1c2VyIHNldHRpbmdzLCBy
aWdodD8KPj4+Cj4+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6
Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
