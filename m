Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id CA70F14D0DE
	for <lists+speakup@lfdr.de>; Wed, 29 Jan 2020 20:01:02 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1A96C1C2CD3; Wed, 29 Jan 2020 14:01:02 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=FWkI8Tlm;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AE5181C2C65;
	Wed, 29 Jan 2020 14:00:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 728A71C0E19; Wed, 29 Jan 2020 14:00:42 -0500 (EST)
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by befuddled.reisers.ca (Postfix) with ESMTPS id A04C31C0126
 for <speakup@linux-speakup.org>; Wed, 29 Jan 2020 14:00:40 -0500 (EST)
Received: by mail-lj1-x22d.google.com with SMTP id n18so519232ljo.7
 for <speakup@linux-speakup.org>; Wed, 29 Jan 2020 11:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=TIS+H61YNCq999wY+Xy0mzZAvBBeh02IdJeOolYSQC4=;
 b=FWkI8TlmKvHfgGi3Y5VlWeHqrAhLq781bK9pdjdPctywub7wv8OyZB5UbJpAPRqONv
 /FrC7sIw27/2QHCtsVSEMCu3JmSCRF28Sn94Q3PDxE4KFf7pbvIUWeRY2Asq0uo21xAb
 TvXqtiq/e/6EgvUwNUukXqdf8UIKv/qFWbjs2OEYDr9Di3IAtdweFSmBE+fwK0/KVSnm
 5Aw/NSRI91UBouB9x4vQQ/sR7a9EQHWcuul+jA1I4a3ujEf3Kdf6tRhIBqHzq2lsEvoH
 kf6pyBJYkvotKICOuCc3QjvJv4hDd7io/UhLCAT9ATgoLMTCQyBUPf1W9AFbBoNtmYKK
 FiWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=TIS+H61YNCq999wY+Xy0mzZAvBBeh02IdJeOolYSQC4=;
 b=kPowjMdTl551RoaUN0jsY5bzJnQZtQ1vtSv4cBFAVeYrW3CTmbUWWcr7MnqjAs4BtE
 4AhMaFeDc4P0j4n6hBcMc7qLOKTQpEFaFmGRfTQNpJi/0EbZiwXY52At1Sj7TZ5oDYg7
 BaakblA+p/y6ikHVreL4SkyN1oM4s46vrqAZLFlFGHXoFHfiD/PwQ7wydH9cmwmBzPRV
 s/9fQZrxfLaaQ6/LqAxYkl1ykvoUFvhcjMHyYCSc+OsE6z5M9kwiAVUTyJuBvw9WryYF
 KtZF+Pu7GyAOIELKMqYC2y+0ZZ5w2cwjfkZb1BKPml6TXv9v7PZ+cQ8KNu1sQMslIb07
 QL4A==
X-Gm-Message-State: APjAAAWIoYz1I5eIcU9a2biXbsV2wniZDdEpmFDKCQyQGdUKLtBE0/l4
 uXMxVR1yOqXqwhZotl5nLveULR8gLrlCdg==
X-Google-Smtp-Source: APXvYqyzqVTatdWgG4H/Snt1l8Xo/UkSzW14QEqdmAojVch328zIh3u+LM7H9gBYuaBR9Wez0UmPDQ==
X-Received: by 2002:a2e:9207:: with SMTP id k7mr334398ljg.175.1580324437109;
 Wed, 29 Jan 2020 11:00:37 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id k23sm1487148ljj.85.2020.01.29.11.00.35
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2020 11:00:35 -0800 (PST)
Subject: Re: speakup on latest kernels
To: speakup@linux-speakup.org
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
From: =?UTF-8?B?0LDQu9C10LrRgdCw0L3QtNGAINC10L/QsNC90LXRiNC90LjQutC+0LI=?=
 <aarnaarn2@gmail.com>
Message-ID: <4d811164-789b-65e1-f76a-05bc2dd423e8@gmail.com>
Date: Wed, 29 Jan 2020 22:00:34 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
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

c29tZXRpbWUgaXQncyBjcmFzaGluZywgc29tZXRpbWUgaXQgaXMgbm90LgoKZm9yIHRoZSB0aW1l
IGJlaW5nIEkgZGlkIG5vdCBmaW5kIHdoYXQgaXQgZGVwZW5kcyBvbi4KCmlzIHNvbWVvbmUgc29y
dGluZyB0aGlzIG91dD8gaXMgdGhlcmUgYSBidWcgcmVwb3J0PwoKMjkuMDEuMjAyMCAxOTo0Niwg
ZGVlZHJhIHdhdGVycyDQv9C40YjQtdGCOgo+IGl0IHN0aWxsIGxvb2tzIHRvIGJlIGJyb2tlbiBt
eSByb29tbWF0ZSB0ZXN0ZWQgaXQgd2l0aCBsYXRlc3Qga2VybmVscyAKPiBhbmQgaXQgY3Jhc2hl
ZCBsYXN0IG5pZ2h0IHdoZW4gaGUganVtcGVkIGZyb20geCB0byBjb25zb2xlLgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BlYWt1cCBtYWlsaW5n
IGxpc3QKPiBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4gaHR0cDovL2xpbnV4LXNwZWFrdXAu
b3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBA
bGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1h
bi9saXN0aW5mby9zcGVha3VwCg==
