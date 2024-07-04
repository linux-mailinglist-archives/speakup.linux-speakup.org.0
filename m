Return-Path: <speakup+bounces-1144-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6DC4592702F
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 09:03:15 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=g+3rO1tp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6D48DC81C82; Thu, 04 Jul 2024 03:03:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4CD66C80A5A
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 03:03:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4071AC80A68; Thu, 04 Jul 2024 03:03:06 -0400 (EDT)
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B7790C80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 03:03:03 -0400 (EDT)
X-Envelope-To: samuel.thibault@aquilenet.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1720076551;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yDnQ07phxHetFSawbNwnnNj8ZMj47Dc9N0Cmi/Qr0Uc=;
	b=g+3rO1tpTNzz985n0AOi784SY0busz32Kqihl4IIPLxYks9u+yMeuiZFkb3yNBLDeRdUKG
	W4QU+Vgcp61R6r6jTIP3eDXEhXi+tBWvDyUb9Ut1TMi9n6TxFT1RCKMq7HeER2JnIMqs8x
	Up+D7hlxylegyaHx+JeKHMtREBIzGlrCvjaYGd/bzMm69p6npK1oKX7fnX4aViSEoyHCUi
	QJCzolW3/7nAPYb45ypGsUYHoqo1wlyDqHuFJb2Uq5fSbpaVREMvR/OtulquBkUPfEP84n
	OSM2lb0co15rKRg90019Zfg2gS3nlr8lgiCgXTVmnhyhRxFSFMXkhf/HTrxI7Q==
X-Envelope-To: speakup@linux-speakup.org
Date: Thu, 4 Jul 2024 17:02:14 +1000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: speakup@linux-speakup.org
Subject: Re: Plans for CONFIG_VT death?
Message-ID: <ZoZI9lPJV7OfvqOT@titan>
References: <ZoYSjTol94J676j_@titan>
 <20240704065714.gqe2ieny5jf5g33j@begin>
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
In-Reply-To: <20240704065714.gqe2ieny5jf5g33j@begin>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Thu, Jul 04, 2024 at 08:57:14AM +0200, Samuel Thibault wrote:
> Hello,
> 
> Jookia, le jeu. 04 juil. 2024 13:10:05 +1000, a ecrit:
> > More and more sighted developers want to remove CONFIG_VT
> 
> Where is that raised?

It's not raised, but it seems to be a goal that's been around for a while.
Every year a reddit post comes out by someone testing CONFIG_VT=n and
showing how much better it's getting, without mentioning it breaks
speakup. The VT subsystem is also apparently not actively developed.

> > without adding accessibility support.
> 
> Was that explicitly expressed?

No, but that's what will happen at this point.

Maybe this is an overreaction, but it feels a lot like the writing is on
the wall.

> 
> Samuel

Jookia.

