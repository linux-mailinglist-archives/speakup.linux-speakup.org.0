Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D56942DD998
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 21:01:01 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AD460380FC0; Thu, 17 Dec 2020 15:01:00 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=O9wcCoSB;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7A425380F2A;
	Thu, 17 Dec 2020 15:01:00 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 9A4F2380C16; Thu, 17 Dec 2020 15:00:59 -0500 (EST)
Received: from st43p00im-ztdg10071801.me.com (st43p00im-ztdg10071801.me.com
 [17.58.63.171])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 61885380BE2
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 15:00:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1608235255;
 bh=KVsunZMq74seQnLNOHx/QydMl7PNkaY1t1r+Omq3XuA=;
 h=From:Content-Type:Mime-Version:Date:Subject:Message-Id:To;
 b=O9wcCoSBeXDoihCjfARPh1thkuv8uJukx0bTU7/CUHYKv/dIWNGUK1gmG05+aWtRO
 jmt76f9VXj0N8KBkvuxY74GS1Z/RhWXVWLcQXryuFTJcw509eJqrpzA6SgwWd96PJp
 C3WvgKaaxRdII5e4fEJR5Ojnte1+nwrmXOMwYtvum+7poTZ832JGoBuewnnsIYF+YV
 Djr5UfiuJuKEsmajgcTuW8OPteb5lDLCDEgvPkcdadThgyLiGBMQpSAnqLhh6WTO9g
 MfnprnBHbauickHJ+g9oPNQm+0L8MMIkwFF0HNJ7Sk7YuQ9C3uuDrGjtUcN1Vd0jHy
 rifqo8mvGf2Qw==
Received: from [192.168.1.77] (cpe-69-23-57-146.natcky.res.rr.com
 [69.23.57.146])
 by st43p00im-ztdg10071801.me.com (Postfix) with ESMTPSA id A02055400B2
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 20:00:54 +0000 (UTC)
From: Reece O'Bryan <reece.obryan@icloud.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 17 Dec 2020 15:00:52 -0500
Subject: Re: Efficiently using terminal with screenreader
Message-Id: <FD9C8E4B-57AC-4F83-A529-B0B5B3087B8E@icloud.com>
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

T0ssIEkgdW5kZXJzdGFuZCB3aGF0IHlvdeKAmXJlIHNheWluZyBub3chIEnigJltIGRlZmluaXRl
bHkgZ29pbmcgdG8gZ2V0IG9uZSBvZiB0aGVzZSB0byBwbGF5IGFyb3VuZCB3aXRoLgoKSSB2ZXJ5
IG11Y2ggYXBwcmVjaWF0ZSB5b3VyIGV4Y2xhbWF0aW9uIG9mIHRoZSBoaXN0b3J5IG9mIHRoaXMu
IEnigJltIHNvcnJ5IGlmIG15IHF1ZXN0aW9ucyBhcmUgb2J2aW91cywgYnV0IEkgaGF2ZSBvbmx5
IGJlZW4gYmxpbmQgYSBmZXcgeWVhcnMgYW5kIHRoaXMgcGFydCBvZiBjb21wdXRlcnMgaXMgcXVp
dGUgZGlmZmVyZW50IHdpdGhvdXQgYSBHVUkuIAogCgpUaGFuayB5b3UsCgpJcyBpdCBwb3NzaWJs
ZSB0byBjb21waWxlIHNwZWFrIHVwIG9uIG15IE1hY0Jvb2s/IEnigJltIHN0aWxsIGhhdmluZyB0
cm91YmxlIG5hdmlnYXRpbmcgYSB0ZXJtaW5hbCBhbmQgaWYgSSBjb3VsZCBydW4gc3BlYWsgdXAs
IEkgY291bGQgc2V0IHVwIGFuIGF1dG9tYXRlZCB3b3JrZmxvdyB0byB0dXJuIG9mZiB2b2ljZW92
ZXIsIHJ1biBzcGVhayB1cCBhbmQgcnVuIHRlcm1pbmFsPyBJIGRvbuKAmXQgdW5kZXJzdGFuZCB3
aHkgdGhlcmUgYXJlIG5vdCBjb21tYW5kcyB0byBuYXZpZ2F0ZSBsaW5lIGJ5IGxpbmUgaW4gdGhl
IG5hdGl2ZSB0ZXJtaW5hbCBvbiBPUyBYLgoKLVJlZWNlIAoKPiBPbiBEZWMgMTcsIDIwMjAsIGF0
IDI6MDQgUE0sIFphY2hhcnkgS2xpbmUgPHprbGluZUBzcGVlZHBvc3QubmV0PiB3cm90ZToKPiAK
PiBTYW11ZWwsCj4gCj4gTm8sIHRoZXkgZGVmaW5pdGVseSBkb27igJl0LiBBcyBmYXIgYXMgSeKA
mW0gYXdhcmUgdGhleSB1c2UgYW4gZW50aXJlbHkgZGlmZmVyZW50IGludGVyZmFjZS4gVGhlIGFk
YXB0b3IgZXhwb3NlcyAvZGV2L3R0eVVTQjAgYnV0IHRoZSBzeW50aGVzaXplciBpcyBzdGlsbCBp
biBzZXJpYWwvcnMyMzIgbW9kZS4gVGhlcmXigJlzIGEgaGFyZHdhcmUgdG9nZ2xlIHN3aXRjaCB0
byBzZWxlY3Qgb25lIG1vZGUgb3IgdGhlIG90aGVyLgo+IEJlc3QsCj4gWmFjay4KPiAKPj4gT24g
RGVjIDE3LCAyMDIwLCBhdCAxMDo1OSBBTSwgU2FtdWVsIFRoaWJhdWx0IDxzYW11ZWwudGhpYmF1
bHRAZW5zLWx5b24ub3JnPiB3cm90ZToKPj4gCj4+IFphY2hhcnkgS2xpbmUsIGxlIGpldS4gMTcg
ZMOpYy4gMjAyMCAxMDo1NToxMyAtMDgwMCwgYSBlY3JpdDoKPj4+IGJ1dCBkb2VzbuKAmXQgc3Vw
cG9ydCB1c2luZyBzeW50aHMgaW4gbmF0aXZlIFVTQiBtb2RlLgo+PiAKPj4gRG9uJ3QgdGhlc2Ug
c2ltcGx5IGV4cG9zZSBhIC9kZXYvdHR5VVNCMCBwb3J0Pwo+PiAKPj4gU2FtdWVsCj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFNwZWFrdXAgbWFp
bGluZyBsaXN0Cj4+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPj4gaHR0cDovL2xpbnV4LXNw
ZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBTcGVha3VwIG1haWxpbmcg
bGlzdAo+IFNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKPiBodHRwOi8vbGludXgtc3BlYWt1cC5v
cmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBs
aW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFu
L2xpc3RpbmZvL3NwZWFrdXAK
