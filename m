Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 353DE2DD9E0
	for <lists+speakup@lfdr.de>; Thu, 17 Dec 2020 21:27:45 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7C7DC380FA6; Thu, 17 Dec 2020 15:27:44 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=zusCnLiy;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7A37B380F29;
	Thu, 17 Dec 2020 15:27:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 8F39F380C19; Thu, 17 Dec 2020 15:27:41 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
 by befuddled.reisers.ca (Postfix) with ESMTPS id D2CFB380BF2
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 15:27:40 -0500 (EST)
Received: from vbox.gregn.net (unknown
 [IPv6:2607:fb90:4a37:aca3:549d:881f:6939:cd68])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by vserver.gregn.net (Postfix) with ESMTPSA id 8D4EC929
 for <speakup@linux-speakup.org>; Thu, 17 Dec 2020 12:27:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
 t=1608236860; bh=pnGqW2DTt4L+4w++HFL/PKcRv73Ya6doMmfJ94JmCj0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=zusCnLiyj8e9mmf4H0SxlEL/JUtzTTvlZ3rDZshnG/vuREfCoAPX+SuX8Zy6DVttN
 WPYYi6mp17oQGU4WgpWQ3M/JSACr4JO/cUU1cnK+UqItv7KKJqUMZpvnwu/smRzfkp
 igzLkQefzx4MFF8A9Jun2c3MkcMt2ksINMvknmACLYFFhdWXYnO/W3bk7rSkYluaUc
 XUBiZXRKgXEHCupaizD6dM6ZwP/OuS4bfUSbgCcnorG+dZi71Azze/+awQ5pMYOgou
 s6P6EEgkATdOUR4RCpFbAaFTObr3Yia5KtlksSzbOHFHa9w2jmQo1CqP8IOZ4AL8NW
 BGd9QwxkKWfig==
Received: from greg by vbox.gregn.net with local (Exim 4.84_2)
 (envelope-from <greg@gregn.net>) id 1kpzs5-0001Te-Pj
 for speakup@linux-speakup.org; Thu, 17 Dec 2020 13:27:33 -0700
Date: Thu, 17 Dec 2020 13:27:33 -0700
From: Gregory Nowak <greg@gregn.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Efficiently using terminal with screenreader
Message-ID: <20201217202733.GA5439@gregn.net>
References: <36759A23-2591-4A2C-BCF1-C868167EAFA0@speedpost.net>
 <20201216130002.GA5313@rednote.net>
 <Pine.LNX.4.64.2012161636510.3602815@server2.shellworld.net>
 <53240DEC-4237-4D6C-9820-30DE24C3904E@icloud.com>
 <f1d6bafe-2326-cd8f-5889-191a2cd7b2e6@math.wisc.edu>
 <20201217184038.h7b764gsfxtjag4i@function>
 <B7379CEB-D226-42D2-B99A-46558F5B7D4D@speedpost.net>
 <20201217185942.ilfu5kbg2lmcwidi@function>
 <C0260469-C483-4C7D-A5CC-0CDBA6B3D6BD@speedpost.net>
 <12561F5D-AFC7-4753-B2C4-1ED017E1C020@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12561F5D-AFC7-4753-B2C4-1ED017E1C020@icloud.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.102.4 at vserver
X-Virus-Status: Clean
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

T24gVGh1LCBEZWMgMTcsIDIwMjAgYXQgMDM6MDA6NTJQTSAtMDUwMCwgUmVlY2UgTydCcnlhbiB3
cm90ZToKPiBJcyBpdCBwb3NzaWJsZSB0byBjb21waWxlIHNwZWFrIHVwIG9uIG15IE1hY0Jvb2s/
CgpOby4KCk9uIFRodSwgRGVjIDE3LCAyMDIwIGF0IDAzOjEyOjU0UE0gLTA1MDAsIFJlZWNlIE8n
QnJ5YW4gd3JvdGU6Cj4gSnVzdCB0byBjb25maXJtLCBJ4oCZbSBnb2luZyB0byBuZWVkIGEgc2Vy
aWFsIGFkYXB0ZXIgdG8gcGx1ZyBpbiB0byBteQpVU0IgaHViIGNvbm5lY3RlZCB0byBteSBNYWNC
b29rLCB0aGVuIGNvbm5lY3QgYSBoYXJkd2FyZSBzeW50aGVzaXplcgp0byB0aGUgY2VyZWFsLgoK
Q29ycmVjdC4KCj4gRG9pbmcgaXQgdGhpcyB3YXkgd291bGQgSSBiZSBhYmxlIHRvIHVzZSB0aGUg
aGFyZHdhcmUgc3ludGhlc2l6ZXIgaW5zaWRlIG9mIHZpcnR1YWxCb3ggcnVubmluZyBEZWJpYW4g
YW5kIFNwZWFrdXA/IEkgYXNzdW1lIHRoYXQgaXQgc2hvdWxkIGluIHRoZW9yeSwgYnV0IGlmIG5v
dCBiZWNhdXNlIG9mIHRoZSB2aXJ0dWFsaXphdGlvbiwgdGhlbiBwbGFuIEIgaXMgZG9pbmcgdGhl
IGV4YWN0IHNhbWUgdGhpbmcgd2hpbGUgYm9vdGluZyBmcm9tIHNvbWV0aGluZyBsaWtlIFVidW50
dSBvbiB0aGUgVVNCLgoKWWVzLCB0aGF0IHNob3VsZCB3b3JrLCB0aG91Z2ggSSBoYXZlbid0IGRv
bmUgdGhhdCBpbiBhIHdoaWxlLiBZb3UgaGF2ZQp0byBvcHRpb25zIGhlcmUuIEZpcnN0IG9wdGlv
biBpcyB0byBkZWZpbmUgYSBzZXJpYWwgcG9ydCB3aGljaCB3b3VsZAphcHBlYXIgaW4geW91ciBn
dWVzdCBhcyBhIHBoeXNpY2FsIHNlcmlhbCBwb3J0LCBhbmQgeW91IHdvdWxkIHNldCB0aGF0CnVw
IHRvIGludGVyZmFjZSB0byB5b3VyIFVTQiBzZXJpYWwgcG9ydCBvbiB0aGUgaG9zdC4gVGhlIHNl
Y29uZCBvcHRpb24KaXMgdG8gZGlycmVjdGx5IHBhc3MgdGhlIFVTQiBzZXJpYWwgYWRhcHRlciB0
aHJvdWdoIHRvIHRoZSBndWVzdC4gVGhlCnZpcnR1YWxib3ggdXNlcidzIG1hbnVhbCBoYXMgbW9y
ZSBkZXRhaWxzLgoKR3JlZwoKCi0tIAp3ZWIgc2l0ZTogaHR0cDovL3d3dy5ncmVnbi5uZXQKZ3Bn
IHB1YmxpYyBrZXk6IGh0dHA6Ly93d3cuZ3JlZ24ubmV0L3B1YmtleS5hc2MKc2t5cGU6IGdyZWdu
MQooYXV0aG9yaXphdGlvbiByZXF1aXJlZCwgYWRkIG1lIHRvIHlvdXIgY29udGFjdHMgbGlzdCBm
aXJzdCkKSWYgd2UgaGF2ZW4ndCBiZWVuIGluIHRvdWNoIGJlZm9yZSwgZS1tYWlsIG1lIGJlZm9y
ZSBhZGRpbmcgbWUgdG8geW91ciBjb250YWN0cy4KCi0tCkZyZWUgZG9tYWluczogaHR0cDovL3d3
dy5ldS5vcmcvIG9yIG1haWwgZG5zLW1hbmFnZXJARVUub3JnCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClNwZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBA
bGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1h
bi9saXN0aW5mby9zcGVha3VwCg==
