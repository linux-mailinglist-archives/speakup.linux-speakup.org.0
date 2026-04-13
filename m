Return-Path: <speakup+bounces-1589-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2M5AO3Pm3GkZYAkAu9opvQ
	(envelope-from <speakup+bounces-1589-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 13 Apr 2026 14:49:55 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1B6083EC30D
	for <lists+speakup@lfdr.de>; Mon, 13 Apr 2026 14:49:55 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=qEu0Kee4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B02D43825B1; Mon, 13 Apr 2026 08:49:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 90F6B3817AC
	for <lists+speakup@lfdr.de>; Mon, 13 Apr 2026 08:49:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8F2C3382016; Mon, 13 Apr 2026 08:49:47 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1DC993817AC
	for <speakup@linux-speakup.org>; Mon, 13 Apr 2026 08:49:47 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4fvS0k5z4dz4XXQ
	for <speakup@linux-speakup.org>; Mon, 13 Apr 2026 08:49:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1776084582; bh=BBwluXBUvMn2qrOJOxgoBm6/7yItTJtIgBwq3Fwp5VI=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=qEu0Kee40F+W/SxwXJ6eRomtdMqCmj1yDRzuwQJuMpv/jJ8MuVYDbz65PcPJOXkvE
	 AhSdAGndJHpmWzZs9mHiXdjxJRRW8wCk8L2qHh9NZV4uwAMOYbxb5wXJHugdRGB3fb
	 T8lDPbQ7IgH5fudXKur5pJIJglWtWLG/34p8/v/k=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4fvS0k5hnYz1QXN; Mon, 13 Apr 2026 08:49:42 -0400 (EDT)
Date: Mon, 13 Apr 2026 08:49:42 -0400
From: Rudy Vener <salt@panix.com>
To: speakup@linux-speakup.org
Subject: Re: What's up with dict?
Message-ID: <adzmZpD6WdF0VHeG@panix.com>
References: <adygoH93l793lxcJ@A11y.NYC>
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
In-Reply-To: <adygoH93l793lxcJ@A11y.NYC>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [0.12 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[panix.com,none];
	R_DKIM_ALLOW(-0.20)[panix.com:s=panix];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[speakup];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:url,linkedin.com:url,panix.com:dkim,panix.com:mid,substack.com:url];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-0.995];
	FROM_NEQ_ENVFROM(0.00)[salt@panix.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1589-lists,speakup=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[panix.com:+]
X-Rspamd-Queue-Id: 1B6083EC30D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Yup. It's down on panix too.
Let's hope this is temporary. Dict is one of my most heavily used tools.

-- 
Rudy Vener

Can monsters be the good guys? Find out in Beast Hunt Vol 1: https://www.amazon.com/dp/B0DPN1QGGJ
Like Light-hearted Limericks? Read At Long Last We Went Back To The Moon https://substack.com/@LimerickDude
Website: http://www.rudyvener.com

On Mon, Apr 13, 2026 at 03:52:00AM -0400, Janina Sajka wrote:
> Hi All:
> 
> I was shocked this morning that my run of the mill dict query failed. A
> bit of poking around indicates that dict.org no longer resolves. The
> name is registered until 2027, but there's no one listening according to
> dns.
> 
> Anyone know any more? Is this yet another terminal service that's
> disappearing? <sigh>
> 
> Best,
> Janina
> 
> 
> -- 
> 
> Janina Sajka (she/her)
> https://linkedin.com/in/jsajka
> 
> Digital Accessibility Standards Lead,
> Level Access https://www.levelaccess.com/
> 
> W3C Accessible Platform Architectures	(APA) CoChair,
> http://www.w3.org/wai/apa
> 
> Linux Foundation Fellow
> https://www.linuxfoundation.org/about/leadership#team-bio-janina-sajka
> 
> 

