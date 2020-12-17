Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 707672DD9B0
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 21:13:04 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 34E40380FAC; Thu, 17 Dec 2020 15:13:03 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=HfNLo2fk;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5F9EE380F2A;
	Thu, 17 Dec 2020 15:13:00 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 42950380C19; Thu, 17 Dec 2020 15:12:59 -0500 (EST)
Received: from st43p00im-zteg10073501.me.com (st43p00im-zteg10073501.me.com
 [17.58.63.180])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CFFE9380BF2
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 15:12:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1608235975;
 bh=ZzsTU+jUgn88VNQP+MlKJeRH9Py4rcv8O+J7k6g6bFM=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=HfNLo2fkdlViF8lQq8AST76gJYJS3ArOTmUGGFtWbVSSBNf9D6ujM6T6l2qriOAEF
 nH0+ok4bQkaA6k5Hv4tDXAeN4dml6b/VZZPWJ1h0N7UQuvMJQRThhR5pxGmuKFWO8N
 WGCGCYG767C25SzZizGyj5B3YgMfeZ2XP9MzhsoojgjH4UNcih6z1Z+TobT1RnFRhf
 sw88B8YFzvB6wNQXa+YZSr+kJ6kBLUB0llLieod5LhFUlCkh1r85B0ddSXB/otnWdl
 FExUfUoVIPsDJToec3LcHEGZCU3sHt3Rny2N0njoW5Qgkxi6IICcXMVMOl2KoERcez
 2OuSVswGTr7fQ==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-zteg10073501.me.com (Postfix) with ESMTPSA id C9D65AE0566
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 20:12:55 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 17 Dec 2020 15:12:54 -0500
Subject: Re: Efficiently using terminal with screenreader
Message-Id: <12561F5D-AFC7-4753-B2C4-1ED017E1C020@icloud.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
 <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
 <20201217184038.h7b764gsfxtjag4i@function>
 <B7379CEB-D226-42D2-B99A-46558F5B7D4D@speedpost.net>
 <20201217185942.ilfu5kbg2lmcwidi@function>
 <C0260469-C483-4C7D-A5CC-0CDBA6B3D6BD@speedpost.net>
In-Reply-To: <C0260469-C483-4C7D-A5CC-0CDBA6B3D6BD@speedpost.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: iPhone Mail (16C101)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-17_14:2020-12-17,
 2020-12-17 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012170134
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

SnVzdCB0byBjb25maXJtLCBJ4oCZbSBnb2luZyB0byBuZWVkIGEgc2VyaWFsIGFkYXB0ZXIgdG8g
cGx1ZyBpbiB0byBteSBVU0IgaHViIGNvbm5lY3RlZCB0byBteSBNYWNCb29rLCB0aGVuIGNvbm5l
Y3QgYSBoYXJkd2FyZSBzeW50aGVzaXplciB0byB0aGUgY2VyZWFsLiBEb2luZyBpdCB0aGlzIHdh
eSB3b3VsZCBJIGJlIGFibGUgdG8gdXNlIHRoZSBoYXJkd2FyZSBzeW50aGVzaXplciBpbnNpZGUg
b2YgdmlydHVhbEJveCBydW5uaW5nIERlYmlhbiBhbmQgU3BlYWt1cD8gSSBhc3N1bWUgdGhhdCBp
dCBzaG91bGQgaW4gdGhlb3J5LCBidXQgaWYgbm90IGJlY2F1c2Ugb2YgdGhlIHZpcnR1YWxpemF0
aW9uLCB0aGVuIHBsYW4gQiBpcyBkb2luZyB0aGUgZXhhY3Qgc2FtZSB0aGluZyB3aGlsZSBib290
aW5nIGZyb20gc29tZXRoaW5nIGxpa2UgVWJ1bnR1IG9uIHRoZSBVU0IuCgpUaGFuayB5b3UsCgot
UmVlY2UgCgo+IE9uIERlYyAxNywgMjAyMCwgYXQgMjowNCBQTSwgWmFjaGFyeSBLbGluZSA8emts
aW5lQHNwZWVkcG9zdC5uZXQ+IHdyb3RlOgo+IAo+IFNhbXVlbCwKPiAKPiBObywgdGhleSBkZWZp
bml0ZWx5IGRvbuKAmXQuIEFzIGZhciBhcyBJ4oCZbSBhd2FyZSB0aGV5IHVzZSBhbiBlbnRpcmVs
eSBkaWZmZXJlbnQgaW50ZXJmYWNlLiBUaGUgYWRhcHRvciBleHBvc2VzIC9kZXYvdHR5VVNCMCBi
dXQgdGhlIHN5bnRoZXNpemVyIGlzIHN0aWxsIGluIHNlcmlhbC9yczIzMiBtb2RlLiBUaGVyZeKA
mXMgYSBoYXJkd2FyZSB0b2dnbGUgc3dpdGNoIHRvIHNlbGVjdCBvbmUgbW9kZSBvciB0aGUgb3Ro
ZXIuCj4gQmVzdCwKPiBaYWNrLgo+IAo+PiBPbiBEZWMgMTcsIDIwMjAsIGF0IDEwOjU5IEFNLCBT
YW11ZWwgVGhpYmF1bHQgPHNhbXVlbC50aGliYXVsdEBlbnMtbHlvbi5vcmc+IHdyb3RlOgo+PiAK
Pj4gWmFjaGFyeSBLbGluZSwgbGUgamV1LiAxNyBkw6ljLiAyMDIwIDEwOjU1OjEzIC0wODAwLCBh
IGVjcml0Ogo+Pj4gYnV0IGRvZXNu4oCZdCBzdXBwb3J0IHVzaW5nIHN5bnRocyBpbiBuYXRpdmUg
VVNCIG1vZGUuCj4+IAo+PiBEb24ndCB0aGVzZSBzaW1wbHkgZXhwb3NlIGEgL2Rldi90dHlVU0Iw
IHBvcnQ/Cj4+IAo+PiBTYW11ZWwKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4gU3BlYWt1cEBsaW51eC1z
cGVha3VwLm9yZwo+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xp
c3RpbmZvL3NwZWFrdXAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3BlYWt1cEBsaW51eC1zcGVha3Vw
Lm9yZwo+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8v
c3BlYWt1cApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51
eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
