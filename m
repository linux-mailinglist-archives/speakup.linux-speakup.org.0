Return-Path: <speakup+bounces-1499-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 47700CFBA7C
	for <lists+speakup@lfdr.de>; Wed, 07 Jan 2026 03:07:05 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=pq+StFr/;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 510CD381918; Tue, 06 Jan 2026 21:07:03 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2F34238184D
	for <lists+speakup@lfdr.de>; Tue, 06 Jan 2026 21:07:03 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5B75838184D; Tue, 06 Jan 2026 21:06:57 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D28D2380C8D
	for <speakup@linux-speakup.org>; Tue, 06 Jan 2026 21:06:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1767751613; bh=cfb32uLAyvzvSFc3m3+2IHCoYszo49AP3q9/ffVqxfI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pq+StFr/PKI41MANj9K+vyRyuRb9jJ3FHGw90QVol1Nbyrj6sQSNVT05j4XIfNr/t
	 TGQ0f+pT4qEPGWXpSSLU3lpSG0qgG/92bxPAqnjBYvqm4ZexPz8P79Kcu2MLtcSpnG
	 5LrEZ5dwnk9JROs+unayI8i4xCNagQO30hUfGHjc45b4uJeygOCWWghPQQoQcBUorf
	 yKD+w1pNPQIVAIaOmfOilhVVDaK2TDqedXgSBFmAKiz4q9vAeqMkmUgt6NaRztPFG4
	 +vIzwjLJKEowWkt5p/NFquK/mw5PUd8QD21mgF/P0SM4aX3Go0DT2IDnSm+6nWFCUI
	 mJorH5b9A2F4Q==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:4f8d:c97b:420b:ed7a:309b:ebb])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 9A5CB2E3A;
	Tue,  6 Jan 2026 18:06:53 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id DC25BC65A; Tue,  6 Jan 2026 19:06:52 -0700 (MST)
Date: Tue, 6 Jan 2026 19:06:52 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Building a hardware speech synth with a Raspberry Pi
Message-ID: <aV2_vLRXEqOHZp7M@gregn.net>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <aVCr5A08QwOE2fi7@gregn.net>
 <3aa08a4a-d309-4472-be93-61118eea32f6@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3aa08a4a-d309-4472-be93-61118eea32f6@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Tue, Jan 06, 2026 at 11:47:56AM -0600, John G. Heim wrote:
> Thanks. I think that cinches it, I'm going to emulate a DoubleTalkLiteTalk. 
> Those 2 synths use the same Speakup drivers, right?

No, the doubletalk pc uses speakup_dtlk, and the doubletalk lt uses
speakup_ltlk. Beyond the interface difference (I.E. ISA and serial),
both synthesizers use the same command set according to the manual.

> There does seem to be a heckuva lot of extraneous characters in the data I'm
> getting from the host system. I haven't figure that out yet. Maybe there is
> something wrong with the way I'm configureing the USB port on the RPI side.

No, like Brian pointed out, both versions of the doubletalk support
indexing, and the speakup drivers implement that support. Also, I've
noticed that if the pitch on my doubletalk pc/lt synths gets out of
wack, it eventually corrects back to what it should be. So, speakup is
almost certainly sending pitch/rate/whatever else once in a while
along with the text to output.

Instead of trying to decode what speakup sends to the synthesizer, I
think it might be easier to get the latest kernel source, and trace
how the driver communicates with the synthesizer. Start with
speakup_ltlk.c, and trace the other functions in the rest of the code
as they are called in that driver. Then again, maybe both methods
would take the same amount of effort.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

