Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E380C2F231C
	for <lists+speakup@lfdr.de>; Tue, 12 Jan 2021 00:35:02 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6CBF4380EB7; Mon, 11 Jan 2021 18:35:02 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=nPJ7/h8u;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AAAF4380F77;
	Mon, 11 Jan 2021 18:35:01 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 56382380C06; Mon, 11 Jan 2021 18:35:00 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
 by befuddled.reisers.ca (Postfix) with ESMTP id E5BF7380923
 for <speakup@linux-speakup.org>; Mon, 11 Jan 2021 18:34:59 -0500 (EST)
Received: from darkstar.example.slint
 (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
 by darkstar.slint.fr (Postfix) with ESMTPSA id EDA11BE2FB
 for <speakup@linux-speakup.org>; Mon, 11 Jan 2021 23:33:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
 t=1610404429; bh=xmkJneHwx6F4OZn+5+kryU2HW4cuNltYCbzp7OzPjvA=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=nPJ7/h8u7qBsAE9h+CdZrJXb6WAaJbyPGNpYfW9JlR3dEuHvr3JeIc0ITlaC65ary
 aJsO7GXJSEAapsx8fl8MrqUbcaL8TZ8fIFBkP+0XX55f5kZ7qYvWrcmaxa2g1fBTTa
 e0vYincNwS3Pa8Rvc3WP7NlyHsHPP1e4hW14wsecBCHnRI+Jak5LgeUVv+oNNyjkLg
 91q0fK/YEq6C3Qt19TXlVvPdPPpori0CTGL5bvGC90jF6dYfzKO7bdCHUQOXWwjwug
 Fz4LDY52xBhQKakRRGlj/P9dY1b1NiKqQdNyVjzcmNsn6ZEjm2MZr+wJlvqWFDGJnp
 DMy9d+3Urn5lQ==
Subject: Re: [PATCH 4/4] speakup: Add documentation on changing the speakup
 messages language
To: speakup@linux-speakup.org
References: <20210111223737.697336-1-samuel.thibault@ens-lyon.org>
 <20210111223737.697336-5-samuel.thibault@ens-lyon.org>
From: Didier Spaier <didier@slint.fr>
Message-ID: <3101bb04-38f3-9bc2-453d-3da37a50b7d9@slint.fr>
Date: Tue, 12 Jan 2021 00:34:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20210111223737.697336-5-samuel.thibault@ens-lyon.org>
Content-Type: multipart/mixed; boundary="------------921AD6C1B9EA91A3287DE0B7"
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
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

This is a multi-part message in MIME format.
--------------921AD6C1B9EA91A3287DE0B7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Le 11/01/2021 à 23:37, Samuel Thibault a écrit :
> +Note: the speakupconf must be installed on your system so that settings are saved.
> +Otherwise, you will have an error: your language will be loaded but you will
> +have to run the script again every time Speakup restarts.
> +See section 16.1. for information about speakupconf.

Alternatively the attached scripts allow to save/restore the settings for
each hard synth independently and the settings for espeakup vs speechd-el
independently as well.

Suggested usage: the user runs speakup-save when happy with the settings,
speakup-restore is run at boot.

Didier

--------------921AD6C1B9EA91A3287DE0B7
Content-Type: text/plain; charset=UTF-8;
 name="speakup-restore"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="speakup-restore"

IyEvYmluL3NoCmlmIFsgISAkKGlkIC11KSAtZXEgMCBdOyB0aGVuCglnZXR0ZXh0IC1zICJQ
bGVhc2UgcnVuIHRoaXMgc2NyaXB0IGFzIHJvb3QuIgoJZXhpdApmaQoKaWYgWyAhIC1mIC9z
eXMvYWNjZXNzaWJpbGl0eS9zcGVha3VwL3N5bnRoIF07IHRoZW4KCWdldHRleHQgLXMgICJz
cGVha3VwIGJlaW5nIG5vdCBpbiB1c2UsIHRoZXJlIGlzIG5vIHNldHRpbmcgdG8gcmVzdG9y
ZS4iCglleGl0CmVsaWYgWyAiJCg8L3N5cy9hY2Nlc3NpYmlsaXR5L3NwZWFrdXAvc3ludGgp
IiA9ICJub25lIiBdOyB0aGVuCglnZXR0ZXh0IC1zICJzcGVha3VwIGJlaW5nIG5vdCBpbiB1
c2UsIHRoZXJlIGlzIG5vIHNldHRpbmcgdG8gcmVzdG9yZS4iCglleGl0CmZpCgpTWU5USD0k
KDwvc3lzL2FjY2Vzc2liaWxpdHkvc3BlYWt1cC9zeW50aCkKRVNQRUFLVVA9JChwcyAtQyBl
c3BlYWt1cCAtLW5vaGVhZGVyc3x3YyAtbCkKU1BFRUNIRF9VUD0kKHBzIC1DIHNwZWVjaGQt
dXAgLS1ub2hlYWRlcnN8d2MgLWwpCiMgV2Ugc2F2ZWQgc2V0dGluZ3Mgc2VwYXJhdGVseSBm
b3I6CiMgZXNwZWFrdXAKIyBlYWNoIGhhcmQgc3ludGhlc2l6ZXIKIyBzcGVlY2hkLXVwCiMg
c28gdGhhdCB3ZSByZXN0b3JlIHRoZSByZWxldmFudCBzZXR0aW5ncyBmb3IgdGhlIHN5bnRo
ZXNpemVyIGFuZAojIHNjcmVlbiByZWFkZXIgaW4gdXNlLgoKU0FWRURTWU5USD0iJFNZTlRI
IgppZiBbICIkU1lOVEgiID0gInNvZnQiIF0gJiYgWyAkRVNQRUFLVVAgLW5lIDAgXTsgdGhl
bgoJU0FWRURTWU5USD0iZXNwZWFrdXAiCmZpCmlmIFsgIiRTWU5USCIgPSAic29mdCIgXSAm
JiBbICRTUEVFQ0hEX1VQIC1uZSAwIF07IHRoZW4KCVNBVkVEU1lOVEg9InNwZWVjaGQtdXAi
CmZpCiMgSWYgU1lOVEggaGFzIG5vdCBiZWVuIHNldCB0byBzcGVlY2hkLXVwIG9yIHNwZWFr
dXAgYSBoYXJkIHN5bnRoIGlzCiMgaW4gdXNlLCBsaWtlIGUuZy4gU0FWRURTWU5USD1hcG9s
bG8KaWYgWyAhIC1kIC92YXIvbGliL3NwZWFrdXAvJFNBVkVEU1lOVEggXTsgdGhlbgoJZ2V0
dGV4dCAtcyAiTm8gc3BlYWt1cCBzZXR0aW5ncyBzYXZlZCBmb3IgJFNBVkVEU1lOVEgsIHNv
IG5vdGhpbmcgdG8gcmVzdG9yZS4iCglleGl0CmZpCmNkIC92YXIvbGliL3NwZWFrdXAvJFNB
VkVEU1lOVEgKbHN8d2hpbGUgcmVhZCBpOyBkbwoJaWYgWyAtdyAvc3lzL2FjY2Vzc2liaWxp
dHkvc3BlYWt1cC8kaSBdICYmIFsgLWYgL3N5cy9hY2Nlc3NpYmlsaXR5L3NwZWFrdXAvJGkg
XTsgdGhlbgoJCWNwICRpIC9zeXMvYWNjZXNzaWJpbGl0eS9zcGVha3VwLwoJZmkKZG9uZQpp
ZiBbIC1kIGkxOG4gXSAmJiBbIC1kIC9zeXMvYWNjZXNzaWJpbGl0eS9zcGVha3VwL2kxOG4g
XTsgdGhlbgoJKCBjZCBpMThuCglsc3x3aGlsZSByZWFkIGk7IGRvCgkJaWYgWyAtdyAvc3lz
L2FjY2Vzc2liaWxpdHkvc3BlYWt1cC9pMThuLyRpIF07IHRoZW4KCQkJY3AgJGkgL3N5cy9h
Y2Nlc3NpYmlsaXR5L3NwZWFrdXAvaTE4bi8KCQlmaQoJZG9uZQoJKQpmaQooIGNkICRTWU5U
SApsc3x3aGlsZSByZWFkIGk7IGRvCglpZiBbIC13IC9zeXMvYWNjZXNzaWJpbGl0eS9zcGVh
a3VwLyRTWU5USC8kaSBdOyB0aGVuCgkJCWNwICRpIC9zeXMvYWNjZXNzaWJpbGl0eS9zcGVh
a3VwLyRTWU5USC8KCQlmaQoJZG9uZQoJKQpnZXR0ZXh0IC1zICJzcGVha3VwIHNldHRpbmdz
IGhhdmUgYmVlbiByZXN0b3JlZCBmb3IgJFNBVkVEU1lOVEguIgoJCgo=
--------------921AD6C1B9EA91A3287DE0B7
Content-Type: text/plain; charset=UTF-8;
 name="speakup-save"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="speakup-save"

IyEvYmluL3NoCmlmIFsgISAkKGlkIC11KSAtZXEgMCBdOyB0aGVuCglnZXR0ZXh0IC1zICJQ
bGVhc2UgcnVuIHRoaXMgc2NyaXB0IGFzIHJvb3QuIgoJZXhpdApmaQppZiBbICEgLWYgL3N5
cy9hY2Nlc3NpYmlsaXR5L3NwZWFrdXAvc3ludGggXTsgdGhlbgoJIGdldHRleHQgLXMgInNw
ZWFrdXAgYmVpbmcgbm90IGluIHVzZSwgdGhlcmUgaXMgbm8gc2V0dGluZyB0byBzYXZlLiIK
CWV4aXQKZmkKU1lOVEg9JCg8L3N5cy9hY2Nlc3NpYmlsaXR5L3NwZWFrdXAvc3ludGgpCgpp
ZiBbICIkU1lOVEgiID0gIm5vbmUiIF07IHRoZW4KCWdldHRleHQgLXMgInNwZWFrdXAgYmVp
bmcgbm90IGluIHVzZSwgdGhlcmUgaXMgbm8gc2V0dGluZyB0byBzYXZlLiIKCWV4aXQKZmkK
RVNQRUFLVVA9JChwcyAtQyBlc3BlYWt1cCAtLW5vaGVhZGVyc3x3YyAtbCkKU1BFRUNIRF9V
UD0kKHBzIC1DIHNwZWVjaGQtdXAgLS1ub2hlYWRlcnN8d2MgLWwpCiMgV2Ugc2F2ZSBzZXR0
aW5ncyBzZXBhcmF0ZWx5IGZvcjoKIyBlc3BlYWt1cAojIGVhY2ggaGFyZCBzeW50aGVzaXpl
cgojIHNwZWVjaGQtdXAKIyBzbyB0aGF0IHdlIHJlc3RvcmUgdGhlIHJlbGV2YW50IHNldHRp
bmdzIGZvciB0aGUgc3ludGhlc2l6ZXIgYW5kCiMgY2FzZSBvY2N1cnJpbmcgdGhlIHNjcmVl
biByZWFkZXIgaW4gdXNlLgppZiBbICIkU1lOVEgiID0gInNvZnQiIF0gJiYgWyAkRVNQRUFL
VVAgLW5lIDAgXSAmJiBbICRTUEVFQ0hEX1VQIC1uZSAwIF07IHRoZW4KCWdldHRleHQgLXMg
ImVzcGVha3VwIGFuZCBzcGVlY2hkLXVwIGFyZSBib3RoIHJ1bm5pbmcsIG5vdCBzYXZpbmcg
c2V0dGluZ3MuIgoJZXhpdApmaQppZiBbICIkU1lOVEgiID0gInNvZnQiIF0gJiYgWyAkRVNQ
RUFLVVAgLWVxIDAgXSAmJiBbICRTUEVFQ0hEX1VQIC1lcSAwIF07IHRoZW4KCWdldHRleHQg
LXMgIm5laXRoZXIgZXNwZWFrdXAgbm9yIHNwZWVjaGQtdXAgaXMgcnVubmluZywgbm90IHNh
dmluZyBzZXR0aW5ncy4iCglleGl0CmZpCmlmIFsgIiRTWU5USCIgPSAic29mdCIgXSAmJiBb
ICRFU1BFQUtVUCAtbmUgMCBdOyB0aGVuCglTWU5USD0iZXNwZWFrdXAiCmZpCmlmIFsgIiRT
WU5USCIgPSAic29mdCIgXSAmJiBbICRTUEVFQ0hEX1VQIC1uZSAwIF07IHRoZW4KCVNZTlRI
PSJzcGVlY2hkLXVwIgpmaQojIElmIFNZTlRIIGhhcyBub3QgYmVlbiBzZXQgdG8gc3BlZWNo
ZC11cCBvciBzcGVha3VwIGl0IGlzIHRoZSBoYXJkIHN5bnRoCiMgaW4gdXNlLgpta2RpciAt
cCAvdmFyL2xpYi9zcGVha3VwLyRTWU5USAkKY2QgL3N5cy9hY2Nlc3NpYmlsaXR5L3NwZWFr
dXAKZm9yIGkgaW4gJChmaW5kIC4gLXR5cGUgZHxzZWQgIi9eLiQvZDtzLy4uLy8iKTsgZG8K
CW1rZGlyIC1wIC92YXIvbGliL3NwZWFrdXAvJFNZTlRILyRpCmRvbmUKZm9yIGkgaW4gJChm
aW5kIC4gLXR5cGUgZnxzZWQgInMvLi4vLyJ8Z3JlcCAtdiAtZSBzaWxlbnQgLWUgdmVyc2lv
biAtZSAic3ludGguKiIpOyBkbwoJaWYgWyAtZiAkaSBdICYmIFsgLXcgJGkgXTsgdGhlbgoJ
CWNwICRpIC92YXIvbGliL3NwZWFrdXAvJFNZTlRILyRpCglmaQpkb25lCmdldHRleHQgIkN1
cnJlbnQgc3BlYWt1cCBzZXR0aW5ncyBoYXZlIGJlZW4gc2F2ZWQgaW4gIgplY2hvICIvdmFy
L2xpYi9zcGVha3VwLyRTWU5USC4iCg==
--------------921AD6C1B9EA91A3287DE0B7
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup

--------------921AD6C1B9EA91A3287DE0B7--
