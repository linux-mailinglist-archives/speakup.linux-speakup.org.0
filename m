Return-Path: <speakup+bounces-1516-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 21E0AD39B9B
	for <lists+speakup@lfdr.de>; Mon, 19 Jan 2026 01:14:04 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=GPaFEOqO;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 368F0381933; Sun, 18 Jan 2026 19:08:34 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 16D4E381805
	for <lists+speakup@lfdr.de>; Sun, 18 Jan 2026 19:08:34 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3FD78381805; Sun, 18 Jan 2026 19:08:28 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2D5A2381804
	for <speakup@linux-speakup.org>; Sun, 18 Jan 2026 19:08:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1768781303; bh=RxfJ/pmVDhN+ikjFH+SwsT0u464LQCZ2QaRk0fedWxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GPaFEOqOtEhHl1j9o5UXYWbINrdYuQkJQBCJE8GPHi5li6TTQLXAvyonTG8TVD8fs
	 q4a2raTAd/u0zzIvQoKNUEKgVseBsjGtPQBZC2dhfbdqjWWljGhI2z9vt9jmeL1xl4
	 CkhLMk5WRdFWqoc9iitivRJB3xCJSb5iSfkOK6NWlLq6Y3qIjMoak2IccbOFG8FYrK
	 ZeU0GKABHAzTnx4BxBvpBuv9ginIydBLBWQsBAZdVEKUWlyuuNwG87LeKm6bp+JmMl
	 NP549FdH+HFGQVCD+oeJ7AYCtaIHqxHvgfpkSI9YMoGfXZdox14mbpc4DrMFDHsE+e
	 0UXBGe5TS7cCA==
Received: from vbox.gregn.net (unknown [172.56.85.50])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id BB58A182B;
	Sun, 18 Jan 2026 16:08:23 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 4E184C160; Sun, 18 Jan 2026 17:08:21 -0700 (MST)
Date: Sun, 18 Jan 2026 17:08:21 -0700
From: Gregory Nowak <greg@gregn.net>
To: Janina Sajka <janina@a11y.nyc>
Cc: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
Message-ID: <aW119bMSRqWETAa7@gregn.net>
References: <aWpRKvcLNxlSLfbU@A11y.NYC>
 <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
 <aWrM5ulF9rgeEMRW@gregn.net>
 <470c3532-a524-5cdf-e351-38f5e8bd62e2@reisers.ca>
 <aWxHZD6_uq52kCtm@gregn.net>
 <aWzVWpWgwaSt7qH0@A11y.NYC>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aWzVWpWgwaSt7qH0@A11y.NYC>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.4.3 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sun, Jan 18, 2026 at 08:26:52AM -0500, Janina Sajka wrote:
> Thanks for the thoughts Gregg. Question: How do you control CPU
> frequency scaling? It sounds like you can do so realtime? Is that
> correct? Any pointer would be appreciated. I'm willing to give that a
> go.

Like I said, I use zenstates.py to set a single frequency for all
cores, which turns off frequency scaling:

<https://github.com/r4m0n/ZenStates-Linux/blob/master/zenstates.py>

This is described here:

<https://www.phoronix.com/news/ZenStates-Linux>

Yes, this is done in realtime. I did a quick search, but can't find an
equivalent utility for Intel. I don't even know if modern Intel chips
support setting frequencies from outside the UEFI.

>  Also, I do have a directory /etc/speakup, but the espeakup file in
>  there only specifies the voice, not an alsa card number directive. The
>  latter would be golden.

Like I said, this is done by setting the ALSA_CARD environment
variable before starting espeakup. The /etc/speakup directory is used
by the speakupconf utility. You would have to configure this in the
systemd service which starts espeakup. Since I don't use arch, or
systemd, I can't help there.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

