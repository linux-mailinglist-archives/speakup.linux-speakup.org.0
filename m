Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 9EEC31D3869
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 19:36:15 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 14E8E1C0AFE; Thu, 14 May 2020 13:36:14 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=oowJkiRP;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AD7431C0C5D;
	Thu, 14 May 2020 13:34:56 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id F283B1C0AD9; Thu, 14 May 2020 13:34:50 -0400 (EDT)
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by befuddled.reisers.ca (Postfix) with ESMTPS id BECF51C083F
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 13:34:45 -0400 (EDT)
Received: by mail-lf1-x141.google.com with SMTP id z22so3390813lfd.0
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 10:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=/WGeGRor5zibkYDlh1zwQQQ90xA3pa8fYLzDPeBzbUA=;
 b=oowJkiRPm56NA2bC7QusynqC7gqf/9GxUe1TxRaOTEbV5g4xliPeDg7W4Ujg8kj4wD
 av5cddBISu1PNUGRI5Fdd8rDl9N0nsZ8H4CMFZKgObQBtsuCI4wjFziWJB5yenV34xPr
 tu8L+owiRQ/wrNVj62cowG8isdgubKdpGhR5wjnwpl0X4xiPrC54rOF6qfGBZIM7eQS5
 uWlqBvUrUqRfDI9aXU1ZVNizdHAFr7pEvwji8EyAMk5TpWrDIIPz2asYkSQbzJJsOD2q
 IINiZrH1vE57KfNLZr2X0oPmNSApoPQXojkr5uyqtOLqqmmPtVtJ020eoaub4m4iRkXL
 y/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=/WGeGRor5zibkYDlh1zwQQQ90xA3pa8fYLzDPeBzbUA=;
 b=l/5nM/BjZNj75ETobxeZFOpTjKnaKOdVHjkHe+VQi3GHussDMLNQioj6XUyC1xKSfn
 KYOB+E9zCSWZ8wwgpnASm4zjDyK5J7j6Ig+F92VLxKwyAReHd3HBY1Nz8HHpL+i0eMXD
 FCMcm+QNjfmM0bSiAfXyBHjYHLNUF317qjaG4prNx8yucEenjwXWqOZZIwwqceI2qNqy
 1AYYWADNxdFO/W6kgSsex+1RaCdyQWTfjm1dTggRet5pKn0Tra/O7F97ctXomBKwGsNi
 rYcvDv5NZeiiA/hY6P+bTGQ1NqKjQmB+de7DONO/sQ+yRUibvVul279o10wIKpXqO2M8
 gHUQ==
X-Gm-Message-State: AOAM533U11LT2BwItRMrItqtnWD3a5CARH95srp5oXQeJcfH9K04LPmz
 VYoJ5O7eWDBRZsbkyGvownMfwrlKeUow+Q==
X-Google-Smtp-Source: ABdhPJx7r6YiuQGqHLKD4HdM0GKOCAw6fUYLETHmH5ZwfQanb24RF8Ej3uAqptrzSOxP+xVidqeGlQ==
X-Received: by 2002:a19:d57:: with SMTP id 84mr2965387lfn.112.1589477682977;
 Thu, 14 May 2020 10:34:42 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id w24sm2136018lfk.47.2020.05.14.10.34.42
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 May 2020 10:34:42 -0700 (PDT)
Subject: Re: speakup crashed in Vmware
To: speakup@linux-speakup.org
References: <DM6PR14MB3647DD1F4448E4D621813D67DABF0@DM6PR14MB3647.namprd14.prod.outlook.com>
 <20200514012248.GB2720@novena-choice-citizen>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Autocrypt: addr=aarnaarn2@gmail.com; keydata=
 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
 444rpcPy
Message-ID: <0e5bc7f1-8056-c6a2-ad03-593023bb1879@gmail.com>
Date: Thu, 14 May 2020 20:34:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200514012248.GB2720@novena-choice-citizen>
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

dGhhdCBidWcgd2FzIGZpeGVkIGluIGN1cnJlbnQgVGFsa2luZ0FyY2ggcmVsZWFzZXMuCjIwMjAu
MDMuMjcgcmVsZWFzZSBpbmNsdWRlcyB0aGF0IGZpeC4KCjE0LjA1LjIwMjAgNDoyMiwgSm9va2lh
INC/0LjRiNC10YI6Cj4gV2hlbiBkaWQgeW91IGluc3RhbGwgQXJjaD8gVGhlcmUncyBhIHNwZWFr
dXAgYnVnIHRoYXQgY3Jhc2hlcyBmYWlybHkKPiB3ZWxsIGluIFZNcyBvbiBvbGRlciBrZXJuZWxz
Lgo+Cj4gT24gV2VkLCBNYXkgMTMsIDIwMjAgYXQgMDQ6MDA6NThQTSAtMDQwMCwgQ3Jpc3Mgd3Jv
dGU6Cj4+IEhlbGxvLgo+Pgo+Pgo+PiBXaGVuIEkgdHJ5ZWQgaW5zdGFsbCBkZWJpYW4gd2l0aCBz
cGVha3VwIGluIFZNd2FyZSB2aXJ0dWFsIG1hY2hpbmUsIEkgY2FuJ3QKPj4gY29udGludWUgYmVj
YXVzZSBzcGVha3VwIGNyYXNoaW5nLCAod2l0aCBhcmNoIGluIHZtd2FyZSBjcmFzaGVkIHRvbyku
IElzCj4+IHRoaXMgYSBzcGVha3VwIGJ1Zz8gSG93IGNhbiBJIHJlc3RhcnQgc3BlYWt1cCBpbiBk
ZWJpYW4gaW5zdGFsbGF0aW9uPy4KPj4KPj4KPj4gcmVnYXJkcy4KPj4KPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gU3BlYWt1cCBtYWlsaW5nIGxp
c3QKPj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+PiBodHRwOi8vbGludXgtc3BlYWt1cC5v
cmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3Bl
YWt1cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmlu
L21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAoKLS0gClNpbmNlcmVseSwgQWxleGFuZGVyLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BlYWt1cCBtYWls
aW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1cC5v
cmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
