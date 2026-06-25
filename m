Return-Path: <speakup+bounces-1636-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t0P5JeaWPGqipggAu9opvQ
	(envelope-from <speakup+bounces-1636-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 04:48:06 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D554E6C274D
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 04:48:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=panix.com header.s=panix header.b=I0lDJPvF;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1636-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1636-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=pass (policy=none) header.from=panix.com
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C8D033826B1; Wed, 24 Jun 2026 22:48:03 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A87FF382681
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 22:48:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A836138268C; Wed, 24 Jun 2026 22:47:57 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D37A938267B
	for <speakup@linux-speakup.org>; Wed, 24 Jun 2026 22:47:56 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4gm3Bb4NwKz4vWq
	for <speakup@linux-speakup.org>; Wed, 24 Jun 2026 22:47:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1782355671; bh=IASk2PWQWIY1judgVhvOU7+AvUw60VZEZLYgB5z6DAY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=I0lDJPvFCeMlnFEub3cxpmr8DcNJFxfBk1918Byjmtytb9ZPL6mngRhc0b5vlewqq
	 LGfowxjPwTeKYdx8UngPFKkkUSzDwl4Pgv/jYUE/HBvpq3OVEYZTxC7ADwVDaYCcjA
	 E3BQE7ykOkwZTAnInDFCVF8DvD8yPj0yPQhf/Pd0=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4gm3Bb4DFjz1QXN; Wed, 24 Jun 2026 22:47:51 -0400 (EDT)
Date: Wed, 24 Jun 2026 22:47:51 -0400
From: Rudy Vener <salt@panix.com>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Social media from the terminal
Message-ID: <ajyW14R8QeNUNquA@panix.com>
References: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk>
 <86406e85-fa15-f55c-68c1-ab2067baf81b@hubert-humphrey.com>
 <Pine.LNX.4.64.2606241739550.1059219@users.shellworld.net>
 <86a16937-fe97-db63-83df-bba4aa850258@reisers.ca>
 <Pine.LNX.4.64.2606242140570.1067145@users.shellworld.net>
 <bff0ad58-a2a0-a527-7dfa-85b551b50d79@reisers.ca>
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
In-Reply-To: <bff0ad58-a2a0-a527-7dfa-85b551b50d79@reisers.ca>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-1636-lists,speakup=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[salt@panix.com,speakup@linux-speakup.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[panix.com:+];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[salt@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	DBL_BLOCKED_OPENRESOLVER(0.00)[substack.com:url,linux-speakup.org:from_smtp,panix.com:dkim,panix.com:mid,panix.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D554E6C274D

Also, according to Wiki via duckduckgo, eww does not support javascript
which seems to be the limiting factor blocking any useful social media access.

-- 
Rudy Vener

Can monsters be the good guys? Find out in Beast Hunt Vol 1: https://www.amazon.com/dp/B0DPN1QGGJ
Like Light-hearted Limericks? Read Memories Of The Music Man https://substack.com/@LimerickDude
Website: http://www.rudyvener.com

On Wed, Jun 24, 2026 at 10:28:21PM -0400, Kirk Reiser wrote:
> I don't need to share a link because it is part of all new emacs
> installations. If you are not familiar with emacs then it probably
> isn't worth it because it's a large learning curve. It is a very
> powerful editor and like most complicated applications it takes a bit
> of work to learn it.
> 
>   Kirk
> 
> On Wed, 24 Jun 2026, Karen Lewellen wrote:
> 
> > ..someone actually named a tool eww?
> > would you mind sharing a link?
> > I have a mac running high sierra, so am interested in alternatives.
> > besides I want to read how they market that one smiles.
> > Kare
> > 
> > 
> > 
> > On Wed, 24 Jun 2026, Kirk Reiser wrote:
> > 
> > > I use the emacs browser 'eww' for mastodon and twitter although I
> > > stopped using twitter. I think there may be clients for others but I'm
> > > not sure of that.
> > > 
> > >  kirk
> > > 
> > > 
> > > On Wed, 24 Jun 2026, Karen Lewellen wrote:
> > > 
> > > >  In allot of cases companies have removed access for third party
> > > >  applications. Places like reddit and twitter for example.
> > > >  It is my understanding that Facebook likewise removed access to
> > > > the mobile
> > > >  platform, impacting many, not just terminal users.
> > > >  Kare
> > > > 
> > > > 
> > > > 
> > > > 
> > > 
> > > 
> > 
> 

