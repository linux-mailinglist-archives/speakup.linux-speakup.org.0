Return-Path: <speakup+bounces-1601-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGrRMp1Y+Wk68AIAu9opvQ
	(envelope-from <speakup+bounces-1601-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 04:40:29 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 044CE4C6095
	for <lists+speakup@lfdr.de>; Tue, 05 May 2026 04:40:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=F+5NyBEN;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=tpxfbM37;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 10BCF382B50; Mon, 04 May 2026 22:40:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E37C13817A3
	for <lists+speakup@lfdr.de>; Mon, 04 May 2026 22:40:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 98427381831; Mon, 04 May 2026 22:40:21 -0400 (EDT)
Received: from fout-a2-smtp.messagingengine.com (fout-a2-smtp.messagingengine.com [103.168.172.145])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3054338179A
	for <speakup@linux-speakup.org>; Mon, 04 May 2026 22:40:21 -0400 (EDT)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.phl.internal (Postfix) with ESMTP id 6BDF4EC02EC;
	Mon,  4 May 2026 22:40:18 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Mon, 04 May 2026 22:40:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1777948818;
	 x=1778035218; bh=qA2pVNm9OdVeCLSUiHFTtO+xbkfBZZ7T0z+uiWm4sjA=; b=
	F+5NyBENlOxDky78Et6waBPx6gv1BGUQg60EQ6Awp6o/Ut97PBXtw31wHKHq4vNN
	9j/2NyOZLMKJy/W082Kcj08kyuEkX982VuohsidYqI7iqG4lT/Hooj7/KALlCf8t
	swaC4nh2WlRgSjPwkgD5ZK+U0QtV9TpzS8o4kJ25TNdjFhzmRj4sNx5QSBpBVlZU
	G1Ur9vJYF/CbMaplRxiIHuY2lbZnUXyEyj3dJ8c+I+12n5aZxTdEjLUaK+RGhz2Y
	/vrkvZNSJw4rnjXtVhmyVP5yXqrNJ9x++7Rra/LWHS7aM58pxgDbgcmMHL4Bgs16
	ejSjh3DIb2+BUfImbMNzhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1777948818; x=1778035218; bh=qA2pVNm9OdVeCLSUiHFTtO+xbkfBZZ7T0z+
	uiWm4sjA=; b=tpxfbM37FKo4PH/srmxuBKutgYvVaprj/qab/ssA4VuygHQjk0h
	S0lVuGaI6EVTn9mFtOCjqTmxocVD7fde7eKLdvygfjww7XYfKUMBXsVAehOw0l/p
	F9NIQhf6F4mXTbKSQbKrINqfXrWuxwMOvByuLcwfxyO+QchD7KhT3rF9w/lvksW+
	quLnoSzxtflcfZ3qZ2IIqqBIcalNIPOOudKVPYAjGMcB0P4a7VYVaCGdeYi9Oakm
	i3lzbZw/Gn4B5XIU2IlvUfXSj2i+XYpn2Jg9WRFt7VsO9M3ZEdnb+v7GFGwdj9j1
	YJDZH7UKRCUtMxcPI/3FxJDvpDj3CJjog/A==
X-ME-Sender: <xms:klj5aQHpDvWfQeM_vgJH5AlNVVurTf34P38Z7Aan5lP82LVGvNYJ7w>
    <xme:klj5afW6L0C4E2GaUzBBa-Ur4CnXuAF3MiyOR9BSuVUH2qnPe0hmT1L7e5HHat5m-
    l8kvmpKH9-LVFdAsVXersLtYhaB_i2Cbmp-4yCOyuXseoaeRd0>
X-ME-Received: <xmr:klj5aXyubzr_zxgpazcRlX4KvYfMfdA8Ks-VIn7BmUBcZQbEQRIOkEud_jyG>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddutddtheegucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfj
    rghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtf
    frrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffef
    ffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphht
    thhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehjhhgvihhmsehmrghthh
    drfihishgtrdgvughupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggr
    khhuphdrohhrgh
X-ME-Proxy: <xmx:klj5adP7esIaWGXpi1TfSMrb3sR8-xv2KS3NyLl2WX3tFZVw6t-4AA>
    <xmx:klj5aY5I51ZuznCk-DIKEIgNAtPC9GTHLFAMBQwUyESWEGU-b9eIRw>
    <xmx:klj5aeNjKXDjE_XmMc3wNbKCAAEBUlSML3Cs3YCdl4YUARvK2VP3Gw>
    <xmx:klj5aWksNrwIHZxceLb3WtpqeYxUuDOHp-PejFtjucAdcVOksNbZXw>
    <xmx:klj5aRUylmSj-8q6qkbIvJKmqp7cyyQnz-JJH0ptxmfc9V-R3YQiYLOx>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 4 May 2026 22:40:17 -0400 (EDT)
Date: Mon, 4 May 2026 19:40:16 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: "John G. Heim" <jheim@math.wisc.edu>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Voxin and Speech Dispatcher
In-Reply-To: <bf198396-b075-43f2-8e12-96bf7c1a3e11@math.wisc.edu>
Message-ID: <825d3926-3c9e-997d-796e-b75dd20bcaec@hubert-humphrey.com>
References: <bf198396-b075-43f2-8e12-96bf7c1a3e11@math.wisc.edu>
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
X-Rspamd-Queue-Id: 044CE4C6095
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[hubert-humphrey.com,none];
	R_DKIM_ALLOW(-0.20)[hubert-humphrey.com:s=fm1,messagingengine.com:s=fm3];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[hubert-humphrey.com:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-1601-lists,speakup=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	FROM_NEQ_ENVFROM(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]

Hi John: I've had Allison running on a laptop for several years.
Chime


