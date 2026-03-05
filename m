Return-Path: <speakup+bounces-1560-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGdWC+O6qWnNDQEAu9opvQ
	(envelope-from <speakup+bounces-1560-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 18:18:27 +0100
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4FD5121609A
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 18:18:26 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=speedpost.net header.i=@speedpost.net header.a=rsa-sha256 header.s=fm1 header.b=PSp4KEl8;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=R0qnvdoP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C7859382068; Thu, 05 Mar 2026 12:18:25 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A809038187A
	for <lists+speakup@lfdr.de>; Thu, 05 Mar 2026 12:18:25 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7069C381985; Thu, 05 Mar 2026 12:18:19 -0500 (EST)
Received: from fhigh-a6-smtp.messagingengine.com (fhigh-a6-smtp.messagingengine.com [103.168.172.157])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CCE5238187A
	for <speakup@linux-speakup.org>; Thu, 05 Mar 2026 12:18:18 -0500 (EST)
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 294CF14000A2;
	Thu,  5 Mar 2026 12:18:14 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Thu, 05 Mar 2026 12:18:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=speedpost.net;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm1;
	 t=1772731094; x=1772817494; bh=U+9t1FPTqB4wdSZC4UrkHpGOJPj6eshe
	onQx2k07ib4=; b=PSp4KEl8n8rY278hrNF0yLMRoZMa5bTfq7OPkrWjbmnALQ+I
	qacFnsAJA563d/p0D1oOUSzcGUUzzW11Rxyy19SAxrGQn/wCYOjxEFtf81Mm9/hk
	SCdJtogtFm2tcoCQ5UgsyOPEnwYYQOQawS4cI4EqV6MvaIaNA+HHFs36GuCyAy2B
	9qPVVV4OQlMDsaT94g/ihSfgB1GqKKy0wRrBAC9VnDL3mld5YzIoJWCpwL60wggF
	bd250LLJr0SjbtKTSV8Uib/hCo8V+ATec0MSTm8bNw7hMoVAhcQRcPGczdm1FVAh
	W72ioaDULh+70eITVTUa9nQdXMR1GGIcvOZ1XA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1772731094; x=
	1772817494; bh=U+9t1FPTqB4wdSZC4UrkHpGOJPj6esheonQx2k07ib4=; b=R
	0qnvdoPX/q2Qh4DmrujGAZQ8etZKoq8rkwzj15c4+D30gJwqBEqISzct0SJzFmhn
	m4jcybme7PceicmuN0D93ZDjt1iaerjoEVpInXCh95utRRQYDq8TpElyxvVAYctU
	3AIjgrzy74kHthrzrwMhjqhcqeA26QcxaHaxCda1yjpAyVR3lHuvCo1ImdaIbciC
	fdeCrqEH+YZTZbKBVWc+MS9AKJq7bQ7kMlU9jwgLl5C+W3C5fR7dkw3Eps7bqJSZ
	SlOpuKWxKPUU0UHKBhG8yoecMWKvHVso4j+KCveALFmKCnkqZWxuXGPMczEK685R
	B4DJ+wkmc4z0OArgJ6bPw==
X-ME-Sender: <xms:1bqpafCpBxOjIdFL6DEFQCepwSdoA27ovn-L8cTHkWhMUNNur4Y4fA>
    <xme:1bqpabiaxJ5V9iTIqEGyb1zwQNRCZZ0lxPAHGnzXn41QErTteCFoNKCGv4QbolXVz
    RfIlbi_DEDloe45RdPERMp5-24PsIVaDr5KN7Epd2L4-tM7W_Wh>
X-ME-Received: <xmr:1bqpaYMmoKKQviS6jHNWh24zjwSaQ8jZRrHVX44c4sXiihMfyUZU2eK2P9nyjXaI8TXPLvYordNDFEVBl8hdiTUancG5-njPwUFHezqRDA4t>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvieeileeiucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurheptgfghfggufffkfhfvegjvffosehtqhhmtdhhtdejnecuhfhrohhmpegkrggthhgr
    rhihucfmlhhinhgvuceoiihklhhinhgvsehsphgvvgguphhoshhtrdhnvghtqeenucggtf
    frrghtthgvrhhnpeduueekheegueegveefgeehvdettdduteeikeekfffhfeeifeffueff
    gfekffetueenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpeiikhhlihhnvgesshhpvggvughpohhsthdrnhgvthdpnhgspghrtghpthhtohepvddp
    mhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqsh
    hpvggrkhhuphdrohhrghdprhgtphhtthhopehjhhgvihhmsehmrghthhdrfihishgtrdgv
    ughu
X-ME-Proxy: <xmx:1bqpac5gaGP8Nn6lWhCGW9WpL0azpWl1CsXSlrGD66RXAUPCG0d2_g>
    <xmx:1bqpaW3JGOYTdAauzOLggJpkJxISyJbjiBHWEG7zocGkpi09BXFf9w>
    <xmx:1bqpadacmRHE1bSvdR3oAAGNfBHE5LeYX8w2VS28-1utP4QMbJTlEg>
    <xmx:1bqpaeC9LIaawx-bxmA54PYzfMGLT88ChKtQwvZxdxmVrEDwhf1fBQ>
    <xmx:1rqpaexSBbQbyxZO4Th8hEuOmUXbB-2n-vn6p6-vUT0eb77WtRgLmkWm>
Feedback-ID: i8bec41fa:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 5 Mar 2026 12:18:13 -0500 (EST)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Zachary Kline <zkline@speedpost.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (1.0)
Subject: Re: Notes on automatic load of kernel modules
Date: Thu, 5 Mar 2026 09:17:52 -0800
Message-Id: <349ED2EE-8B49-4B1B-B035-1405F172E825@speedpost.net>
References: <c9ca0abd-8b7f-4058-bb9f-89889c225b99@math.wisc.edu>
Cc: speakup@linux-speakup.org
In-Reply-To: <c9ca0abd-8b7f-4058-bb9f-89889c225b99@math.wisc.edu>
To: "John G. Heim" <jheim@math.wisc.edu>
X-Mailer: iPhone Mail (23D127)
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Rspamd-Queue-Id: 4FD5121609A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.89 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[speedpost.net,none];
	R_DKIM_ALLOW(-0.20)[speedpost.net:s=fm1,messagingengine.com:s=fm1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[speedpost.net:+,messagingengine.com:+];
	TAGGED_FROM(0.00)[bounces-1560-lists,speakup=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_FROM(0.00)[speedpost.net];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	APPLE_IOS_MAILER_COMMON(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,befuddled.reisers.ca:rdns,befuddled.reisers.ca:helo,speedpost.net:dkim,speedpost.net:mid,wisc.edu:email];
	FROM_NEQ_ENVFROM(0.00)[zkline@speedpost.net,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Am I missing something, or can you not simply compile the kernel  with which=
ever modules built-in you want? Is that not done or doable anymore?
Sent from my iPhone

> On Mar 5, 2026, at 9:02=E2=80=AFAM, John G. Heim <jheim@math.wisc.edu> wro=
te:
>=20
> =EF=BB=BFI've been on the systemd development list where  udev  rules are d=
iscussed. And  I've learned that what we, as blind system engineers need, is=
 not udev  rules. What we really need is for the speakup modules to be inclu=
ded in the Linux kernel.
>=20
> I know the experienced people on this list are listening to that previous s=
entence and saying it's totally unrealistic. But what if we asked for just o=
ne hardware synth to be included? The core speakup module and one other synt=
h?
>=20
> A blind sys admin would have to have one particular synth (or one that emu=
lated it) in order to automatically get speech upon boot. Limiting it to  on=
e particular synth isn't as unreasonable as you might think. For one thing, t=
here probably is one synth that is way more available than all the others. I=
 am guessing that is a BNS. But it  might be LiteTalk. We could decide that a=
mong ourselves. And then, if you didn't happen to have the synth we settle u=
pon,   you could build it from a Raspberry Pi.
>=20
> I think this whole question really depends upon how important Speakup  its=
elf is. Is it even really worthwhile trying to solve this problem at all in =
 the 21st century? I don't know -- I'm retired. It no longer effects me.
>=20
> The thing is that Linux systems engineering is only getting bigger and big=
ger in this modern world. Who knows what AI will do to it. But right now, Li=
nux systems engineers are  in extremely high demand. Every data center on th=
e planet runs on Linux. And there are a whole lot of those. I think the big d=
eal with that is the trickle down effect. My job at the University of Wiscon=
sin was to run a cluster of machines students could learn on. The guys who i=
nvented ChatGPT started out as undergrads somewhere and somebody had to give=
 them  a place to  test their code. That was my job.
>=20
>=20
>=20
>=20


