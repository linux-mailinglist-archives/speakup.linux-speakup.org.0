Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9AAD32F3C28
	for <lists+speakup@lfdr.de>; Tue, 12 Jan 2021 23:13:39 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 37366380F28; Tue, 12 Jan 2021 17:13:39 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=L1H4gEdT;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 03D1D380ED2;
	Tue, 12 Jan 2021 17:13:38 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 1F928380BAD; Tue, 12 Jan 2021 17:13:37 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id F03AC380B19
 for <speakup@linux-speakup.org>; Tue, 12 Jan 2021 17:13:36 -0500 (EST)
Received: from darkstar.example.slint
 (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 0C3F1BE2FB
 for <speakup@linux-speakup.org>; Tue, 12 Jan 2021 22:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1610485953; bh=Wjzw0EXomsvfIgJUcHVHJjXbpExsuOmIxtuFx6+CI+Y=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=L1H4gEdT/ykGc7TGHdWzgvTRfi0TwZRsFvbFNIMyQZiFRC2gp5Vd3b8phrXsMtPBD
 WXZ9l+Tn++DOWbgXcTy8DQPOGmwM9Lo7Y0Rb4QO5bD/CGpUrmn+KU0qXlVFjy16tqX
 UQJHfdAEPgUYICp/evBbeVjhwfx4nVQ8tLni1BEQqZe6IOLjGGpjSieJ7N6ZdCZu8I
 w5M6HTIuhjW1ujzdD4+Jcf6rB4jFFGUN8JdZ/4jYDGPpQ97R5PQr++LuarrRJDfJzu
 sXRXQvjOJWDCZWUNFTtWyotZFdDVTC/+4F5joMzXzqEGPqRIGtmpGyESwYDDMZ/DVW
 0y1Nbqeuvzv+Q==
Subject: Re: speakupconf vs speakup-save/speakup-restore
To: speakup@linux-speakup.org
References: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
 <20210111223737.697336-5-samuel.thibault@ens-lyon.org>
 <3101bb04-38f3-9bc2-453d-3da37a50b7d9@slint.fr>
 <20210112001255.bwv7ac3c66xnst6o@function>
From: Didier Spaier <didier@slint.fr>
Message-ID: <3f03eb75-6903-519b-1495-801425cf6263@slint.fr>
Date: Tue, 12 Jan 2021 23:13:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20210112001255.bwv7ac3c66xnst6o@function>
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

TGUgMTIvMDEvMjAyMSDDoCAwMToxMiwgU2FtdWVsIFRoaWJhdWx0IGEgw6ljcml0wqA6Cgo+IFNp
bWlsYXJseSwgYXJlIHRoZXNlIHN1cHBvc2VkIHRvIGNvbXBsZXRlbHkgcmVwbGFjZSBzcGVha3Vw
Y29uZj8KCj4gQW5kIGFzIHdlbGwsIHBsZWFzZSBzZWUgd2l0aCBzcGVha3VwY29uZiB1c2VycyB3
aGV0aGVyIHRoZWlyIG5lZWRzIGFyZQo+IGZ1bGZpbGxlZCBieSB0aGVzZSBzcGVha3VwLXNhdmUv
c3BlYWt1cC1yZXN0b3JlLCBJIGRvbid0IHRoaW5rIHdlIHdhbnQKPiB0byBtYWludGFpbiBib3Ro
LgoKU2FtZSBhbnN3ZXJzIGFzIGZvciBzcGVhay13aXRoIHZzIHRhbGt3aXRoLgoKQ2hlZXJzLCBE
aWRpZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3Bl
YWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgt
c3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
