Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8E8602DDA2F
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 21:37:46 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E99A0380FAA; Thu, 17 Dec 2020 15:37:45 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=VLHmJodY;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4204D380F2D;
	Thu, 17 Dec 2020 15:37:45 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B80BF380C19; Thu, 17 Dec 2020 15:37:44 -0500 (EST)
Received: from st43p00im-zteg10063401.me.com (st43p00im-zteg10063401.me.com
 [17.58.63.175])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 956FE380BF2
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 15:37:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1608237463;
 bh=IJQUjW/GSyMcDyDEOkJbY6P1fRFe6pdapj9Qbvv6E8k=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=VLHmJodYV28xeTZ6BVniiMtsfG/SpYkOOjJ7oLWVu7H3f5V/bb/0wO0zy7OCeeM6h
 6gLvn749+laqtvy0HugXLhVrRJlxj9acDGzbJyPaNkw9c+5QuSm7j5gHst40Eq5bPS
 qEWGlP9oEnLVbcoTNcFD6a4JUtt0gsZPSWxvPi5SULK89MRVQQ0caT7XfktKx6MLUL
 qXBWvN0mq1Gb2oku+Ye6ADkN/8r9VlRyV8POzTaizTaEZ5lhaCW/k7Q3JDNdBZADz7
 NJTsBJv8iDe1nZdWAN720Qp4DZvHK2Hg2x3EB3dhHVwFSBt3TI0iXDLbF9J79HAR6S
 wB5UPWQQXHQNQ==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-zteg10063401.me.com (Postfix) with ESMTPSA id 8D7904A082E
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 20:37:43 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 17 Dec 2020 15:37:41 -0500
Subject: Re: Efficiently using terminal with screenreader
Message-Id: <469ABC0F-0BFB-4F61-95D7-CCD11653FBA1@icloud.com>
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
In-Reply-To: <20201217202733.GA5439@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: iPhone Mail (16C101)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-17_14:2020-12-17,
 2020-12-17 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012170137
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

R3JlYXQhIFNlZW1zIHRvIGJlIHRoZSBzYW1lIHByb2Nlc3MgYXMgY29ubmVjdGluZyBhIG5ldHdv
cmsgYWRhcHRlciB0byBhIHZpcnR1YWwgbWFjaGluZS4KVGhhdCBpcyBhIGxpdHRsZSBkaXNjb3Vy
YWdpbmcgSSBjYW7igJl0IGNvbXBpbGUgb24gbXkgTWFjQm9vay4gVGhlIG5hdGl2ZSB0ZXJtaW5h
bCBkb2VzbuKAmXQgc2VlbSB0byBiZSBhY2Nlc3NpYmxlLiBJIGNhbuKAmXQgcmVhZCB0aGUgb3V0
cHV0IGxpbmUgYnkgbGluZSwgb25seSB0aGUgZW50aXJlIG91dHB1dCBmcm9tIHRvcCB0byBib3R0
b20gb2YgdGhlIHRlcm1pbmFsLiBJIGNvdWxkIGJlIG1pc3Npbmcgc29tZXRoaW5nLCBJIGFtIHN0
aWxsIHF1aXRlIG5ldyB0byB2b2ljZW92ZXIuIEFsdGhvdWdoIEkgaGF2ZSB0YWxrZWQgd2l0aCBh
IGNvdXBsZSBvZiBNYWNCb29rIHVzZXJzIHRoYXQgaGF2ZSB1c2VkIHZvaWNlb3ZlciBmb3IgcXVp
dGUgYSBmZXcgeWVhcnMsIHRoZXkgYXJlIG5vdCBmYW1pbGlhciB3aXRoIHRlcm1pbmFsLCBidXQg
c3RpbGwgY291bGQgbm90IGZpZ3VyZSBvdXQgaG93IHRvIG5hdmlnYXRlIGl0IGVhc2lseSBlaXRo
ZXIuIE1heWJlIHRoZSBoYXJkd2FyZSBzeW50aGVzaXplciBjb3VsZCBoZWxwIHRoZXJlLiAoPykK
ClRoYW5rIHlvdSwKCi1SZWVjZSAKCj4gT24gRGVjIDE3LCAyMDIwLCBhdCAzOjI3IFBNLCBHcmVn
b3J5IE5vd2FrIDxncmVnQGdyZWduLm5ldD4gd3JvdGU6Cj4gCj4+IE9uIFRodSwgRGVjIDE3LCAy
MDIwIGF0IDAzOjAwOjUyUE0gLTA1MDAsIFJlZWNlIE8nQnJ5YW4gd3JvdGU6Cj4+IElzIGl0IHBv
c3NpYmxlIHRvIGNvbXBpbGUgc3BlYWsgdXAgb24gbXkgTWFjQm9vaz8KPiAKPiBOby4KPiAKPj4g
T24gVGh1LCBEZWMgMTcsIDIwMjAgYXQgMDM6MTI6NTRQTSAtMDUwMCwgUmVlY2UgTydCcnlhbiB3
cm90ZToKPj4gSnVzdCB0byBjb25maXJtLCBJ4oCZbSBnb2luZyB0byBuZWVkIGEgc2VyaWFsIGFk
YXB0ZXIgdG8gcGx1ZyBpbiB0byBteQo+IFVTQiBodWIgY29ubmVjdGVkIHRvIG15IE1hY0Jvb2ss
IHRoZW4gY29ubmVjdCBhIGhhcmR3YXJlIHN5bnRoZXNpemVyCj4gdG8gdGhlIGNlcmVhbC4KPiAK
PiBDb3JyZWN0Lgo+IAo+PiBEb2luZyBpdCB0aGlzIHdheSB3b3VsZCBJIGJlIGFibGUgdG8gdXNl
IHRoZSBoYXJkd2FyZSBzeW50aGVzaXplciBpbnNpZGUgb2YgdmlydHVhbEJveCBydW5uaW5nIERl
YmlhbiBhbmQgU3BlYWt1cD8gSSBhc3N1bWUgdGhhdCBpdCBzaG91bGQgaW4gdGhlb3J5LCBidXQg
aWYgbm90IGJlY2F1c2Ugb2YgdGhlIHZpcnR1YWxpemF0aW9uLCB0aGVuIHBsYW4gQiBpcyBkb2lu
ZyB0aGUgZXhhY3Qgc2FtZSB0aGluZyB3aGlsZSBib290aW5nIGZyb20gc29tZXRoaW5nIGxpa2Ug
VWJ1bnR1IG9uIHRoZSBVU0IuCj4gCj4gWWVzLCB0aGF0IHNob3VsZCB3b3JrLCB0aG91Z2ggSSBo
YXZlbid0IGRvbmUgdGhhdCBpbiBhIHdoaWxlLiBZb3UgaGF2ZQo+IHRvIG9wdGlvbnMgaGVyZS4g
Rmlyc3Qgb3B0aW9uIGlzIHRvIGRlZmluZSBhIHNlcmlhbCBwb3J0IHdoaWNoIHdvdWxkCj4gYXBw
ZWFyIGluIHlvdXIgZ3Vlc3QgYXMgYSBwaHlzaWNhbCBzZXJpYWwgcG9ydCwgYW5kIHlvdSB3b3Vs
ZCBzZXQgdGhhdAo+IHVwIHRvIGludGVyZmFjZSB0byB5b3VyIFVTQiBzZXJpYWwgcG9ydCBvbiB0
aGUgaG9zdC4gVGhlIHNlY29uZCBvcHRpb24KPiBpcyB0byBkaXJyZWN0bHkgcGFzcyB0aGUgVVNC
IHNlcmlhbCBhZGFwdGVyIHRocm91Z2ggdG8gdGhlIGd1ZXN0LiBUaGUKPiB2aXJ0dWFsYm94IHVz
ZXIncyBtYW51YWwgaGFzIG1vcmUgZGV0YWlscy4KPiAKPiBHcmVnCj4gCj4gCj4gLS0gCj4gd2Vi
IHNpdGU6IGh0dHA6Ly93d3cuZ3JlZ24ubmV0Cj4gZ3BnIHB1YmxpYyBrZXk6IGh0dHA6Ly93d3cu
Z3JlZ24ubmV0L3B1YmtleS5hc2MKPiBza3lwZTogZ3JlZ24xCj4gKGF1dGhvcml6YXRpb24gcmVx
dWlyZWQsIGFkZCBtZSB0byB5b3VyIGNvbnRhY3RzIGxpc3QgZmlyc3QpCj4gSWYgd2UgaGF2ZW4n
dCBiZWVuIGluIHRvdWNoIGJlZm9yZSwgZS1tYWlsIG1lIGJlZm9yZSBhZGRpbmcgbWUgdG8geW91
ciBjb250YWN0cy4KPiAKPiAtLQo+IEZyZWUgZG9tYWluczogaHR0cDovL3d3dy5ldS5vcmcvIG9y
IG1haWwgZG5zLW1hbmFnZXJARVUub3JnCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBTcGVha3VwIG1haWxpbmcgbGlzdAo+IFNwZWFrdXBAbGludXgt
c3BlYWt1cC5vcmcKPiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xp
c3RpbmZvL3NwZWFrdXAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRw
Oi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
