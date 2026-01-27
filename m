Return-Path: <speakup+bounces-1530-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMzYJSpLeWmXwQEAu9opvQ
	(envelope-from <speakup+bounces-1530-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 00:32:58 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F39619B6A1
	for <lists+speakup@lfdr.de>; Wed, 28 Jan 2026 00:32:57 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=re/QbSh7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 13238381928; Tue, 27 Jan 2026 18:32:57 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E4179381907
	for <lists+speakup@lfdr.de>; Tue, 27 Jan 2026 18:32:56 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 140EB381909; Tue, 27 Jan 2026 18:32:51 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3E14438158A
	for <speakup@linux-speakup.org>; Tue, 27 Jan 2026 18:32:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1769556758; bh=AuL5PNwzxnIEMbE6mWXqqNWlH+f385eWkwGJD91slCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=re/QbSh7lhkRrF//c9UkOusGLCfiz7akuPDdDboOUkRFaEc32L98cSa+q2c3fWA1U
	 Yd96Py26WbTOaN+Q5PN7RQZDpvvivhDwoPBa9GUajBhTVh5Kz8EXKKmQMcLwtO/yxJ
	 EvkzlcOCUjZRjOr6g9V9gUxCQzT1AK8V7XnqJYAE/nsj2XjNI/i8rtNzl/65yZ2wXS
	 MAZG1rA+Fp5PdqDn4EFraLgAOZiQscNG0u47uoJkahpFjmhD2yqZvbYNCrJkXfbNHj
	 k36XKBl2Hkkcw2aBhYeHka2THnhPSwUv2lEtFboatPODV+TurEB0g50GiGRMlnsSii
	 3cHroHuEJB3Kg==
Received: from vbox.gregn.net (unknown [172.56.84.252])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 6288734BC;
	Tue, 27 Jan 2026 15:32:38 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id B8DD3C0D0; Tue, 27 Jan 2026 16:32:35 -0700 (MST)
Date: Tue, 27 Jan 2026 16:32:35 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: TripleTalk USB via USB?
Message-ID: <aXlLExoJ1i_VdnbF@gregn.net>
References: <6c2e05b6-6cc6-434a-96a4-3a7476b18110@math.wisc.edu>
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
In-Reply-To: <6c2e05b6-6cc6-434a-96a4-3a7476b18110@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.4.3 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.11 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gregn.net,none];
	R_DKIM_ALLOW(-0.20)[gregn.net:s=default];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gregn.net:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1530-lists,speakup=lfdr.de];
	TO_DN_ALL(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[greg@gregn.net,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gregn.net:dkim,gregn.net:url,gregn.net:mid,www.eu.org:url,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns]
X-Rspamd-Queue-Id: F39619B6A1
X-Rspamd-Action: no action

The short answer is no. The ttyUSB/ttyACM interface is for usb to
serial converters only. As far as I know, no one has managed to
reverse engineer the protocol the trippletalk uses, and windows users
don't have problems using one, because the screen reader developers
signed a NDA to get the required information they needed.

Greg


On Tue, Jan 27, 2026 at 01:54:39PM -0600, John G. Heim wrote:
> Can  Speakup  talk to a TripleTalk USB via the USB cable? I have always used
> my TripleTalk USB via the DB-9 RS-232 serial cable for data and the USB
> cable for power only.
> 
> You can use the LiteTalk kernel module for a Triple talk. By default it is
> going to talk via ttyS0. To get it to talk via the USB cable,  you need to
> specifiy the device, like "modprobe speakup_ltlk dev=/dev/ttyUSB0"/ Problem 
> is, when I plug my TripleTalk into my desktop, it does not create a USB
> device. No /dev/ttyUSB0 or /dev/ttyACM0 is created. I dug down into lsusb
> output until I saw it says no device is created.
> 
> Is there some way to get it to create the device? How can anyone use the
> TripleTalk USB via the USB calbe  if it doesn't create a device? Wouldn't
> Windows users have the same problem?
> 
> 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

