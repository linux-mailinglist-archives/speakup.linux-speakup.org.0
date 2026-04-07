Return-Path: <speakup+bounces-1585-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJwfMAp91GniuQcAu9opvQ
	(envelope-from <speakup+bounces-1585-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 07 Apr 2026 05:42:02 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EAACE3A978F
	for <lists+speakup@lfdr.de>; Tue, 07 Apr 2026 05:42:01 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=M9fnSi27;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D4DFF382737; Mon, 06 Apr 2026 23:42:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B4B573825B7
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 23:42:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AD1353825DA; Mon, 06 Apr 2026 23:41:55 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BFF9338219F
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 23:41:54 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4fqX7K419vz3xVQ
	for <speakup@linux-speakup.org>; Mon,  6 Apr 2026 23:41:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1775533309; bh=8t/qo/ydSiY1TFTNePIeoOCfs4TKxBQb4G2waHeDO/0=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=M9fnSi27RVXoV63r+p15+fr2daiu6bR+o+L2c/VUJR3FPptSAcczY841C4fYq4xSZ
	 9Iyr2v26D89cBPlOEBTGBJzylMj+s2c5GUcK9VE9y0IzGrDOtgJTU1bifa62uzoTf6
	 iwXG4RRvb2OTxfWhd9nex42rAV+sQqzTromnqVbU=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4fqX7K3kxVz1QXN; Mon,  6 Apr 2026 23:41:49 -0400 (EDT)
Date: Mon, 6 Apr 2026 23:41:49 -0400
From: Rudy Vener <salt@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Rewriting docs: Configuration howto
Message-ID: <adR8_UkUGWmTPj2J@panix.com>
References: <6cfbf1a1-34d0-47cb-99e7-d1797005d7d9@math.wisc.edu>
 <adR3aEMAkJ_8Iekc@gregn.net>
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
In-Reply-To: <adR3aEMAkJ_8Iekc@gregn.net>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[speakup];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[www.eu.org:url,eu.org:email,gregn.net:url,substack.com:url];
	R_SPF_NA(0.00)[no SPF record];
	TO_DN_ALL(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[salt@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1585-lists,speakup=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	DKIM_TRACE(0.00)[panix.com:+]
X-Rspamd-Queue-Id: EAACE3A978F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

And if this isn't already a part of speakup-tools, you might consider
adding a how-to to create a speakup keymap with genmap for
customizing speakup control keys.

-- 
Rudy Vener

Can monsters be the good guys? Find out in Beast Hunt Vol 1: https://www.amazon.com/dp/B0DPN1QGGJ
Like Light-hearted Limericks? Read AI Chat Bot Brouhaha https://substack.com/@LimerickDude
Website: http://www.rudyvener.com

On Mon, Apr 06, 2026 at 08:18:00PM -0700, Gregory Nowak wrote:
> I would suggest also covering speakup-tools:
> 
> <https://github.com/linux-speakup/speakup-tools>
> 
> Greg
>  
> 
> On Mon, Apr 06, 2026 at 10:44:48AM -0500, John G. Heim wrote:
> > I figure I'll write one document on how to setup and/or configure Speakup (a
> > howto) and another on how to use it (user's guide). Below is the outline I
> > put together for the configuration? howto:
> > 
> > 
> > 1. Configure Speakup with a software speech synthesizer
> > 1.1 espeakup
> > 1.2? speechd-up
> > 2. Configure Speakup with a hardware speech synthesizer
> > 2.1 Using modprobe
> > 2.1.1 List of supported hardware synths
> > 2.1.2 Kernel module parameters
> > 2.2 Using initramfs (serial synths only)
> > 2.3 Using udev rules (USB synths only)
> > 2.4 Via custom kernel (serial synths only)
> > 3. Changing settings on the fly
> > 
> > 
> > Anything else I need to cover in the configuration guide?
> > 
> > 
> > 
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> 

