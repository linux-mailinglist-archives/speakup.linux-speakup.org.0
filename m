Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D3BFE10E274
	for <lists+speakup@lfdr.de>; Sun,  1 Dec 2019 17:05:17 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A079C1C476C; Sun,  1 Dec 2019 11:05:16 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (1024-bit key; secure) header.d=jasonjgw.net header.i=@jasonjgw.net header.b="fnqUmkEW";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6E4261C4778;
	Sun,  1 Dec 2019 11:04:39 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7669A1C4754; Sun,  1 Dec 2019 11:04:27 -0500 (EST)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172])
 by befuddled.reisers.ca (Postfix) with ESMTPS id C0ED41C474C
 for <speakup@linux-speakup.org>; Sun,  1 Dec 2019 11:04:23 -0500 (EST)
Received: from [192.168.1.243] (unknown
 [IPv6:2601:85:c380:11f6:2462:9cdf:fd09:d76f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by svr.jasonjgw.net (Postfix) with ESMTPSA id CF0B644E01D
 for <speakup@linux-speakup.org>; Sun,  1 Dec 2019 16:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jasonjgw.net;
 s=mail; t=1575216231;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4g9QMZM6BflTJydHEple7WEsm0d8spV1dEZewde82wc=;
 b=fnqUmkEWlSfDA9r2xrqydVY3lyJl/eeB2m3FPEzN1W26yLJTZyH2r8Sfn0+IOYvKvBjZg5
 79l6fJpWTr84vdHFirN7V6o3z0HbWkHPxEKWoWm0QL4wv8Uf619Y2rwvbenrUzXwSjSVvU
 Jk+DFIsJciVbt4oxpDFWY1mHLzgjqyk=
User-Agent: Microsoft-MacOutlook/10.1f.0.191110
Date: Sun, 01 Dec 2019 11:03:51 -0500
Subject: Re: slightly, improving how the Links browser speaks?
From: Jason White <jason@jasonjgw.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Message-ID: <E7C9BF53-C9A9-4486-9743-663752BCA8A9@jasonjgw.net>
Thread-Topic: slightly, improving how the Links browser speaks?
References: <Pine.LNX.4.64.1911291041280.2952@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.1911291041280.2952@server2.shellworld.net>
Mime-version: 1.0
Authentication-Results: svr.jasonjgw.net;
 auth=pass smtp.auth=jason smtp.mailfrom=jason@jasonjgw.net
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

SSBkb24ndCBrbm93IGhvdyBMaW5rcyBpcyBsYWlkIG91dCBvbiBzY3JlZW4sIGJ1dCBhc3N1bWlu
ZyB0aGF0IGl0IGhhcyBhIGZpeGVkLXNpemUgd2luZG93IGZvciB0aGUgV2ViIHBhZ2UgY29udGVu
dCwgeW91IGNvdWxkIHNldCB1cCBhIHdpbmRvdyBpbiB5b3VyIERPUyBzY3JlZW4gcmVhZGVyIHRo
YXQgY292ZXJzIHRoYXQgYXJlYSwgdGhlbiByZWFkIHRoYXQgd2luZG93IHdoZW5ldmVyIHlvdSBu
ZWVkIHRvIC0gZm9yIGV4YW1wbGUsIHdoZW4geW91IG1vdmUgdG8gYSBuZXcgc2NyZWVuIG9mIHRl
eHQuIAoKVGhpcyBpc24ndCBpZGVhbCwgb2YgY291cnNlLCBidXQgaXQgd291bGQgYmUgYmV0dGVy
IHRoYW4gcmV2aWV3aW5nIGxpbmUgYnkgbGluZS4KCkkgcmVtZW1iZXIgaGF2aW5nIERvc2x5bngs
IGJ1dCBJJ20gbm90IHN1cmUgd2hldGhlciBJIGV2ZXIgaGFkIExpbmtzICh0aGUgY2hhaW4pIG9u
IG15IERPUyBzeXN0ZW0uIEkgZGlkIGhhdmUgRE9TIHZlcnNpb25zIG9mIGEgbG90IG9mIFVuaXgt
YmFzZWQgcHJvZ3JhbXMuCgrvu79PbiAxMS8yOS8xOSwgMTA6NTEsICJTcGVha3VwIG9uIGJlaGFs
ZiBvZiBLYXJlbiBMZXdlbGxlbiIgPHNwZWFrdXAtYm91bmNlc0BsaW51eC1zcGVha3VwLm9yZyBv
biBiZWhhbGYgb2Yga2xld2VsbGVuQHNoZWxsd29ybGQubmV0PiB3cm90ZToKCiAgICBIaSBmb2xr
cywKICAgIEhvcGUgdG8gYXNrIHRoaXMgY2xlYXJseSwgYXMgaXQgbWF5IGFsc28gYXBwbHkgdG8g
c3BlYWt1cCwgYXQgbGVhc3QgZm9yIAogICAgdGhvc2UgICB1c2luZyAgYSBjb21tYW5kIGxpbmUg
c2V0dXAuCiAgICBNeSBnb2FsIG1pcnJvcnMgdGhlIGNvbW1hbmQgbGluZSBvcHRpb25zIGluY2x1
ZGVkIGluIHNvbWUgdG9vbHMgdGhhdCB3cml0ZSAKICAgIGluZm9ybWF0aW9uIHRvIHRoZSBzY3Jl
ZW4gaW4gYSB3YXkgdGhhdCBzcGVlY2ggaGFwcGVucyBsYXJnZWx5IAogICAgYXV0b21hdGljYWxs
eS4KICAgIEZvciBleGFtcGxlLCBzb21lIHByb2dyYW1zIGNhbGwgdGhpcyB3cml0aW5nIHRvIHRo
ZSBCSU9TLCBvciB1c2VkIHRvIGRvIGFzIAogICAgbXVjaC4KICAgIE15IHNzaCB0ZWxuZXQgY2xp
ZW50IGZvciBleGFtcGxlIGhhcyBhIC1iIG9wdGlvbiB0aGF0IHBlcmZvcm1zIHRoZSAKICAgIGZ1
bmN0aW9uIEkgZGVzaXJlLgogICAgSSBhbSBzZWVraW5nIHN1Y2ggYSBjb21tYW5kIGxpbmUgb3B0
aW9uIGZvciB0aGUgbGlua3MgIGFzIGluIHRoZSBjaGFpbiAKICAgIGJyb3dzZXIuICBJIGJlbGll
dmU/IGl0IHNob3VsZCBleGlzdCBiZWNhdXNlIHRoZXJlIGlzIGEgY29tbWFuZCBsaW5lIAogICAg
b3B0aW9uIHRoYXQgZXN0YWJsaXNoZXMgbnVtYmVyZWQgbGlua3MuCiAgICBob3BpbmcgdGhhdCBt
eSBxdWVzdGlvbiBpcyBjbGVhciwgY2FuIGFueW9uZSB0ZWxsIG1lIHdoYXQgY29tbWFuZCBsaW5l
IAogICAgb3B0aW9uIGltcHJvdmVzICBob3cgY29udGVudCBpcyBzcG9rZW4gd2hlbiB1c2luZyB0
aGUgbGlua3MgYnJvd3Nlcj8KICAgIFRoYW5rcywKICAgIEthcmVuCiAgICAKICAgIAogICAgX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KICAgIFNwZWFrdXAg
bWFpbGluZyBsaXN0CiAgICBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCiAgICBodHRwOi8vbGlu
dXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKICAgIAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFp
bGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAu
b3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
