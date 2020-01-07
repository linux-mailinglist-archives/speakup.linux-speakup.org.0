Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id CB653131D82
	for <lists+speakup@lfdr.de>; Tue,  7 Jan 2020 03:10:08 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0DC621C31C7; Mon,  6 Jan 2020 21:10:07 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=speedpost.net header.i=@speedpost.net header.b="iHbA46EQ";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.b="qQ5EG1va";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C79321C4724;
	Mon,  6 Jan 2020 21:09:10 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 204631C31B9; Mon,  6 Jan 2020 21:09:08 -0500 (EST)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 12CB41C2E16
 for <speakup@linux-speakup.org>; Mon,  6 Jan 2020 21:09:03 -0500 (EST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 5451422063
 for <speakup@linux-speakup.org>; Mon,  6 Jan 2020 21:09:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 06 Jan 2020 21:09:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=speedpost.net;
 h=from:content-type:content-transfer-encoding:mime-version
 :subject:date:references:to:in-reply-to:message-id; s=fm2; bh=+f
 soJ0Q56GDRU0pxqyIo6AO5egoTy/qMOEiIs54VvYQ=; b=iHbA46EQ9liiSzK7ci
 CMzg4NwBbLfsEChGbfdwi5XbodTD8Lk1v+Gylrxh4cAAtH/d74CRDsOfIRgXcDdR
 LzPK+scKCQ8A5gk1gzz07Dioh4hxvDPa/LLc75JQmoBSZNKgf8CDNfIuZwRKpdcX
 gYgy9IpX3hY42mvZjoHafY0k/xJ2I60gTCxZRj6ApIc7mZzS6HpLFsukCK32sKDt
 xkbKjg9EQwk7vAQBJ07E7vUokzWoikfpbNNYk04NxHmOWBHpgm3m3o4D7/WlT3bX
 IuzATY9OFAXkKhM27sM7AuUuusCW2/ZN+ddSRNfEr7YIyAPfA21MMouFoZA0rK0C
 PZ8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=+fsoJ0Q56GDRU0pxqyIo6AO5egoTy/qMOEiIs54Vv
 YQ=; b=qQ5EG1va/2wFwkpyP2m8Hec2KpvWwWpYdXApP7rPMilRVOnhZE7T9X0Jj
 w3pGhYO6jSK6b/wKhKoMZ2cAeDWe+BswcnHGbGP6fQlt0c6Ptr983DJ3GcmLX8a/
 gi6zOdIH4PQa70Xfd+3NSxKhi6iJJy//om0j4RKw4ACE0jPU+tbcyLKWgQnzHPC+
 16kEz1X4NxkwrrgoPv4UukLkmZUarmUSlE5HefdxwpDVN24z0M+wbSp0VKKFUYsp
 L6q+7MK/KwkjkzWCeFnZF0XmgFeeqru/aoZHEjtVsAAr/jtGIotAIv2EryTX6Att
 Ywn9N8NT0hAQuz9djn//JL/P5htvQ==
X-ME-Sender: <xms:POgTXk4ohbwd6JDspACsPvH3PJUL1orPn2aZdcOKQ5xDn1mnHCcB5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdehuddggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephfgtgfgguffffhfvjgfkofesthhqmhdthhdtjeenucfhrhhomhepkggrtghh
 rghrhicumfhlihhnvgcuoeiikhhlihhnvgesshhpvggvughpohhsthdrnhgvtheqnecuff
 homhgrihhnpehlihhnuhigqdhsphgvrghkuhhprdhorhhgnecukfhppeeijedrudekfedr
 udefgedrvdehvdenucfrrghrrghmpehmrghilhhfrhhomhepiihklhhinhgvsehsphgvvg
 guphhoshhtrdhnvghtnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:POgTXiN3UPpquS6JjYWJF1qOeWEBcvfHTl6Z3BkM72M3R_G4j9fCuQ>
 <xmx:POgTXoJxa9AJTT8OitEMp4BgPVeSGHm78hGLy45UNxzAX4pufTBhnA>
 <xmx:POgTXtoW8U0uUJoxFwtIZH7zMt2dky4ZSv0-tBG4h491-AA189kJzw>
 <xmx:POgTXnGeCWYnAWRPaKFU5NpYuRz5DLC3sJl73N7PD5AbaJW3j75Lbg>
Received: from [10.0.0.39] (c-67-183-134-252.hsd1.wa.comcast.net
 [67.183.134.252])
 by mail.messagingengine.com (Postfix) with ESMTPA id C2C0A3060774
 for <speakup@linux-speakup.org>; Mon,  6 Jan 2020 21:08:59 -0500 (EST)
From: Zachary Kline <zkline@speedpost.net>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: DecTalk Express in U S B Mode?
Date: Mon, 6 Jan 2020 18:08:57 -0800
References: <Pine.LNX.4.64.2001061756030.21818@server2.shellworld.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
In-Reply-To: <Pine.LNX.4.64.2001061756030.21818@server2.shellworld.net>
Message-Id: <F0948808-FBEE-4250-8294-0E97FBE70003@speedpost.net>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
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

SGksCgpJ4oCZbSBub3QgU2FtdWVsLCBidXQgSSBiZWxpZXZlIHdoYXQgaGXigJlzIHJlZmVycmlu
ZyB0byBpcyB0aGUgYWJpbGl0eSB0byB1c2UgVVNCLXRvLXNlcmlhbCBjb252ZXJ0ZXJzIGFuZCBz
aW1pbGFyIGRldmljZXMgaW5zdGVhZCBvZiBvbmJvYXJkIHNlcmlhbCBwb3J0cy4gVEhlIFVTQiBw
cm90b2NvbCB0aGUgRGVjVGFsayB1c2VzLCBhcyBmYXIgYXMgSSBrbm93LCBpcyBzdGlsbCBub3Qg
YXZhaWxhYmxlLCBidXQgeW91IGNhbiB1c2UgVVNCIHRvIHNlcmlhbCBhZGFwdG9ycyB3aXRoIFNw
ZWFrdXAuCkJlc3QsClphY2suCgo+IE9uIEphbiA2LCAyMDIwLCBhdCA2OjAwIFBNLCBDaGltZSBI
YXJ0IDxjaGltZUBodWJlcnQtaHVtcGhyZXkuY29tPiB3cm90ZToKPiAKPiBIaSBTYW11ZWw6IElu
IHRoZSBuZWFybHkgMTV5ZWFycyBJIGhhdmUgaGFkIHRoaXMgdW5pdCBmcm9tIEFjY2VzcyBTb2x1
dGlvbnMsIGl0IGhhcyBvbmx5IHJ1biBpbiBSUzIzMiBtb2RlLiBJZiB5b3UgaGF2ZSBzcGVjaWZp
YyBzdGVwcyBpbiBob3cgdG8gd29yayBpbiBVIFMgQiBtb2RlLCB3ZSB3b3VsZCB2ZXJ5IG11Y2gg
YXBwcmVjaWF0ZSwgYXMgaXQgd2lsbCBtYWtlIGl0IG11Y2ggZWFzaWVyIHRvIHVwZ3JhZGUgdGhp
cyBtYWNoaW5lLiBUaGFua3Mgc28gbXVjaCBpbiBhZHZhbmNlLiBSdW5uaW5nIGF0IGxlYXN0IGEg
NS4yIERlYmlhbiBrZXJuZWwgaW4gU2lkCj4gQ2hpbWUKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3BlYWt1
cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21h
aWxtYW4vbGlzdGluZm8vc3BlYWt1cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3Vw
Lm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3Nw
ZWFrdXAK
