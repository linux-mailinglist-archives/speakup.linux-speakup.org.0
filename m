Return-Path: <speakup+bounces-818-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1C5C26126E7
	for <lists+speakup@lfdr.de>; Sun, 30 Oct 2022 03:39:31 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=liKI6vDu;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2198E384057; Sat, 29 Oct 2022 22:39:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 008E8383FF4
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 22:39:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B967E383FFB; Sat, 29 Oct 2022 22:39:20 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F330E383FEE
	for <speakup@linux-speakup.org>; Sat, 29 Oct 2022 22:39:19 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.56.80.138])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 5AA994DF;
	Sat, 29 Oct 2022 19:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1667097528; bh=WOJ7UmpHNCMroj/Uf/G436N2LcYNhmJvzmE1GiN8pNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=liKI6vDuuqXNHZhrbV/0MWz7stSDv6wTKXBDTTTZmzoNeqsexuobhTjwino6E+0iF
	 pqwJhq7h8c58MR6uDWD1k/2VpwbGRpjLCK45hg7o4WeAdW1wJKwbj40VCOa8dtNNjW
	 hYuowcCbSsL7sX76pffKIOS8e8QYPjkHjkB9RYMrr7R/QVT6mVntO4XRci9CFwT+Ct
	 gn1+/isjZPzKt7VnWzFHiKadnTqpaD/xn1dncS+V7tIEkBZzYHC/y6JSkty2OKo1M3
	 W4bmyMZevCNnOQo2tpq13LEprEcf478MpTWXqmBqJhPgDXgbTe1fHbsb7Ka0QWEh1x
	 EId/XFhKTf1IA==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 4B6A6C1CB; Sat, 29 Oct 2022 19:38:47 -0700 (MST)
Date: Sat, 29 Oct 2022 19:38:47 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: Chime Hart <chime@hubert-humphrey.com>, speakup@linux-speakup.org,
	Didier Spaier <didier@slint.fr>
Subject: Re: Installing Voxin
Message-ID: <Y13jtw4aw29Oy7p4@gregn.net>
References: <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM>
 <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
 <090701d8eaef$9a45f930$87ffa8c0@Win7VM>
 <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr>
 <096901d8eb12$060be090$87ffa8c0@Win7VM>
 <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM>
 <Y1xm3HAleBaLGGnk@gregn.net>
 <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
 <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com>
 <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.6 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sat, Oct 29, 2022 at 11:11:34AM -0500, K0LNY_Glenn wrote:
> Good morning All,
> At least it still is here.
> So I'm wondering, will speakup use Voxin?
> Seems like there is a way to launch it with a software synth.

It should. Install speechd-up, and that will interface speakup to
speech-dispatcher. That will in turn use whatever speech-dispatcher is
configured to use.

> Also, I don't recall how to launch speakup, it was working before I tried 
> Fenrir.

apt install espeakup

That will use espeak directly, without requiring speech-dispatcher.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

