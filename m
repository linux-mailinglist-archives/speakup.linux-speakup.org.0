Return-Path: <speakup+bounces-1559-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKcGAHW6qWnNDQEAu9opvQ
	(envelope-from <speakup+bounces-1559-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 18:16:37 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4D146216018
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 18:16:34 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Ekna9cVJ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 539463823E9; Thu, 05 Mar 2026 12:16:33 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 32DB738187A
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 12:16:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24191381951; Thu, 05 Mar 2026 12:16:27 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3259A3817F7
	for <speakup@linux-speakup.org>; Thu, 05 Mar 2026 12:16:26 -0500 (EST)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4fRbmS4RV1z4vnw;
	Thu,  5 Mar 2026 12:16:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1772730984; bh=s6LQ2oWyxxS5yVu880xijCHjrWP4SFD5EWlZo1E/EHk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Ekna9cVJU72ioFUvL1WBwhZZrjjHlhbRUcPJfZV86jxPWkCEykA+16iA19bwbxeBr
	 0kbWWja5s4CCqjMp4gIqhOMlk4qOe9W48GnhDeOU8aPhbqvyntrPVzYPoxf7tVo/8p
	 CQr0+kA/hy57PZfChUbuTLfZ8YYLuK2ro3OoDj9A=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4fRbmS3xYpz1QXN; Thu,  5 Mar 2026 12:16:24 -0500 (EST)
Date: Thu, 5 Mar 2026 12:16:24 -0500
From: Rudy Vener <salt@panix.com>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Notes on automatic load of kernel modules
Message-ID: <aam6aBfnRFadxcET@panix.com>
References: <c9ca0abd-8b7f-4058-bb9f-89889c225b99@math.wisc.edu>
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
In-Reply-To: <c9ca0abd-8b7f-4058-bb9f-89889c225b99@math.wisc.edu>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 4D146216018
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[panix.com:+];
	TAGGED_FROM(0.00)[bounces-1559-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FROM_NEQ_ENVFROM(0.00)[salt@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo,substack.com:url]
X-Rspamd-Action: no action

Yes, speakup is totally worth keeping. I make no pretense of speaking for any other
blind computer users, but at this point I am totally dependent on speakup.
I use it with the espeak software speech synth.
In the Linux command line I can perform some tasks
nearly ten times as fast as I can using a GUI desktop with Orca.

-- 
Rudy Vener

Beast Hunt Vol 1 now available: https://www.amazon.com/dp/B0DPN1QGGJ
Light-hearted Limerick - Jack Hughes first Among Hockey Jews https://substack.com/@LimerickDude
Website: http://www.rudyvener.com

On Thu, Mar 05, 2026 at 11:02:16AM -0600, John G. Heim wrote:
> I've been on the systemd development list where?? udev?? rules are
> discussed. And?? I've learned that what we, as blind system engineers need,
> is not udev?? rules. What we really need is for the speakup modules to be
> included in the Linux kernel.
> 
> I know the experienced people on this list are listening to that previous
> sentence and saying it's totally unrealistic. But what if we asked for just
> one hardware synth to be included? The core speakup module and one other
> synth?
> 
> A blind sys admin would have to have one particular synth (or one that
> emulated it) in order to automatically get speech upon boot. Limiting it
> to?? one particular synth isn't as unreasonable as you might think. For one
> thing, there probably is one synth that is way more available than all the
> others. I am guessing that is a BNS. But it?? might be LiteTalk. We could
> decide that among ourselves. And then, if you didn't happen to have the
> synth we settle upon,?? ??you could build it from a Raspberry Pi.
> 
> I think this whole question really depends upon how important Speakup??
> itself is. Is it even really worthwhile trying to solve this problem at all
> in?? the 21st century? I don't know -- I'm retired. It no longer effects me.
> 
> The thing is that Linux systems engineering is only getting bigger and
> bigger in this modern world. Who knows what AI will do to it. But right now,
> Linux systems engineers are?? in extremely high demand. Every data center on
> the planet runs on Linux. And there are a whole lot of those. I think the
> big deal with that is the trickle down effect. My job at the University of
> Wisconsin was to run a cluster of machines students could learn on. The guys
> who invented ChatGPT started out as undergrads somewhere and somebody had to
> give them?? a place to?? test their code. That was my job.
> 
> 
> 
> 

