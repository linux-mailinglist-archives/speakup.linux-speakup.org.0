Return-Path: <speakup+bounces-1577-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eF13K5zs0mk6cQcAu9opvQ
	(envelope-from <speakup+bounces-1577-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 01:13:32 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D0B0D3A0203
	for <lists+speakup@lfdr.de>; Mon, 06 Apr 2026 01:13:31 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=fADjlMlF;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=aNk9RBJJ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A7BDE3825DA; Sun, 05 Apr 2026 19:13:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 88A9B381925
	for <lists+speakup@lfdr.de>; Sun, 05 Apr 2026 19:13:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5A61C3823AF; Sun, 05 Apr 2026 19:13:25 -0400 (EDT)
Received: from fhigh-a5-smtp.messagingengine.com (fhigh-a5-smtp.messagingengine.com [103.168.172.156])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8AD72381925
	for <speakup@linux-speakup.org>; Sun, 05 Apr 2026 19:13:24 -0400 (EDT)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 3F0BD1400142;
	Sun,  5 Apr 2026 19:13:21 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Sun, 05 Apr 2026 19:13:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1775430801;
	 x=1775517201; bh=0nJVFeWZwQYstzNpU1k2YePEGAi7aXz6Sgo4SFPLIcM=; b=
	fADjlMlFZlbEvbqMOtgslkwu0oi7z7Cjrj6Se+ycOTy6KCTjSMuDSUN6iIuJYoHO
	h+TwM8yflqHY7GZqWa53HWF6W3NEjudwqHWTHCkEk6lTwDJ4PTY0Lb0Mkn+8ZCsc
	DWxJrTYxBrdLZ4+vd0VUW0y8NP44xubCZq1qJ2MIMy53Mb4zM6Ft55D3Mqw2meFf
	eVNxItqvy39QiuMOJfM7PzUoBBXfnbRB6I9b2S3pcYPNgFJfZrABovVUM4kqmnUg
	Iu+kzRYiAQnOYl9pJ+UpBWDpkCvdq/F1B64e4j7bEXUbJ4PmngJSuQBi0V9gACCD
	NHtaQBMa2M9kNhuL4lgjJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1775430801; x=1775517201; bh=0nJVFeWZwQYstzNpU1k2YePEGAi7aXz6Sgo
	4SFPLIcM=; b=aNk9RBJJHQSiZPk9iA+Opm+gKdI2Xi7BvaCGeb5tt4wyILoPHS5
	lMw3jIWR0dQjEpRgdcbb9C4ygiYF0XwOE+HQoKBzMr/ruRuAdbstZeoY9o5wXbJz
	WWflpAl9xflOm7s8R7iekE7ICfHMfuWa/1oBDf0fh0nXLOmmKio9KjTs5cMshQ/m
	yh4Mhvx2JOgGLta1p/ElSft/+sOdvbfTUPSfHfc5mOWz8hVBBqtNFjF/Z19IdhEr
	2yus0WKKfIDEJSQx/LU9bQ9mr1T1G0q4oXivh4CiVAl9o4nieLcyRQuQwobqwKKb
	pZvoAmm2mS8HSNS4/XTjBZ/YmgHLHbbO1GQ==
X-ME-Sender: <xms:kezSaY23wChwM-S5ugRo79he7-RRIdir8Tm7kChK8cqqVjs5RAQc5Q>
    <xme:kezSaZF0htNkbf4nejYrszO-gsaj-0Tx7BAOj5NVs6SdBwzAn3OckIVBCKlPiABge
    FASMfDJF6z4HQ7vA-h5viOVlJKCncUzU5_HHb1bKBKXOnjsz3Nfjyyv>
X-ME-Received: <xmr:kezSaejd7kRRuvkwndfmaPi2xVenMuj_ZYRCHkhgDJV3_tmM6m71TscQBcCN>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduiedtkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepjhhhvghimhesmhgrthhhrd
    ifihhstgdrvgguuhdprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghk
    uhhprdhorhhg
X-ME-Proxy: <xmx:kezSac80zd7J8h4JEi0bnNEvuz72xjgUtf3RyNPpr202ezDrG7lBxg>
    <xmx:kezSadrza1W0NK9I_3Yg2liCWaKJV2XHEV9SSmxsOKv0MPbyAYY6AQ>
    <xmx:kezSaT-bnNIDviJsbNOiDDDaDrDFBo9NjflCVB9q1eY61hRLCwEo3A>
    <xmx:kezSaZVm0fu7Jvzzn73kAuQ6God_SFB32GLy6F2mkjsp5sMKKAQv9A>
    <xmx:kezSacFLxafgEkZLM4M1yWXTmXlHzOVDml5z-LVCeXyO332GawVJcar3>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 5 Apr 2026 19:13:20 -0400 (EDT)
Date: Sun, 5 Apr 2026 16:13:19 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: "John G. Heim" <jheim@math.wisc.edu>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Rewriting the docs
In-Reply-To: <82e78ba4-2fea-48a4-83d5-52bd232771d8@math.wisc.edu>
Message-ID: <94d40f14-74a0-d3d7-1de1-5102bddede4d@hubert-humphrey.com>
References: <f73d1414-0f07-471e-a160-4b40eb0346e6@math.wisc.edu> <adHSoyDi8VElDn6Q@gregn.net> <cf50432b-faed-7951-68f8-539f925658fd@reisers.ca> <b5f9d2bf-6f29-4a85-9ced-7bd850288258@math.wisc.edu> <2dc638d6-061e-3ba1-029a-24b3593dca9c@reisers.ca>
 <82e78ba4-2fea-48a4-83d5-52bd232771d8@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[hubert-humphrey.com,none];
	R_DKIM_ALLOW(-0.20)[hubert-humphrey.com:s=fm3,messagingengine.com:s=fm2];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[hubert-humphrey.com:+,messagingengine.com:+];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-1577-lists,speakup=lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	FROM_NEQ_ENVFROM(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D0B0D3A0203
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi John-and-All: I think you covered just about everything, but certainly 
surprised you left out our favorite hardware synthisizer DecTalk. Also, if it 
weren't for the late Bill Acker, who was a big Redhat/Fedora guy, who set me up 
with Dec PC drivers in September 2003, my Linux journey would have begun much 
later. In 2006 we actually had a ceremony when we got rid of windows. I eventually went to Debian as they have later packages. 
O, another screen-reader you didn't mention was YASR. Thanks for your wonderful work.
Chime


