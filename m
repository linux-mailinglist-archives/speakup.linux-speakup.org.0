Return-Path: <speakup+bounces-1594-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DxBI2Je8mmkqQEAu9opvQ
	(envelope-from <speakup+bounces-1594-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 21:39:14 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B9E8A499D8F
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 21:39:13 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=fRp9Zs3o;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=Z9C0m+Vd;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 956D6382B4D; Wed, 29 Apr 2026 15:39:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 73130381902
	for <lists+speakup@lfdr.de>; Wed, 29 Apr 2026 15:39:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4C2FF382AE0; Wed, 29 Apr 2026 15:39:06 -0400 (EDT)
Received: from fhigh-b7-smtp.messagingengine.com (fhigh-b7-smtp.messagingengine.com [202.12.124.158])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A0AFA381902
	for <speakup@linux-speakup.org>; Wed, 29 Apr 2026 15:39:05 -0400 (EDT)
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 88E147A012E;
	Wed, 29 Apr 2026 15:39:03 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Wed, 29 Apr 2026 15:39:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1777491543;
	 x=1777577943; bh=w+aGh/JNG85ApaegjN21kRFBVpU5b5qE5wTdHGzLfVQ=; b=
	fRp9Zs3o4M1EVdOuUWavtzEM9QsSD2MIfTR9UiEa1neX6EqTRPiUKyl0vE+D44X6
	zodhL3NswjODSexBQlepQfKx/Ll5oPKmv5Kb6qw7u6HqfDXnUJpOUA/76CbGIf8Z
	7QakTSWm7FLtQmJFzLxLt1Jp3bilZisIzW3WRAH4uk8BAZ/JdNY2sP0Z0w1Z9XLW
	E/p++3GQK6JxnecHREjT1kP0PORvKlw4gL9GC+BHdHLxeAW9C0sxUGF0ZustrcGA
	gVHb1NGA/jlg4fRkJTmPtj67i0VczcY/Z6KBJ6As7zAK+xKAMD+Q6vo+FJZJH3Dc
	zvwU6k1KiueumwfRFu0DOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1777491543; x=1777577943; bh=w+aGh/JNG85ApaegjN21kRFBVpU5b5qE5wT
	dHGzLfVQ=; b=Z9C0m+VdIytUVscVyJDKqW5gRM33qGkqzS6eHE+xZgYvCUUbtVk
	bSETa8NoSegYqb3sz7+Q65puX7LUnAdmXyiK1IMseynbHqZ/B11gGw9lw5yUMLHp
	kH+GTqldkGwHBerzVu/BFRpP2ZSD8UKGOe6Uf14BxKB2Ii6fdCcxEIvfpGIuyJ/m
	ndPm2nAbjZaK8L9AMcm0Wbpc4OgJ1Z7BX40uR1cCX86VLJ+RHyDF5/eW2XLCJdY2
	XWvHZtGckTsBwc354m6ObCo7Ni6wPWVeQv9fvcEPthp8f6mT5icvDQNPgv64x9m6
	CxQ7bRCLYpfMHqWZ+wzRsOQI+vR+18XV/Ew==
X-ME-Sender: <xms:V17yadYTZZgMMhaCK2S5QY_fqe3UQ4AtdodSGrvjRjBLbKUggVy5KA>
    <xme:V17yaaZVt2h2SrGU1j9JFJ2jhmTfl7kXKpK0XWUGK4cFOo17TV-MFXM5zqDybJjNZ
    -6pRI0OyHqTF45eBsVBSt3_D-ZN7om7tKlaO-mJA9LPjaypOokYVQ>
X-ME-Received: <xmr:V17yadmRU2q2qpkrpIQ-HKBN_11px3s9-cbP05aJsUS9repPo0RkCHN5vtKC>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdekheeftdcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:V17yaWxYhCSDSYvsX_7GMlXedFejTHKn3Mc3PvfIiPkwcWTcSpUCWg>
    <xmx:V17yabMrIYkfzAjWG98s0s_pV__J5whRsYD4x-xQaoDwE3E-3QY3Iw>
    <xmx:V17yaaRY_lD3xoeB4b77BPk5scLiLj4vP2coOoMTR9bZ3uuuPE5RVQ>
    <xmx:V17yaZbIs8qXq00IrazWfFpLjmfBw3t-VCIeIr3gw9b-c00zjqloXg>
    <xmx:V17yaWKxu5Iy6C049buiUE_8fJJcpzn8OvWA3yz_iSh3r4QTMwgCHH2c>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Apr 2026 15:39:02 -0400 (EDT)
Date: Wed, 29 Apr 2026 12:39:01 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: "John G. Heim" <jheim@math.wisc.edu>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Update: Rewriting docs plus RPItalk
In-Reply-To: <9a2d720d-2a18-4fea-825e-c1f45e905e74@math.wisc.edu>
Message-ID: <2ffccb83-11a8-9d01-4a9b-6e6615b916cb@hubert-humphrey.com>
References: <9a2d720d-2a18-4fea-825e-c1f45e905e74@math.wisc.edu>
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
X-Rspamd-Queue-Id: B9E8A499D8F
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
	TAGGED_FROM(0.00)[bounces-1594-lists,speakup=lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hubert-humphrey.com:dkim,hubert-humphrey.com:mid,befuddled.reisers.ca:helo,befuddled.reisers.ca:rdns];
	FROM_NEQ_ENVFROM(0.00)[chime@hubert-humphrey.com,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[speakup];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]

Hi John: I looked for your package in SID but at first aptitude said the 
closest would be
tzdata-forky
But I don't think thats the same package. While I don't have a pie, I certainly 
would like to improve my DecTalk experience. Thanks in advance
Chime

