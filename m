Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2FE522A223D
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 23:55:24 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2BAEC380F36; Sun,  1 Nov 2020 17:55:22 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=FhgKnTLr;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4071B380F39;
	Sun,  1 Nov 2020 17:55:21 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C0AB4380F14; Sun,  1 Nov 2020 17:55:19 -0500 (EST)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9CF94380F11
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 17:55:19 -0500 (EST)
Received: by mail-ej1-x629.google.com with SMTP id w13so2905730eju.13
 for <speakup@linux-speakup.org>; Sun, 01 Nov 2020 14:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=AeHdwj+bvk+KYHNT222cZ89hzIoj1I1qvdUjEimA3Mc=;
 b=FhgKnTLr4HGCj5HVq32WDFp0CVIGddXyD7PwzcYeXSILB8jY2ld7wc/2bXUhRgAwlp
 Mr+3EG3/0xtaV7sHFsrTcIO9CoB9R9U8pkvMmN+C2A9Lb0aYnrKBOKz/xwAhNzsUGmdu
 O9BQzRDjLEZtKP5tVcHlAYOOPJNxxWXL43sjCThJlhZNhcNVyFHHa3dgDe++wloWVgOE
 zuYvrWmpT01o43DXHrb/3hCN0r6mOQFyR8fsO80aa54bKKrCm2wFYprNK4fWqt73ndMI
 6o/lq4Ec/9Wf8M94K5zvSyzZoAMpPzFVfOFmGpeEtf6yeUhuzb/WC+ISsHt8JhbgHaPW
 mqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=AeHdwj+bvk+KYHNT222cZ89hzIoj1I1qvdUjEimA3Mc=;
 b=gyMcqbOmRtyIUfl7MKuv33vnRhkH8Dpr2eNMEmxQMfhdS+6OfVY0JNkO4nZMwjE9D0
 2BFCPOUKLFrvnor4rXkGjQoRdjVMcIJAqwWd2b5uh95rUsNZ+Xo350xrQN/xTzYYALp+
 edEoTYvdPD1wH2S/+aJ3T32khy8Ivxper04p1MLYjYHewUYF4ZfFY+FVKq+BSLzZO0L5
 TyuLFJ+uuMYa7zK5pp/3jr99Xyx0/gY2jbUuLP4ToVU3xFhzvxEG2d7mU9UozFaNmzwi
 dzY78FDWVsijWuaPjq8ar1gw8suD21H00skvuvkQoNWy419gkeFx04PpAwvW2TJoLNUv
 dFQQ==
X-Gm-Message-State: AOAM5305TmcDRXC7PJW6Zjig1f4Pf+uJrB9X0Sj9TQPW+42JwAYQJm2Z
 pmyQa0FaYkXzZDuk2wgOE2WDPNWEKsoPuK2c
X-Google-Smtp-Source: ABdhPJyzbf+3FMdKYRn17b0GFA30VmjnYPwd84YeqKMpBVJzGg84vl07tjWNnKnYsxrBoS7FezXlbw==
X-Received: by 2002:a17:906:4d93:: with SMTP id
 s19mr8402393eju.271.1604271316539; 
 Sun, 01 Nov 2020 14:55:16 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id n3sm9247204edq.24.2020.11.01.14.55.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Nov 2020 14:55:15 -0800 (PST)
Subject: Re: speakup crashes with kernel 5.4.69
To: Didier Spaier <didier@slint.fr>
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Message-ID: <fbeb3bb7-d926-840a-fbca-8f5d3349eff9@gmail.com>
Date: Mon, 2 Nov 2020 01:55:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
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
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

MDIuMTEuMjAyMCAwOjI4LCBEaWRpZXIgU3BhaWVyINC/0LjRiNC10YI6Cgo+IEhpLAo+IExlIDAx
LzExLzIwMjAgw6AgMjE6NTksIFNhbXVlbCBUaGliYXVsdCBhIMOpY3JpdMKgOgo+PiBKb2huIENv
dmljaSwgbGUgbWFyLiAxMyBvY3QuIDIwMjAgMDQ6MDI6MDkgLTA0MDAsIGEgZWNyaXQ6Cj4+PiBI
aS4gIFdoZW4gSSBqdXN0IHRyaWVkIHRvIGJvb3Qgd2l0aCBrZXJuZWwgNS40LjY5LCBpdCBkaWQg
Y29tZSB1cCwgYnV0Cj4+PiBzb29uIGNyYXNoZWQgd2l0aCBhIGxvdCBvZiBrZXJuZWw6IGJhc2Qg
c2NoZWR1bGUgZnJvbSBpZGxlIHRocmVhZC4KPj4gT2ssIEkgc2VlIHRoZSBjb25jZXJuLiBXb3Vs
ZCB5b3UgYmUgYWJsZSB0byB0cnkgdGhlIGF0dGFjaGVkIHBhdGNoPwo+Pgo+PiBTYW11ZWwKPiBE
b2VzIHRoaXMgaXNzdWUgYWZmZWN0L2NhbiB0aGlzIHBhdGNoIGJlIGFwcGxpZWQgYWdhaW5zdC8g
NS40LjYyLzUuNC43Mj8KPgo+IEkgYXNrIGFzIFNsaW50IGN1cnJlbnRseSBpbmNsdWRlcyA1LjQu
NjIgYnV0IEkgd2FzIGFib3V0IHRvIHVwZ3JhZGUgdG8gNS41LjcyCj4gKGFuZCBubyBTbGludCB1
c2VyIGNvbXBsYWluZWQgc28gZmFyLiBNYXliZSBvbmx5IHNvbWUgdXNlcyBjYXNlcyBvcgo+IGhh
cmQgc3ludGhzIGFyZSBpbiBjb25jZXJuPykKPgo+IERpZGllcgoKbyBpIHRob3VnaHQgc2xpbnQg
aGFzIG9ubHkgbHRzIGtlcm5lbHMuIG1heWJlIGEgdHlwbz8KLS0gClNpbmNlcmVseSwgQWxleGFu
ZGVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bl
YWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgt
c3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
