Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 633282A21FD
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 23:05:58 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 60646380F51; Sun,  1 Nov 2020 17:05:57 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=tCGVubm4;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 01252380F26;
	Sun,  1 Nov 2020 17:05:55 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id E919E380F13; Sun,  1 Nov 2020 17:05:53 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id C79A2380F0E
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 17:05:53 -0500 (EST)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net
 [78.208.157.71])
 by darkstar.slint.fr (Postfix) with ESMTPSA id 597D2BE27E
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 22:05:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1604264702; bh=9ykYC3gtAsOrj/i8Y07bFkAYLOod2UPsjPP/rOAHxvE=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=tCGVubm428LwwHqdSkxcD5Uxo9HrDYnUD3YhN3Rag5FZvxXKa11/ntjZ2MvTGJKrS
 ei92XM+OK1Ac0KeohOOE9aGUbIZ9s9LZepPtIxi0MIt5STrPt7+ZS8CZjReDReMQNR
 7o6/1zpcF/iNaKYsj8tim7mcUBRgydv72QA59/OmcWM16CoBKMz5P1YNMah8QxzrQf
 XRltoech/nzXVO+wiK1U7NdMHB4tjAEywJAI/CQBVkCUkHrOejylWgRcl3PmlaHkpD
 KH8KQ1BoQqr/UBGuQJ6W5OvviweeZdt4gTe+/JkozQoOIozUny1lzT9LGetEU72kpf
 7EvYgFTKu2GRQ==
Subject: Re: speakup crashes with kernel 5.4.69
To: speakup@linux-speakup.org
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
 <20201101214000.u6al47enhggqputs@function>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; prefer-encrypt=mutual; keydata=
 mQENBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAG0H0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj6JAT8EEwEKACkCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCXcBjnwUJGlHqEgAKCRDVAgLvYMA+6v/ICAC8Oa2zXOne
 zyuFrPtNsciJWYwWamW+g5TNaY9NPnyMRNKDi7IcP6PoDwHRI8YBgo+Z9w0qFKQ/WVSI/O6s
 gm7LnOX7OEHjnub4sjrr5PHcsPRjm6iJFIgGgD+waz0K5fxcc65ti3lgHLH1tkhORyiT5EFp
 0VllWDQfPHw5avm9oopJv1FuPfZhSlFT6QhjD2ARmOrxfFBjELQZjDidckOYf/8Stoh+aK5F
 5q69DpF+bSZzOtCht+S6LT+Im5zqMgq1Dfqb3FpnVO3MyhSLeGI2nB+OFNTBGByRFKHYRsHc
 VaQBjtfsr4HnC0UR2P/bDIk/oxLnIN9nHJuL6btcf9M6
Message-ID: <e2b1ecc4-8b03-e9a5-dc54-6b8b17e72ce6@slint.fr>
Date: Sun, 1 Nov 2020 23:05:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201101214000.u6al47enhggqputs@function>
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

TGUgMDEvMTEvMjAyMCDDoCAyMjo0MCwgU2FtdWVsIFRoaWJhdWx0IGEgw6ljcml0wqA6Cj4gSXQn
cyBzcGVjaWZpYyB0byB0aGUgbHRsayBhbmQgc3Brb3V0IHN5bnRocy4KClRoYW5rcyBmb3IgdGhl
IGZhc3QgYW5zd2VyLiBJIHdpbGwgdXBsb2FkIDUuNC43MiBhbmQgbGV0IHBlb3BsZSBrbm93Cmlm
IHRoZXkgZW5jb3VudGVyIHRoZSBpc3N1ZSB0aGF0IGEgcGF0Y2ggaXMgYmVpbmcgdGVzdGVkIChJ
IGhhdmUKY29uc2lkZXJlZCB1cGdyYWRpbmcgdG8gNS45LnggYnV0IHdpbGwgd2FpdCBmb3IgNS4x
MCBhcyBpdCB3aWxsIGJlIExUUykuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5v
cmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVh
a3VwCg==
