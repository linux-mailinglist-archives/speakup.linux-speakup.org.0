Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2EF682DA219
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 21:56:47 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1121C380F44; Mon, 14 Dec 2020 15:56:46 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=N7HTAP1C;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C1787380F51;
	Mon, 14 Dec 2020 15:56:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 926CB380918; Mon, 14 Dec 2020 15:56:42 -0500 (EST)
Received: from st43p00im-zteg10063401.me.com (st43p00im-zteg10063401.me.com
 [17.58.63.175])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 7E5BA380918
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 15:56:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1607979399;
 bh=YsPfUB+VNDArIOM9HTA9K6R6fHnbrQ/Yv5RmjPLnHfs=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=N7HTAP1C9mfYKd9BYGWt7cokNlAK8hkRSdj6nX91szdut8OS/D4vVhG5dnJ7JXAKB
 XN1IF+GXcJ0UVf0hMdre6X9xf6TbJhHpk9Rwp1Pnl5p1vvgQzqxfzhx946nRkqB2le
 26YG6Ti1y+IrJxjrtrU9G9BDgxCFpWO+3qdHf69DDUlHmCGzQp9uGUyiuwkgFh9Tee
 KA/p0IVTZt15sWOOgkHjWovLrSlqf1z5XXBX/HC+Ozy/J5NlfZz3d4ibzGT6WQWNuU
 R3DEWfymCgszOkn0rXOsZDSJn5V0sogZ6pQeh2vRdNuZfycOZGexbPPRp9/q4lytbu
 pEoR0/qvimIKg==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-zteg10063401.me.com (Postfix) with ESMTPSA id E22D64A09DE
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 20:56:39 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 14 Dec 2020 15:56:37 -0500
Subject: Re: Efficiently using terminal with screenreader
Message-Id: <8326BC97-9410-4773-A453-222573C17E33@icloud.com>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
In-Reply-To: <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
X-Mailer: iPhone Mail (16C101)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-14_11:2020-12-11,
 2020-12-14 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012140140
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

VGhpcyBpcyBncmVhdCB0byBoZWFyLiBTbyBjYW4gSSBydW4gYm90aCBFc3BlYWsgYW5kIE9yY2Eg
YXQgdGhlIHNhbWUgdGltZSBvciB3aWxsIEkgbmVlZCB0byBjbG9zZSBvcmNhIHdoZW4gSSB3YW50
IHRvIG9wZW4gdGhlIHRlcm1pbmFsIGFuZCB1c2UgZXNwZWFrdXA/CgoKVGhhbmsgeW91LAoKLVJl
ZWNlIAoKPiBPbiBEZWMgMTQsIDIwMjAsIGF0IDI6MDQgUE0sIFphY2hhcnkgS2xpbmUgPHprbGlu
ZUBzcGVlZHBvc3QubmV0PiB3cm90ZToKPiAKPiBIaSwKPiAKPiBUbyBiZSBwZXJmZWN0bHkgaG9u
ZXN0LCBJIHJlY29tbWVuZCB1c2luZyBTcGVha3VwIGZvciBnb29kIHRlcm1pbmFsIHN1cHBvcnQu
IE9yY2EgaXMgcmF0aGVyIHN1Yi1wYXIgaW4gdGhpcyByZWdhcmQsIGFuZCBTcGVha3VwIHdhcyBk
ZXNpZ25lZCB0byBmdWxseSBzdXBwb3J0IGNvbW1hbmQtbGluZSBvdXRwdXQgZnJvbSB0aGUgc3Rh
cnQuCj4gQmVzdCwKPiBaYWNrLgo+IAo+PiBPbiBEZWMgMTQsIDIwMjAsIGF0IDEwOjUyIEFNLCBS
ZWVjZSBPJ0JyeWFuIDxyZWVjZS5vYnJ5YW5AaWNsb3VkLmNvbT4gd3JvdGU6Cj4+IAo+PiBIZWxs
bywKPj4gCj4+IEnigJltIGhhdmluZyB0cm91YmxlIGVmZmljaWVudGx5IGFjY2Vzc2luZyBvdXRw
dXRzIGZyb20gdGVybWluYWwgaW4gT3JjYS4gSSBuZWVkIGEgZnVsbHkgZnVuY3Rpb25pbmcgc2Ny
ZWVuIHJlYWRlciwgaXMgdGhlcmUgYW4gZWFzeSB3YXkgdG8gbmF2aWdhdGUgbGluZSBieSBsaW5l
IG9mIG91dHB1dCBmcm9tIHRlcm1pbmFsIGluIGVzcGVha3VwIG9yIG9yY2E/Cj4+IAo+PiBUaGFu
ayB5b3UsCj4+IAo+PiAtUmVlY2UgCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4+IFNwZWFrdXBAbGludXgt
c3BlYWt1cC5vcmcKPj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9s
aXN0aW5mby9zcGVha3VwCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBTcGVha3VwIG1haWxpbmcgbGlzdAo+IFNwZWFrdXBAbGludXgtc3BlYWt1
cC5vcmcKPiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZv
L3NwZWFrdXAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
U3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGlu
dXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
