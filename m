Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E6E0F8E003
	for <lists+speakup@lfdr.de>; Wed, 14 Aug 2019 23:38:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1BA581C440D; Wed, 14 Aug 2019 17:38:53 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QskbgICp";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 60C701C4414;
	Wed, 14 Aug 2019 17:38:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 354AB1C43D1; Wed, 14 Aug 2019 17:38:35 -0400 (EDT)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5E05C1C364A
 for <speakup@linux-speakup.org>; Wed, 14 Aug 2019 17:38:34 -0400 (EDT)
Received: by mail-oi1-f170.google.com with SMTP id g7so190165oia.8
 for <speakup@linux-speakup.org>; Wed, 14 Aug 2019 14:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iuxSwEdaO/rh92zR8nDkftIcYmB9anFIsLv7qCHYKI4=;
 b=QskbgICpTS7dK7xGP1ohvVQP2jiv8pySgcMBRJDBjLPQvjj61n/b8yKaGHzcQ4qRYb
 q9fJKofvzOm4NdxFCUoXTZPuFSjQdR2oDczrhirRx1EjLA0X4az8mldckeO8R4ZJGHbu
 Wd9nBf3i8aymgGtkry+WC2iI6N6q5faHyvd8DydA1Mx1J8lpBv+RlN94L/jOmUuQ2OdQ
 HH0Q2tXudtxDTmAYB0UE4ql9q2aYqecbXaFLz/TyrYLft7yfFiKsXUEpb3/GZqnc4lNU
 TYymrnMqerLdCQ76GKrMAiiEeqsXHWMs9nha1sQED3h/3+IxrFFjjQWDgj2OrDhsOzFw
 IbGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iuxSwEdaO/rh92zR8nDkftIcYmB9anFIsLv7qCHYKI4=;
 b=RE98TQbxZ/wN+cyzZDn2uswNeIuv6JvodX09QK6HaLjYNINiQM2L7dE0/cMtzuKPKx
 LKNlAE9q5XrQksiEC8OE9FVHiqXoWZ55kX8q8MxhT1Czu9MFwNu7QzAtoCfRZNMk5ZHs
 3gHbxJ2laSnxctTsfco9QULpiIgEwud9qgEBGa4dJ4IC1KiduWyzGNTYFHvM+nJFP/Cg
 ajSYOyJruTJ/YD5JMxpJtQTiBBLdoG9bIgInskZP5Ref8ti2Cdx/6vyFydxUOZqucS+H
 vjt+3OpQo0LQesE9oud2Alt0ctq1OVLTO9yqYtKbM/q6ZmRxgsEL6Sj2OD6h0bRRiP2p
 mB4Q==
X-Gm-Message-State: APjAAAVuQzLHXq4o/FU0neKEv89bnhzAIM5L7MShgR7FJ9gbLRjJpdhJ
 jhyyVMqmIOGbhZ0ALpFpIZJY5JFbhVmGbRjUgcQ=
X-Google-Smtp-Source: APXvYqwQxkkeSVE/hi0ONt18PLw5mPodfFpvV0oXM5FeUW/ZbteOiUuApMYPhATcbrtdKFpQ1RDZg52+3gY5d/Q4km0=
X-Received: by 2002:aca:dd55:: with SMTP id u82mr5187oig.68.1565818652245;
 Wed, 14 Aug 2019 14:37:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190721180431.7ce1f716@narunkot>
 <20190724070600.6gbugq7y6xztosd2@function>
 <CAOtcWM2K-ch9yJaL5C+-ZGPn4hu=ntGDT926_pPsr9Hz74zijA@mail.gmail.com>
 <20190813080826.5gemx4vok2e6zcg3@function>
 <CAOtcWM0OPjtcY=rnSSn2us7kWPG7MDe=Jfh+WAVSGLjibQGUxw@mail.gmail.com>
 <20190814083104.fh7a6t4kosxpzoe3@function>
In-Reply-To: <20190814083104.fh7a6t4kosxpzoe3@function>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Wed, 14 Aug 2019 22:37:20 +0100
Message-ID: <CAOtcWM2n8kMxROwuXrf0YzCf8zsnDSy9VbWRBQJsg3kvyqO4vQ@mail.gmail.com>
Subject: Re: Linux Open Source Presentation
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

T24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgOTozMSBBTSBTYW11ZWwgVGhpYmF1bHQKPHNhbXVlbC50
aGliYXVsdEBlbnMtbHlvbi5vcmc+IHdyb3RlOgo+Cj4gT2thc2ggS2hhd2FqYSwgbGUgbWVyLiAx
NCBhb8O7dCAyMDE5IDA5OjEzOjI1ICswMTAwLCBhIGVjcml0Ogo+ID4gVGhlIHNoYWRvdyBvbiBm
b250cyBpcyBiZWNhdXNlIG9mIGZvcm1hdCBvZiBzbGlkZXMgcHJvdmlkZWQgYnkKPiA+IG9yZ2Fu
aXNlcnMuCj4KPiBJIGZlYXJlZCBzby4gIFlvdSBjb3VsZCB0ZWxsIHRoZW0gdGhhdCBpdCBwcm9i
YWJseSBkb2Vzbid0IGhlbHAgd2l0aAo+IHJlYWRhYmlsaXR5LCB0aHVzIGFjY2Vzc2liaWxpdHkg
OikKPgo+ID4gPiAtIHRyYWluIGJ5IHlvdXJzZWxmCj4KPiBJIGZvcmdvdCB0byBtZW50aW9uOiB0
aGUgZmlyc3QgcmVoZWFyc2FsIGlzIHVzdWFsbHkgZGlmZmljdWx0LCBvbmUgaGFzIGEKPiBoYXJk
IHRpbWUgZmluZGluZyBvbmUncyB3b3JkcywgaXQgdGh1cyB0YWtlcyBhIGxvdCBsb25nZXIgdGhh
biBleHBlY3RlZCwKPiBldGMuIFRoYXQncyBjb21wbGV0ZWx5IG5vcm1hbCA6KQo+Cj4gVGhhdCdz
IHdoeSByZWhlYXJzaW5nIGEgZmV3IHRpbWVzIGFsb25lIGlzIGJldHRlciB0byBnZXQgYXQgZWFz
ZSwgYmVmb3JlCj4gcmVoZWFyc2luZyBpbiBmcm9udCBvZiBvdGhlciBwZW9wbGUuCgpUaGFua3Ms
IHdpbGwga2VlcCB0aGF0IGluIG1pbmQgOikKCkhlcmUncyBsaW5rIHRvIHRoZSB0YWxrLiBJdCBj
b250YWlucyBsaW5rIHRvIHByZXNlbnRhdGlvbiBhbHNvOgpodHRwczovL29zc25hMTkuc2NoZWQu
Y29tL2V2ZW50LzAwNDVhN2ExOGRmNWYyOTU3NjZkMWFhYWUxN2EzMDcyCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNw
ZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4v
bWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
