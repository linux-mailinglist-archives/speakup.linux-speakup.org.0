Return-Path: <speakup+bounces-1591-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGKVIH6q4Gm8kgAAu9opvQ
	(envelope-from <speakup+bounces-1591-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 16 Apr 2026 11:23:10 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9A58240C413
	for <lists+speakup@lfdr.de>; Thu, 16 Apr 2026 11:23:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=a11y.nyc header.i=@a11y.nyc header.a=rsa-sha256 header.s=dkim header.b=LDQI7TAm;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6A26B382A88; Thu, 16 Apr 2026 05:17:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 499153817A6
	for <lists+speakup@lfdr.de>; Thu, 16 Apr 2026 05:17:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2EFD23818B9; Thu, 16 Apr 2026 05:17:52 -0400 (EDT)
Received: from a11y.nyc (opera.a11y.nyc [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B63DB3806A6
	for <speakup@linux-speakup.org>; Thu, 16 Apr 2026 05:17:51 -0400 (EDT)
Received: from opera.a11y.nyc (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by a11y.nyc (Postfix) with ESMTPS id 7E482FA022
	for <speakup@linux-speakup.org>; Thu, 16 Apr 2026 05:17:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=a11y.nyc; s=dkim;
	t=1776331069;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BzUx/aWDY1DuXuWNetCmf9XPGCpPXOUqdhbGEgHuDs0=;
	b=LDQI7TAmEQ3EtWrgewK29xEQxgsVqupZfbZZr1B+aspIHBcOFI5b6C1ryaSF8zDQCGu9Wh
	6zwqdhulcAnnxICfSZxD9Sj5lJd4ncQzILYs4YmL47gyuoVFCs7wVCNAdUZthG1dLKE4La
	P+H09SMwcnne4k105oSFaorL7rDSqHk=
DMARC-Filter: OpenDMARC Filter v1.4.2 a11y.nyc 7E482FA022
Authentication-Results: a11y.nyc; dmarc=pass (p=reject dis=none) header.from=a11y.nyc
Authentication-Results: a11y.nyc; spf=pass smtp.mailfrom=a11y.nyc
Received: (from janina@localhost)
	by opera.a11y.nyc (8.18.1/8.16.1/Submit) id 63G9Hmhl393190
	for speakup@linux-speakup.org; Thu, 16 Apr 2026 05:17:48 -0400
Date: Thu, 16 Apr 2026 05:17:48 -0400
From: Janina Sajka <janina@a11y.nyc>
To: speakup@linux-speakup.org
Subject: Good News Re: What's up with dict?
Message-ID: <aeCpPE6YcHxMVjvk@A11y.NYC>
References: <adygoH93l793lxcJ@A11y.NYC>
 <adzmZpD6WdF0VHeG@panix.com>
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
In-Reply-To: <adzmZpD6WdF0VHeG@panix.com>
X-Operating-System: Linux opera.a11y.nyc 6.19.11-200.fc43.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [0.12 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[a11y.nyc,reject];
	R_DKIM_ALLOW(-0.20)[a11y.nyc:s=dkim];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[levelaccess.com:url,linkedin.com:url,linuxfoundation.org:url,substack.com:url,dict.org:url];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[janina@a11y.nyc,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-1591-lists,speakup=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[a11y.nyc:+]
X-Rspamd-Queue-Id: 9A58240C413
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

It's back as of just a few moments ago! Apparently someone means to keep it going and has fixed name resolution.

Alleluia!

Rudy Vener writes:
> Yup. It's down on panix too.
> Let's hope this is temporary. Dict is one of my most heavily used tools.
> 
> -- 
> Rudy Vener
> 
> Can monsters be the good guys? Find out in Beast Hunt Vol 1: https://www.amazon.com/dp/B0DPN1QGGJ
> Like Light-hearted Limericks? Read At Long Last We Went Back To The Moon https://substack.com/@LimerickDude
> Website: http://www.rudyvener.com
> 
> On Mon, Apr 13, 2026 at 03:52:00AM -0400, Janina Sajka wrote:
> > Hi All:
> > 
> > I was shocked this morning that my run of the mill dict query failed. A
> > bit of poking around indicates that dict.org no longer resolves. The
> > name is registered until 2027, but there's no one listening according to
> > dns.
> > 
> > Anyone know any more? Is this yet another terminal service that's
> > disappearing? <sigh>
> > 
> > Best,
> > Janina
> > 
> > 
> > -- 
> > 
> > Janina Sajka (she/her)
> > https://linkedin.com/in/jsajka
> > 
> > Digital Accessibility Standards Lead,
> > Level Access https://www.levelaccess.com/
> > 
> > W3C Accessible Platform Architectures	(APA) CoChair,
> > http://www.w3.org/wai/apa
> > 
> > Linux Foundation Fellow
> > https://www.linuxfoundation.org/about/leadership#team-bio-janina-sajka
> > 
> > 

-- 

Janina Sajka (she/her)
https://linkedin.com/in/jsajka

Digital Accessibility Standards Lead,
Level Access https://www.levelaccess.com/

W3C Accessible Platform Architectures	(APA) CoChair,
http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/about/leadership#team-bio-janina-sajka


