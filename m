Return-Path: <speakup+bounces-1573-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id w0fKI7PS0WliOQcAu9opvQ
	(envelope-from <speakup+bounces-1573-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 05:10:43 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D6D5939D2EC
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 05:10:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=d0V+cBDl;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4629C38238F; Sat, 04 Apr 2026 23:10:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 252E63818F6
	for <lists+speakup@lfdr.de>; Sat, 04 Apr 2026 23:10:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E604138238B; Sat, 04 Apr 2026 23:10:35 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9BCE9381832
	for <speakup@linux-speakup.org>; Sat, 04 Apr 2026 23:10:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1775358629; bh=82mNEvlOQvKyctZ686FbDWvEXFSK0q/Cba9GyzBi1Bk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d0V+cBDlHcaRFuXfKo5j2TIzMYlQVE9HlJMAf2HB/LMNul98c/xWAmATCg5wq512H
	 W6/HQyjh+VFoi20D1fAYgHdpG+WT+HoZqwQt9Ajk8bDRl3dm2oVOxNuwX6xAjLrlZS
	 ebQOQg2kj3Whr6zKepRDgiSN9tyD+aVAlBaZH9/BCeXM0tbRQ5mkI8/W+mQ62zCZSh
	 G7Fnlm3dm0omxhtUDMGVYZAX3Se7W9hiRLVH7Rme2yWxvM9Dbl25LLhQgzHNcJbcOM
	 sOdGqhIW5NW/h/tpMkwwGhn/jBNXNZqH17OThKvmGFMVWZWDsuWWnw+TXN87YFG/xZ
	 DHXh2eYCkC2UQ==
Received: from vbox.gregn.net (unknown [172.56.83.194])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 1E23B553E;
	Sat,  4 Apr 2026 20:10:29 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id CB06BC8D5; Sat,  4 Apr 2026 20:10:27 -0700 (MST)
Date: Sat, 4 Apr 2026 20:10:27 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Rewriting the docs
Message-ID: <adHSoyDi8VElDn6Q@gregn.net>
References: <f73d1414-0f07-471e-a160-4b40eb0346e6@math.wisc.edu>
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
In-Reply-To: <f73d1414-0f07-471e-a160-4b40eb0346e6@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.4.3 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gregn.net,none];
	R_DKIM_ALLOW(-0.20)[gregn.net:s=default];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gregn.net:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1573-lists,speakup=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[greg@gregn.net,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Queue-Id: D6D5939D2EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I would suggest taking the neutral position, and explaining that
either can be used. The caveats to both are that all the layers that
are being put on top of alsa these days don't play nice with espeakup,
and that speechd-up does not have the same level of functionality as
espeakup does when it comes to setting speech parameters.

Greg


On Sat, Apr 04, 2026 at 12:54:34PM -0500, John G. Heim wrote:
> Now that I'm pretty much done with my hardware synth project, I thought I'd
> get started rewriting the Speakup documentation. I decided to start with the
> FAQ, which if you believe the date on the FAQ itself, is 24 years old.
> 
> The FAQ doesn't even mention software speech so I need to add that. But one
> thing I am unclear on is the relationship between espeakup and speechd-up. I
> understand the technical differences but what I am unclear on is whether
> speechd-up has made espeakup obsolete. Obviously, you wouldn't use both but
> is one preferred over the other? Maybe the FAQ should take a neutral
> position and just explain that either can be used.
> 
> PS: A note on the hardware synth project -- I am working on getting my
> package into Debian so it would then automatically be included in Raspberry
> Pi OS. Once I get that done, I'll get going on getting the kernel to
> recognize hardware speech synths, including my hardware synth emulator.
> 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

