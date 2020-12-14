Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 284972D9FD8
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 20:04:43 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B952E380FAE; Mon, 14 Dec 2020 14:04:42 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=speedpost.net header.i=@speedpost.net header.a=rsa-sha256 header.s=fm2 header.b=OLy0i6v/;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=D3ZFmnGK;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 211B8380F1D;
	Mon, 14 Dec 2020 14:04:42 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BFECE380C18; Mon, 14 Dec 2020 14:04:40 -0500 (EST)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5ACC0380968
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 14:04:36 -0500 (EST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 370C85C01DB
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 14:04:30 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 14 Dec 2020 14:04:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=speedpost.net;
 h=from:content-type:content-transfer-encoding:mime-version
 :subject:date:references:to:in-reply-to:message-id; s=fm2; bh=o2
 K1vOXJt57gsBAINQHlT64vxVek7MsTka6zBbFMi10=; b=OLy0i6v/aXYP5FjgYs
 jcnmcNArQarSiiOwN41d7y8ZhNNuEfBa2mL67xqX+bFXTdhOd91EXYcvvaDx2a5A
 5/lYp3VjfHWteHnSo30Ci9gmmYI+hXfVd/3QaqSkeipFv5oBcjP58hAOGlraib26
 wrOcXHMx1LTBOAYk+f0iL82q7Ih+nOZwFs1EGtAsVDHpw2lmBxmh0aGLNFhyldy7
 lV4qVnF9/uBA6MpMlmj5KOrd5Vlkxtu9jm9aS5ARkC1zvZBV3IEMt6kVg7SBIO+e
 Zqsfl9Wuub11fl/1biq2rr8tyPxAm7QcNyYc6fUo3u1No0NVh2S1wWkXzQgRlhur
 sQ6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=o2K1vOXJt57gsBAINQHlT64vxVek7MsTka6zBbFMi
 10=; b=D3ZFmnGKAlu68ZmDHFcfYtPWEOCraXey1GgNHtD1jCP9qCHRNvAJP/w4I
 zJtmHHxo0nDaHev1rYzfxlDgqyF7Qi5LAzM8lPLxDBG+CMLhTdrRBd0l/YxTHTht
 egwRO1DrIcnIh3H/PgiBByTVXOjq9quJWHO5MV9P3hWwEjGBWH0udBi58avqApFk
 C08lWDsDlWX14CR7RpyZo8KeeaAkzsUot8Eku2LaZYTbQjvVlg3EXycuy6ddcFA+
 Y+Er2PexXpaM+QmCbUf33NDDyL0Npbz7Moxq8nbVz73qng0Qha0Wo65PplDu86Ek
 wC1jh0wsSuWYH4H4+0PaKlFpa8wvw==
X-ME-Sender: <xms:PbfXX-V714HH_wuLOMplBZT92_6w3-nHv-r7mLE8jHm0WsoCam2Sdg>
 <xme:PbfXX6maIfeN3LpnWzuEjzwG1mv_CkxG5_gqf29H1QaILAdYECjyXKwX9iOJFyGAy
 5yRfIt28l0EGxkp>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudekkedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhtgfgggfuffhfvfgjkffosehtqhhmtdhhtdejnecuhfhrohhmpegkrggt
 hhgrrhihucfmlhhinhgvuceoiihklhhinhgvsehsphgvvgguphhoshhtrdhnvghtqeenuc
 ggtffrrghtthgvrhhnpefgffehfeegffeuuddujeevudffhfehvdfgleekjeelheekkeek
 gfefueffgfeludenucffohhmrghinheplhhinhhugidqshhpvggrkhhuphdrohhrghenuc
 fkphepieejrddukeefrddufeegrddvhedvnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepiihklhhinhgvsehsphgvvgguphhoshhtrdhnvght
X-ME-Proxy: <xmx:PbfXXyYIb4NVWBIrglCpHqSLjNieuSc29TgtWm1UPShZ2HqCnbxqvA>
 <xmx:PbfXX1UIhHMWvCEOVoFt6ktdHqBZOH0QhGY7XYmC_byt9OXgcUp1Qw>
 <xmx:PbfXX4muU2-jeUDtuSqyFCyBRzhZLuqJRjFmxULSFYSYImE1bhs4zg>
 <xmx:PrfXX0yeI0LlDR2wsAgmaujrphqEUNdVLEZEkudLYeNacbb7UvpfCA>
Received: from [10.0.0.222] (c-67-183-134-252.hsd1.wa.comcast.net
 [67.183.134.252])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4A99D1080073
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 14:04:29 -0500 (EST)
From: Zachary Kline <zkline@speedpost.net>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.20.0.2.21\))
Subject: Re: Efficiently using terminal with screenreader
Date: Mon, 14 Dec 2020 11:04:22 -0800
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
In-Reply-To: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
Message-Id: <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
X-Mailer: Apple Mail (2.3654.20.0.2.21)
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

SGksCgpUbyBiZSBwZXJmZWN0bHkgaG9uZXN0LCBJIHJlY29tbWVuZCB1c2luZyBTcGVha3VwIGZv
ciBnb29kIHRlcm1pbmFsIHN1cHBvcnQuIE9yY2EgaXMgcmF0aGVyIHN1Yi1wYXIgaW4gdGhpcyBy
ZWdhcmQsIGFuZCBTcGVha3VwIHdhcyBkZXNpZ25lZCB0byBmdWxseSBzdXBwb3J0IGNvbW1hbmQt
bGluZSBvdXRwdXQgZnJvbSB0aGUgc3RhcnQuCkJlc3QsClphY2suCgo+IE9uIERlYyAxNCwgMjAy
MCwgYXQgMTA6NTIgQU0sIFJlZWNlIE8nQnJ5YW4gPHJlZWNlLm9icnlhbkBpY2xvdWQuY29tPiB3
cm90ZToKPiAKPiBIZWxsbywKPiAKPiBJ4oCZbSBoYXZpbmcgdHJvdWJsZSBlZmZpY2llbnRseSBh
Y2Nlc3Npbmcgb3V0cHV0cyBmcm9tIHRlcm1pbmFsIGluIE9yY2EuIEkgbmVlZCBhIGZ1bGx5IGZ1
bmN0aW9uaW5nIHNjcmVlbiByZWFkZXIsIGlzIHRoZXJlIGFuIGVhc3kgd2F5IHRvIG5hdmlnYXRl
IGxpbmUgYnkgbGluZSBvZiBvdXRwdXQgZnJvbSB0ZXJtaW5hbCBpbiBlc3BlYWt1cCBvciBvcmNh
Pwo+IAo+IFRoYW5rIHlvdSwKPiAKPiAtUmVlY2UgCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBTcGVha3VwIG1haWxpbmcgbGlzdAo+IFNwZWFrdXBA
bGludXgtc3BlYWt1cC5vcmcKPiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWls
bWFuL2xpc3RpbmZvL3NwZWFrdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5v
cmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVh
a3VwCg==
