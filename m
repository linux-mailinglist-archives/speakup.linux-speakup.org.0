Return-Path: <speakup+bounces-1415-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 966D5B9C49D
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 23:39:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=srItfUdC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0C174381602; Wed, 24 Sep 2025 17:39:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E02233815D0
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 17:39:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C906D3815D0; Wed, 24 Sep 2025 17:39:39 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D0F943815C8
	for <speakup@linux-speakup.org>; Wed, 24 Sep 2025 17:39:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1758749975; bh=vcjPh0V1rbPLyZ4ZyjSH9OFJL330O1xzpFgcYFFPY74=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=srItfUdCxa+ADqAmoiX2v+/VPsweST4Rg2tDDKmPxPLiTYLR7icr7g6dj+nNpzD94
	 XJmWYiyaQja4cJ1QR5rntf+w/am81tDQnOWJzeX/yOVEFFM40ArGkm40GDoEZpaIor
	 9WuVD4SpPkzm05h+b8lGZiYmvhrpTMvPgnBXSDm5/czHey1xRQ4I5MeCjyVsCN7/AE
	 TIUOC6OKN8o1s9YYhJccMXIKZBPT1OSGSjlJLQzxXWZPjXfbHs1p94wN3CwzDaBXYZ
	 GshBxQJPyRtGINNFjLaQboEufJ3RFGY2IikMtURcFloq/TPJRE9TM0hF6qhQy9u6eh
	 WZCCRYCQCiXMg==
Received: from vbox.gregn.net (unknown [172.58.117.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id BF7592BBF;
	Wed, 24 Sep 2025 14:39:35 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id D550CC257; Wed, 24 Sep 2025 14:39:34 -0700 (MST)
Date: Wed, 24 Sep 2025 14:39:34 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: covici@ccs.covici.com, Jookia <contact@jookia.org>,
	Karen Lewellen <klewellen@shellworld.net>,
	Chime Hart <chime@hubert-humphrey.com>,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aNRlFkl-g3jjF3m7@gregn.net>
References: <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <aMTOpzhGX72PC_2S@gregn.net>
 <aMVgIfSRDN3Uewj3@titan>
 <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
 <aNIv2l1tKiR26V-R@titan>
 <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu>
 <m3h5wsu4py.wl-covici@ccs.covici.com>
 <01897751-ddc5-4bfe-be6f-0b751079597d@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <01897751-ddc5-4bfe-be6f-0b751079597d@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Wed, Sep 24, 2025 at 11:01:39AM -0500, John G. Heim wrote:
> I don't believe there are any hardware synths being manufactured anywhere in
> the world any more.  So that's a problem. The best alternative for getting
> access to boot messages might be a braille display. I have the braille
> display from an old PacMate which is probably 30 years old. It's just the
> braille display, the PacMate itself gave up the ghost many years ago.

There might still be synths on ebay, though who knows what shape
they're in. Getting braille at boot should be as easy as including
brltty in the initramfs. On a debian system that's as easy as editing
/etc/default/brltty, and updating the initramfs. Scrolling the boot
messages on a display should be fun, but better than nothing I suppose.

> 
> I do not know how to enable software speech during boot but I'm pretty sure
> it's possible. In my grml4speakup script, I enable software speech during
> boot by putting a script into a folder GRML designates for that purpose. 
> The developers of this distro, GRML, specified a folder you can put scripts
> in if you want them executed during boot. So I wrote a script that puts a
> script to start speech in that folder. But of course it only works for GRML.

On a debian system, you would need to put alsa-utils, espeakup, and
libespeak-ng1 into the initramfs. As far as I know, there's no size
limit on what the initramfs can be, so in theory it should be
possible.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

