Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id AAD79164DB5
	for <lists+speakup@lfdr.de>; Wed, 19 Feb 2020 19:33:38 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id 196AB4280466; Wed, 19 Feb 2020 13:33:38 -0500 (EST)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A2TyVsbk";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id 582364280459
	for <lists+speakup@lfdr.de>; Wed, 19 Feb 2020 13:33:37 -0500 (EST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0DD3B1C476B; Wed, 19 Feb 2020 13:33:36 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=A2TyVsbk;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 38DB41C7215;
	Wed, 19 Feb 2020 13:32:34 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 940021C476B; Wed, 19 Feb 2020 13:32:25 -0500 (EST)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 80B141C0B4F
 for <speakup@linux-speakup.org>; Wed, 19 Feb 2020 13:32:20 -0500 (EST)
Received: by mail-wm1-f41.google.com with SMTP id a9so1772867wmj.3
 for <speakup@linux-speakup.org>; Wed, 19 Feb 2020 10:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=+sfAEifIFX/KJuR39Ji15afZkchHlrJzVev3FxYs+Ps=;
 b=A2TyVsbkgDe1oE4fLtR1FOfyo8YYqxHCshTTtRL5YgM9GsmwP0G74qL+wI/FkK6kNe
 M3EgBrKzErHKWp5olEDXx1tpSCyJnhR2VNdUvpHf8Euf499oVI138jHxkyGHJE8RPRsH
 tApXraJL4gFAuvUZyelQLUNc+H0bw2stmnXntdgxacGGCkSRlgfkkN3gKfEClkGt+gLv
 3GuSVDPKlMZjp2r/o5BnY5bqyB73xzoXrMpDYUGa5G434/a49sGMOBptTuTNqeurNhh1
 ZnlOLWGpuTrOkhzNpZSYdy9uwrzfiaRYYaBKL+sXGDmCbti+xUGnhUPFHuz38sqfK0Fn
 Gndw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=+sfAEifIFX/KJuR39Ji15afZkchHlrJzVev3FxYs+Ps=;
 b=pzfhvaK2BFuA7AKx/4xZYFIIiZuie76fSn+5GSyAFP21Jnu9wrOq9r//NzoZCYSbjF
 Wp2dNUBSlCrfWh8ObjdjWIXWYEdJv9JlUC/eHdidI/aWtvpVskXLpv2qo3hlZOZYUgZa
 0RGO5A8t8Yxz+FH46seYsl3L+dEi+nV1NrYmY1Ml80gTV2JZmMmfRLmRhs8iml6o7sUl
 bo0Ix3cNGxcPLBTN/4BiMbZ99uowPpmP5B1bZqbPm9UUpwKieZwF6D3WkNhlvEdKVJKf
 ln0qWhPB9tsH6Bj+AyIJuRuVb+lAHohnOAs39sVHqEZGQIKW5cWtSgQIa6yDGZF7RQa5
 WiLA==
X-Gm-Message-State: APjAAAUzPjiHaqeyDMlHF2bGYdNdkG0kZJo0iY/zuPjE3D/Jzn+SSBPf
 OsBuokGSQm/TfQGlRMPT+FKdGKpAKHc=
X-Google-Smtp-Source: APXvYqyF+IZzutlxiTDpP6o/uPofl3aI4dRBBfF88oo+HLPcJhqlTH/f0pycfnAxKNPZoVOrJ0nCCg==
X-Received: by 2002:a05:600c:114d:: with SMTP id
 z13mr6960524wmz.105.1582137076037; 
 Wed, 19 Feb 2020 10:31:16 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id m3sm749736wrs.53.2020.02.19.10.31.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Feb 2020 10:31:15 -0800 (PST)
Subject: Re: speakup: kernel panics on 5.2+
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
References: <a817aeb9-b980-838e-70a8-114dfd2b0387@gmail.com>
 <20200218204131.onnmxo46navmlq24@function>
 <3a989e1a-86ca-916f-63a1-42da9e203772@gmail.com>
 <20200219004148.x4y7aevnfvr5czuv@function>
From: Alexandr Epaneshnikov <aarnaarn2@gmail.com>
Autocrypt: addr=aarnaarn2@gmail.com; keydata=
 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
Message-ID: <8ff2f707-9203-90aa-e6c0-de7da334e93f@gmail.com>
Date: Wed, 19 Feb 2020 21:31:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200219004148.x4y7aevnfvr5czuv@function>
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

aGVsbG8gU2FtdWVsLiBJIGJ1aWxkIGEga2VybmVsIHdpdGggZGVidWdnaW5nIHN5bWJvbHMuIEkg
aG9wZSBJIGRpZApldmVyeXRoaW5nIHJpZ2h0LiBJIGFsc28gdXBkYXRlZCBnaXN0IHdpdGggbG9n
LgoKZmlsZSB3aXRoIGtlcm5lbCBhbmQgU3lzdGVtLm1hcDoKaHR0cHM6Ly9yZXBvLnRhbGtpbmdh
cmNoLmluZm8vbGludXgtZGVidWcudGFyLnpzdAoKClNpbmNlcmVseSwgQWxleGFuZGVyLgoKMTku
MDIuMjAyMCAwMzo0MSwgU2FtdWVsIFRoaWJhdWx0INC/0LjRiNC10YI6Cj4gQWxleGFuZHIgRXBh
bmVzaG5pa292LCBsZSBtZXIuIDE5IGbDqXZyLiAyMDIwIDAwOjE1OjM2ICswMzAwLCBhIGVjcml0
Ogo+PiBzdXJlLiBoZXJlOgo+PiBodHRwczovL2RyaXZlLmdvb2dsZS5jb20vb3Blbj9pZD0xUXl6
UUhHZ09fdkRZM3lRaWFuVDVTUkEtZFdENlBSb2MKPj4KPj4gaWYgeW91IG5lZWQgc29tZXRoaW5n
IG1vcmUganVzdCBhc2suCj4gSXQgc2VlbXMgdGhlcmUgYXJlIG5vIGRlYnVnZ2luZyBzeW1ib2xz
LCBjb3VsZCB5b3UgYWxzbyBwb3N0IHRoZQo+IGNvcnJlc3BvbmRpbmcgU3lzdGVtLm1hcCBmaWxl
Pwo+Cj4gU2FtdWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDov
L2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
