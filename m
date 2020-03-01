Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 95AD6183EB3
	for <lists+speakup@lfdr.de>; Fri, 13 Mar 2020 02:38:27 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 1AB9F428047A; Thu, 12 Mar 2020 21:38:27 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y2p5vbXF";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 683124280462
	for <lists+speakup@lfdr.de>; Thu, 12 Mar 2020 21:38:26 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4DB481C7240; Thu, 12 Mar 2020 21:38:25 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=Y2p5vbXF;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DB75C1C72C8;
	Thu, 12 Mar 2020 21:30:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 341611C2A14; Sun,  1 Mar 2020 13:34:47 -0500 (EST)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by befuddled.reisers.ca (Postfix) with ESMTPS id E8CDD1C0D99
 for <speakup@linux-speakup.org>; Sun,  1 Mar 2020 13:34:42 -0500 (EST)
Received: by mail-wr1-f50.google.com with SMTP id v4so9643210wrs.8
 for <speakup@linux-speakup.org>; Sun, 01 Mar 2020 10:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=zIiUIGGFHh/pyJMwqBJqSPN5yaflJhD3u/L1wPlqOhY=;
 b=Y2p5vbXFmJJIHubaU+dBLF87egMhusEZMBr5Fnw0wZlxD2g3qAILE/e34dym+JN++r
 eEnnCiq189NUK3O5vXhnaTHYDTN0uxJOS/NY9k0imaBFoPuurdI/9nokuKoWaYdaQaOE
 712xZ97r07tqgIIx8JD+Dfofm4mk4VwmVv8DdSNsXvM/fHaJcKjS20kLt7Fc+0qVZs1t
 OE7y693/xAVkBtyvlzBDmNMEo3rR+L3oUHzZPRiIoqyUVASAStH+RswjQA/NEtBmltJE
 zsrl6h27ulLoeT1vtAOrSSUG6XdrYPuD8wRxmk1hRfENHCmxq5NPvUHQPJPmdONxJ9wq
 3WMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=zIiUIGGFHh/pyJMwqBJqSPN5yaflJhD3u/L1wPlqOhY=;
 b=OzAWYpA/Gobe1NbaJ6VQ4tQ1MtjoZyEmmxM4oC8LDPkrwxSbOx6mNzvGEU+xqRDqr4
 ZH0YsQ482418hQ3ZIlPIuO7GlQ++ALQK/F3HU+3RMG1/6S4lL5g+2PHorFPOAhgHhJ3L
 OvS/6kt++ihoe6Zig7j/oY1OqOSl+FMAeojCXcRjEW/uMMdBp+ptIwuUHK11trT884Xx
 DtxGhwufpqp24HWHOW9A/FN3zOc0OTUzQcbEf0tjVHVif35NTxXlG9OKeTwDFCrMPAkH
 hSGac+EhXxgkK/3b5LmuzkXx9vLFnUcQkNGfWR2qIumz9IYE9j00kBWQ+z6WUIdUoZj6
 YjVg==
X-Gm-Message-State: APjAAAVzJMcWSuijXDKcEYs7wFK+E++moms6P2tDkKxjqo6cF3f5/hQc
 dK7F4uxeoQnLSlGdCcl1zke/GFRlXV4=
X-Google-Smtp-Source: APXvYqwlhuh4Q31GSDzSj5s5iMYPpUcqJ/jGm6ao4xVl1+njm9nFffrz99VChm41XZGCD9HyAhnpOw==
X-Received: by 2002:adf:f588:: with SMTP id f8mr17851501wro.188.1583087617853; 
 Sun, 01 Mar 2020 10:33:37 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id 16sm12091700wmi.0.2020.03.01.10.33.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 10:33:37 -0800 (PST)
Subject: Re: speakup: kernel panics on 5.2+
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
References: <a817aeb9-b980-838e-70a8-114dfd2b0387@gmail.com>
 <20200218204131.onnmxo46navmlq24@function>
 <3a989e1a-86ca-916f-63a1-42da9e203772@gmail.com>
 <20200219004148.x4y7aevnfvr5czuv@function>
 <8ff2f707-9203-90aa-e6c0-de7da334e93f@gmail.com>
 <20200301153614.sspgpav5pt33yl5p@function>
From: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
Autocrypt: addr=aarnaarn2@gmail.com; keydata=
 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
Message-ID: <50d71000-abc8-f774-d44a-e47b79393528@gmail.com>
Date: Sun, 1 Mar 2020 21:33:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200301153614.sspgpav5pt33yl5p@function>
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
Cc: speakup@linux-speakup.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

eWVwLiBpIGp1c3QgZGVsZXRlIGl0IHRvZGF5LiBzb3JyeSBhYm91dCB0aGF0LgoKaHR0cHM6Ly9n
aXN0LmdpdGh1Yi5jb20vYWxleDE5RVAvYjVmODVhMTdiNGFmZjRlZWY3YmM3M2RkYzNlNzZmZTMK
CjAxLjAzLjIwMjAgMTg6MzYsIFNhbXVlbCBUaGliYXVsdCDQv9C40YjQtdGCOgo+IEhlbGxvLAo+
Cj4gQWxleGFuZHIgRXBhbmVzaG5pa292LCBsZSBtZXIuIDE5IGbDqXZyLiAyMDIwIDIxOjMxOjE0
ICswMzAwLCBhIGVjcml0Ogo+PiBoZWxsbyBTYW11ZWwuIEkgYnVpbGQgYSBrZXJuZWwgd2l0aCBk
ZWJ1Z2dpbmcgc3ltYm9scy4gSSBob3BlIEkgZGlkCj4+IGV2ZXJ5dGhpbmcgcmlnaHQuIEkgYWxz
byB1cGRhdGVkIGdpc3Qgd2l0aCBsb2cuCj4gSSBoYWRuJ3QgaGFkIHRoZSB0aW1lIHRvIGRvd25s
b2FkIHRoZSBnaXN0LCBJIGNhbid0IGZpbmQgaXQgYW55IG1vcmUKPiB0aGVyZSwgY291bGQgeW91
IHB1dCBzb21ld2hlcmU/Cj4KPj4gZmlsZSB3aXRoIGtlcm5lbCBhbmQgU3lzdGVtLm1hcDoKPj4g
aHR0cHM6Ly9yZXBvLnRhbGtpbmdhcmNoLmluZm8vbGludXgtZGVidWcudGFyLnpzdAo+IChqdXN0
IHRvIG1ha2Ugc3VyZTogdGhlIGxvZyBuZWVkcyB0byBtYXRjaCB0aGlzIGtlcm5lbCBidWlsZCBz
byB0aGF0IHRoZQo+IGFkZHJlc3NlcyBtYXRjaCkKPgo+IFNhbXVlbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVh
a3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21h
aWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
