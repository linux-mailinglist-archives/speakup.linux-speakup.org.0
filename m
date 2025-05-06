Return-Path: <speakup+bounces-1270-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 778ABAAACE8
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 04:25:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=nYXs0Asv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 07BB6382989; Mon, 05 May 2025 22:25:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DC32F3825E3
	for <lists+speakup@lfdr.de>; Mon, 05 May 2025 22:25:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 063AE38291B; Mon, 05 May 2025 22:25:39 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C6F46382121
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 22:25:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1746498308; bh=/acLneByxOKCawZksbi+40WoNS9hhpcOFP0bNxTequ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nYXs0Asv4AO8uLdzq60KsUdXgs+XXJPvehx8Ihqz5s17Xp46G5FuHctGEw1I6G/GV
	 6Ut0QYp0poNOgNNHBqmv/maBlFuMMXA/kWMUe7+1MegoYhPwqZlL13xwBixDdvrDg0
	 PVWiu370EslROuajPOSq+PsBlnhpg/dGGmKMvCKotJuR5z2amsST72m+6JcExybjxE
	 a2g6SGazHQgJtk1uyxYbq+eBYGafGNnRty8gi/TYmSW/JLoXl8apFBJhPpPpyjE3xp
	 tThnD/OIWo+wYW/rB3I+loT9quhkQvnB+tHK7ybD0CQQtLsNx20y1n0tWtwHPIVZiZ
	 5eq4FKVQP1pgQ==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:8ea2:51b0:90b:77b7:3fb7:418f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 023E780D;
	Mon,  5 May 2025 19:25:08 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 50E2EC717; Mon,  5 May 2025 19:25:07 -0700 (MST)
Date: Mon, 5 May 2025 19:25:07 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Load speakup module as kernel parameter?
Message-ID: <aBlzA3NbSgzunMPQ@gregn.net>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin>
 <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
 <aBk1N295aRxq7LAP@begin>
 <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
 <aBlwpQWdLhedVVNx@gregn.net>
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
In-Reply-To: <aBlwpQWdLhedVVNx@gregn.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Mon, May 05, 2025 at 07:15:01PM -0700, Gregory Nowak wrote:
> I didn't see you saying in this thread what you're trying to pass to
> the kernel. Something like:
> 
> speakup.synth=ltlk
> 
> should work. Both the speakup, and speakup_ltlk modules need to be
> compiled into the kernel to load it like that. Otherwise, load the
> modules you want from /etc/initramfs-tools/modules.

This will have speakup_ltlk using /dev/ttyS0. If that's not what you
want, then add:

speakup_ltlk.dev=device

Where device is ttyS1, ttyUSB0, ETC.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

