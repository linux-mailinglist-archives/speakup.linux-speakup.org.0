Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F2CB8149759
	for <lists+speakup@lfdr.de>; Sat, 25 Jan 2020 20:08:47 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C33881C2B4D; Sat, 25 Jan 2020 14:08:43 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=ff1DIUDM;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E280A1C2B4E;
	Sat, 25 Jan 2020 14:08:21 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id C46681C012B; Sat, 25 Jan 2020 14:08:10 -0500 (EST)
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 3CE731C012B
 for <speakup@linux-speakup.org>; Sat, 25 Jan 2020 14:08:08 -0500 (EST)
Received: by mail-lj1-x22a.google.com with SMTP id q8so2205908ljb.2
 for <speakup@linux-speakup.org>; Sat, 25 Jan 2020 11:08:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=FqUO7V1aY3mDQKee6UkSWHqq9lWrCROG2PPJtjGlOKQ=;
 b=ff1DIUDM5CeNVeZXinh1osQwfbAj1qJc1t6tDkSNQC0BAUypHX+elOQVRwkXkHYPUh
 mUpRoBv/uA/vdG1UruUP1iRVQ6n75yK7fKRje4AG2Va3KhLrwS3wbHShH0gz9N/qd6LU
 VFBNd+uPoA4CKjwUZeEsfeKytnmVXACICYX8HMfvt6uPSVC5hVt+T74U+vymHI1rNmn8
 2pYyM1XcIQ1OoiZ20dCYuog2Sza0G+5cr2XEszhkFf8E7DpolfNQmcvMX6LU5rxbN1BM
 ctqbvI2yaFqdZ8U2jbKHuIfhgyE39qgw00ldB/Be5paw+Ufr+Q82yqIYkRngxQtl4w34
 sIcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=FqUO7V1aY3mDQKee6UkSWHqq9lWrCROG2PPJtjGlOKQ=;
 b=f6iEGqsx5YQ+So+6G0cq0sMuGTqhCc6zLQKP9y2ygsEpviuLGLwJYK9DVtqDgx/+mI
 eJ7rOVJzFZ5ktdGwPAZYhk1Yt7oDtLiI3clIQ6Jq5Q7hfHAj1iYoZ0mBhLJCUdQYNH4b
 XwWmQs8o7iNE6Ttl59roIRBzRykeOfEu2ewUC017m0NTSx/1t8xMlGsVebLudZAeyMEJ
 KGhF2opFX77OHxvsI4uXwiGChwV5ylgXdhEKEzbbkISDcCn0bjehskfh+YP2QIUWXHPh
 kttG2BjbBWe+zRGeb2ClOn+8g44DpHKiq7qYnBrZFmq/Pe0bixvXPeQTv1haTyiK4WtX
 w76Q==
X-Gm-Message-State: APjAAAUQw39u7xmcE+yiZaIgGVDIUN3QcSPRP2VM3hzMtxglmhaEvJGq
 RFVKUWscZXcTAzC/cr+BwS0uRf3lkbg=
X-Google-Smtp-Source: APXvYqxJ3CMMVbfyMusJOPP3EB3SZhn2Ovet8O/+S8uPYxIGw7j4N9+LdxAeYLFmmKId254oFn5pBQ==
X-Received: by 2002:a2e:98ca:: with SMTP id s10mr5782125ljj.160.1579979283648; 
 Sat, 25 Jan 2020 11:08:03 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id r21sm5327498ljn.64.2020.01.25.11.08.02
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Jan 2020 11:08:03 -0800 (PST)
Subject: Re: speakup lockup problem
From: =?UTF-8?B?0LDQu9C10LrRgdCw0L3QtNGAINC10L/QsNC90LXRiNC90LjQutC+0LI=?=
 <aarnaarn2@gmail.com>
To: speakup@linux-speakup.org
References: <a07e6785-5851-f993-1c2b-de5636f3ede1@gmail.com>
Message-ID: <c931dea2-885f-6056-e446-817e6c219ecc@gmail.com>
Date: Sat, 25 Jan 2020 22:08:02 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <a07e6785-5851-f993-1c2b-de5636f3ede1@gmail.com>
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

aSB0aGluayBrZXJuZWwgNS40LjE0IGZpeGVkIGl0LiBob3dldmVyIGkgZGlkbid0IGZvdW5kIGFu
eSBtZW50aW9uIG9mIApzcGVha3VwIGluIGtlcm5lbCBjaGFuZ2UtbG9ncyBuZWl0aGVyIGZvciA1
LjQuMTMgbm9yIDUuNC4xNC4KCgpTaW5jZXJlbHksIEFsZXhhbmRlcgoKMTkuMDEuMjAyMCAyMTo1
OCwgQWxleGFuZHIgRXBhbmVzaG5pa292INC/0LjRiNC10YI6Cj4gaGVsbG8uIGkgc2VlIHRoaXMg
cHJvYmxlbSBpcyBrbm93bi4gaSBleHBlcmllbmNlIGl0IHRvbyBvbiBteSBhcmNoIGJveAo+IHdp
dGggbGF0ZXN0IGtlcm5lbCA1LjQuMTItemVuMS0xLXplbgo+IGFyZSB0aGVyZSBhbnkgZml4IG9y
IGJ1ZyByZXBvcnQgd2l0Y2ggaSBjYW4gdHJhY2s/Cj4gdGhpcyBpcyBhIHNlcmlvdXMgcHJvYmxl
bSB0aGF0IHByZXZlbnRzIG1lIGZyb20gd29ya2luZy4KPgo+IFNpbmNlcmVseSwgQWxleGFuZGVy
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAg
bWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFr
dXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
