Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 79F9512DA33
	for <lists+speakup@lfdr.de>; Tue, 31 Dec 2019 17:14:30 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E69641C46E3; Tue, 31 Dec 2019 11:14:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1577808869;
	bh=MckMVzkiR0KtVZg7Zq/tbYwWpHuT2wWHLB9AB7HuoxM=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=RojFmXoXww0VNNysqeDMOfoKQGc1FyKNzqb7rTlcgfLIE91XsQc2EeIZGK8w3kwqp
	 Z8GcJfnVgGWGbLEHlOuxkGDz9l5LTN/TAELkuv5TmhwLCCF9r7eEoEXFeOs5L+GKBD
	 b7Bxpd8U/AUn2xEpgSq6Ic6u4HVz93u7dherqQ7A=
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ABECF1C46D8;
	Tue, 31 Dec 2019 11:13:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1577808837;
	bh=MckMVzkiR0KtVZg7Zq/tbYwWpHuT2wWHLB9AB7HuoxM=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:From;
	b=nabmhBuunI5ZUM7j0r+afxLuZQUaKfbAm19JUTDHfowcTArvprkEE04617RhyzvAH
	 47vKeHxF9GZZ0ifzCHMn3xDX9nipmlNClYA6ouVYVKYhaNW9ku2e54BhS6IAIpeWZT
	 fgyHou1hqXdHGzjqQW9yMoPpHwtYQf5f/59I9S+E=
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C456A1C46BB; Tue, 31 Dec 2019 11:13:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1577808834;
 bh=lJ6K/Tw3e19ytlMTlBtFcDKto5SFBaxmRkigID44JOI=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=WftjO/fAnW72mGPTtN7PsjPvYAK4W0RvrlSHf7ywi6JPaOQRtVHBybbsVK7L47S/N
 0UXuQ4jTaYefASwJZS9byK/WZruI5KZg1NMnbLVhwp2mN07OEfDuiePTyJ6kUx4BeJ
 3pdBL6X5IOyOhw+aYoCqH87Bt7qs+SMdTOWy3aMY=
Received: from localhost (localhost [IPv6:::1])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9C89D1C46B5
 for <speakup@linux-speakup.org>; Tue, 31 Dec 2019 11:13:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
 s=befuddled; t=1577808827;
 bh=lJ6K/Tw3e19ytlMTlBtFcDKto5SFBaxmRkigID44JOI=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=VWZhAe40vnfJf4mAQ3F1QkuaZdug64A1pfx/a2zNN1VQjMnuMCgu6Z9W5LiXVB/E0
 tq180Dyk9sN01+RdOLq4ktSjsf7TIdb/0Ff1J+Vp+RbN8NGndEHmHy89jvGh7poVtN
 7EXYYWY5KjSZsOd7EJudf9cR32Q/MHSKcFL4Lwy0=
Date: Tue, 31 Dec 2019 11:13:47 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup locking box on latest linux 5.3.15-1
In-Reply-To: <20191231160333.llw4xqg55jyudkzg@function>
Message-ID: <alpine.DEB.2.21.1912311112300.12026@befuddled.reisers.ca>
References: <alpine.DEB.2.21.1912222137490.31217@befuddled.reisers.ca>
 <20191231114129.GA1937@rednote.net>
 <alpine.DEB.2.21.1912310943070.9526@befuddled.reisers.ca>
 <8d32a2c2-8cbf-c5c7-6f48-b4fd440a5da8@slint.fr>
 <alpine.DEB.2.21.1912311045030.12026@befuddled.reisers.ca>
 <20191231160333.llw4xqg55jyudkzg@function>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

SGkgU2FtdWVsOiBWZXJ5IGNvb2wuIEkgd2lsbCBkbyBhbiB1cGdyYWRlIHRvZGF5IGFuZCBzZWUg
aG93IHRoYXQKd29ya3Mgb3V0LiAgVGhhbmsgeW91LgoKICAgS2lyawpPbiBUdWUsIDMxIERlYyAy
MDE5LCBTYW11ZWwgVGhpYmF1bHQgd3JvdGU6Cgo+IEhlbGxvLAo+Cj4gS2lyayBSZWlzZXIsIGxl
IG1hci4gMzEgZMOpYy4gMjAxOSAxMDo1MzoyNCAtMDUwMCwgYSBlY3JpdDoKPj4gSGV5IERpZGll
cjogQWxsIG9mIHRoZSBrZXJuZWxzIEkgdGVzdGVkIHdlcmUgZGViaWFuIHNpZCBwYWNrYWdlcy4g
VGhlCj4+IG1vc3QgcmVjZW50IHdhcyBhIERlY2VtYmVyIHR3ZWx2ZSBidWlsZCBJIGJlbGlldmUu
IEkgaGF2ZSBub3Qgc2VlbiBhbnkKPj4gNS40Lngga2VybmVscyBhdmFpbGFibGUgdW5kZXIgc2lk
IHlldC4gQWRtaXR0ZWRseSwgSSBkb24ndCB0cnkgdG8KPj4gdXBncmFkZSBldmVyeSBkYXkgb3Ig
YW55dGhpbmcuCj4KPiBJdCBoYXMgYmVlbiB1cGxvYWRlZCB0byBzaWQgb25seSByZWNlbnRseSwg
b24gMjh0aCBkZWNlbWJlciA6KQo+Cj4gU2FtdWVsCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBTcGVha3VwIG1haWxpbmcgbGlzdAo+IFNwZWFrdXBA
bGludXgtc3BlYWt1cC5vcmcKPiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWls
bWFuL2xpc3RpbmZvL3NwZWFrdXAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9y
ZwpodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFr
dXAK
