Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from grumpy.reisers.ca (grumpy.reisers.ca [206.248.184.126])
	by mail.lfdr.de (Postfix) with ESMTP id 83CE11966EA
	for <lists+speakup@lfdr.de>; Sat, 28 Mar 2020 16:25:24 +0100 (CET)
Received: by grumpy.reisers.ca (Postfix, from userid 65534)
	id B7561428047F; Sat, 28 Mar 2020 11:25:23 -0400 (EDT)
Authentication-Results: grumpy.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.b="uxlYT6RM";
	dkim-atps=neutral
Received: from befuddled.reisers.ca (unknown [10.10.10.10])
	by grumpy.reisers.ca (Postfix) with ESMTP id DC0874280467
	for <lists+speakup@lfdr.de>; Sat, 28 Mar 2020 11:25:22 -0400 (EDT)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 96D9B1C57D3; Sat, 28 Mar 2020 11:25:22 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.a=rsa-sha1 header.s=20180516 header.b=uxlYT6RM;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CA2AD1C73B2;
	Sat, 28 Mar 2020 11:24:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 1D0F91C57B4; Sat, 28 Mar 2020 11:24:43 -0400 (EDT)
Received: from mail.cableone.net (mail2.cableone.syn-alias.com [69.168.106.66])
 by befuddled.reisers.ca (Postfix) with ESMTPS id CADED1C0D87
 for <speakup@linux-speakup.org>; Sat, 28 Mar 2020 11:24:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; d=cableone.net; s=20180516; c=relaxed/simple; 
 q=dns/txt; i=@cableone.net; t=1585409077;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=PTfElIGYlUemJQHIJQ4xZj60icA=;
 b=uxlYT6RMOESggyX9o38FIfuN5msyS0YHsVM5NgJar7Aak0RV48W9NB+LCpt/nEvm
 MyiR4mbXKn5pxI7A70yyb64LjlWgnuJKy6RLbp7ylo/O+/TaweBnXBSsQWeq1GVa
 yQDodEH7DhgTCP5OMS63nrWpzVcZF/qoOR3OgaixGDWB2XjyY1EaOnGW1OJ29Oh9
 qtHPhjzLxF8ILXd6rubmlNFRDks9EW4DEJxnQr7/k+eCup856VV0aycDS6e9ivwG
 8/mQ/bem+S0+8RURNiTJNuIDGI3MRi+UcDFmzV9P+vi0eXh206LehDAzUytBWRl1
 If2X4lsnbk+gD3up7wdMcg==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=UNaj4xXy c=1 sm=1 tr=0
 a=83sKN6Zl7IuxNZWA8nrnjA==:117 a=83sKN6Zl7IuxNZWA8nrnjA==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=SS2py6AdgQ4A:10 a=P7xTaY_ng_sA:10
 a=pGLkceISAAAA:8 a=qALDBASCAAAA:8 a=qPKtzgQbAAAA:8 a=KDkcME-KAAAA:8
 a=hEK2XftRAAAA:8 a=Br9LfDWDAAAA:8 a=5Eg8pFpIPjJlra4qu20A:9 a=QEXdDO2ut3YA:10
 a=BOlWcUSdwGBqhooYjKan:22 a=OTAqJWGB1laLS8RTg9aS:22 a=fqJZaa0VUk8EdFNYwDmm:22
 a=pvvZm7_9ER1OwvpV3Ftp:22 a=gR_RJRYUad_6_ruzA8cR:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
X-Authed-Username: Z2xlbm5lcnZpbkBjYWJsZW9uZS5uZXQ=
Authentication-Results: smtp01.lapis.bos.sync.lan
 smtp.user=glennervin@cableone.net; auth=pass (LOGIN)
Received: from [160.3.126.27] ([160.3.126.27:58076] helo=NUCPPYH)
 by mail.cableone.net (envelope-from <glennervin@cableone.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=DHE-RSA-AES256-SHA) 
 id 9B/B9-00904-53C6F7E5; Sat, 28 Mar 2020 11:24:37 -0400
Message-ID: <109101d60515$104b49f0$7001a8c0@NUCPPYH>
From: "Glenn K0LNY" <glennervin@cableone.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <77f47396-554f-3d0a-fd9d-fc760ecb2dfe@the-brannons.com>
 <20200130053303.GA4319@gregn.net>
 <9ca2e37d-f293-9b7b-80a2-177cbccfb08e@gmail.com>
 <alpine.NEB.2.21.2001301518500.16863@panix1.panix.com>
 <20200303131128.7d4uitw7feevimoj@function>
 <alpine.LNX.2.22.411.2003271958160.10657@io.coolip.net>
 <ea1321b1-fa81-2685-dcd0-ad974ceeb16e@gmail.com>
Subject: Re: speakup on latest kernels
Date: Sat, 28 Mar 2020 10:24:31 -0500
Organization: Home
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.3790.1830
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
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
Reply-To: Glenn K0LNY <GlennErvin@cableone.net>,
 "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

SGFzIGl0IG1hZGUgaXRzIHdheSBpbnRvIHRoZSBrZXJuZWxzIGluIHRoZSBBUk0gZGlzdHJvcz8K
Ci0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0gCkZyb206ICJBbGV4YW5kZXIgRXBhbmVzaG5p
a292IiA8YWFybmFhcm4yQGdtYWlsLmNvbT4KVG86ICJLZWxseSBQcmVzY290dCIgPGtwcmVzY290
dEBjb29saXAubmV0PjsgIlNwZWFrdXAgaXMgYSBzY3JlZW4gcmV2aWV3IApzeXN0ZW0gZm9yIExp
bnV4LiIgPHNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmc+CkNjOiAiSmFuaW5hIFNhamthIiA8amFu
aW5hQHJlZG5vdGUubmV0PjsgIkdyZWdvcnkgTm93YWsiIDxncmVnQGdyZWduLm5ldD4KU2VudDog
U2F0dXJkYXksIE1hcmNoIDI4LCAyMDIwIDM6MTkgQU0KU3ViamVjdDogUmU6IHNwZWFrdXAgb24g
bGF0ZXN0IGtlcm5lbHMKCgp5ZXAuIGl0IGlzIGluY2x1ZGVkIGluIDUuNS4xMy5hcmNoMS0xCmFs
c28gaSByZWxlYXNlZCBhIG5ldyBUYWxraW5nQXJjaCB3aXRoIHRoaXMga2VybmVsLgoKClNpbmNl
cmVseSwgQWxleGFuZGVyCgoyOC4wMy4yMDIwIDM6MTIsIEtlbGx5IFByZXNjb3R0INC/0LjRiNC1
0YI6Cj4gVGhpcyBwYXRjaCBhcHBlYXJzIHRvIG5vdyBiZSBpbmNsdWRlZCBpbiBhcmNoIExpbnV4
IGFmdGVyIHVwZ3JhZGluZwo+IHRoZSBrZXJuZWwgdG8gNS41LjEzLWFyY2gxCj4gQ291bGQgc29t
ZW9uZSBhbHNvIGNvbmZpcm0gdGhpcyBmb3IgbWU/Cj4gSSBnb3QgbXkgaW5mb3JtYXRpb24gZnJv
bQo+IGh0dHBzOi8vZ2l0LmFyY2hsaW51eC5vcmcvYXJjaGxpbnV4LmdpdC9sb2cvP2g9djUuNS4x
Mi1hcmNoMSZvZnM9NTAmc2hvd21zZz0xCj4KPgo+Cj4gT24gVHVlLCAzIE1hciAyMDIwLCBTYW11
ZWwgVGhpYmF1bHQgd3JvdGU6Cj4KPj4gSGVsbG8sCj4+Cj4+IEZvciBwZW9wbGUgd2hvIGhhdmUg
aGFkIGNyYXNoZXMgd2l0aCBsYXRlc3Qga2VybmVscyBhbmQgY2FuIHJlYnVpbGQKPj4gdGhlaXIg
b3duIGtlcm5lbCwgY291bGQgeW91IHRyeSB0byBhcHBseSB0aGUgYXR0YWNoZWQgcGF0Y2g/IEl0
IHNlZW1zIHRvCj4+IGJlIGZpeGluZyB0aGluZ3MgYW5kIGZvciBzdXJlIHdvdWxkIHRyaWdnZXIg
Y3Jhc2hlcyB3aGVuIGRvaW5nIGdldF93b3JkCj4+IHdoaWxlIHNwZWFrdXAgaXMgb24gYSBzcGFj
ZS4gVGhlIGlzc3VlIGhhcyBiZWVuIHRoZXJlIGZvciBhdCBsZWFzdCAxMAo+PiB5ZWFycywgaXQn
cyBhIGJpdCBjcmF6eSB0aGF0IG9ubHkgbm93IHdlIGhhdmUgY3Jhc2hlcyB3aXRoIGl0IDopCj4+
Cj4+IFNhbXVlbAo+PgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgoKCgoKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KCgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gU3BlYWt1cCBtYWlsaW5nIGxpc3QKPiBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3Jn
Cj4gaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVh
a3VwCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpT
cGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51
eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
