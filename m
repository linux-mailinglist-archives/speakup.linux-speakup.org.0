Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 047D82DA203
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 21:54:40 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 71CC0380F77; Mon, 14 Dec 2020 15:54:39 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=XH12pW/0;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6EED2380F21;
	Mon, 14 Dec 2020 15:54:37 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C82A438097A; Mon, 14 Dec 2020 15:54:36 -0500 (EST)
Received: from st43p00im-ztfb10063301.me.com (st43p00im-ztfb10063301.me.com
 [17.58.63.179])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9E416380918
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 15:54:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1607979275;
 bh=FJTzW3XxRdqvG7jOR/MqQqwBAZ6q3r5xJpiTAfnoIT8=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=XH12pW/0/kUlYd0uYxuSEfQc8HxMrlk7u1IwV7W8hNqyQG+74zfJtElxCi+7IfkNP
 UksNjMibZvWkSKwEEANbst9csPksoh3de5k0ZOO0Bzuvs48Le+tNURRCCvT0uXtjK1
 n/K3VnuStc+5kh2pE9WMWth6Q+Sflyv/mlZ7Pw1BAijz3K+WSmiXCenp02n90aezeQ
 RuWTLFzTw+CK1SxkhYNn5Z8gXL58YK6D7HfRYiYrE0+itJfC8QgUFP8EMBVgM6bmd7
 58GPFBCGcZc2+59pM9vNt8DcwxdfE2Rx+l/1S3C8WtBii1Lu6cMlWmKxDoEAKcjkY7
 jjp0W/OfcWcig==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-ztfb10063301.me.com (Postfix) with ESMTPSA id E51F9A40472
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 20:54:34 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 14 Dec 2020 15:54:33 -0500
Subject: Re: Efficiently using terminal with screenreader
Message-Id: <FA8CB2E3-8394-4C30-A747-27AEC6FB0093@icloud.com>
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

V2hpY2ggYXBwbGljYXRpb24gYXJlIHlvdSB0YWxraW5nIGFib3V0IHVzaW5nIHRoZXNlIGNvbW1h
bmRzIHdpdGggR2xlbm4/CgpUaGFuayB5b3UsCgotUmVlY2UgCgo+IE9uIERlYyAxNCwgMjAyMCwg
YXQgMjowNCBQTSwgWmFjaGFyeSBLbGluZSA8emtsaW5lQHNwZWVkcG9zdC5uZXQ+IHdyb3RlOgo+
IAo+IEhpLAo+IAo+IFRvIGJlIHBlcmZlY3RseSBob25lc3QsIEkgcmVjb21tZW5kIHVzaW5nIFNw
ZWFrdXAgZm9yIGdvb2QgdGVybWluYWwgc3VwcG9ydC4gT3JjYSBpcyByYXRoZXIgc3ViLXBhciBp
biB0aGlzIHJlZ2FyZCwgYW5kIFNwZWFrdXAgd2FzIGRlc2lnbmVkIHRvIGZ1bGx5IHN1cHBvcnQg
Y29tbWFuZC1saW5lIG91dHB1dCBmcm9tIHRoZSBzdGFydC4KPiBCZXN0LAo+IFphY2suCj4gCj4+
IE9uIERlYyAxNCwgMjAyMCwgYXQgMTA6NTIgQU0sIFJlZWNlIE8nQnJ5YW4gPHJlZWNlLm9icnlh
bkBpY2xvdWQuY29tPiB3cm90ZToKPj4gCj4+IEhlbGxvLAo+PiAKPj4gSeKAmW0gaGF2aW5nIHRy
b3VibGUgZWZmaWNpZW50bHkgYWNjZXNzaW5nIG91dHB1dHMgZnJvbSB0ZXJtaW5hbCBpbiBPcmNh
LiBJIG5lZWQgYSBmdWxseSBmdW5jdGlvbmluZyBzY3JlZW4gcmVhZGVyLCBpcyB0aGVyZSBhbiBl
YXN5IHdheSB0byBuYXZpZ2F0ZSBsaW5lIGJ5IGxpbmUgb2Ygb3V0cHV0IGZyb20gdGVybWluYWwg
aW4gZXNwZWFrdXAgb3Igb3JjYT8KPj4gCj4+IFRoYW5rIHlvdSwKPj4gCj4+IC1SZWVjZSAKPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gU3BlYWt1
cCBtYWlsaW5nIGxpc3QKPj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+PiBodHRwOi8vbGlu
dXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwZWFrdXAgbWFp
bGluZyBsaXN0Cj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9saW51eC1zcGVh
a3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVh
a3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21h
aWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
