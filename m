Return-Path: <speakup+bounces-1586-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id s1XUA2iN1Gn+vAcAu9opvQ
	(envelope-from <speakup+bounces-1586-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 07 Apr 2026 06:51:52 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5668D3A9C0D
	for <lists+speakup@lfdr.de>; Tue, 07 Apr 2026 06:51:49 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=u6eBL9K4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 07F51382603; Tue, 07 Apr 2026 00:51:48 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DDBA438188E
	for <lists+speakup@lfdr.de>; Tue, 07 Apr 2026 00:51:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D1A05382014; Tue, 07 Apr 2026 00:51:41 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id ABECC380640
	for <speakup@linux-speakup.org>; Tue, 07 Apr 2026 00:51:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1775537499; bh=GdONzQuEgmbTAHkvnJ1PqCTdIvtGDX/maSzUszQiRGA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u6eBL9K43cgiYBp5YZmIkwemFMZkuE1skmV0NUBPalc1YHTIu0aU7OnB0C83mtdXM
	 AM7UaYG+ytdkhg1FDN3aaDipYG3olcGRDb7klYz0MdVO+gXmAe/bqwgA+HOAjgkpHA
	 8eHla2mt0iLE85SWpepyWg8wnbVgIi9lVTiKwO1ZeAaqkHcrGoBr8GUnzzXmyjpuyN
	 9WdYoxv1T5SM7POKK/HdlINqI/xI5KZ4nOhvWAX9KmXQkwyuHegWyZbFiX5mbSgo+J
	 ae4K2T6oXmASIAPkoygmPoCZud7sURuMDMB+xXAALndksNy9zIukzx98AQTp/aai5H
	 eQb2qPOuxRC7Q==
Received: by vserver.gregn.net (Postfix, from userid 1000)
	id 0EA62331A; Mon,  6 Apr 2026 21:51:39 -0700 (PDT)
Date: Mon, 6 Apr 2026 21:51:38 -0700
From: Gregory Nowak <greg@gregn.net>
To: Rudy Vener <salt@panix.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Rewriting docs: Configuration howto
Message-ID: <adSNWpsUTYmr-YkN@gregn.net>
References: <6cfbf1a1-34d0-47cb-99e7-d1797005d7d9@math.wisc.edu>
 <adR3aEMAkJ_8Iekc@gregn.net>
 <adR8_UkUGWmTPj2J@panix.com>
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
In-Reply-To: <adR8_UkUGWmTPj2J@panix.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gregn.net,none];
	R_DKIM_ALLOW(-0.20)[gregn.net:s=default];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gregn.net:+];
	TAGGED_FROM(0.00)[bounces-1586-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FROM_NEQ_ENVFROM(0.00)[greg@gregn.net,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gregn.net:dkim,gregn.net:mid,gregn.net:url,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns]
X-Rspamd-Queue-Id: 5668D3A9C0D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The genmap utility is included in the speakup sources, which are a
part of the linux source tree. I see no reason to also include it in
speakup-tools.

Greg


On Mon, Apr 06, 2026 at 11:41:49PM -0400, Rudy Vener wrote:
> And if this isn't already a part of speakup-tools, you might consider
> adding a how-to to create a speakup keymap with genmap for
> customizing speakup control keys.
> 
> -- 
> Rudy Vener


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

