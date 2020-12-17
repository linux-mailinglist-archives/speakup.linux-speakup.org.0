Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AC35D2DD90A
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 20:04:50 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E8943381004; Thu, 17 Dec 2020 14:04:49 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=speedpost.net header.i=@speedpost.net header.a=rsa-sha256 header.s=fm2 header.b=U71FuZU8;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=OJ0wtrxM;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B8BA1380F49;
	Thu, 17 Dec 2020 14:04:49 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7B8E0380C19; Thu, 17 Dec 2020 14:04:48 -0500 (EST)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 374A5380BE3
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 14:04:48 -0500 (EST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 16997768
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 14:04:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 17 Dec 2020 14:04:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=speedpost.net;
 h=from:content-type:content-transfer-encoding:mime-version
 :subject:date:references:to:in-reply-to:message-id; s=fm2; bh=g9
 JLBZyPWPM1FT+XU8jFqILxr26NDwqUKYnCmCXNRd8=; b=U71FuZU8DEZMUctYuM
 p9TpIxnbzg7i1ao3eZYMAd1TZ/rffbpLzL23gNSoRMtnWVnnGtXEOv3rD79e/1y1
 kfwHq7rn/QdsVR/AglzE2qUC01BElMm3wgNp+B/UUlG3ZP/YHgyecSLRvLI0b/Iv
 WX+YL4Fp2qb7REPylFM8ZH2LMgHUOFBnpM3q8OuBmV4YQarBPDfYo8l3QaIYcsR0
 bFgMjj57Orfj+udGGPo/t0phvk1OOrbo4dDxYM5wudQ3WeC7ZzHinEOedBFnNCTF
 aX2u+vHEhKsKKM9RZa3yxwCa67sOVTa62YXQYtecHQkvEL5DJIYpY+oVsJ7jnDzy
 Dcww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=g9JLBZyPWPM1FT+XU8jFqILxr26NDwqUKYnCmCXNR
 d8=; b=OJ0wtrxM00yV24q2pvgbEk+M5BuI01TZLxc25FP5+sQIZU9AwYxbc1LIa
 5mv/AoerlraDCThsSwN+bZDsdv3C6Pzg3Aw4IFbKocXRQ3/Vy38gBBQ7ep5h3SZS
 +2dW4grHD/vdMFssMEIGQQ6+S3JwpDS3B8JAz46ymJdZkZKYdA92n4dJdT3bCwet
 MPow/MnHZ1P97WlCaBQ+FiGlkCMuK2uOkmWsWIOqkHF2Hjrndc63cM0zY0XLg2F0
 jnvnNtl1VQpnamatFuTveOUUWjZhlzbaKD4lALBRog9pjtZRocfxir7sUYF6Dbwa
 1plkSoLhIZo/CNTOgqbMsKGB3ZszA==
X-ME-Sender: <xms:zavbX9lcpxo5VoIDJ_Lx4AFIi1I6iM5--dNdm1sME7m5FliI5u4d_Q>
 <xme:zavbX42ar8Tgzrd21oVY0bggtDxx7gRiK--QDmut4my0rUfNo0lor9toJ7ZLhfvq4
 GuPzax9OxLLhq64>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudelgedguddukecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhtgfgggfuffhfvfgjkffosehtqhhmtdhhtdejnecuhfhrohhmpegkrggt
 hhgrrhihucfmlhhinhgvuceoiihklhhinhgvsehsphgvvgguphhoshhtrdhnvghtqeenuc
 ggtffrrghtthgvrhhnpefgffehfeegffeuuddujeevudffhfehvdfgleekjeelheekkeek
 gfefueffgfeludenucffohhmrghinheplhhinhhugidqshhpvggrkhhuphdrohhrghenuc
 fkphepieejrddukeefrddufeegrddvhedvnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepiihklhhinhgvsehsphgvvgguphhoshhtrdhnvght
X-ME-Proxy: <xmx:zavbXzrU-zovINESXZ6ygT3jF2cn_oXydznFhjvQ4EIfKxFoGGdDFw>
 <xmx:zavbX9nkQJRh1yXttPxq0iTfUK_6K6GJwkuFxTlqeuYNS6YRIOI7mQ>
 <xmx:zavbX70qjM_L5pbmyNrVV8fhZqVLywWpyYZzZ9PnT2hDEoqgPc6Ysg>
 <xmx:zavbX8Ap6yBuK57eaPg3n0NGHDg1H_gXsAAJvJ-Lv_xU7NwSAlmksw>
Received: from [10.0.0.222] (c-67-183-134-252.hsd1.wa.comcast.net
 [67.183.134.252])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1450F108005C
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 14:04:44 -0500 (EST)
From: Zachary Kline <zkline@speedpost.net>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.40.0.2.32\))
Subject: Re: Efficiently using terminal with screenreader
Date: Thu, 17 Dec 2020 11:04:43 -0800
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
 <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
 <20201217184038.h7b764gsfxtjag4i@function>
 <B7379CEB-D226-42D2-B99A-46558F5B7D4D@speedpost.net>
 <20201217185942.ilfu5kbg2lmcwidi@function>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
In-Reply-To: <20201217185942.ilfu5kbg2lmcwidi@function>
Message-Id: <C0260469-C483-4C7D-A5CC-0CDBA6B3D6BD@speedpost.net>
X-Mailer: Apple Mail (2.3654.40.0.2.32)
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

U2FtdWVsLAoKTm8sIHRoZXkgZGVmaW5pdGVseSBkb27igJl0LiBBcyBmYXIgYXMgSeKAmW0gYXdh
cmUgdGhleSB1c2UgYW4gZW50aXJlbHkgZGlmZmVyZW50IGludGVyZmFjZS4gVGhlIGFkYXB0b3Ig
ZXhwb3NlcyAvZGV2L3R0eVVTQjAgYnV0IHRoZSBzeW50aGVzaXplciBpcyBzdGlsbCBpbiBzZXJp
YWwvcnMyMzIgbW9kZS4gVGhlcmXigJlzIGEgaGFyZHdhcmUgdG9nZ2xlIHN3aXRjaCB0byBzZWxl
Y3Qgb25lIG1vZGUgb3IgdGhlIG90aGVyLgpCZXN0LApaYWNrLgoKPiBPbiBEZWMgMTcsIDIwMjAs
IGF0IDEwOjU5IEFNLCBTYW11ZWwgVGhpYmF1bHQgPHNhbXVlbC50aGliYXVsdEBlbnMtbHlvbi5v
cmc+IHdyb3RlOgo+IAo+IFphY2hhcnkgS2xpbmUsIGxlIGpldS4gMTcgZMOpYy4gMjAyMCAxMDo1
NToxMyAtMDgwMCwgYSBlY3JpdDoKPj4gYnV0IGRvZXNu4oCZdCBzdXBwb3J0IHVzaW5nIHN5bnRo
cyBpbiBuYXRpdmUgVVNCIG1vZGUuCj4gCj4gRG9uJ3QgdGhlc2Ugc2ltcGx5IGV4cG9zZSBhIC9k
ZXYvdHR5VVNCMCBwb3J0Pwo+IAo+IFNhbXVlbAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPiBTcGVha3VwQGxp
bnV4LXNwZWFrdXAub3JnCj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1h
bi9saXN0aW5mby9zcGVha3VwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3Jn
Cmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1
cAo=
