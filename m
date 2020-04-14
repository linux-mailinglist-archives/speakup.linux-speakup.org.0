Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7824D1A7D5B
	for <lists+speakup@lfdr.de>; Tue, 14 Apr 2020 15:24:40 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B11D51C73D4; Tue, 14 Apr 2020 09:24:39 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=O9lxIArb;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C7A9C1C73CA;
	Tue, 14 Apr 2020 09:24:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id ED2EA1C73BB; Tue, 14 Apr 2020 09:24:24 -0400 (EDT)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by befuddled.reisers.ca (Postfix) with ESMTPS id EA2131C5791
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 09:24:22 -0400 (EDT)
Received: by mail-wm1-x329.google.com with SMTP id x25so12970898wmc.0
 for <speakup@linux-speakup.org>; Tue, 14 Apr 2020 06:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language;
 bh=lOYVGrc3fe+iedX8Ud86L02oVbh7jvawq59K78vxa/Q=;
 b=O9lxIArbLZNcopYrpojFCIwXE+H/zyXVWUlgpgiCcbbRMAqcujLLyyGCsSBIFTcwNO
 vpuX/dS0yVjKTphAdpR4cMjS9cYtLt1x4/MnMW4aVAA5CZZatmio1lBHvMAeh44wBeR+
 +xs69GcsPMAyJVtuaJ1RwkhVlrNOcJfRIpAA4PXxVizKk+p2zXCDymTJoWY3BFmIJmDD
 u7+MhFPXlvzZ44bVU/idO56sp8sRFSj5+DAYJBs9PVURiVhgelsmv8+lvpIzFfEfOEky
 PUjDiRx2h5CRTBO8i9w73GdGZGUReNJcSTZw/G7DTQ1WIJJ6zTXNa52vu53xiHwxJA71
 zSzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=lOYVGrc3fe+iedX8Ud86L02oVbh7jvawq59K78vxa/Q=;
 b=Jv5SQqf9kzB85gnX+EcOvfCRuBt8klapOeK6kwFaOSbmXgWIm9BQ2DMBFYBLkQiKZm
 +e5j6aQrTpPScQOOqXIOX50f3X469bnvI47gpA7Iof4V7C6Zkyw+YHORq3rAgvxkIR9H
 2LHIRMLkGBrYLxhUeR2yBIPgdwqrfC14NK+IPpfcdlkiE7OfIxvxjqrCpnEkyRVjBPtu
 M4lMd/aI824l6C/OE3HrPwYszw62DKt5fuKwaw21nP+Aq6NH9dSsxlHl+qtZwVYlezXx
 cOqRugAdQXaadeYgdpySCY60Ue/siR161Hqr/GEDRyCOJymTviu3adxHgIQLTlvuaEbC
 czog==
X-Gm-Message-State: AGi0PubzB/+UVo4n3diWspi3+hojVB0lxpQyQKqNSPISMeVftRZFlaFp
 rKGBcFu2PcALwzJpk7bLF7AWyORWfaY=
X-Google-Smtp-Source: APiQypJ8NPBdMjPNhyww1QncGY3WsE9qbns3WjrosAURGwLCikIT6eQxQMAdNT6HeJzClZelt2iEgQ==
X-Received: by 2002:a1c:3885:: with SMTP id
 f127mr23157425wma.134.1586870655272; 
 Tue, 14 Apr 2020 06:24:15 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id d7sm19109901wrr.77.2020.04.14.06.24.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 06:24:14 -0700 (PDT)
Subject: Re: speakup soon out of staging?
To: Didier Spaier <didier@slint.fr>
References: <0e72318b-5271-b55d-c340-0ea13a9d46b0@slint.fr>
 <ad934fe6-a20b-3aaa-8784-930ac144c727@gmail.com>
 <9a033b9a-8ac8-70df-d7b5-200900c7d5d5@slint.fr>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Message-ID: <529f8af9-b938-ea64-eeb2-d2a9874faa9b@gmail.com>
Date: Tue, 14 Apr 2020 16:24:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <9a033b9a-8ac8-70df-d7b5-200900c7d5d5@slint.fr>
Content-Language: en-US
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
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

b2guIEkgZ2V0IGl0IG5vdy5zb21ldGltZXMgSSBhbSB2ZXJ5YXJjaENlbnRyaWMuCgovLypqdXN0
IGEgRGVmb3JtYXRpb24gcHJvZmVzc2lvbm5lbGxlKi8vLiBzb3JyeSBhYm91dCB0aGF0LgoKMTQu
MDQuMjAyMCAxNTowNCwgRGlkaWVyIFNwYWllciDQv9C40YjQtdGCOgo+IExlIDE0LzA0LzIwMjAg
w6AgMDk6MzksIEFsZXhhbmRlciBFcGFuZXNobmlrb3YgYSDDqWNyaXQgOgo+PiBhcyBmb3IgbHRz
Li4uIGkgZG9uJ3QgdGhpbmsgdGhhdCA1Ljggd2lsbCBiZWNhbWUgYSBsdHMga2VybmVsLiBidXQg
dGhpcwo+PiBpcyBub3Qgc28gaW1wb3J0YW50IGluIG15IG9waW5pb24uCj4gTWF5YmUgbm90IHNv
IGltcG9ydGFudCBmb3IgQXJjaCB0aGF0IHNoaXBzIHRoZSBrZXJuZWwgb2YgdGhlIGRheSBhcyB3
ZWxsCj4gYXMgbGludXgtbHRzLCBidXQgaW1wb3J0YW50IGZvciBTbGFja3dhcmUgYW5kIGRlcml2
YXRpdmVzIGxpa2UgU2xpbnQKPiB0aGF0IGhhdmUgc2hpcHBlZCBvbmx5IGEgdmFuaWxsYSBsdHMg
a2VybmVsIG9uZSBzbyBmYXIuCj4KPiBDaGVlcnMsCj4gRGlkaWVyCgo+IFNpbmNlcmVseSwgQWxl
eGFuZGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClNw
ZWFrdXAgbWFpbGluZyBsaXN0ClNwZWFrdXBAbGludXgtc3BlYWt1cC5vcmcKaHR0cDovL2xpbnV4
LXNwZWFrdXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCg==
