Return-Path: <speakup+bounces-1610-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG4lJfDHHGrtSQkAu9opvQ
	(envelope-from <speakup+bounces-1610-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 01 Jun 2026 01:44:48 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A17EB618534
	for <lists+speakup@lfdr.de>; Mon, 01 Jun 2026 01:44:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=Tc6f1n1D;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=PG6fVydf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D31B03828C0; Sun, 31 May 2026 19:32:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B10FF381976
	for <lists+speakup@lfdr.de>; Sun, 31 May 2026 19:32:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 87BF6382384; Sun, 31 May 2026 19:32:16 -0400 (EDT)
Received: from fout-a3-smtp.messagingengine.com (fout-a3-smtp.messagingengine.com [103.168.172.146])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D3BD8381976
	for <speakup@linux-speakup.org>; Sun, 31 May 2026 19:32:15 -0400 (EDT)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id 2087AEC00DB;
	Sun, 31 May 2026 19:32:13 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Sun, 31 May 2026 19:32:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1780270333;
	 x=1780356733; bh=qG4fIQQGHDRB420Fy6bpDYJC/81p5VuFLW6Ad6bdCLg=; b=
	Tc6f1n1Di6pfzP14qRyshNQJ/y1PWTL5amv+JQUu/mP0Vb5eHXfeATi1nIg60pg1
	yuGBgUO7cBSZLWM8GO1BQjX/jx4llsvyXaPVJOohXOS8+czxoTPUJ0u8Bn2g7wpC
	N008q9JBMlsRIXtv2+6UosrwqUVuXm9NuJW6Ty6RZ0p5+8ZTjvxwEehgEJLGP0bq
	6UvYHRUkqEseOUIuG/0BH/mnhRIOzJ3iN7w7KS6LNbl0/oLD8szlJDFt64iV6C/F
	q+jjTOZIj/NpFcL8d8BxzyDuIYz3ryvAx8XC2LwnP2IEfdAsMqvPsw79Mg+bn3JL
	QvSLHkfSh6PoXXZn4JNqBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1780270333; x=1780356733; bh=qG4fIQQGHDRB420Fy6bpDYJC/81p5VuFLW6
	Ad6bdCLg=; b=PG6fVydf50mNA4YGhxBHKkZALdcJlkqZOHqoQf87VJEOwcahItR
	XfFZYcJbU8ZcibTWiSVD4Ghor0R7X5LfB7Jee44xk9JAvHSnRzdgXGy5wgex+6yZ
	AWdAdbxDXOBo0QRhd4UMDq8BIs5meixnSnxNCbHy+TWYuOh6FNfT0xkE6FpU9imQ
	ifKoySTLXkEADR20xIk9NV9Y8JP8ySqy74DplUgJ04uClYvujniEbkz9YSz5rFUu
	goCWHtKnGPhLfcLsSjseo8i/K+awsty7d84FoVLg8E6gwGWtEVNztTriUmHJFNaT
	Dc93CmyvNzj3WmQxOUnBoIkjnAcqwI1FVnQ==
X-ME-Sender: <xms:_cQcak_cJfzH-MNZBSJtfpFENkNnf3RGThxdFLeBinzSYnU0KGuFyg>
    <xme:_cQcapC0jLz_5MMkiqfTCS_roSyU0j6eUQjGhGmC1ymQT3av0NYHNNZh8vbjV4q37
    C5dMVVb4yhElEU2WC8-PouHPM7qwSZ825qt0GTmCWjPj-m3LOYg9pY>
X-ME-Received: <xmr:_cQcasxK4RUJQBAiGiehsXf4C02wY-4e-rvgWwWAPU8cpSkaVwYiPT_rnQgS>
X-ME-Proxy-Cause: dmFkZTESsJPirnoje6SU326PlT1uWEWPs1deUpFgprs8ksiK6QbmMbj5Jesf5TL+ukTY4L
    svz5eIaOQXcXTZh0g9FtNTZACXbQxD8dFbCOAoNBtaIbes6el1/N2N/2SNaL+W44kfbz/o
    scA1Fqs/i6HCVbhVbTECiPJsoLjEl5JUlNVKd2dhkG7BvomfRm0RBOA8bwaowWjzop7fSc
    ocByXIFuaMg0s5lx+7QBtpvnSHBIvgjhiJ3mqgcc2p44eEnqUCifp5Q2WkDB6bcMIKxWh/
    mnRutiYsgL2PrZPJSM1OS8DJpba2NuOlLVYSDXqwUebpJXAIFUJv5l2UegmnmXYtZaz3az
    rZgUZJL4Sb+RwnGLpP/zcdrDwNG2NQCEQHTg5gbu18rt4TBLScVleUmXq7/FzNWc9t7Jft
    v6N2NDOCYMBXXWTGJHGfQ11EZW2iOw53NSAGtjpcoJWQF+TXgbe3Dm1waXYYvYf79wTH1m
    kTY4O/um78tGGxydFwtJ0BUKFFVIpn/As2eKIHg7arw1ghPE+5JJCVkixbfx4FbbggDyOd
    /jPEsrSJK3ntFFF6m3vwxmSmwTsSciaRyENkS1uExmkyrMz0lmKiu4XcXFNZRU4iGLO6AC
    uQ3toLx1qZCPio8wkLLB4e/F4sL+UPi4502LcGOjekiwUy6sw+zG8hjJUi+A
X-ME-Proxy: <xmx:_cQcamTAw27A_NaWjZQZgkw_jZhVJzeOPnEp3Bsfufkmcv5rlOSk8g>
    <xmx:_cQcar-4q1BlXklzcVF4hPolRQln8W8yzYH5Y7lM8baOqWDLpjfrmQ>
    <xmx:_cQcalqMB7v5J5Pvj84mFJcLZv4eq31HmrHcoccIGDTXu5JRt79QUA>
    <xmx:_cQcagkcDsNdU5d5sZPKRtZj7MS1FpTHBhwAmsBWaytsOdMlRv4EqA>
    <xmx:_cQcasQeY594uWm_9YK8awS5YnV8Qr3PAI9L88_CsVdBghNOswjxg2Nx>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 31 May 2026 19:32:12 -0400 (EDT)
Date: Sun, 31 May 2026 16:32:10 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: K0LNY ?? <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: you killed speakup
In-Reply-To: <03d401dcf154$c5e86180$8d01f80a@nucwin10>
Message-ID: <aaf97d32-facf-cb71-8c00-fa20e22bfacf@hubert-humphrey.com>
References: <03d401dcf154$c5e86180$8d01f80a@nucwin10>
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
	R_DKIM_ALLOW(-0.20)[hubert-humphrey.com:s=fm1,messagingengine.com:s=fm3];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[hubert-humphrey.com:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-1610-lists,speakup=lfdr.de];
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
X-Rspamd-Queue-Id: A17EB618534
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Well Glen, you can easily kill Speakup with the print screen key, also by 
pushing insert+the right insert. Maybe some would say insert+numpad0. Both of 
these are on a console-by-console basis.
Chime


