Return-Path: <speakup+bounces-1584-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIH2F+x31GkxuQcAu9opvQ
	(envelope-from <speakup+bounces-1584-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 07 Apr 2026 05:20:12 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BC4B23A960A
	for <lists+speakup@lfdr.de>; Tue, 07 Apr 2026 05:20:10 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=q5/OJOl7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 635A9382745; Mon, 06 Apr 2026 23:20:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 436EA3825BE
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 23:20:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1844C3825F7; Mon, 06 Apr 2026 23:19:59 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CD59C3825BE
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 23:19:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1775531995; bh=Pc01aKwoZU+KzntbPAjuhNITjibz6EQVWthuc9M6f40=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q5/OJOl7SumVGSdT1lLz4aR/Q/L/25QqOcJDiPbdwOTmXIdiy2+YX+qvsVCvjiiWZ
	 3eKjBqFj4ueBTSkVWJbAPjsaDFJyzhZt4yF1IeU/lAjbr+npM1FgWRYF9ArOj4OblJ
	 ZJweJGCqfxSA4XGZ+NdFsM+QJZfBd7jHqqEMewxOr8JoP/kUPAddkwZZnSwFIVD2Xk
	 oMuYszL9W9KZ3mxSkrqjmldbF9l40PmpBHo0YQA76azotKutgn1+cXh7oi0wVoyLph
	 zVlkhnYJbGGuNY6tckmV77Q1oPXCY/gfJbxMfJ16uKtdNlqbXDWKjMCQu6IqU3Z5ER
	 EVc9SWUwfuKRA==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:4f09:8aec:80b9:c71b:c484:eb09])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 0425C2A9C;
	Mon,  6 Apr 2026 20:19:55 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 4C35CC257; Mon,  6 Apr 2026 20:19:54 -0700 (MST)
Date: Mon, 6 Apr 2026 20:19:54 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Rewriting docs: Live distros in the FAQ
Message-ID: <adR32lZjzJrmAhFo@gregn.net>
References: <0b15c93b-1af7-4046-ace8-5a6057f22dd3@math.wisc.edu>
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
In-Reply-To: <0b15c93b-1af7-4046-ace8-5a6057f22dd3@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.4.3 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
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
	TAGGED_FROM(0.00)[bounces-1584-lists,speakup=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gregn.net:dkim,gregn.net:mid,gregn.net:url,devuan.org:url,www.eu.org:url,eu.org:email]
X-Rspamd-Queue-Id: BC4B23A960A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I use speakup in minimal-live as well:

<https://www.devuan.org/get-devuan>

Greg


On Mon, Apr 06, 2026 at 11:28:37AM -0500, John G. Heim wrote:
> The Speakup FAQ used to have some stuff in it about using rawrite and boot
> images. I cut all that out. But it occurs to me that I think I should
> instead mention using live images like GRML.
> 
> Does anybody use Speakup in some other live image other than GRML? If not,
> I'm just going to write a few lines talking about GRML and directing the
> reader to the docs for GRML itself. You don't want to rewrite somebody
> else's docs in your FAQ. That's a good way to get obsolete/incorrect info in
> your FAQ.
> 
> Note: I would imagine some people use Ubuntu for their live image but then
> you probably don't use Speakup -- so that's not relevant. That would belong
> in the Orca FAQ.
> 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

