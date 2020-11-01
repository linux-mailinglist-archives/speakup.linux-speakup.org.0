Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0DE702A2240
	for <lists+speakup@lfdr.de>; Sun,  1 Nov 2020 23:58:16 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 96D5F380F2A; Sun,  1 Nov 2020 17:58:15 -0500 (EST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20161025 header.b=jTf10xWg;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7E51E380F28;
	Sun,  1 Nov 2020 17:58:12 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 637D8380F18; Sun,  1 Nov 2020 17:58:11 -0500 (EST)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 5922B380F11
 for <speakup@linux-speakup.org>; Sun,  1 Nov 2020 17:58:11 -0500 (EST)
Received: by mail-ej1-x631.google.com with SMTP id k3so16352066ejj.10
 for <speakup@linux-speakup.org>; Sun, 01 Nov 2020 14:58:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Z7HkfF+w4LMqNYnvbmw/8eCMX3LTg8fDS+pFRpabZ1g=;
 b=jTf10xWgf3eMUbzdZA/xSNPU7ZPGTZJ903vMnuNCofzT/D8fmfNaTQEeDkET11fMxy
 /itmKlkIYUh29BU0ilZEo8ovz0m9IX/65rsqxtwtUCD+ydxAZBHr1E6bQ3T/Q58mvuvD
 J+HnNR23UJhW6jfD1yLu4TEeQH1v+eHRcs3d5jwNmQ0rLgzVNe7W+j3R7AzALR2NLWDW
 tfmvlWH9psTeaP5uEsKTgtAnpWJZwpAWhCu+kaKFvmYbeM7zIKF0HQgFsuKuEwbZWSjR
 pYAOnEpoQIuXL5HFb+45u6lp3Edor5i9e3yWZ9ppuExB6liQd2D1eb4dX7yWQinfLDhB
 GvcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Z7HkfF+w4LMqNYnvbmw/8eCMX3LTg8fDS+pFRpabZ1g=;
 b=b+hyEUaldf4Bzbel9exlEKzYTSZpRtPkMy5egH9UPMF6gtViK2QSn3Eyyf/iA8v7jD
 FyB6+AnoCKsIXHsUB8mwIeJAQUAlejgApbwjShAwjjgdLS4FhZF1G+g4pu3v57H1lVeY
 1dst3AL0gf2rVnPu8JHxVho/3BjzCNVET460XJuIpoOZrwlyid6FtqOdyt/yhX/XMpYy
 30TwS2T6WUDs4pFCsVEwz1vJDoj/NkyG95ZTMj4lJL3/WynS0E4pQzVlgrfW/55LdmfI
 heIXEWagTHkesLwq4LndAjPIXoHY7c2n/0fQyGYZ0cKnUMixV2PTWA8vBM4ln80eMIv8
 6mew==
X-Gm-Message-State: AOAM531Vaqg79+O2V9W3R8MXcWCS83BPB/UuwBU/wKq83VxsYwKkHpIN
 t16q2xlqM8Cnozb0MVQ7Cjb+GNtI/6s+ZuZC
X-Google-Smtp-Source: ABdhPJxZ7LvPzxttfs7tyn6FRo4Xgznvf+ugTT98QNj6HO97yshUgpI/Ujy9hY2b/+jTS2JM6uLnmQ==
X-Received: by 2002:a17:906:d20e:: with SMTP id
 w14mr6313285ejz.479.1604271490108; 
 Sun, 01 Nov 2020 14:58:10 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
 by smtp.gmail.com with ESMTPSA id d7sm5774323ejt.50.2020.11.01.14.58.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Nov 2020 14:58:09 -0800 (PST)
Subject: Re: speakup crashes with kernel 5.4.69
To: Didier Spaier <didier@slint.fr>
References: <m3o8l6sge6.wl-covici@ccs.covici.com>
 <20201101205909.zz2ihrr6zmucrfbq@function>
 <5123cc09-8314-7bb4-82dd-5511b53b3703@slint.fr>
 <3ea9c55d-07af-4e23-42b8-de7ae441af41@slint.fr>
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
Message-ID: <eef7b83a-0d84-c700-1ae1-db67eabd8c93@gmail.com>
Date: Mon, 2 Nov 2020 01:58:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <3ea9c55d-07af-4e23-42b8-de7ae441af41@slint.fr>
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
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

CjAyLjExLjIwMjAgMDozNSwgRGlkaWVyIFNwYWllciDQv9C40YjQtdGCOgo+IExlIDAxLzExLzIw
MjAgw6AgMjI6MjgsIERpZGllciBTcGFpZXIgYSDDqWNyaXTCoDoKPj4gYXNrIGFzIFNsaW50IGN1
cnJlbnRseSBpbmNsdWRlcyA1LjQuNjIgYnV0IEkgd2FzIGFib3V0IHRvIHVwZ3JhZGUgdG8gNS41
LjcyCj4gcGxlYXNlIHJlYWQgInRvIDUuNC43MiIKeWVwIG5vdyBpIHNlZS4gc29ycnkuIHNob3Vs
ZCBoYXZlIHJlYWQgd2hvbGUgdG9waWMuCi0tIAoKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTcGVha3VwIG1haWxp
bmcgbGlzdApTcGVha3VwQGxpbnV4LXNwZWFrdXAub3JnCmh0dHA6Ly9saW51eC1zcGVha3VwLm9y
Zy9jZ2ktYmluL21haWxtYW4vbGlzdGluZm8vc3BlYWt1cAo=
