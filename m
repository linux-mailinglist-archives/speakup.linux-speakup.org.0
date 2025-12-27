Return-Path: <speakup+bounces-1474-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 34470CDF4D4
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 08:04:30 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=lKL6UjRY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E2673817FB; Sat, 27 Dec 2025 02:04:29 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 301DE380E03
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 02:04:29 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 341C8380668; Fri, 26 Dec 2025 21:07:45 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 88D0838057C
	for <speakup@linux-speakup.org>; Fri, 26 Dec 2025 21:07:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1766801262; bh=H87hTUu3w0Tq3b8qJxaynXdD4Wdwhrd7ynPJRpfpT4s=;
	h=Date:From:To:Subject:From;
	b=lKL6UjRYH76CwgV/0LR4DrHklxbH70vvDEFtPrz09UVxXyJ3zHnC/nU5pw55h1hRG
	 TIahCfMb0dlGsueLZaOyI0CPO4YkWSZ+NM6t+H4j/LHXnXjg7P2BNJvrj5f5ztvGjd
	 JEKAsWkoGYWzxOBxuFM7Z+JCd7fVQhDRaV5UO/wZVXiSypMtRZDLqafFFM+Jzahzkb
	 uz4p2B8cV7Rq7HgaF7f49ctaZMRGW/18DAjvQcDJj2/98bHNkbihkyqady599aDS12
	 3oCx7NWGgQdtk2UdUC3BOvBsHg8bAsoVGorYHGUyE5UcR4FwI8h5j9Q8MbFhn+PnJJ
	 6gJI+o66HUtUw==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:4f8d:c97b:1a63:6a99:124c:cfcb])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id E5CA73C19
	for <speakup@linux-speakup.org>; Fri, 26 Dec 2025 18:07:41 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 4E230C1E4; Fri, 26 Dec 2025 19:07:41 -0700 (MST)
Date: Fri, 26 Dec 2025 19:07:41 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: who authored speakup_set_locale
Message-ID: <aU8_bb5DiRWFHODE@gregn.net>
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
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi all.

We have an issue opened on the linux-speakup github page about the
license of speakup-tools. Both speakupconf and talkwith are under gpl
v2 or later. The author and license of speakup_set_locale are
unknown. Is the author of speakup_set_locale here, or does someone
here know for sure who wrote that script?

The open issue is at:

<https://github.com/linux-speakup/speakup-tools/issues/1>

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

