Return-Path: <speakup+bounces-1557-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIiiL5eGn2mmcgQAu9opvQ
	(envelope-from <speakup+bounces-1557-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 26 Feb 2026 00:32:39 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 147E119EDA4
	for <lists+speakup@lfdr.de>; Thu, 26 Feb 2026 00:32:39 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=bSMVV5xW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 42032382090; Wed, 25 Feb 2026 18:32:33 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2430D381866
	for <lists+speakup@lfdr.de>; Wed, 25 Feb 2026 18:32:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 17D0C3818A2; Wed, 25 Feb 2026 18:32:27 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CA47C3807A8
	for <speakup@linux-speakup.org>; Wed, 25 Feb 2026 18:32:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1772062342; bh=Hy5m/8teTS5L7UwcxyjZAuXZqEhHLqHfWV2d7EekU28=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bSMVV5xW/++3EOGleqxxYJ42HQ8l+vIIt+MdiW0YgRB6hgDa9JODneUVKy7Ew3nMC
	 DGn3SynDTNwWP5W6IeblbeAnMcGpKCu0CwZaSNk6B0x69tq0Un9uhFUs0f+GoUDX4q
	 6NXmMEliXq+kmHgfn5mDdykayloAAXb67QC4SUcCLoqehhEC8tv6yvyiNOHzUhL5kv
	 H4atmnHSEGsegoZVW6ZamwTb+qOVa2iHuH9iSyhxRUvqJWdhbwQ6Pdg4f1BTvc+v5P
	 snsFYZdYlBZn2bkRohglx7pCug+uFBQyXpM/haCAqufgT12hxgnJS+TfWtn6ZV/byV
	 /2/G8XS9Uw0zA==
Received: from vbox.gregn.net (unknown [172.56.81.22])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id C223B9C52;
	Wed, 25 Feb 2026 15:32:22 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 80F70C1E4; Wed, 25 Feb 2026 16:32:21 -0700 (MST)
Date: Wed, 25 Feb 2026 16:32:21 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Fact check wrt speakup and user space
Message-ID: <aZ-GhRzowUuRoxcq@gregn.net>
References: <dc0d85fc-ccee-41a6-8f91-6c5818f49cdd@math.wisc.edu>
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
In-Reply-To: <dc0d85fc-ccee-41a6-8f91-6c5818f49cdd@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.4.3 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gregn.net,none];
	R_DKIM_ALLOW(-0.20)[gregn.net:s=default];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gregn.net:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1557-lists,speakup=lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[greg@gregn.net,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[www.eu.org:url]
X-Rspamd-Queue-Id: 147E119EDA4
X-Rspamd-Action: no action

In a way, this is true. Unless one has a hardware synthesizer, or uses
the speakup_dummy module to output what speakup would say to some
other serial device, the only other way to use speakup is through the
speakup_soft module, which is itself only used by user space tools
like espeakup and speech-dispatcher. Things have changed a great deal
in the last 30 years or so sadly.

Greg


On Wed, Feb 25, 2026 at 04:03:49PM -0600, John G. Heim wrote:
> I asked about getting udev to recognize hardware synths on the systemd-devel
> list and got some pushback. One person claimedSpeakup is useless without
> user space tools. That's not true, is it? I hope it's not right because I
> already said so on the systemd-devel list. Below is the message I'm talking
> about.
> 
> 
> On 2/25/26 1:23 PM, Greg KH wrote:
> 
> > Yes, the kernel driver speakup is in the kernel source, but it's useless
> > without the userspace tools.  So the udev rules should be part of that
> > userspace package as that's required before anything would normally
> > work, as it's only those userspace packages that do anything with those
> > kernel device nodes that speakup exports to userspace.
> > 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

