Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E630F2DBBD0
	for <lists+speakup@lfdr.de>; Wed, 16 Dec 2020 08:05:47 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 31702380FBC; Wed, 16 Dec 2020 02:05:46 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=pgGXAhqy;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EFFEC380F24;
	Wed, 16 Dec 2020 02:05:45 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 522EB380C14; Wed, 16 Dec 2020 02:05:45 -0500 (EST)
Received: from st43p00im-ztdg10071801.me.com (st43p00im-ztdg10071801.me.com
 [17.58.63.171])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 2160E380965
 for <speakup@linux-speakup.org>; Wed, 16 Dec 2020 02:05:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1608102342;
 bh=mE3+kMjb2La2bJtFo8iMWxVZI4qiAaDPVBdW9IMdFBU=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=pgGXAhqy540drbFfah3+7IlMpCFJ4OVQRR9KFWuUc0v8AunXXpQxalarp/cJl4dVD
 OWux5UeM71M+53EloLD7rw5haKymoeKCU1k46g1ihe2A0+PjfRdhuGP3hN3l4KOsCM
 NQXZQluXS37pcxRdCgCwq9TmOHYSqh1YTvXL2spcvaB1Y2vhns7nu69/DhjPPjtdPE
 RXLkOWeUszusseSRUZ2J/RGntjVpzIhn/UsDhwsdns6N/gt2yKMDH+q0rf50nPD1Vf
 lqDN0epKrDXR4gIG5XVb6/i/68bOnRrg8Ti48SgQtFdJPNcaArmKPSoCd6/IX2fPOK
 FpSsb1jMjxYiQ==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-ztdg10071801.me.com (Postfix) with ESMTPSA id D6B8E5401B3
 for <speakup@linux-speakup.org>; Wed, 16 Dec 2020 07:05:42 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 16 Dec 2020 02:05:39 -0500
Subject: Re: Efficiently using terminal with screenreader
Message-Id: <CEC4C085-3041-4F2C-8F76-93A723E25D5E@icloud.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <8326BC97-9410-4773-A453-222573C17E33@icloud.com>
 <e88d9fbb-5d3c-b3da-7f2d-3e6080ea9ecb@slint.fr>
In-Reply-To: <e88d9fbb-5d3c-b3da-7f2d-3e6080ea9ecb@slint.fr>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: iPhone Mail (16C101)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-16_02:2020-12-15,
 2020-12-16 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012160043
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

VGhhbmsgeW91LCB0aGlzIGlzIGdyZWF0IGluZm9ybWF0aW9uLiBJcyBpdCBkaWZmaWN1bHQgaGF2
aW5nIGJvdGggcnVubmluZyBhdCB0aGUgc2FtZSB0aW1lOyBzcGVhayB1cCBydW5uaW5nIGluIHRl
cm1pbmFsIGFuZCBvcmNhIHJ1bm5pbmcgZm9yIGV2ZXJ5dGhpbmcgZWxzZT8gV291bGRu4oCZdCBv
cmNhIHN0aWxsIHRyeSB0byBzcGVhayB3aGVuIHlvdSBvcGVuIHRoZSB0ZXJtaW5hbC4gCldoaWNo
IG90aGVyIHdpbmRvdyBtYW5hZ2VycyBhcmUgb3JjYSBmcmllbmRseT8gRG8gSSBoYXZlIHRvIHN0
aWNrIHdpdGggZ25vbWUgb3IgY2FuIEkgZ28gd2l0aCBzb21ldGhpbmcgbGlrZSBYRkNFLCBLREUs
IGV0Yz8gSSBrbm93IHRoZXNlIGFyZSBzaW1wbGUgcXVlc3Rpb25zLCBidXQgSSBkbyBub3Qgd2Fu
dCB0byByaXNrIGRvaW5nIHNvbWV0aGluZyB0byBteSBtYWNoaW5lIHRoYXQgd291bGQgcmVxdWly
ZSBzb21lb25lIHdpdGggdmlzaW9uIHRvIGhlbHAgbWUgZml4IGl0LiAgCgpUaGFuayB5b3UsCgot
UmVlY2UgCgo+IE9uIERlYyAxNCwgMjAyMCwgYXQgNDoyOCBQTSwgRGlkaWVyIFNwYWllciA8ZGlk
aWVyQHNsaW50LmZyPiB3cm90ZToKPiAKPiBZb3UgY2FuJ3QgdXNlIFNwZWFrdXAgKG5vdCB0byBi
ZSBjb25mdXNlZCB3aXRoIEVzcGVhaykgaW4gYSBncmFwaGljYWwgZW52aXJvbm1lbnQgYXQgYWxs
LCBvbmx5IGluIGEgY29uc29sZS4KPiBTcGVha3VwIGlzIGEgY29uc29sZSBzY3JlZW4gcmVhZGVy
LCBFc3BlYWsgaXMgb25lIG9mIHRoZSBUVFMgZW5naW5lcyAod2l0aCBhc3NvY2lhdGVkIHZvaWNl
cykgdGhhdCBjYW4gYmUgdXNlZCB3aXRoIE9yY2EuCj4gCj4gRnVydGhlciBhcyB5b3VyIHF1ZXN0
aW9uIGlzIGFjdHVhbGx5IGFib3V0IE9yY2EsIHlvdSBjb3VsZCBnZXQgbW9yZSBhbnN3ZXJzIHBv
c3RpbmcgaW4gdGhlIE9yY2EgbWFpbGluZyBsaXN0Lgo+IEluIGNhc2UgeW91IGRpZG4ndCBjb21l
IGFjcm9zcyBpdCwgaGVyZSBpcyBhIGxpbms6Cj4gaHR0cHM6Ly9tYWlsLmdub21lLm9yZy9tYWls
bWFuL2xpc3RpbmZvL29yY2EtbGlzdAo+IAo+IERpZGllcgo+IAo+PiBPbiAxNC8xMi8yMDIwIDIx
OjU2LCBSZWVjZSBPJ0JyeWFuIHdyb3RlOgo+PiBUaGlzIGlzIGdyZWF0IHRvIGhlYXIuIFNvIGNh
biBJIHJ1biBib3RoIEVzcGVhayBhbmQgT3JjYSBhdCB0aGUgc2FtZSB0aW1lIG9yIHdpbGwgSSBu
ZWVkIHRvIGNsb3NlIG9yY2Egd2hlbiBJIHdhbnQgdG8gb3BlbiB0aGUgdGVybWluYWwgYW5kIHVz
ZSBlc3BlYWt1cD8KPj4gVGhhbmsgeW91LAo+PiAtUmVlY2UKPj4+IE9uIERlYyAxNCwgMjAyMCwg
YXQgMjowNCBQTSwgWmFjaGFyeSBLbGluZSA8emtsaW5lQHNwZWVkcG9zdC5uZXQ+IHdyb3RlOgo+
Pj4gCj4+PiBIaSwKPj4+IAo+Pj4gVG8gYmUgcGVyZmVjdGx5IGhvbmVzdCwgSSByZWNvbW1lbmQg
dXNpbmcgU3BlYWt1cCBmb3IgZ29vZCB0ZXJtaW5hbCBzdXBwb3J0LiBPcmNhIGlzIHJhdGhlciBz
dWItcGFyIGluIHRoaXMgcmVnYXJkLCBhbmQgU3BlYWt1cCB3YXMgZGVzaWduZWQgdG8gZnVsbHkg
c3VwcG9ydCBjb21tYW5kLWxpbmUgb3V0cHV0IGZyb20gdGhlIHN0YXJ0Lgo+Pj4gQmVzdCwKPj4+
IFphY2suCj4+PiAKPj4+PiBPbiBEZWMgMTQsIDIwMjAsIGF0IDEwOjUyIEFNLCBSZWVjZSBPJ0Jy
eWFuIDxyZWVjZS5vYnJ5YW5AaWNsb3VkLmNvbT4gd3JvdGU6Cj4+Pj4gCj4+Pj4gSGVsbG8sCj4+
Pj4gCj4+Pj4gSeKAmW0gaGF2aW5nIHRyb3VibGUgZWZmaWNpZW50bHkgYWNjZXNzaW5nIG91dHB1
dHMgZnJvbSB0ZXJtaW5hbCBpbiBPcmNhLiBJIG5lZWQgYSBmdWxseSBmdW5jdGlvbmluZyBzY3Jl
ZW4gcmVhZGVyLCBpcyB0aGVyZSBhbiBlYXN5IHdheSB0byBuYXZpZ2F0ZSBsaW5lIGJ5IGxpbmUg
b2Ygb3V0cHV0IGZyb20gdGVybWluYWwgaW4gZXNwZWFrdXAgb3Igb3JjYT8KPj4+PiAKPj4+PiBU
aGFuayB5b3UsCj4+Pj4gCj4+Pj4gLVJlZWNlCj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBTcGVha3VwIG1haWxpbmcgbGlzdAo+Pj4+IFNw
ZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dp
LWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4+
PiBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcv
Y2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4gU3Bl
YWt1cEBsaW51eC1zcGVha3VwLm9yZwo+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJp
bi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3BlYWt1cEBsaW51
eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4v
bGlzdGluZm8vc3BlYWt1cApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0
dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
