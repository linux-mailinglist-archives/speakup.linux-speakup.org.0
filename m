Return-Path: <speakup+bounces-1583-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oO3fKDt51GlduQcAu9opvQ
	(envelope-from <speakup+bounces-1583-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 07 Apr 2026 05:25:47 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1E3103A9676
	for <lists+speakup@lfdr.de>; Tue, 07 Apr 2026 05:25:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=NCMpvaDr;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D5687382603; Mon, 06 Apr 2026 23:18:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B5AE638219F
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 23:18:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 946233825BC; Mon, 06 Apr 2026 23:18:08 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 32023381833
	for <speakup@linux-speakup.org>; Mon, 06 Apr 2026 23:18:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1775531881; bh=Iw9KPyb7DmqRk9ole1RAH8r5+yMRZKyFWBZoapptCtM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NCMpvaDr0fEQaHohuQvAJBtJzyRwupSGCMfpevcW1VJVpjTKX7Z9RV8wj+Yb6CE0v
	 8pYbnU5sK+YBG/ExMfsWRHFQI5i4ozxjtjIvVrExzBLGeGdoVsFBpWKf24VzCYaHGq
	 8bTMWXPxyx9Z4qJenFKTTdg8OMDLFTUamsQPm/Vy2Z28dg0NrgrilDugPsBu+LLy0o
	 9fenrJrl2a/3p9C63u0S5mm1sprHJNHEafHtnUSzkpf7N30gdfnXWkzRG58+w5K0Z9
	 W1PtMoqNEdarUGRQbwF4f87qVgE8c1BnmpJVWzqz91FhDv3Y+zJvV0JfR3yJF8QyKk
	 z9yLGZJTNoGsg==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:4f09:8aec:80b9:c71b:c484:eb09])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id CFB732A96;
	Mon,  6 Apr 2026 20:18:00 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 0D0ADC257; Mon,  6 Apr 2026 20:18:00 -0700 (MST)
Date: Mon, 6 Apr 2026 20:18:00 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Rewriting docs: Configuration howto
Message-ID: <adR3aEMAkJ_8Iekc@gregn.net>
References: <6cfbf1a1-34d0-47cb-99e7-d1797005d7d9@math.wisc.edu>
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
In-Reply-To: <6cfbf1a1-34d0-47cb-99e7-d1797005d7d9@math.wisc.edu>
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
	TAGGED_FROM(0.00)[bounces-1583-lists,speakup=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gregn.net:dkim,gregn.net:mid,gregn.net:url,www.eu.org:url,eu.org:email]
X-Rspamd-Queue-Id: 1E3103A9676
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I would suggest also covering speakup-tools:

<https://github.com/linux-speakup/speakup-tools>

Greg
 

On Mon, Apr 06, 2026 at 10:44:48AM -0500, John G. Heim wrote:
> I figure I'll write one document on how to setup and/or configure Speakup (a
> howto) and another on how to use it (user's guide). Below is the outline I
> put together for the configuration  howto:
> 
> 
> 1. Configure Speakup with a software speech synthesizer
> 1.1 espeakup
> 1.2  speechd-up
> 2. Configure Speakup with a hardware speech synthesizer
> 2.1 Using modprobe
> 2.1.1 List of supported hardware synths
> 2.1.2 Kernel module parameters
> 2.2 Using initramfs (serial synths only)
> 2.3 Using udev rules (USB synths only)
> 2.4 Via custom kernel (serial synths only)
> 3. Changing settings on the fly
> 
> 
> Anything else I need to cover in the configuration guide?
> 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

