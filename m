Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 817202D9FC2
	for <lists+speakup@lfdr.de>; Mon, 14 Dec 2020 19:59:50 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 14602380EDB; Mon, 14 Dec 2020 13:59:50 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cableone.net header.i=@cableone.net header.a=rsa-sha1 header.s=20180516 header.b=kmZYSgqv;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B36BB380F3E;
	Mon, 14 Dec 2020 13:59:46 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id A4AB8380C18; Mon, 14 Dec 2020 13:59:45 -0500 (EST)
Received: from mail.cableone.net (mail2.cableone.syn-alias.com [69.168.106.66])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 4E370380918
 for <speakup@linux-speakup.org>; Mon, 14 Dec 2020 13:59:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; d=cableone.net; s=20180516; c=relaxed/simple; 
 q=dns/txt; i=@cableone.net; t=1607972384;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=a5zJcu6KDjo6+0jH5dAVpmfiThg=;
 b=kmZYSgqvjBjRN0mV4jB1prIC0BZpyvnyztHyYpcQTPuzo1ioPXujtfdM01WrU6dv
 7ovjpLo2663rTTpTKAV8yIstPwDfCOZe5ALYkaEH3RY/epX2jidiYosJgSqmTDJn
 mMmCOpdO+KDQwXoyiYFa7vbvEzRqsFzX4+JJFBngeuK2bowHGokEhRYX0O4M/0u2
 2+xU0+xmr7g21K5cEp+HqoZw3L4CmNth8oGQU8q4BBzxW+LTz+KZQIxtnEP3lDFB
 1MMrP2KhP+kJmTKfWJErLUobmxlAVKGyyQCcJJsrT0mdWQqaJpV3DJ5TrDRXegaa
 7BQeFqP9MM/HS9jDaKZjLQ==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=aOOOVo1m c=1 sm=1 tr=0 cx=a_idp_x
 a=FAD7pjsVrG12rOFlsKXSTg==:117 a=FAD7pjsVrG12rOFlsKXSTg==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=zTNgK-yGK50A:10 a=P7xTaY_ng_sA:10
 a=v3ZZPjhaAAAA:8 a=qPKtzgQbAAAA:8 a=R3h328cLmWfTHT_FfaIA:9 a=QEXdDO2ut3YA:10
 a=OTAqJWGB1laLS8RTg9aS:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
X-Authed-Username: Z2xlbm5lcnZpbkBjYWJsZW9uZS5uZXQ=
Authentication-Results: smtp03.lapis.bos.sync.lan
 smtp.user=glennervin@cableone.net; auth=pass (LOGIN)
Received: from [24.119.24.147] ([24.119.24.147:20586] helo=NUCPPYH)
 by mail.cableone.net (envelope-from <glennervin@cableone.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=DHE-RSA-AES256-SHA) 
 id 73/57-26814-026B7DF5; Mon, 14 Dec 2020 13:59:44 -0500
Message-ID: <000a01d6d24b$50a5c670$7001a8c0@NUCPPYH>
From: "Glenn K0LNY" <glennervin@cableone.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <9EB3CEB9-C251-43F0-8780-E8CBDC759EAC@icloud.com>
Subject: Re: Efficiently using terminal with screenreader
Date: Mon, 14 Dec 2020 12:59:56 -0600
Organization: Home
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.3790.1830
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Vade-Verditct: clean
X-Vade-Analysis: gggruggvucftvghtrhhoucdtuddrgedujedrudekkedguddvudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfujgfpteevqfftnfgvrghrnhhinhhgpdfurffmpdfqfgfvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkrhfhvfhfufffohggtgfgrfgioffqsehtkeeptddutdejnecuhfhrohhmpedfifhlvghnnhcumfdtnffpjgdfuceoghhlvghnnhgvrhhvihhnsegtrggslhgvohhnvgdrnhgvtheqnecuggftrfgrthhtvghrnhepvdelhffhleejiedvvdehledtjeeghffffefgffffleegkeevkeejgeehffeguedunecuffhomhgrihhnpehlihhnuhigqdhsphgvrghkuhhprdhorhhgnecukfhppedvgedrudduledrvdegrddugeejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdegrdduudelrddvgedrudegjeenpdhmrghilhhfrhhomhepghhlvghnnhgvrhhvihhnsegtrggslhgvohhnvgdrnhgvthenpdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghen
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

SGksCkkgdXN1YWxseSB1c2Ugd2hhdCBJIHRoaW5rIGlzIGNhbGxlZCBmbGF0IHJldmlldy4KSSB1
c2UgdGhlIGNhcHMgbG9jayBrZXkgYW5kIFUgSSBPIGFuZCBKIEsgTCBhbmQgTSAsIC4KCnRvIHJl
dmlldyB3aGF0IGlzIG9uIHRoZSBzY3JlZW4uCkkgdGhpbmsgdGhlIG51bWJlciBwYWQgbWF5IGRv
IHRoZSBzYW1lLgoKLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLSAKRnJvbTogIlJlZWNlIE8n
QnJ5YW4iIDxyZWVjZS5vYnJ5YW5AaWNsb3VkLmNvbT4KVG86IDxzcGVha3VwQGxpbnV4LXNwZWFr
dXAub3JnPgpTZW50OiBNb25kYXksIERlY2VtYmVyIDE0LCAyMDIwIDEyOjUyIFBNClN1YmplY3Q6
IEVmZmljaWVudGx5IHVzaW5nIHRlcm1pbmFsIHdpdGggc2NyZWVucmVhZGVyCgoKSGVsbG8sCgpJ
4oCZbSBoYXZpbmcgdHJvdWJsZSBlZmZpY2llbnRseSBhY2Nlc3Npbmcgb3V0cHV0cyBmcm9tIHRl
cm1pbmFsIGluIE9yY2EuIEkgCm5lZWQgYSBmdWxseSBmdW5jdGlvbmluZyBzY3JlZW4gcmVhZGVy
LCBpcyB0aGVyZSBhbiBlYXN5IHdheSB0byBuYXZpZ2F0ZSAKbGluZSBieSBsaW5lIG9mIG91dHB1
dCBmcm9tIHRlcm1pbmFsIGluIGVzcGVha3VwIG9yIG9yY2E/CgpUaGFuayB5b3UsCgotUmVlY2UK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KU3BlYWt1cCBt
YWlsaW5nIGxpc3QKU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwpodHRwOi8vbGludXgtc3BlYWt1
cC5vcmcvY2dpLWJpbi9tYWlsbWFuL2xpc3RpbmZvL3NwZWFrdXAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFr
dXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFp
bG1hbi9saXN0aW5mby9zcGVha3VwCg==
