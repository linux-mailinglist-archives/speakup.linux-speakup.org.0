Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3065623F402
	for <lists+speakup@lfdr.de>; Fri,  7 Aug 2020 22:50:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B6BD81C06F8; Fri,  7 Aug 2020 16:50:50 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=owG6Qsfb;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 52B661C073E;
	Fri,  7 Aug 2020 16:50:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 7F24C1C06F5; Fri,  7 Aug 2020 16:50:11 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id 25DC41C06DA
 for <speakup@linux-speakup.org>; Fri,  7 Aug 2020 16:50:09 -0400 (EDT)
Received: from ici.slint.fr (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id EA8E8BE7DC
 for <speakup@linux-speakup.org>; Fri,  7 Aug 2020 21:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1596829769; bh=Fnvos0ee1PYWYI8JDZAL2rIhZtph9uVKMJgRTcfjUl4=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=owG6Qsfb5MHnlhSbKg3sgICyJXI2po0hfF3usyOEPql284uF6nYcKUdWQ2FQqvxCJ
 XvVlOFSy03WBjUMhs66+UWLm7jKHvXJpOJz4uGQRNHFW3MH8XV9w1TzmPlXDKI+kH2
 lYBrLPV8dUuVT+uUXXRPZC8P2Q07Tz7/+duTSo2yDqbSLicc8ambJwqzHh7NX4x+MF
 3Du34j6IlamZWhMnRP8Z75kZWRH/ttAFqPZwKeBzC/N+7SCcTNGHgFrJn1O07q2YdV
 HQzqEZ6jHVtI932ki69tEq4Tw/rUs/Vrnw6GpKuWdkxlrq77kVzc6Tb0Qe6ChEpNXZ
 9XGsPbgQMK7zw==
Subject: Re: Problems with espeakup and CFDisk
To: speakup@linux-speakup.org
References: <DM6PR14MB3647F5E81DF1F02FFDF68F6ADA490@DM6PR14MB3647.namprd14.prod.outlook.com>
From: Didier Spaier <didier@slint.fr>
Message-ID: <860b06c6-3ef2-458a-06bc-b356f9f28631@slint.fr>
Date: Fri, 7 Aug 2020 22:50:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <DM6PR14MB3647F5E81DF1F02FFDF68F6ADA490@DM6PR14MB3647.namprd14.prod.outlook.com>
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

SGVsbG8gQ3Jpc3MsCgphbnN3ZXIgaW4gbGluZQoKTGUgMDcvMDgvMjAyMCDDoCAyMTo1NywgQ3Jp
c3MgYSDDqWNyaXQgOgo+IElzIHBvc2libGUgdXNlIGVzcGVha3VwIGFuZCBDRkRpc2sgY29ycmVj
dGx5Py4gV2hlbiBJIHJ1biBDRkRpc2sgZnJvbSBzaGVsbEkgY2FuIHNlbGVjdCB0YWJsZSBwYXJ0
aXRpb24gdHlwZSwgY3JlYXRlIGFuZCBkZWxldGUgcGFydGl0aW9ucywgYnV0IHdoZW4gaSB0cnkg
Y2hvb3NlIGEgcGFydGl0aW9uIHR5cGUsIGVzcGVha3VwIHJlYWQgbmFtYmVycyAoSSBkb24ndCBr
bm93IHdoYXQgYXJlKS4gRXNwZWFrdXAgbXVzdCB0YWxrOiBsaW51eCBzd2FwLCB3ZWZpIGV0Yy4g
SWYgSSB1c2UgbnVtYmVycyBrZXkgdG8gbmF2ZWdhdGnDs24sIEVzcGVhayByZWFkIHRoZSB0eXBl
IHBhcnRpdGlvbnMsIGJ1dCB3aGVuIEkgbmF2ZWdhdGUgd2l0aCBhcnJvd3Mga2V5LCBhcHBlYXIg
dGhlIG51bWJlcnMuCgpUaGVzZSBudW1iZXJzIGFyZSB0aGUgcGFydGl0aW9uIHR5cGVzIFVVSUQs
IGRpc3BsYXllZCBpbiByZWNlbnQgdmVyc2lvbnMgb2YKY2ZkaXNrLiBJIGRvbid0IGtub3cgd2h5
IGVzcGVha3VwIHJlYWRzIHRoaXMgVVVJRCBidXQgbm90IHRoZSB0eXBlLgoKTWF5YmUgZmRpc2sg
aXMgZWFzaWVyIHRvIHVzZS4KCklmIGJ5IGNoYW5jZSAgeW91ciBwYXJ0aXRpb24gaXMgYSBncHQs
IGRvIHVzZSBpbnN0ZWFkLCBlaXRoZXI6CmNnZGlzayAtYSA8ZGV2aWNlPgpvcjoKZ2Rpc2sgPGRl
dmljZT4KClRoZW4gd2hlbiBzZXR0aW5nIG9yIGNoYW5naW5nIHRoZSB0eXBlIHlvdSBjYW4gZGlz
cGxheSB0aGUgd2hvbGUgbGlzdCBvZiB0eXBlcwoobmFtZXMgb2YgdHlwZXMgYW5kIGFzc29jaWF0
ZWQgc2hvcnQgbnVtYmVycykgYnV0IGFsc28gdHlwZSB0aGUgZmlyc3QgY2hhcmFjdGVycwpvZiB0
aGUgdHlwZSBuYW1lIChsaWtlIEVGSSksIHByZXNzIHRhYiBhbmQgZ2V0IGEgbGlzdCBvZiBhbGwg
bWF0Y2hpbmcgdHlwZSBuYW1lcwp0byBjaG9vc2UgZnJvbSwgd2hpY2ggaXMgdmVyeSBoYW5keS4K
CkJlc3QsCgpEaWRpZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KU3BlYWt1cCBtYWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRw
Oi8vbGludXgtc3BlYWt1cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAK
