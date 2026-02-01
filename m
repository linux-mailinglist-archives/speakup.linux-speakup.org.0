Return-Path: <speakup+bounces-1544-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8H+YJMm9f2knxAIAu9opvQ
	(envelope-from <speakup+bounces-1544-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Sun, 01 Feb 2026 21:55:37 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DC0C0C739B
	for <lists+speakup@lfdr.de>; Sun, 01 Feb 2026 21:55:36 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=CjJRQYzw;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 445C7382068; Sun, 01 Feb 2026 15:49:29 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2553B3817ED
	for <lists+speakup@lfdr.de>; Sun, 01 Feb 2026 15:49:29 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3A0783817EF; Sun, 01 Feb 2026 15:49:23 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 141223817E7
	for <speakup@linux-speakup.org>; Sun, 01 Feb 2026 15:49:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1769978958; bh=m/FfyDvWyOv1w+mjfJ2slHF1LXW49S2fPsLjhh3IwvY=;
	h=Date:From:To:Subject:From;
	b=CjJRQYzw56s+0FVeKXJ0pBxtQaDG+kO/TcDF3/mRPhYAX2tt1h/4wudAElFQXjWqI
	 3OVgO8We4Yolb0gsgfiyPR+wwD6fNMgHfwUSKks+5K5oHcx4uGq3yAtAO2DlYPsMZd
	 hqOCfM21puhY1/fn/yhPDV/I8SDOWT8xb4lX7vL87qxbJ64KUxwlXsQv6kr3WGZmdQ
	 lArhXY59OUZtBKyCK+I0HWJkYfSFEv5a4O2cN/7dtcIfFbg+vDjtz/t0bXWvEjaCZA
	 ArcfYtTo7q+d/dCcflFQiLtTxIr2G/apxojFxLy1y9pjRQKuqOae3WeW7iAe6D2gq4
	 Vpm4ssteBv4yg==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:4f8d:c97b:d2b6:c988:9479:9d40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 1DF901CE5
	for <speakup@linux-speakup.org>; Sun,  1 Feb 2026 12:49:18 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 75896C257; Sun,  1 Feb 2026 13:49:17 -0700 (MST)
Date: Sun, 1 Feb 2026 13:49:17 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Mourning Didier Spaier
Message-ID: <aX-8TUlSXevxffOL@gregn.net>
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
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.4.3 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gregn.net,none];
	R_DKIM_ALLOW(-0.20)[gregn.net:s=default];
	MAILLIST(-0.18)[generic];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[speakup];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[eu.org:email,www.eu.org:url,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns,lwn.net:url];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[greg@gregn.net,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1544-lists,speakup=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gregn.net:+]
X-Rspamd-Queue-Id: DC0C0C739B
X-Rspamd-Action: no action

Hello all.

Since Didier was a frequent contributor to this group, I thought I
would post this here.

<https://lwn.net/Articles/1056384/>

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

