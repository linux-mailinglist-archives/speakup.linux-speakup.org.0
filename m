Return-Path: <speakup+bounces-1145-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B4EDE927046
	for <lists+speakup@lfdr.de>; Thu,  4 Jul 2024 09:09:35 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=oUDACG6b;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 39682C81C70; Thu, 04 Jul 2024 03:09:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1B0B6C80A68
	for <lists+speakup@lfdr.de>; Thu, 04 Jul 2024 03:09:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24AF3C8104E; Thu, 04 Jul 2024 03:09:26 -0400 (EDT)
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EA39CC80A5A
	for <speakup@linux-speakup.org>; Thu, 04 Jul 2024 03:09:25 -0400 (EDT)
X-Envelope-To: samuel.thibault@aquilenet.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1720076934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bcnnKlPvMsQrOkB9OzZgn27ABSBK2Ze0SrSngiTLlRM=;
	b=oUDACG6b5KotT0VfXs8fju+8+/Og4C9zcd5LolS7i9dEjfuQtrC5ysPU7sh51jL32P4Mmo
	9zpDQZdkXuxOUVCrB/oHiYucnpozB3hUHZrx0RFZgxkaUOYdcpIPYUg1OdNnhs0pqXExvT
	1X7KB/ULjTWHLBReaNyNDpBwcTLmWDkojl0xj4TMjg4SWdg3oVx7qUjtCTP3vAf9xGptgc
	uyHMFWQ2dp2JyqdW+1WdWaPECX9Xx+BlUgbnqORPVS5bdvEvCqcjtrNxEwVTZ9UN+toNXh
	LTmOYRRV/sHtRw3cPglilpXP+BjQVqw2NJGg8XIoDOaRUKsZaKL13bSbuJJpEw==
X-Envelope-To: speakup@linux-speakup.org
Date: Thu, 4 Jul 2024 17:08:35 +1000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: speakup@linux-speakup.org
Subject: Re: Plans for CONFIG_VT death?
Message-ID: <ZoZKc-kKf8gKoQt1@titan>
References: <ZoYSjTol94J676j_@titan>
 <20240704065714.gqe2ieny5jf5g33j@begin>
 <ZoZI9lPJV7OfvqOT@titan>
 <20240704070423.psmednz5ayqbdtn2@begin>
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
In-Reply-To: <20240704070423.psmednz5ayqbdtn2@begin>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Thu, Jul 04, 2024 at 09:04:23AM +0200, Samuel Thibault wrote:
> Jookia, le jeu. 04 juil. 2024 17:02:14 +1000, a ecrit:
> > On Thu, Jul 04, 2024 at 08:57:14AM +0200, Samuel Thibault wrote:
> > > Jookia, le jeu. 04 juil. 2024 13:10:05 +1000, a ecrit:
> > > > More and more sighted developers want to remove CONFIG_VT
> > > 
> > > Where is that raised?
> > 
> > It's not raised, but it seems to be a goal that's been around for a while.
> > Every year a reddit post comes out by someone testing CONFIG_VT=n and
> > showing how much better it's getting,
> 
> Then people can set =n, that's all good for them, it doesn't necessarily
> imply removing the code.
> 
> > without mentioning it breaks speakup. The VT subsystem is also
> > apparently not actively developed.
> 
> A lot of Linux code is not actively developed :)
> 
> > > > without adding accessibility support.
> > > 
> > > Was that explicitly expressed?
> > 
> > No, but that's what will happen at this point.
> 
> If nobody raises the concern, sure. So it's just a matter of raising the
> concern.

I'm a little rattled from everything in userspace breaking because
developers see unmaintained ramps and replace them with stairs. Is the
kernel better about this?

> 
> Samuel

Jookia.

