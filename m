Return-Path: <speakup+bounces-1272-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 642F5AAAF57
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 05:15:06 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=joEHXa3J;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C915838298E; Mon, 05 May 2025 23:15:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A96ED38216D
	for <lists+speakup@lfdr.de>; Mon, 05 May 2025 23:15:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CB7CC38291B; Mon, 05 May 2025 23:14:58 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A383438216D
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 23:14:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1746501298; bh=UQpmIV2fdLyQbk9UW6mSEtYQSc/yI7MzwS662ElAJgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=joEHXa3JHS28zeNcHhvFgdmKO35y9oSc8+JlI/EXSKxlrdXjLn38DPIDCpqtBtCMH
	 h67VazHWmMwbdk3+Zcps4egRncrXJJkEQG/ZXExtUjkGpZyC1zyFu41sbUCP7LjLtF
	 rISqWDAjtTe1ycMTVyVvi5o/r8OmefCi79+4lQ84mxP+5We5Ir6bPJ0wq6PQob0u2J
	 YKqPTraIukI4eBFLPuZaxu2a5GgqTrJRggj/vQ9T6fJWiHGsMqYSbC5QoNgVmx0Wql
	 hXjdvKA6M+3dAbcDKCBHfFqQRQRdGWKy4GSxL0K/vCMoGukuwWdj4ZW2fQB0+VUSGX
	 +4DIvKREZDorg==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:8ea2:51b0:90b:77b7:3fb7:418f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id DCD43201C;
	Mon,  5 May 2025 20:14:57 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 47328C0A0; Mon,  5 May 2025 20:14:57 -0700 (MST)
Date: Mon, 5 May 2025 20:14:57 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Load speakup module as kernel parameter?
Message-ID: <aBl-sbHNyN6NRrrs@gregn.net>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin>
 <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
 <aBk1N295aRxq7LAP@begin>
 <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
 <aBlwpQWdLhedVVNx@gregn.net>
 <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu>
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
In-Reply-To: <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Mon, May 05, 2025 at 10:04:51PM -0500, John G. Heim wrote:
> > Well, I didn't try that until just now. It didn't work though. So the
> > speakup drivers have to be compiled into the kernel for this to work?
> > Just having them as loadable modules is not enough? If so, that is my
> > problem.

If you want to start speakup by passing parameters to the kernel, the
speakup modules you want to load have to be compiled into the kernel,
unless grml does something nifty I don't know about. If the speakup
modules are just modules, then the earliest stage to start speakup is
inside the initramfs. That's still not as early as the kernel
decompresses and loads, but it should still be enough for most
purposes.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

