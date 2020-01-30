Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0140D14E3B4
	for <lists+speakup@lfdr.de>; Thu, 30 Jan 2020 21:11:03 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 822341C2393; Thu, 30 Jan 2020 15:11:01 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=mAJfTuoh;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 03D881C2C64;
	Thu, 30 Jan 2020 15:09:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id B01771C2393; Thu, 30 Jan 2020 15:09:09 -0500 (EST)
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4C1E91C0D77
 for <speakup@linux-speakup.org>; Thu, 30 Jan 2020 15:09:05 -0500 (EST)
Received: by mail-lj1-x241.google.com with SMTP id a13so4722396ljm.10
 for <speakup@linux-speakup.org>; Thu, 30 Jan 2020 12:09:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=j6VDAq1CrHbEXAlDc2xzypSV8h70B5pZI+x6M18EEbQ=;
 b=mAJfTuohSZPrO/Onjma4CqHoEEsY4p8uS8Gwndz550Y1NoEJpFMlcWKVYFCOogi3yo
 w5nwbahdPrmHW8h7PV3LBTO1LSlHe6DEWm6jos0w/zEDgdBhwbL8TiN6p10jzAJYMQQy
 FH2mVEReJXZhphM7uNmWY5UEApHtikld4D2B6AO3SJFEJdL0UGLwjNbX+7UX2TFXvSAM
 L4Xpvvp9EGBzpHseMZ3mdkPAAkfMvjK8MltVSq56MrhGWljv4JZeKzuH5Dj3EBRiShaz
 o5TZlltx0N34KkzLPB3AINzzhL9Fzt+MaH5ITbRMEUupvpCx8NHTsakN5gO2mpN1POJ3
 aWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=j6VDAq1CrHbEXAlDc2xzypSV8h70B5pZI+x6M18EEbQ=;
 b=qh7MrgYY1UCjNUkGg75Ivp91YzVrjbj2YCLKiWFR1HVh7nT1a7UqKGU+sZN3GpJnyH
 US3oqR9KpxdQTwXcaO5KPcRb5meP9XosP3Rkvk0COLCi6sSZcFrq/VZn/xhR61C2I9m6
 3KxHxXqwUO8mElYxAitPUoPe4rbPbgx19/plXzaVRaf1811qcZNkODZQHX219TKueOO3
 Sg/ENYxJ0K6ShDDqXVTXbN9Tb44Bl5wchsDFi6cAw+FvS7eIvZ0JZE2RIGnk1v1pe//x
 OfixWgfdyt9oQiPOsnl7QmZn2oUcvLu9QcCfxFXwUNDQMa9wOaIarh3REKqSP2swW9W2
 GXjg==
X-Gm-Message-State: APjAAAXaEvxluwosnQjnEqtqFa38Q8g2BNsy+O5hGNyXQlFChmft/00y
 D6fIUUMZ1l1XO5KEtW8yPVtZ7sfToyJ+PA==
X-Google-Smtp-Source: APXvYqxMaClo/UN7hSD61z4WhIxV3yqF8/BpyVf8srX6WzK7px1bLLZsDEE62+12Wb42mx8dvf/OMQ==
X-Received: by 2002:a2e:3c05:: with SMTP id j5mr3649610lja.131.1580414939585; 
 Thu, 30 Jan 2020 12:08:59 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id f29sm3435574ljo.76.2020.01.30.12.08.58
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Jan 2020 12:08:58 -0800 (PST)
Subject: Re: speakup on latest kernels
To: speakup@linux-speakup.org
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
From: =?UTF-8?B?0LDQu9C10LrRgdCw0L3QtNGAINC10L/QsNC90LXRiNC90LjQutC+0LI=?=
 <aarnaarn2@gmail.com>
Message-ID: <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
Date: Thu, 30 Jan 2020 23:08:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200130053303.GA4319@gregn.net>
Content-Language: en-US
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

aGVsbG8gR3JlZy4gaSB0aGluayB0aGF0IGNyYXNoIGlzbid0IHJlbGF0ZWQgdG8geG9yZy4gZm9y
IG1lIHNwZWFrdXAgCmhhbmtzIHN5c3RlbSBldmVuIHdoZW4geC1zZXJ2ZXIgaXNuJ3QgaW5zdGFs
bGVkIG9yIHN0YXJ0ZWQuCgprZXJuZWwgNS40LjE0IHNpbWNlIHRvIHJhdGhlciBtaXRpZ2F0ZWQg
aXQuIG5vdyBpdCBsb2NrdXBzIG5vdCBldmVyeSAKc3lzdGVtIHN0YXJ0LiBidXQgc29tZXRpbWVz
IGl0IGhhcHBlbnMuCgppIGFtIHVzaW5nIGludGVsIGNvcmUgaTcgNzcwMGsgY3B1LiB3aGljaCBp
bXBsaWVzIHRoYXQgaXQgaXNuJ3QgYW1kIGJ1Zy4KCmkgdGhpbmsgdGhhdCBwcm9ibGVtIHNob3Vs
ZCBiZSByZXBvcnRlZC4KCmlmIHNvbWVvbmUga25vd3MgaG93IHRvIGRlYnVnIGl0IG9yIHByb3Zp
ZGUgbmVjZXNzYXJ5IGxvZ3MsIGkgYW0gd2lsbGluZyAKdG8gZG8gaXQuCgoKc2luY2VyZWx5LCBB
bGV4YW5kZXIuCgozMC4wMS4yMDIwIDg6MzMsIEdyZWdvcnkgTm93YWsg0L/QuNGI0LXRgjoKPiBJ
J3ZlIHNlZW4gaXQgY3Jhc2hpbmcgd2hlbiBqdW1waW5nIGZyb20geC13aW5kb3cgdG8gY29uc29s
ZQo+IGZvciBhIHdoaWxlIG5vdy4gSXQgb25seSBoYXBwZW5zIGlmIEkgYXR0ZW1wdCB0byB1c2Ug
c3BlYWt1cCByZXZpZXcKPiBjb21tYW5kcyByaWdodCBhZnRlciB0aGUganVtcCBiZWZvcmUgYW55
IG90aGVyIGtleSBzdHJva2VzLiBJIGZpcnN0Cj4gbm90aWNlZCBpdCBpbiBsYXRlIEp1bmUgd2hl
biBJIGJ1aWx0IG15IG5ldyByeXplbiAxODAweCBzeXN0ZW0KPiBydW5uaW5nIGRldnVhbiBCZW93
dWxmIHdpdGgKPiBJIGJlbGlldmUgYSA1LjIueCBrZXJuZWwgY29tcGlsZWQgYnkgbWUuIEkgdGVz
dGVkIGF0IHRoYXQgdGltZSB3aXRoIGEKPiA1LjIueCBrZXJuZWwgb24gbXkgb2xkZXIgZWFybHkg
Y29yZSBpNSBsYXB0b3AgcnVubmluZyBkZXZ1YW4gQXNjaWksIGJ1dAo+IGNvdWxkbid0IHJlcHJv
ZHVjZSBpdC4gSSB0aG91Z2h0IGl0IG1heSBiZSBhbm90aGVyIHJ5emVuIG9uIGxpbnV4Cj4gcXVp
cmssIHNvIGRpZG4ndCByZXBvcnQgaXQuCj4KPiBJIHRlc3RlZCByZXBlYXRlZGx5IGhpdHRpbmcg
bnVtcGFkIDQgYW5kIDYga2V5cyBvbiBkZXZ1YW4gQmVvd3VsZiB3aXRoCj4gYSA1LjQuMTQga2Vy
bmVsIGNvbXBpbGVkIGJ5IG1lLCBhbmQgY291bGRuJ3QgZ2V0IGl0IHRvIGNyYXNoLiBTbywgaXQK
PiBsb29rcyBsaWtlIHRoYXQgcGFydGljdWxhciBjcmFzaCBpcyBmaXhlZC4gV2hhdCBwcm9jZXNz
b3IgaXMgeW91cgo+IGZyaWVuZCBydW5uaW5nIG9uPwo+Cj4gR3JlZwo+Cj4KPiBPbiBXZWQsIEph
biAyOSwgMjAyMCBhdCAwODo0Njo0NkFNIC0wODAwLCBkZWVkcmEgd2F0ZXJzIHdyb3RlOgo+PiBp
dCBzdGlsbCBsb29rcyB0byBiZSBicm9rZW4gbXkgcm9vbW1hdGUgdGVzdGVkIGl0IHdpdGggbGF0
ZXN0IGtlcm5lbHMgYW5kIGl0Cj4+IGNyYXNoZWQgbGFzdCBuaWdodCB3aGVuIGhlIGp1bXBlZCBm
cm9tIHggdG8gY29uc29sZS4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPj4gU3BlYWt1cEBsaW51eC1zcGVh
a3VwLm9yZwo+PiBodHRwOi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3Rp
bmZvL3NwZWFrdXAKPj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRw
Oi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
