Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ED0AF262BE5
	for <lists+speakup@lfdr.de>; Wed,  9 Sep 2020 11:33:33 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7ED781C06EE; Wed,  9 Sep 2020 05:33:33 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=oi+FjB4w;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C6BB51C0858;
	Wed,  9 Sep 2020 05:32:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 432881C06B0; Wed,  9 Sep 2020 05:32:43 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id 69CA11C0129
 for <speakup@linux-speakup.org>; Wed,  9 Sep 2020 05:32:42 -0400 (EDT)
Received: from darkstar.machine.fr (static-176-175-66-67.ftth.abo.bbox.fr
 [176.175.66.67])
 by darkstar.slint.fr (Postfix) with ESMTPSA id E718DBE797
 for <speakup@linux-speakup.org>; Wed,  9 Sep 2020 10:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1599640319; bh=2fkZhg/eeoHBlL/xXuZGQ6JEr5Lcw2WqJoUJnv1c4Hs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=oi+FjB4wRyOz+kLpovTZqgoKy7vR3DdALaKEpVMLJR+Lup4IS5NElxGcVG6DwOrzT
 hxYJug5uElVg7ntsnTBVfxuVzE/WopeO8cwmNQvV4XGkh/Z+hci73wixfFeTG3OIiI
 Uwx4tgNIB3iUXgirXys+HDOKUiHSu/ob7KdGivCLp0xJ/eKOykreTxp9RawFGnREeF
 NZ8QcDXOV+viblK7P9CZfsRxQ/15lAIajLcjXcLdgs6YPuKx6UavLODXCnbl7xGtxA
 ujD1Bv1xn7vDbi2G6mCZOlNqv/idVXU/F18N1hQ8tjtTa7i1NOl0+w4qrJtxkLAgtw
 eOhyBAIpRmY2g==
Subject: Re: Fwd: [slint] Re: Fwd: New kernel, automatic handling of kernel
 upgradess.
To: speakup@linux-speakup.org
References: <cf4d2320-17cd-1ced-2766-f5b1dcb8cb63@slint.fr>
 <0499a0ec-e2bb-3ab2-5f33-d5ab3347e3cc@slint.fr>
From: Didier Spaier <didier@slint.fr>
Message-ID: <95cfe57a-1267-c903-eaf0-55bf204fabf3@slint.fr>
Date: Wed, 9 Sep 2020 11:32:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <0499a0ec-e2bb-3ab2-5f33-d5ab3347e3cc@slint.fr>
Content-Language: fr
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
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

Rm9yZ290IHRoZSBhdHRhY2htZW50cywgc29ycnkuCgpMZSAwOS8wOS8yMDIwIMOgIDExOjIzLCBE
aWRpZXIgU3BhaWVyIGEgw6ljcml0wqA6Cj4gW05vdGVdIG1lc3NhZ2UgaW5pdGlhbGx5IGFsc28g
c2VudCBhbHNvIHRvIHRoZSBzbGludCBtYWlsaW5nIGxpc3QsIHJlc2VudCB0bwo+IHRoaXMgb25l
IG9ubHkgd2l0aCBjb21wcmVzc2VkIGF0dGFjaG1lbnRzIG5vdCB0byBiZSB0byBiaWcgdG8gZ2V0
IHRocm91Z2guCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xp
bnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
