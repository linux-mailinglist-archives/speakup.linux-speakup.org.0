Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id E7B511D2F97
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 14:24:43 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A4B31C084C; Thu, 14 May 2020 08:24:42 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=vSgZ4kGg;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 98FE51C0BEA;
	Thu, 14 May 2020 08:24:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A21D01C0831; Thu, 14 May 2020 08:24:22 -0400 (EDT)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CB7D31C0486
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 08:24:16 -0400 (EDT)
Received: by mail-lf1-x136.google.com with SMTP id 82so949088lfh.2
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 05:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=CN76xA7mH2chv2d2HvQqj+MzdetFuSZuNgdXPm/8Mnk=;
 b=vSgZ4kGg2u8vVPjFwp4PvBuxTDUcbbLlwzTdvbfdMilFc73BuDt5s4XCq4aLLq6bOo
 udcdx9ipazuENAFB63X1pIh/DTY0wSehfMm/Y2IZ3xjAC72oj5pY84wO+P7ljWXHiPTW
 A3ab58zpsxJEYJNSr39L2mx2Ho2349dPYlNHKUQ4A01qIzc4Y4j+aqquctFmmb4/wVQN
 CXqPbqPpQHkSYzcl5afjs4dS84qHFi98Fk3dnTDDdSCI9X/2/LXoeR6Zqapnh2yI+CBb
 TEJUnO2qeosusw4g4m2REKwuLNr/BS1bN14M8Eu/O7pZwyGLNgtnQ4nrHwARuMK0yrYZ
 x01Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=CN76xA7mH2chv2d2HvQqj+MzdetFuSZuNgdXPm/8Mnk=;
 b=UOYd58cDtIGM3Oagj11FbDawYKPMTALzF1NHYLYJEBHO3eZrZUNQBJP4Mw/81+bvO/
 73e0rrni8uDflE653VLOfGLVqYIWR/7i1EUPe2ewmUEO5rfbALJBnUj9g9CDXS3LWfsl
 E6YnSRUHcM10S8QPZxfOBhJKadgMLd7J374sWe2k2T64rFA//iidpca23L1jJ5fY1qZt
 CJIPkl/+h/p1TNfFCZsBXOC1Mdw2MCkzTrjHWjzXnOWInHLCC5x0Phsdpj3JGItnXdAK
 g7J525yK5+AW+yxFL0sOWMXKs0/PAg/KiV6NQsfjRsE/W37tfLYx8eUwCzHDomB+3Kbd
 O3vQ==
X-Gm-Message-State: AOAM530pKIFXAoRcPfuq+Jxjo8CZR7D3YystO60y0XhYqT5FOETT9j6W
 XDd3B6qX0bxLbKFGLrrweA9HYPiT2xeOfA==
X-Google-Smtp-Source: ABdhPJyPLqjpkWlzQFSO+uKtTO22S+zopqglyvb15v05JcRKYP445Ou7heFoERwDZeqYOYKsC3UMVg==
X-Received: by 2002:ac2:5de5:: with SMTP id z5mr3145201lfq.68.1589459051331;
 Thu, 14 May 2020 05:24:11 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id s8sm1730927lfd.61.2020.05.14.05.24.10
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 05:24:10 -0700 (PDT)
Subject: Re: Any laptop with a pc speaker?
To: speakup@linux-speakup.org
References: <c33d254a-cc1d-ed09-b0ae-d759dae80dcb@mm.st>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Autocrypt: addr=aarnaarn2@gmail.com; keydata=
 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
 444rpcPy
Message-ID: <7a609ac5-9b6e-5bd6-9b60-421324cc0577@gmail.com>
Date: Thu, 14 May 2020 15:24:10 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <c33d254a-cc1d-ed09-b0ae-d759dae80dcb@mm.st>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

aGVsbG8uIHNvbWUgbGFwdG9wcyB3aWxsIGJlZXAgd2l0aCBpbnRlZ3JhdGVkIHNvdW5kIGNhcmQu
IG15IGxlbm92byBnNTgwCmRlZmluaXRlbHkgZG9lcyBpdC4KCkkgZG9u4oCZdCBrbm93IGhvdyB0
byBjaGVjayB0aGlzIGF0IHRoZSB0aW1lIG9mIHB1cmNoYXNlIG9yIGZpbmQgb3V0IGFib3V0Cml0
IGluIGFkdmFuY2UuCgoxNC4wNS4yMDIwIDE1OjE3LCBDbGV2ZXJzb24gQ2FzYXJpbiBVbGlhbmEg
0L/QuNGI0LXRgjoKPiBIZWxsbyBhbGwsIEknZCBsaWtlIHRvIGtub3cgaWYgdGhlcmUgaXMgYW55
IGxhcHRvcCwgb3IgcGVyaGFwcyBhbm90aGVyCj4ga2luZCBvZiBtb2JpbGUgY29tcHV0ZXIsIHRo
YXQgY29tZXMgd2l0aCBhIGJ1aWx0LWluIHBjIHNwZWFrZXIsIGFuZCBpcwo+IHN0aWxsIHN1cHBv
cnRlZCBieSB0aGUgbWFudWZhY3R1cmVyIGFuZCByZXNlbGxlcnMuIEknbSB0YWxraW5nIGFib3V0
Cj4gdGhhdCBzcGVha2VyIHdoaWNoIGlzIHN0aWxsIGF2YWlsYWJsZSBvbiBtb3N0IGRlc2t0b3Ag
Y29tcHV0ZXJzLCB3aGljaAo+IGFsbG93cyB1cyB0byBjb25maWd1cmUgYm9vdCBtYW5hZ2VycyBs
aWtlIGdydWIgdG8gaXNzdWUgYSBiZWVwIHdoZW4gaXQKPiBkaXNwbGF5cyBhIG1lbnUgY29udGFp
bmluZyBtb3JlIHRoYW4gb25lIGVudHJ5IGZvciB0aGUgT1NlcyBpbnN0YWxsZWQKPiBvbiB0aGUg
bWFjaGluZS4KPgo+IE1hbnkgdGhhbmtzLAo+IENsZXZlcnNvbgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPiBT
cGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1i
aW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1h
aWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3Vw
Lm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
