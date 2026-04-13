Return-Path: <speakup+bounces-1588-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMmcMiai3GkEUgkAu9opvQ
	(envelope-from <speakup+bounces-1588-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 13 Apr 2026 09:58:30 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F29533E89E5
	for <lists+speakup@lfdr.de>; Mon, 13 Apr 2026 09:58:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=a11y.nyc header.i=@a11y.nyc header.a=rsa-sha256 header.s=dkim header.b=NHBJd1Rg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1CEF83825BC; Mon, 13 Apr 2026 03:52:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F2AE23817B6
	for <lists+speakup@lfdr.de>; Mon, 13 Apr 2026 03:52:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 022423817FA; Mon, 13 Apr 2026 03:52:05 -0400 (EDT)
Received: from a11y.nyc (opera.a11y.nyc [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4A4123817B6
	for <speakup@linux-speakup.org>; Mon, 13 Apr 2026 03:52:04 -0400 (EDT)
Received: from opera.a11y.nyc (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by a11y.nyc (Postfix) with ESMTPS id 63E7DFA022
	for <speakup@linux-speakup.org>; Mon, 13 Apr 2026 03:52:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=a11y.nyc; s=dkim;
	t=1776066720;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=u3k9ZLL+Np6wFzOQRKQhuncgdSAoUPBmOFKvAIMMYGk=;
	b=NHBJd1Rgkzbj5guYa3KO5ayz7u3AKlDDJVwuRqGiQ6hayC0jUD/NnfnecxsvuGWcamwkFS
	y7FLVUZd/2eq0eMrYxzH3RKiIj7rBZOzQM+RZa4Byqe/ex66g133g4dcCMyApdk1w42GGi
	t+nSxcPEFHyWX2zkSbgE2Rmn2fyg8mo=
DMARC-Filter: OpenDMARC Filter v1.4.2 a11y.nyc 63E7DFA022
Authentication-Results: a11y.nyc; dmarc=pass (p=reject dis=none) header.from=a11y.nyc
Authentication-Results: a11y.nyc; spf=pass smtp.mailfrom=a11y.nyc
Received: (from janina@localhost)
	by opera.a11y.nyc (8.18.1/8.16.1/Submit) id 63D7q06f162557
	for speakup@linux-speakup.org; Mon, 13 Apr 2026 03:52:00 -0400
Date: Mon, 13 Apr 2026 03:52:00 -0400
From: Janina Sajka <janina@a11y.nyc>
To: speakup@linux-speakup.org
Subject: What's up with dict?
Message-ID: <adygoH93l793lxcJ@A11y.NYC>
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
X-Operating-System: Linux opera.a11y.nyc 6.19.11-200.fc43.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [0.12 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[a11y.nyc,reject];
	R_DKIM_ALLOW(-0.20)[a11y.nyc:s=dkim];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[speakup];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linkedin.com:url,linuxfoundation.org:url,A11y.NYC:mid,a11y.nyc:dkim,dict.org:url];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janina@a11y.nyc,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1588-lists,speakup=lfdr.de];
	DKIM_TRACE(0.00)[a11y.nyc:+]
X-Rspamd-Queue-Id: F29533E89E5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi All:

I was shocked this morning that my run of the mill dict query failed. A
bit of poking around indicates that dict.org no longer resolves. The
name is registered until 2027, but there's no one listening according to
dns.

Anyone know any more? Is this yet another terminal service that's
disappearing? <sigh>

Best,
Janina


-- 

Janina Sajka (she/her)
https://linkedin.com/in/jsajka

Digital Accessibility Standards Lead,
Level Access https://www.levelaccess.com/

W3C Accessible Platform Architectures	(APA) CoChair,
http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/about/leadership#team-bio-janina-sajka


