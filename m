Return-Path: <speakup+bounces-1352-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 672E8B55DCA
	for <lists+speakup@lfdr.de>; Sat, 13 Sep 2025 03:54:00 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=PgeNS6SW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 65631382C96; Fri, 12 Sep 2025 21:53:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 44200382C85
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 21:53:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0E006382C7B; Fri, 12 Sep 2025 21:53:38 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 818A0382C64
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 21:53:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1757728416; bh=CyOmF6RVhFZZ4qtw8NhMLOsK8uyToTIA3qXMoHBSRfo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PgeNS6SWXMrkDKq+TPbE4GUidmDo985+lMBruovqvK/0oW+Tci+ajN2PJFd751R9p
	 qPCu0Wo77IzhN7Fuu0YoQLJatlc87OjJXIn+BWAJy1JXcUsogZEeBNk0kxWrvGm96r
	 sr4+Jc4MjF5RNJjoWme/466dIZUfS3anXBxkz+lgyDurh93P7E7/UGsWgQAkCr7Xj3
	 fQZ1+u2trl6WBFjEA6fzj1GpbGqnmBab2UuKQl2AQD3ggef7HxwLJ052zYslXGw+H1
	 LLUr42SAWx27IJNX/C/fH8sbjgaSYpo8CwR160NR6jocSrsiel84EebrzkA6GJWZP1
	 F6f/1gZAcg6VA==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d83:ca53:f4a1:6760:4d83:21e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 28FE315C5;
	Fri, 12 Sep 2025 18:53:36 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 0359DC165; Fri, 12 Sep 2025 18:53:43 -0700 (MST)
Date: Fri, 12 Sep 2025 18:53:43 -0700
From: Gregory Nowak <greg@gregn.net>
To: Jookia <contact@jookia.org>
Cc: Karen Lewellen <klewellen@shellworld.net>,
	Chime Hart <chime@hubert-humphrey.com>,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMTOpzhGX72PC_2S@gregn.net>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
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
In-Reply-To: <aMOwSwrEWTBtFn60@titan>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
> I know this is the speakup list and I'm talking to an extremely niche
> community here, but I'm genuinely interested to know: Why do you use
> computers this way instead of like Windows or macOS? They can do much
> more useful tasks.

They're both proprietary operating systems. Windows essentially
hijacks the PC these days, and dictates to the user how they should
use it (E.G. requiring the user to register an account with the
developer to set it up, dictating when and what updates the user
wishes to install, and so on). MacOS is tied to hardware from one company, and only works on
that company's hardware by design.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

