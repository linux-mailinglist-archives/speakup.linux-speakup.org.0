Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0C91A7A53
	for <lists+speakup@lfdr.de>; Tue, 14 Apr 2020 14:07:12 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B67F81C73D2; Tue, 14 Apr 2020 08:07:11 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=qda3J2xV;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 70B531C73D4;
	Tue, 14 Apr 2020 08:06:57 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 3000B1C5800; Tue, 14 Apr 2020 08:06:56 -0400 (EDT)
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 501201C578F
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 08:06:54 -0400 (EDT)
Received: by mail-io1-xd43.google.com with SMTP id i3so12883508ioo.13
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 05:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=Bra/qlvSwMGq1Yu+f+2U/M2LGdKWO68DJWC9JSbWyCU=;
 b=qda3J2xVd1e7Vhm08bub8Wp6z/wtrMt+sKMSMWwxOQfxgLOD6guKwBXMEXLSKJoxWZ
 911w3acBl1Zq85wA4zSmZ5A139YmXRJG7oU/4sR9VYAA4XGXhO4MVwrwtp/tpqmE3L3p
 KEELP8CHy5ZvgxVafGR/dfsC89pd2XvsWOsCsx9qRVhz8JXMvsO43LOMTZ6GbZ18ipQq
 rCOFsY8t+uoJ6ltWG8ef3dq2DVdvz2+F2xoYdHl5MVfbkIHifEa/nkrYOVeIYKJPU6eL
 /xUnQ4tqVzXaQlZF9V1xzHoLxQ1d011sZpsJpT60vm1tdkF3umiL6il0tycNldAYqut7
 ssiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=Bra/qlvSwMGq1Yu+f+2U/M2LGdKWO68DJWC9JSbWyCU=;
 b=HlhZ/C53EegG1S3uAZ7erSYfZgCLJg/udeKGv1Z2pXGj+SIjP04LXSTyHQv6JEGd8d
 o5afSCKdCMTW9bwe1jDGhgBbICdiWskAjTuPxM2kU4Mm4JFRQ9oeayeKkTood4fYaqkP
 lcVgIM5o8JkqY8eTwK2NL0ESN75FzPLO57OkCW1fzPLMOE1nnDIn0PFxw4+0Xri1v9lL
 YJdsxLcG4G64gGS/GG2ggeFY3Q+IXqB89Yhmj+MvnnT8N5/oJlsxy61nQcPniY+jsFZf
 czxfb23PV+Wi5PqSSQ8bxL1YsRBLJ5lJjlFenDZyrbYhvyQZVrMdhW04wERQuGOFqFU0
 S0Xw==
X-Gm-Message-State: AGi0PuYNUX2/pVqdLvtuK4tmHg5x3NbRlCFQ1cA5M8qCRu9aonfyx94P
 a8nfVEU1qoVbDIYaSUgoG3uikQUqrMy+3QcQHgWamQ==
X-Google-Smtp-Source: APiQypJ1UDwQBtzZJ8k9KXIRMHJ40eFS9+5VzXkUPY3RagwjXvvWvoH/LGDWlQ5H9GQ6PcQj+LNJI4KrqDhrZrQwxZw=
X-Received: by 2002:a5e:c008:: with SMTP id u8mr4795425iol.4.1586866009236;
 Tue, 14 Apr 2020 05:06:49 -0700 (PDT)
MIME-Version: 1.0
References: <0e72318b-5271-b55d-c340-0ea13a9d46b0@slint.fr>
 <ad934fe6-a20b-3aaa-8784-930ac144c727@gmail.com>
 <9a033b9a-8ac8-70df-d7b5-200900c7d5d5@slint.fr>
In-Reply-To: <9a033b9a-8ac8-70df-d7b5-200900c7d5d5@slint.fr>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Tue, 14 Apr 2020 13:06:38 +0100
Message-ID: <CAOtcWM1PkPtDY_4WAkwGMwSGt-hk-Uek5YawaRrU2iJN7HvZiw@mail.gmail.com>
Subject: Re: speakup soon out of staging?
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
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

V293IHRoaXMgaXMgZ3JlYXQgbmV3cyEgVGhhbmtzIGZvciBzaGFyaW5nIDopCgpPbiBUdWUsIEFw
ciAxNCwgMjAyMCBhdCAxOjA0IFBNIERpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj4gd3Jv
dGU6Cj4KPiBMZSAxNC8wNC8yMDIwIMOgIDA5OjM5LCBBbGV4YW5kZXIgRXBhbmVzaG5pa292IGEg
w6ljcml0IDoKPiA+IGFzIGZvciBsdHMuLi4gaSBkb24ndCB0aGluayB0aGF0IDUuOCB3aWxsIGJl
Y2FtZSBhIGx0cyBrZXJuZWwuIGJ1dCB0aGlzCj4gPiBpcyBub3Qgc28gaW1wb3J0YW50IGluIG15
IG9waW5pb24uCj4KPiBNYXliZSBub3Qgc28gaW1wb3J0YW50IGZvciBBcmNoIHRoYXQgc2hpcHMg
dGhlIGtlcm5lbCBvZiB0aGUgZGF5IGFzIHdlbGwKPiBhcyBsaW51eC1sdHMsIGJ1dCBpbXBvcnRh
bnQgZm9yIFNsYWNrd2FyZSBhbmQgZGVyaXZhdGl2ZXMgbGlrZSBTbGludAo+IHRoYXQgaGF2ZSBz
aGlwcGVkIG9ubHkgYSB2YW5pbGxhIGx0cyBrZXJuZWwgb25lIHNvIGZhci4KPgo+IENoZWVycywK
PiBEaWRpZXIKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IFNwZWFrdXAgbWFpbGluZyBsaXN0Cj4gU3BlYWt1cEBsaW51eC1zcGVha3VwLm9yZwo+IGh0
dHA6Ly9saW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1h
aWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3Vw
Lm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
