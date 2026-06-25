Return-Path: <speakup+bounces-1633-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B8i1DsF7PGpOoggAu9opvQ
	(envelope-from <speakup+bounces-1633-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 02:52:17 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F30336C2098
	for <lists+speakup@lfdr.de>; Thu, 25 Jun 2026 02:52:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=auPnUpQx;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=auPnUpQx;
	dkim=pass header.d=reisers.ca header.s=befuddled header.b="rxaXBX/y";
	dkim=pass header.d=reisers.ca header.s=befuddled header.b=V+H01YGW;
	spf=none (mail.lfdr.de: domain of "speakup+bounces-1633-lists+speakup=lfdr.de@linux-speakup.org" has no SPF policy when checking 206.248.184.127) smtp.mailfrom="speakup+bounces-1633-lists+speakup=lfdr.de@linux-speakup.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782348730;
	bh=EWQBoCTlQ4VmPpuNIvHgtP5fxzAoygtXU0pKAakj150=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=auPnUpQxCorDh4c8XVV1Zz7FgofUKyG99XsbJ7phW8Lx4kWgCIXOrApKS2O6oLpy7
	 PCbOE5feAGRJIEC5PJ4Dr5znmgF6Hloag/C+rtphJbUYAxpB2kg3MM3tXa2QTm6pDM
	 aEIaiHBBa5McGieoR2CmO+3bym3JQyOBqHU8Zm+4=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D72573826AA; Wed, 24 Jun 2026 20:52:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782348730;
	bh=EWQBoCTlQ4VmPpuNIvHgtP5fxzAoygtXU0pKAakj150=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=auPnUpQxCorDh4c8XVV1Zz7FgofUKyG99XsbJ7phW8Lx4kWgCIXOrApKS2O6oLpy7
	 PCbOE5feAGRJIEC5PJ4Dr5znmgF6Hloag/C+rtphJbUYAxpB2kg3MM3tXa2QTm6pDM
	 aEIaiHBBa5McGieoR2CmO+3bym3JQyOBqHU8Zm+4=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B9F52382677
	for <lists+speakup@lfdr.de>; Wed, 24 Jun 2026 20:52:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782348724;
	bh=EWQBoCTlQ4VmPpuNIvHgtP5fxzAoygtXU0pKAakj150=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=rxaXBX/yjen0QpNIwVRTsBCsb2RpkGqeQMU82pcj+8DBw3TijPyRtI6CTwQ6zv4gS
	 G4nxh8xowoZ1Zp4rxgNYitLMdy8K1VTL3ep6S/TWASLYb09yYMLnir7BzHe6LzgtFS
	 Lav8ym1AkfdGn3c3DVA1bXDswT6eKrK+RsWhObQE=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B755E38267C; Wed, 24 Jun 2026 20:52:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1782348723;
	bh=EWQBoCTlQ4VmPpuNIvHgtP5fxzAoygtXU0pKAakj150=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=V+H01YGWrvEdmSsq1JgtzQT+Epjr0MGAocACSf4z12/azYtl5sUOctLEUjs/3ge9j
	 NH8oc2txqoEqRzxJHk4bx6bSBIMBZmVLni0ihYydT6vz+/xvFxTW9M2op59eEHCjf4
	 n6FPE2I2XJstcKY5XlyGXInfS27EOKXkNvOzVuYQ=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7DA73382642;
	Wed, 24 Jun 2026 20:52:03 -0400 (EDT)
Date: Wed, 24 Jun 2026 20:52:03 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Chime Hart <chime@hubert-humphrey.com>, Georgina Joyce <gena@m0ebp.uk>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Social media from the terminal
In-Reply-To: <Pine.LNX.4.64.2606241739550.1059219@users.shellworld.net>
Message-ID: <86a16937-fe97-db63-83df-bba4aa850258@reisers.ca>
References: <D7D21247-9059-4643-85A4-BEF006828EDA@m0ebp.uk> <86406e85-fa15-f55c-68c1-ab2067baf81b@hubert-humphrey.com> <Pine.LNX.4.64.2606241739550.1059219@users.shellworld.net>
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
	R_SPF_NA(0.00)[no SPF record];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[reisers.ca];
	FORGED_RECIPIENTS(0.00)[m:klewellen@shellworld.net,m:chime@hubert-humphrey.com,m:gena@m0ebp.uk,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kirk@reisers.ca,speakup@linux-speakup.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-1633-lists,speakup=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[reisers.ca:dkim,reisers.ca:mid,reisers.ca:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F30336C2098

I use the emacs browser 'eww' for mastodon and twitter although I
stopped using twitter. I think there may be clients for others but I'm
not sure of that.

   kirk


On Wed, 24 Jun 2026, Karen Lewellen wrote:

> In allot of cases companies have removed access for third party applications. 
> Places like reddit and twitter for example.
> It is my understanding that Facebook likewise removed access to the mobile 
> platform, impacting many, not just terminal users.
> Kare
>
>
>
>

