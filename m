Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 42BEF2A224B
	for <lists+speakup@lfdr.de>; Mon,  2 Nov 2020 00:13:39 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D1985380F76; Sun,  1 Nov 2020 18:13:38 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=Xq5bJz7V;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AD7D6380F3F;
	Sun,  1 Nov 2020 18:13:38 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 27D4B380F19; Sun,  1 Nov 2020 18:13:37 -0500 (EST)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 03FC0380F13
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 18:13:37 -0500 (EST)
Received: by mail-ej1-x633.google.com with SMTP id dk16so15834431ejb.12
 for <speakup@linux-speakup.org>; Sun, 01 Nov 2020 15:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=v6acG2O/U1ZHBw2zyJY1Pdu6vDATJD0RLWSMzFwQ1hc=;
 b=Xq5bJz7Vf8SrLOs2pRwO2/WQcUWy07gyWr0DccctMjzZZc+oQpVb8wDpBq/u8vysPT
 Lb83kJtbyTXqML6UM5TgzlENpRpNoCRrU3GK5mXlKD21hYj6GmHGJXSGH2IPEJX8pxSx
 Gd5GNmsx3U1bAlrT8/kyvahcuxsdDdvPRfkFp65tyFqv7LaZaQoAWT2mlysA0s+RqlrB
 GGg6IRmbHD689r8jso27gQFCnn93t6xtVlO5zsbj/PjVPdTTqXETUX9B+u5MjoOBZRY+
 AlNeHTaKqEuVhJ6OiqrGknm3Mq2tYG/1X/czq/X4p4X9VOoCR6aQCF4QJ+FiqkrEXMIN
 UViw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=v6acG2O/U1ZHBw2zyJY1Pdu6vDATJD0RLWSMzFwQ1hc=;
 b=lPQERTUHzXFaFyiYmN5VjG7FfOpR3kRthzpIPsM8AWCoJpjhqu13W4Gs/zv6nsQe7Q
 CxiyVfRYTdSOIV67pk/QnxHZpnn3YW7gsMOJjOPvZChTupG1UoFuVwnovX+1ETFVZyrg
 GFxEoVrKkyY3AlnxJ3jNG/UNAilQokJOtXZihJDqTq8m+h45oBahUJlYeZLfCSxxkhnk
 wkUovbz58Ut3y1t39N7F4F/CHwB9ccg/u8Ru4NoBc7YBhabB72Xs22vvjcDrCpMrEdFm
 /zshuD70amDJNBmHgclhK2J5DyVa97Mx7CthwOZf/vcuqwx8yP4SgeFDgifr5DmthHUg
 O6lQ==
X-Gm-Message-State: AOAM533lUJXciuOENYLAX2J4QynZM+k2cl726G3V/nVTkrFI0OnLqlVh
 Cvm/aED/dkm3f4jstEy7c9fUr+WAZlAP70dq
X-Google-Smtp-Source: ABdhPJzVaUviO2PQyIRVdvQQPui6Rx4QN70uz37oJwy3YwkWpijMYdJWC1eldf/3Mmmf7k+/WV+NBA==
X-Received: by 2002:a17:906:888b:: with SMTP id
 ak11mr7472739ejc.278.1604272415752; 
 Sun, 01 Nov 2020 15:13:35 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id s12sm9205545edu.28.2020.11.01.15.13.35
 for <speakup@linux-speakup.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Nov 2020 15:13:35 -0800 (PST)
Subject: Re: Another speakup cut and paste bug and park
To: speakup@linux-speakup.org
References: <alpine.DEB.2.23.453.2010312053480.568552@befuddled.reisers.ca>
 <20201101213040.olsushjjokgnbyl5@function>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Message-ID: <f42f93dd-d83e-a0af-ebea-0bc2e323c787@gmail.com>
Date: Mon, 2 Nov 2020 02:13:34 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201101213040.olsushjjokgnbyl5@function>
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

YXMgZmFyIGFzIGkga25vdyBwYXJrIGN1cnNvciBtZWFucyB0aGF0IHNwZWFrdXAncyBjdXJzb3LC
oCB3aWxsIHN0YXkgb24gCnRoZSBsaW5lCgphbmQgY29sdW1uIG5vIG1hdHRlciB3aGF0LiBpdCBj
YW4ndCBiZSBtb3ZlZCBieSBoaWdobGlnaHRpbmcgb3Igc3lzdGVtIApjdXJzb3IuCgowMi4xMS4y
MDIwIDA6MzAsIFNhbXVlbCBUaGliYXVsdCDQv9C40YjQtdGCOgo+IEFjdHVhbGx5LCBJIGNhbid0
IGZpbmQgYW55IGRvY3VtZW50YXRpb24gYWJvdXQgdGhlIHBhcmtpbmcgZmVhdHVyZSBpbgo+IHRo
ZSBzcGtndWlkZS4gV2hhdCBpcyBpdCBzdXBwb3NlZCB0byBkbz8KPgo+IFNhbXVlbAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gU3BlYWt1cCBtYWls
aW5nIGxpc3QKPiBTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCj4gaHR0cDovL2xpbnV4LXNwZWFr
dXAub3JnL2NnaS1iaW4vbWFpbG1hbi9saXN0aW5mby9zcGVha3VwCgotLSAKU2luY2VyZWx5LCBB
bGV4YW5kZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpTcGVha3VwIG1haWxpbmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9s
aW51eC1zcGVha3VwLm9yZy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
