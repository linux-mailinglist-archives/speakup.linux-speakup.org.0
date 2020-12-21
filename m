Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3450C2E0232
	for <lists+speakup@lfdr.de>; Mon, 21 Dec 2020 22:50:37 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B661F380F7B; Mon, 21 Dec 2020 16:50:36 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=J5sbDxiE;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4A6E9380F49;
	Mon, 21 Dec 2020 16:50:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5C336380F1B; Mon, 21 Dec 2020 16:50:35 -0500 (EST)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 360C5380C1A
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 16:50:35 -0500 (EST)
Received: by mail-lf1-f48.google.com with SMTP id y19so27084388lfa.13
 for <speakup@linux-speakup.org>; Mon, 21 Dec 2020 13:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=UssijGLA0guwTUcHyLTHes7DJ93euAzgTc51imi7/yc=;
 b=J5sbDxiEaR+Q4WKQhTcxQEeGmpJQ5HOM7W0ziX6JKCOTT991aCZQpGpP4ulaSiTDEG
 dTHH56Zw+3py42xNLp8v6CawOV2AvN4VZCh0VT/RNm/nICKPNY8X0oi3NCQu1K8VVnc1
 dk5DUow04dBjGvPBtLTtEsb4nK7cCRdwHCD+T4PBSL4UcciBiUypy9apiJDGNM2Ad7fl
 3362eFqIsz9TYoysa6H4EGVTFs+4rUtD2a4A4tAyp0RA2RfcDAKubOaxEzXccz3N0za3
 Q5DOL85sWtUDtAXNUPsGA85E1q/cwYo5XhPEtavQ0jPb5Y+9CDLxKtSAfLLSmBPfu82z
 pa0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=UssijGLA0guwTUcHyLTHes7DJ93euAzgTc51imi7/yc=;
 b=rKSmzA5/DG5+lUXOzoy415ReADditlGA6JIN8L5NKlJkAoznNHwjpzqPikIKXsozYA
 V+pMbFzKYyj2lNv++OK+yaRlLLAQdy0Z6UD7/FR5n7usYc8O2/FjU4IBbfqauLs2HWFy
 sWV3fRc6cj/LfQe4FXMf2ZSH2Iv26oJ3RiziWrf2HQW5pKDltm6dRwjBrI5QxHI4r0x9
 4i0NWz1x1lq0CpGrETVHKBSk4CYCXJowk/9g/KZG/Xq+sMabN+JIr4KMbsFPx+cF6aMD
 8Mv08KDg7i6bhsuMtCqeYU9Wfd5i3dsQKWuQ4Mnc9dLDRImYAkgLEYG7VjLcOT/vXS1W
 wQwQ==
X-Gm-Message-State: AOAM5323mlMbhr2/iV8Ep+334buESt+oaFnRTnsukuX2djVrIUerI4Oj
 p/LvnqJXKrCDPPe3qY6cPbMASUKsCZJRRg==
X-Google-Smtp-Source: ABdhPJxXLquQ6mrcDwlVLUjhVzzRXAXj6pO4KJT//upBwUCl91c9MLeVNs6IZyzITJVBFajWzBTLbg==
X-Received: by 2002:a05:6512:94f:: with SMTP id
 u15mr7006532lft.389.1608587372110; 
 Mon, 21 Dec 2020 13:49:32 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id z17sm2242274lfg.275.2020.12.21.13.49.31
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Dec 2020 13:49:31 -0800 (PST)
Subject: Re: Hosting speakup on freedesktop?
To: speakup@linux-speakup.org
References: <20201221214457.hu7cg3ino7yqqswn@function>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Message-ID: <7416918d-4e72-736b-a4c5-44bf77cc6f5c@gmail.com>
Date: Tue, 22 Dec 2020 00:49:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201221214457.hu7cg3ino7yqqswn@function>
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

MjIuMTIuMjAyMCAwMDo0NCwgU2FtdWVsIFRoaWJhdWx0INC/0LjRiNC10YI6Cj4gSGVsbG8sCj4K
PiBDdXJyZW50bHkgd2UgaGF2ZSBhbiBvbGQgZ2l0IHJlcG9zaXRvcnkgb24KPiBodHRwOi8vbGlu
dXgtc3BlYWt1cC5vcmcvc3BlYWt1cC5naXQgLCB0aGF0IHdhcyBub3QgdXBkYXRlZCBzaW5jZQo+
IH4yMDEzLiAgSSBkb24ndCBzZWVtIHRvIGhhdmUgcHVzaCBhY2Nlc3MgdG8gaXQuIFdlIGFsc28g
aGF2ZSBzb21lCj4gYnVnIHRyYWNraW5nIG9uIGh0dHBzOi8vZ2l0aHViLmNvbS9ieXRlZmlyZS9z
cGVha3VwL2lzc3VlcyAuIFRoaXMKPiBsb29rcyBxdWl0ZSBzY2F0dGVyZWQsIGFuZCBnaXRodWIu
Y29tIGRlcGVuZHMgb24gdGhlIGdvb2Qgd2lsbAo+IG9mIE1pY3Jvc29mdC4gSSdtIHRoaW5raW5n
IHRoYXQgd2UgY291bGQgaGF2ZSBzcGVha3VwIGhvc3RlZCBvbgo+IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZyAoZnJlZWRlc2t0b3AgaXMgYSAiY29tcGxldGVseSB2b2x1bnRlZXIKPiBv
cmdhbmlzYXRpb24gd2l0aCBubyBjb3Jwb3JhdGUgYmFja2luZyBvciBmdW5kaW5nIHN0cmVhbSIs
IG5vdGFibHkgcGFydAo+IG9mIFgub3JnKS4gV2UgY2FuIGtlZXAgdGhlIG1haWxpbmcgbGlzdCBh
cyBpdCBpcywgYnV0IHdlIGNvdWxkIG1vdmUgdGhlCj4gZ2l0IHJlcG9zaXRvcnkgYW5kIHRoZSBp
c3N1ZSB0cmFja2luZyB0aGVyZSwgd2hlcmUgaXQgaXMgZWFzeSB0byBjcmVhdGUKPiBhY2NvdW50
cywgZ2l2ZSByaWdodHMsIGZvbGxvdy11cCBvbiBidWdzIGV0Yy4gIEkgaGF2ZSBtYWRlIGEgcmVx
dWVzdCBmb3IKPiBhIHNwZWFrdXAgZ3JvdXAgY3JlYXRpb24gdG8gZnJlZWRlc2t0b3AgcGVvcGxl
Lgo+Cj4gVGhlIGlkZWEgaXMgdGhhdCBvbiB0aGF0IHJlcG9zaXRvcnkgd2UgY291bGQgaG9zdCB0
aGUgbGF0ZXN0IHZlcnNpb24gb2YKPiB0aGUgc3BlYWt1cCBzb3VyY2UgY29kZSwgc28gdGhhdCBw
ZW9wbGUgY2FuIHRyeSBpdCB3aXRob3V0IGhhdmluZyB0bwo+IHBhdGNoIGFuZCByZWJ1aWxkIHRo
ZWlyIHdob2xlIGtlcm5lbCBldGMuCj4KPiBTYW11ZWwKPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3BlYWt1
cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21h
aWxtYW4vbGlzdGluZm8vc3BlYWt1cAphYnNvbHV0ZWx5ICsxIHRvIHRoaXMuIGdyZWF0IGlkZWEu
CgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNw
ZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGlu
Zm8vc3BlYWt1cAo=
