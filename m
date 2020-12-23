Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C98242E1189
	for <lists+speakup@lfdr.de>; Wed, 23 Dec 2020 03:02:10 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6C74C380F46; Tue, 22 Dec 2020 21:02:06 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=F9WDpY7C;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 79DBE380F7B;
	Tue, 22 Dec 2020 21:02:04 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 633D1380EB2; Tue, 22 Dec 2020 21:02:02 -0500 (EST)
Received: from st43p00im-ztbu10073701.me.com (st43p00im-ztbu10073701.me.com
 [17.58.63.183])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 266B538096C
 for <speakup@linux-speakup.org>; Tue, 22 Dec 2020 21:02:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1608688919;
 bh=lB11q22a6UDw1srIinsuMJL3r+XiFkCUnl4zPNeNK/U=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=F9WDpY7CXRPvqc7DwZGuBtHLhVLa3BoVusViSHsl1YmGfMe3mVo21CHUe5cH1U078
 mx/LLyXEcPnHG/9wjLkQCfJLyaKS+f6EQzVkt9CEJh4TKubMSXNqRy4of2FG0P/jfH
 l8tU72ATMz6udLcexQqCradH4ScwM1YjckeOgOIorc5hJdNM+RshrH2eaQmxjMwoCa
 jerTdI0x2yG2qPY4ODp3lwt7ukBnZSVMdYqlQobwMlAxBY/YgPs34F0zPIRgePN7ep
 i7a1wYC2xrpQRGZ1z/HWaq5DYzfXTMVLxDsyP1kpXGseRBOi9KYL9kHXA3/TdwI4LC
 3QgqDh/xU7WEA==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-ztbu10073701.me.com (Postfix) with ESMTPSA id 9DE084C0656
 for <speakup@linux-speakup.org>; Wed, 23 Dec 2020 02:01:59 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 22 Dec 2020 21:01:58 -0500
Subject: Dual Boot Questions / VirtualBox 
Message-Id: <CA5BEE26-38AC-4030-A0AA-706B0AAE6378@icloud.com>
To: speakup@linux-speakup.org
X-Mailer: iPhone Mail (16C101)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343, 18.0.737
 definitions=2020-12-22_13:2020-12-21,
 2020-12-22 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=937 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2012230014
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

SSBoYXZlIGEgMjAyMCBNYWNCb29rIFBybyB3aXRoIGEgMiBHSHogcHJvY2Vzc29yLCAxNmdiIG9m
IHJhbSBhbmQgSSBhbSBkZWJhdGluZyBkdWFsIGJvb3RpbmcgaXQuIEkgSWRlYWxseSB3b3VsZCBs
aWtlIHRvIGhhdmUgc29tZXRoaW5nIHNpbWlsYXIgdG8gdGhlIHNldHVwIEkgdXNlZCB0byBoYXZl
IHdoZW4gSSBzdGlsbCBoYWQgdmlzaW9uIHJ1bm5pbmcgd2luZG93cyB2aXN0YSBhbmQgVWJ1bnR1
LiBJ4oCZZCBsaWtlIHRvIGVuY3J5cHQgdGhlIGVudGlyZSBoYXJkIGRyaXZlIHdpdGggVmVyYWNy
eXB0IGFuZCBsb2FkIGF0IGxlYXN0IG9uZSBkaXN0cm8sIG1vc3QgbGlrZWx5IFdob25peCBvbiBE
ZWJpYW4gKChvciBUYWlscykpIGFuZCBvcmNhLCBhdGhlbiBwb3NzaWJseSBXaW5kb3dzIHdpdGgg
TlZEQTsgc28gTWFjIGFuZCBMaW51eCwgV2luZG93cyBhIG1heWJlIG9uIGEgNTAwR0IgU1NELiBT
Y3JlZW4gcmVhZGluZyBvciBvcmNhIHdpc2UsIHdoYXQgcG90ZW50aWFsIGlzc3VlcyBhbSBJIGxv
b2tpbmcgb3V0IGZvcj8gSSBVbmRlcnN0YW5kIHRoYXQgSSB3b3VsZCBuZWVkIHRvIGVudGVyIHRo
ZSBwYXNzd29yZCB0byBkZWNyeXB0IHRoZSBoYXJkIGRyaXZlIHdpdGhvdXQgYSBzY3JlZW5yZWFk
ZXIuIElzIHRoZXJlIGFueSB3YXkgdG8gbWFrZSB0aGUgYm9vdCBsb2FkZXIgc3BlYWs/CgpBbHNv
LCBoYXMgYW55b25lIGVsc2Ugb3V0IHRoZXJlIGR1YWwtYm9vdGVkIG9uIHRoZWlyIE1hY0Jvb2sg
d2l0aCB3aW5kb3dzIG9yIExpbnV4LDsgY2FuIHlvdSB0ZWxsIG1lIGhvdyBtdWNoIGZhc3RlciB0
aGUgc2Vjb25kYXJ5IG9wZXJhdGluZyBzeXN0ZW0gaXMgcmF0aGVyIHRoYW4gcnVubmluZyBpdCBp
bnNpZGUgb2YgYSB2aXJ0dWFsaXplZCBlbnZpcm9ubWVudCBvbiBPUyBYIGluIHNvbWV0aGluZyBs
aWtlIFZpcnR1YWxCb3g/IEkgYW0gZGViYXRpbmcgdGhpcyBoYXZpbmcgbm90IGJlZW4gYWJsZSB0
byBydW4gbXkgcHJlbGltaW5hcnkgdGVzdHMgdGhhdCBJIHdhbnQgdG8gd2l0aCB0aGVzZSBvcGVy
YXRpbmcgc3lzdGVtcyBpbnNpZGUgb2YgdmlydHVhbCBib3guIEnigJltIG5vdCByZWFsbHkgd2Fu
dGluZyB3aW5kb3dzIHRoYXQgYmFkbHkgYW5kIHRoZSBMaW51eCBvcGVyYXRpbmcgc3lzdGVtIEkg
d2FudCBkb2VzIG5vdCBoYXZlIGFuIGFjY2Vzc2libGUsIHRhbGtpbmcgaW5zdGFsbGVyIGFuZCBJ
IGFtIHN0aWxsIHdhaXRpbmcgb24gY2l0ZWQgYXNzaXN0YW5jZSB0byBnZXQgdGhlc2UgcnVubmlu
ZyBpbnNpZGUgb2YgVmlydHVhbEJveC4gQ2FuIGFueW9uZSBhdHRlc3QgdG8gb3JjYSBydW5uaW5n
IGluc2lkZSBvZiB2aXJ0dWFsYm94IG9uIGEgTWFjQm9vaz8gVGhlIG9ubHkgdGhpbmcgSSBjdXJy
ZW50bHkgaGF2ZSBydW5uaW5nIG9yY2EgaXMgbXkgUlBJNCBhbmQgaXQgaXMgZmFyIHRvbyBzbG93
IGZvciBtZS4gSWYgSSB3ZXJlIHRvIGp1c3QgcnVuIGEgY29tbWFuZCBsaW5lIHZlcnNpb24gb2Yg
TGludXggd2hhdCBpcyB0aGUgbWluaW11bSBJIHdvdWxkIG5lZWQgdG8gbWFrZSBpdCBhY3R1YWxs
eSB0YWxrIGFuZCBzdGlsbCBiZSBmdW5jdGlvbmFsPyAKCgpUaGFuayB5b3UsCgotUmVlY2UKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BlYWt1cCBtYWls
aW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5v
cmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
