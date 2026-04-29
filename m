Return-Path: <speakup+bounces-1596-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2No/JrmI8mlEsQEAu9opvQ
	(envelope-from <speakup+bounces-1596-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 30 Apr 2026 00:39:53 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F383849B1AF
	for <lists+speakup@lfdr.de>; Thu, 30 Apr 2026 00:39:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=AwFiNVAu;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=n6N8VamW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 76A26382AEF; Wed, 29 Apr 2026 18:39:52 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5542B380613
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 18:39:52 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1C677382AE6; Wed, 29 Apr 2026 18:39:46 -0400 (EDT)
Received: from fout-b6-smtp.messagingengine.com (fout-b6-smtp.messagingengine.com [202.12.124.149])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 429E1382AE0
	for <speakup@linux-speakup.org>; Wed, 29 Apr 2026 18:39:45 -0400 (EDT)
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.stl.internal (Postfix) with ESMTP id 7624B1D00144;
	Wed, 29 Apr 2026 18:39:44 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Wed, 29 Apr 2026 18:39:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1777502384;
	 x=1777588784; bh=j0DXldwjbLymnCv1LxZvv5BEmnHLUQwOMkvoRYq+nbw=; b=
	AwFiNVAuqAPapVGA8012hqXi7ZU4g7lB7x+Gfjbp8PmKdCsoEhjSk24lbTiG/rDe
	+P64KyLWl9PJxhEOpXoo8YOhOynsitZ9LQLbFBrFm4KGsdUo5zr7i0FX0+rem1Rj
	Z5zNCtn54FSe8x0aFICYtqzOsW3KHEhtnemh/kBJKCvsj01AtdFDP7nzCUquzCkq
	NFltUAWjytV10XhpmKpO1DfdcCcqeMLfL+Ps0ADfvT04G+u14y2XpNP+Zwx2xk4h
	lObsmrp/NBNZ/cXQII3Gs/bB4Yc1wuvj32A7Snqe/3TXkCc6s1A4yiGyi3HpNw3B
	ts1VIlCfhvrMMzbYXUopWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1777502384; x=1777588784; bh=j0DXldwjbLymnCv1LxZvv5BEmnHLUQwOMkv
	oRYq+nbw=; b=n6N8VamWdXUeJgv4uFKE1ddOVp/UdXoP+ALwafmoHiPEkjnGg7A
	qv+zu7mr5/ZfuIKvhq67dC9Rl24trSbEwm4owE7HCgBd41dWV82gqGyrY/jn/G/g
	c3cPS0dKRvbXO1b0NGdGen6a3Nek4grWJFM0S4zR2hgy00j4eaXIYoQl1sWP7dY+
	ADayTP12BYFrZfaPuXpwxh/tQV8092fu/ShHG1pB+poeClr4gWGWdxefQklT24Bz
	qUUB5Cx+IXVFn6wvo6KbGfj1d7XbKI+4akSqm5vmHzEjtlPazxE43LL34oiNy/xW
	eVegUFvqqF1fCMq+oV9jH3Dhz13H3xAkw8A==
X-ME-Sender: <xms:sIjyaZLy3l8ewAHHgD16937t5tkSNxLTmc_jEulAKL_I2_8ZWc0bKg>
    <xme:sIjyabITCDPlLz5XJ7ckbS9i9I0nJ8mWdYIVFUe1uunI4MC3VG4hMvtHic1XcotiU
    wZxkaFhPb0hzSfR9QcAJvU52BvmlgHOEoEd5M2JtLP3LdKD99-NxlU>
X-ME-Received: <xmr:sIjyafVEg7RWdurgPN1ZcwvxIZRJxUSb84JJUulssqW3pbpjG4mudUfDTcT7>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekheeiiecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:sIjyaVjDjvsLagWp9QilASHx5UJxGQ2_-TvSrb2zhPRv5Xp61yfj9A>
    <xmx:sIjyaS-6MK5Z2ljtAV8RaRuEUfRvzQMWweDPkZI5SG7FlMoy9EPV9w>
    <xmx:sIjyaXBr8fR6LBKBDktJ7cG7DW2hGuy1YYbu-b-qyv9TmegAyJKDGw>
    <xmx:sIjyaXIRJjioWNehkCLYlLTZRLYTKyRrVDXs9AeEe_vNj5It4rIbnw>
    <xmx:sIjyab4XWy_cDVpifxvbLIpTK0jsrw5ZYCXRA4pHj00VIS9yfM6-VV0M>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 18:39:43 -0400 (EDT)
Date: Wed, 29 Apr 2026 15:39:42 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: "John G. Heim" <jheim@math.wisc.edu>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Update: Rewriting docs plus RPItalk
In-Reply-To: <4c2f88bf-bac9-483e-897d-f59a55cfee6c@math.wisc.edu>
Message-ID: <41d516f7-9409-e123-89fa-aed5964ac8d0@hubert-humphrey.com>
References: <9a2d720d-2a18-4fea-825e-c1f45e905e74@math.wisc.edu> <2ffccb83-11a8-9d01-4a9b-6e6615b916cb@hubert-humphrey.com> <4c2f88bf-bac9-483e-897d-f59a55cfee6c@math.wisc.edu>
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
X-Rspamd-Queue-Id: F383849B1AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-1596-lists,speakup=lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	FROM_NEQ_ENVFROM(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]

Well, thank you John, it was just
sudo apt-get install rpitalk
Immediately I heard Allison say "starting rpitalk version 1.2. That came out of 
my sound-card, but now just likke when I run Voxen, I cannot play mp3 files 
with mpv with an alias, but just typing mpv  it plays.  Here are both outputs
which mpv
/usr/bin/mpv
chime 19:~> which mpv1
mpv1:    aliased to mpv --really-quiet --no-video --audio-device=alsa/plughw:CARD=DGX,DEV=0
Back again live, usually when this happens I must kill processes for 
speech-dispatcher-and-related.
Chime


