Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 416BD2DD8C9
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 19:55:21 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BE334380F51; Thu, 17 Dec 2020 13:55:20 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=speedpost.net header.i=@speedpost.net header.a=rsa-sha256 header.s=fm2 header.b=L7kUYDAJ;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=FIq0u/P1;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EAF7A380F43;
	Thu, 17 Dec 2020 13:55:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7D56F380C16; Thu, 17 Dec 2020 13:55:18 -0500 (EST)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 by befuddled.reisers.ca (Postfix) with ESMTPS id B224F380BE3
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 13:55:17 -0500 (EST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 8441854A
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 13:55:16 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 17 Dec 2020 13:55:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=speedpost.net;
 h=from:content-type:content-transfer-encoding:mime-version
 :subject:date:references:to:in-reply-to:message-id; s=fm2; bh=a6
 zpgJKMi5k4rpFjVW8DRQDWKFeUUQexJfUqQxbA6Fg=; b=L7kUYDAJIxRrOJlKRI
 VJBs7d8HIf0F4UtdOe3cEJC1jkrG7yrKHvIC9Zxhu36JZgs87kucSlWdo5tbgLAl
 h5KBN/btT8gxg8xQAdRpnwhJ+ihWsDLfz7jMlVKB2AdLK49ync/I6iWvUoysP6wD
 mRMKR8g/IzsGpOzNk11ToUN0VdWPa4nALH1DXG0rI4coJ+QoJH2e9mNAY/6uAT4L
 ndZW8o65CRaWczLEmVnjPvUTjI368v77NWOohPlifWONNrnWDlTpljuSsXo/xnOV
 5SKFxGvdxK7J1vFygMFzjtW9Rkyh9MSbhnLonayKdIMY6jruGCAAs3OvuPwibiXx
 bh2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=a6zpgJKMi5k4rpFjVW8DRQDWKFeUUQexJfUqQxbA6
 Fg=; b=FIq0u/P1XLsp0RmdFmWO10aUs8R5oS9g6sDM3uxsjdbHLIYsgqZSNvKNF
 MRr1jlF4ydyvHL8U9oRTQKzN21/8a+G0OQCz/GSKaatvG68sDUlqsC3uQvkhtebL
 Z3LvQsv5MsNntTRC+DdBolJJ4lH88NZMawazep7HVaiiuH//bUk04xDO1sjljhEu
 YciASTzCR3hsUzMCZWvUFKHPzQ5eByWnQAQMUWGb5w+q0aL5NIaWDYuLGLLqzoCi
 FT7zSzzKSQFdyE4J6SQBr7n+4o1SQhGRauLXCmZso+DCjCkgkEi4D7tT9OHbSKEU
 tHQqHhOWcWTR81RbzKk6j+pQd+1jQ==
X-ME-Sender: <xms:k6nbX6qZC7JaZRijr85P4sVHzZQ3j0BglQMboXZgOCA4aROYPvFvsg>
 <xme:k6nbX4pFrZfQA5KGCjRnjXoaLZu8HxeMjgDgp6ef0gzIs8PHGj-fdvfalczV9VM8K
 UdIJ6JMoRhqpQ1L>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudelgedgudduiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhtgfgggfuffhfvfgjkffosehtqhhmtdhhtdejnecuhfhrohhmpegkrggt
 hhgrrhihucfmlhhinhgvuceoiihklhhinhgvsehsphgvvgguphhoshhtrdhnvghtqeenuc
 ggtffrrghtthgvrhhnpefgffehfeegffeuuddujeevudffhfehvdfgleekjeelheekkeek
 gfefueffgfeludenucffohhmrghinheplhhinhhugidqshhpvggrkhhuphdrohhrghenuc
 fkphepieejrddukeefrddufeegrddvhedvnecuvehluhhsthgvrhfuihiivgeptdenucfr
 rghrrghmpehmrghilhhfrhhomhepiihklhhinhgvsehsphgvvgguphhoshhtrdhnvght
X-ME-Proxy: <xmx:k6nbX_Pv2P-kqMw0-LEQFyUwzdK74EkCUxA0yq6qvGM6ZdlDji7nSw>
 <xmx:k6nbX57o2QmOwP1S7lM2NYo4tUXyi5HXV4cFn9O2r9SJUcIfuwVJMA>
 <xmx:k6nbX57DsaoZtPK88qmk8139J3YUoiPkkZOWFU_OOvSVBaXF1XrwUw>
 <xmx:lKnbX7HP0X_7-gD-tagqmxa7cjkYUn9QMjHaoLob_RBkxagmMx7zzg>
Received: from [10.0.0.222] (c-67-183-134-252.hsd1.wa.comcast.net
 [67.183.134.252])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7D7DC108005B
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 13:55:15 -0500 (EST)
From: Zachary Kline <zkline@speedpost.net>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.40.0.2.32\))
Subject: Re: Efficiently using terminal with screenreader
Date: Thu, 17 Dec 2020 10:55:13 -0800
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
 <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
 <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
 <20201217184038.h7b764gsfxtjag4i@function>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
In-Reply-To: <20201217184038.h7b764gsfxtjag4i@function>
Message-Id: <B7379CEB-D226-42D2-B99A-46558F5B7D4D@speedpost.net>
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

SSB0aGluayB0aGVyZSdzIGEgbWlzdW5kZXJzdGFuZGluZyBoZXJlLgoKU3BlYWt1cCBzdXBwb3J0
cyBzeW50aHMgY29ubmVjdGVkIHRvIFVTQi10by1zZXJpYWwgYWRhcHRvcnMsIGJ1dCBkb2VzbuKA
mXQgc3VwcG9ydCB1c2luZyBzeW50aHMgaW4gbmF0aXZlIFVTQiBtb2RlLiBBcyBmYXIgYXMgSSBh
bSBhd2FyZSB0aGVyZSBoYXMgbmV2ZXIgYmVlbiBhIGRyaXZlciBmb3IgdGhlIERlY3RhbGsgb3Ig
VHJpcGxldGFsayBVU0IgaW4gVVNCIG1vZGUsIHRob3VnaCBpdCB3b3VsZCBiZSBuaWNlIHRvIGhh
dmUgb25lLgoKQmVzdCwKWmFjay4KCj4gT24gRGVjIDE3LCAyMDIwLCBhdCAxMDo0MCBBTSwgU2Ft
dWVsIFRoaWJhdWx0IDxzYW11ZWwudGhpYmF1bHRAZW5zLWx5b24ub3JnPiB3cm90ZToKPiAKPiBK
b2huIEcgSGVpbSwgbGUgamV1LiAxNyBkw6ljLiAyMDIwIDEyOjMwOjU0IC0wNjAwLCBhIGVjcml0
Ogo+PiBJdCBkaWQgbm90IHN1cHBvcnQgc3ludGhzIGNvbm5lY3RlZCB0byBhIFVTQiBwb3J0LiBJ
IGRvbid0IGtub3cgaWYKPj4gdGhhdCdzIHN0aWxsIHRydWUuIEkgZG9uJ3QgdGhpbmsgc28uCj4g
Cj4gU3BlYWt1cCBub3cgZG9lcyBzdXBwb3J0IHN5bnRocyBjb25uZWN0ZWQgb24gVVNCIHBvcnRz
LCB5ZXMuCj4gCj4gU2FtdWVsCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBTcGVha3VwIG1haWxpbmcgbGlzdAo+IFNwZWFrdXBAbGludXgtc3BlYWt1
cC5vcmcKPiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZv
L3NwZWFrdXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xp
bnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
