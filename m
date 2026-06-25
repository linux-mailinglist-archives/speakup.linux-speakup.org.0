Return-Path: <speakup+bounces-1639-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XuIaCscjPWrCxggAu9opvQ
	(envelope-from <speakup+bounces-1639-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 14:49:11 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E1F2D6C5B93
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 14:49:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=NkapTD0e;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=NkapTD0e;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=h+GZMBpV;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b="X/L5SCvC";
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1639-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1639-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782391748;
	bh=AosFnkXgwRsf+MN4NuPC5e2xUDPyi91jdIewlU1NEd8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=NkapTD0exzt8aJ51Z23dkJD6He4gAEL5GfVyxEYpCSFbdqPzul6Qb5hLwUO5eHj8X
	 FJM8n0lcHUQNsc/Bcpc/+uvr/7Yjzlb//xnaZXTOwRoBFxazvJJ4Eqq2UpBshabvEm
	 M46gKkkvEAAV1L3K4cHMbR/M/1+ZJVnYQBdyPqxc=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E98F3826C9; Thu, 25 Jun 2026 08:49:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782391748;
	bh=AosFnkXgwRsf+MN4NuPC5e2xUDPyi91jdIewlU1NEd8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=NkapTD0exzt8aJ51Z23dkJD6He4gAEL5GfVyxEYpCSFbdqPzul6Qb5hLwUO5eHj8X
	 FJM8n0lcHUQNsc/Bcpc/+uvr/7Yjzlb//xnaZXTOwRoBFxazvJJ4Eqq2UpBshabvEm
	 M46gKkkvEAAV1L3K4cHMbR/M/1+ZJVnYQBdyPqxc=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1EC51382681
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 08:49:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782391742;
	bh=AosFnkXgwRsf+MN4NuPC5e2xUDPyi91jdIewlU1NEd8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=h+GZMBpVHcyciQ5Yba7YwZd6zm4NYFz7qrWE6pGrv1Kk19QCFrsPLkmruBO/qplNj
	 LWQqDscNBTZ9jLQoRX1oui3bIpVzGfbpYLhJ6ccy+6BvIRka+ErpCV99xaR6BK+/YJ
	 vZBvuNZ8VoH9F+H4YKNFSUc6jk9PuTJGnp684H+o=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1411A382694; Thu, 25 Jun 2026 08:49:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782391741;
	bh=AosFnkXgwRsf+MN4NuPC5e2xUDPyi91jdIewlU1NEd8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=X/L5SCvCnNXP/6iwmbXFvBDTQdJl5E+Uj4K+b3dKBm1synZAccXo8Gde+5J9yOSz0
	 H872SLLMz+3jez7JAFZpi/B2ktXhq1bszRjZQd26Bisg110hw05SEFaCSUVMiey8bk
	 WDWtwZwCb72tV/pfGwuMUmRS9Zqdx5+2GFkZLol8=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E33A9382677;
	Thu, 25 Jun 2026 08:49:01 -0400 (EDT)
Date: Thu, 25 Jun 2026 08:49:01 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Social media from the terminal
In-Reply-To: <ae8c28d7-fd0f-4804-a453-4283e1d3a1da@posteo.com.br>
Message-ID: <0688c953-45b6-ac6a-e1f8-ce30f6f340ae@reisers.ca>
References: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk> <86406e85-fa15-f55c-68c1-ab2067baf81b@hubert-humphrey.com> <Pine.LNX.4.64.2606241739550.1059219@users.shellworld.net> <86a16937-fe97-db63-83df-bba4aa850258@reisers.ca>
 <Pine.LNX.4.64.2606242140570.1067145@users.shellworld.net> <bff0ad58-a2a0-a527-7dfa-85b551b50d79@reisers.ca> <ajyW14R8QeNUNquA@panix.com> <Pine.LNX.4.64.2606242311590.1072023@users.shellworld.net> <ae8c28d7-fd0f-4804-a453-4283e1d3a1da@posteo.com.br>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.39 / 15.00];
	R_DKIM_ALLOW(-0.20)[reisers.ca:s=befuddled];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	R_SPF_NA(0.00)[no SPF record];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:clul+speakup@posteo.com.br,m:clul@posteo.com.br,s:lists@lfdr.de];
	DMARC_NA(0.00)[reisers.ca];
	FORGED_SENDER(0.00)[kirk@reisers.ca,speakup@linux-speakup.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[bounces-1639-lists,speakup=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirk@reisers.ca,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reisers.ca:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chawan.net:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E1F2D6C5B93

I hadn't heard of Chawan, I'll have to check it out.

There is also a cli based mastodon client called madonctl which works
pretty nicely. There's a cli youtube player called yewtube too. I'm
not really much of a social media sort of person but it'd be nice to
have something that handled instagram being a musician and all.

   Kirk



On Thu, 25 Jun 2026, Cleverson Casarin Uliana wrote:

> Regarding terminal browsers which support javascript, there is Chawan, see:
> https://chawan.net/
>
> There's also abrowse, which requires Chromium installed as a dependency, but 
> it seems unmaintained, though it still works:
> https://github.com/yplassiard/abrowser/
>
> Cheers,
> Cleverson
>
>

