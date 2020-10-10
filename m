Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 43F1828A0E0
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 18:13:29 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B594F380BE4; Sat, 10 Oct 2020 12:13:28 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=YR/C/a91;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7F6C8380B3B;
	Sat, 10 Oct 2020 12:13:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 2635D380B2C; Sat, 10 Oct 2020 12:13:27 -0400 (EDT)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 05F69380B29
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 12:13:27 -0400 (EDT)
Received: by mail-ed1-x52a.google.com with SMTP id p13so12558198edi.7
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 09:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=r8tEgK8HUfQX80e9BnhVjYD1OVFpxtXR0NryOMV9YIY=;
 b=YR/C/a91nsPIdRMGHsydY9OvYOy8bLHaClQyzRvi6TlEG3Ok0FwaxdOpQBw004nK7U
 xFt0h7I8HiktqsDhL07yYlDNbc7Xdw+KOWk18s97DmdqUf6dJU4dWs25neCGqMigxa2c
 DmCPqwtupQVm3cP1BH3weVYeUZkpR/x9SbDLpAf9OYAjOAH5EyUPn7c3t9oX2Rys+1u2
 PQow2Xm22RfEuOBGHfGR6i0u2NYATmRy1PzSVylLRS5wvTSM0RF8FpNBYtE/aqd3AQIm
 e/e9DtE/CVAAczLyB93U1zAx2Sx09dA3Ef0A9znPfz2U6oruRMl6cezoldqXZu2yinAn
 7biQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=r8tEgK8HUfQX80e9BnhVjYD1OVFpxtXR0NryOMV9YIY=;
 b=afdeI/rcoFoUW6Bl5qWzMw55y1VqNRRyp24WrGGOXoCcxbzt4GGezuy7AUd2MSmK9A
 cmiHYXvxos+tpewwsuOys2WTZKIEmro/bDbpOgG0+FcxHrarzwPWszJuaQwuShfvNjP3
 Y7UfLBKn9EgeoHVWCgbPmhOS6S590CwCoDlZtfLLZzeDAfTF2lxTI8j3uYIKbxXvbxx2
 71qq4CRI4mUXm5CVOfuuT5XDi8oJaEOEKyyu4aN2rTA4kvP+/J8A6iUEgAzH9IH6b7jH
 nwOVcm/r2j7x1FnTFXiF6NkBXy/MHop8cdal7JautF9HS4OyqNauurDy2qz6toUfbv30
 7bOA==
X-Gm-Message-State: AOAM531vSvLBFk479Ik62yHfCqhIhKLNu7dQjmhL2RIgVqHFbDSiH0Vp
 Gw/p++OBDldv+qXUKC3DXy/T3P2HMlm1aw==
X-Google-Smtp-Source: ABdhPJzqoUjw64Wy4AshDVja95H99Q4YgjRekNj0/9b75AbjOVpkQ5AuimOK5lxvFIF5e7m6jxdrIw==
X-Received: by 2002:aa7:ce18:: with SMTP id d24mr5365035edv.9.1602346404800;
 Sat, 10 Oct 2020 09:13:24 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id bv8sm8152916ejb.3.2020.10.10.09.13.24
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 10 Oct 2020 09:13:24 -0700 (PDT)
Subject: Re: So, where'd the volume controls get to?
To: speakup@linux-speakup.org
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Message-ID: <8782d637-e5c8-a847-47c9-a2ed3f1664ba@gmail.com>
Date: Sat, 10 Oct 2020 19:13:22 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201010151312.fbz27eyoua2574tw@function>
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

aGVsbG8gU2FtdWVsLiBub3cgd2hlbiBwcmVzc2luZyBzcGVha3VwICsgMS8yIHlvdXIgY2hhbmdp
bmcgZW5mbGVjdGlvbiAKaW5zdGVhZCBvZiB2b2x1bWUuCgoxMC4xMC4yMDIwIDE4OjEzLCBTYW11
ZWwgVGhpYmF1bHQg0L/QuNGI0LXRgjoKPiBIZWxsbywKPgo+IEtpcmsgUmVpc2VyLCBsZSB2ZW4u
IDA5IG9jdC4gMjAyMCAxMToxOTowMSAtMDQwMCwgYSBlY3JpdDoKPj4gSGVsbG8gU2FtdWVsIGV0
IGFsOiBUaGUgbGF0ZXN0IHZlcnNpb24gb2Ygc3BlYWt1cCBhcHBlYXJzIHRvIGhhdmUKPj4gcmVw
bGFjZWQgdGhlIHZvbHVtZSBjb250cm9scyB3aXRoIGluZmxlY3Rpb24gY29udHJvbHMuCj4gPz8g
SSdtIG5vdCBhd2FyZSBvZiB0aGlzLiBJbmZsZWN0aW9uIHdhcyBhZGRlZCBpbiB0aGUgL3N5cyBw
YXJhbWV0ZXJzLAo+IGJ1dCBvbmx5IHRvIGJlIGNvbmZpZ3VyZWQgbWFudWFsIGJ5IGVjaG9pbmcg
dGhlcmUuIFdoYXQgaGFyZHdhcmUgYXJlIHlvdQo+IHVzaW5nPwo+Cj4+IElNTyBlc3BlYWt1cCBp
cyBzdGlsbCBlbnRpcmVseSBicmFpbiBkZWFkIHNvIGEgbG90IG9mIHVzIHN0aWxsIGhhdmUgdG8K
Pj4gdXNlIHZlcnkgb2xkIHZlcnNpb25zIGZyb20gYmFjayBiZWZvcmUgZXNwZWFrLWVuIHRvIGdl
dCBkZWNlbnQKPj4gcGVyZm9ybWVuY2UuIEl0J3MganVzdCBhbiBvYnNlcnZhdGlvbi4KPiAiUGVy
Zm9ybWFuY2UiPyBXaGF0IGRvIHlvdSBtZWFuPwo+Cj4gQWdhaW4sIEknbSBub3QgYW4gYWN0dWFs
IHVzZXIgb2Ygc3BlYWt1cCwgc28gcGVvcGxlIGhhdmUgdG8gZXhwbGFpbiB3aGF0Cj4gdGhleSBt
ZWFuIGluIGRldGFpbHMgb3RoZXJ3aXNlIEkgd29uJ3QgYmUgYWJsZSB0byBncmFzcCB3aGF0IHBy
b2JsZW0KPiB0aGVyZSBhY3R1YWxseSBpcy4KPgo+IFNhbXVlbAo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPiBT
cGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1i
aW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1h
aWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3Vw
Lm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
