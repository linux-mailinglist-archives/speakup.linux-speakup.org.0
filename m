Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 44BC71D1FE0
	for <lists+speakup@lfdr.de>; Wed, 13 May 2020 22:12:32 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D0E691C0803; Wed, 13 May 2020 16:12:31 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=NHtxfkC2;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DCC991C0B32;
	Wed, 13 May 2020 16:11:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7406A1C07EF; Wed, 13 May 2020 16:11:47 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id 023B21C0129
 for <speakup@linux-speakup.org>; Wed, 13 May 2020 16:11:45 -0400 (EDT)
Received: from darkstar.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 7E72FBE791
 for <speakup@linux-speakup.org>; Wed, 13 May 2020 21:11:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1589397080; bh=wttAsYxHPf6HnHBQ5NfRSdGtCOkQsK++ZG9JtkHXIUY=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=NHtxfkC2k4uDTS6hotz4FMOKpG6ec3XduaDbBLyMA26SK0Dxva8XPEO/nUKIRadXI
 mH8zxL81yHydWMUn326EY9D0IvCA2Y7vPruX1gB0HIXt/Rh9Jjc9hP5++lbfEwtLXC
 WzzCOjoOWWfUgmnhr0AIjMU4aEeKaxWT0TE2chJ2e0Zx21/OZwRiO3EdPVn5KobtWS
 fltLqB1CNBmqAaXSlT34ecXJjwhgbfHQRfF1hRjB3umaY4JlFWEm+7xt5GEupbkfZ0
 Q0K2xXcmJJ4Mz7VtYJX2irpbR8yggd9SP7s+lmDmr0M3oSBXUkK6fe8T8OpoLC+UKI
 ftiI6n0cqVklw==
Subject: Re: speakup crashed in Vmware
To: speakup@linux-speakup.org
References: <DM6PR14MB3647DD1F4448E4D621813D67DABF0@DM6PR14MB3647.namprd14.prod.outlook.com>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; prefer-encrypt=mutual; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwH8EEwEKACkCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCXcBjnwUJGlHqEgAKCRDVAgLvYMA+6v/ICAC8Oa2zXOne
 zyuFrPtNsciJWYwWamW+g5TNaY9NPnyMRNKDi7IcP6PoDwHRI8YBgo+Z9w0qFKQ/WVSI/O6s
 gm7LnOX7OEHjnub4sjrr5PHcsPRjm6iJFIgGgD+waz0K5fxcc65ti3lgHLH1tkhORyiT5EFp
 0VllWDQfPHw5avm9oopJv1FuPfZhSlFT6QhjD2ARmOrxfFBjELQZjDidckOYf/8Stoh+aK5F
 5q69DpF+bSZzOtCht+S6LT+Im5zqMgq1Dfqb3FpnVO3MyhSLeGI2nB+OFNTBGByRFKHYRsHc
 VaQBjtfsr4HnC0UR2P/bDIk/oxLnIN9nHJuL6btcf9M6zsBNBFY6fG8BCACqDQKHSw0ElDkw
 PPpNguL0ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliw
 Wyj+9/roJlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+v
 rsNu7T9ro3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19
 Itys/CbNvxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2
 OP3refmSRxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwGUEGAEKAA8CGwwFAl1EQo4F
 CQjq+XYACgkQ1QIC72DAPurGhAf+LKNM5AajZNNnccq3bWawqsY1P5ZtFvZLPxMbx2xsnYaM
 8UPe/tGfuxp+q1ouCRKgvtefjd2eBLGXaysCA5r3Jv+hgdjPKEJut3rARhTJMaDwjKOcOTHG
 AhFtpsjBkVXuCBxEpNBEypyis3w4kQUCxP7nro4yzdXY7s6EbadNd8nG4B8qFt4JxnqJnZWl
 97mBQFJjFXlkAM+0eAkpF+rYzL6QKCKydO2Xcz7UTSMe/blXtZUjHxyr8Nh1G+ywEbkmQP+l
 QhcxJYJbK+q4zNM0U64zzLRwIvVknpdEzJKiFXsydnm9VFE9tzC6a+h40du2OdhkoNDVuFSq
 aG2M5OmN/Q==
Message-ID: <d0cb97ac-0964-c850-6405-3f892c45b31b@slint.fr>
Date: Wed, 13 May 2020 22:11:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <DM6PR14MB3647DD1F4448E4D621813D67DABF0@DM6PR14MB3647.namprd14.prod.outlook.com>
Content-Language: fr
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

SGVsbG8gQ3Jpc3MsCgpJIGRvdWJ0IHRoaXMgYmUgYW4gZXNwZWFrdXAgaXNzdWUuIEknZCByYXRo
ZXIgYmV0IGZvciBhIFZNd2FyZSBvbmUuCgpJIG9ubHkgdXNlIFFlbXUgVk1zLCBhcyBRZW11IGhh
cyBhbiBvdXN0YW5kaW5nIHNvdW5kIHN1cHBvcnQuCgpDaGVlcnMsCkRpZGllcgoKTGUgMTMvMDUv
MjAyMCDDoCAyMjowMCwgQ3Jpc3MgYSDDqWNyaXTCoDoKPiBIZWxsby4KPiAKPiAKPiBXaGVuIEkg
dHJ5ZWQgaW5zdGFsbCBkZWJpYW4gd2l0aCBzcGVha3VwIGluIFZNd2FyZSB2aXJ0dWFsIG1hY2hp
bmUsIEkgY2FuJ3QgY29udGludWUgYmVjYXVzZSBzcGVha3VwIGNyYXNoaW5nLCAod2l0aCBhcmNo
IGluIHZtd2FyZSBjcmFzaGVkIHRvbykuIElzIHRoaXMgYSBzcGVha3VwIGJ1Zz8gSG93IGNhbiBJ
IHJlc3RhcnQgc3BlYWt1cCBpbiBkZWJpYW4gaW5zdGFsbGF0aW9uPy4KPiAKPiAKPiByZWdhcmRz
LgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3Vw
IG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVh
a3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
