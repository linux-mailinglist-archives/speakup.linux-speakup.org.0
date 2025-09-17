Return-Path: <speakup+bounces-1362-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 90AA1B8191F
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 21:20:33 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=qonaQBez;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=RyoBWYHa;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5CD12382359; Wed, 17 Sep 2025 15:20:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3B20E382185
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 15:20:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C2903382128; Wed, 17 Sep 2025 15:20:17 -0400 (EDT)
Received: from fhigh-b1-smtp.messagingengine.com (fhigh-b1-smtp.messagingengine.com [202.12.124.152])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 490C03820D1
	for <speakup@linux-speakup.org>; Wed, 17 Sep 2025 15:20:17 -0400 (EDT)
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 411147A0183;
	Wed, 17 Sep 2025 15:20:14 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-12.internal (MEProxy); Wed, 17 Sep 2025 15:20:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1758136814;
	 x=1758223214; bh=w2nn+lqSchC0qTQpUOeT9ltrrDA6HwcTDIVOrJSFLqU=; b=
	qonaQBeznOY3mMo278bNO2tT+avCk7DKcWBoWazGL2cRl/KQrpo9DDaB7YJDKSuq
	wg1sF3Vvyh89DgIxHGDHEeZVaApoII+R2uxIpSzVep6/YK6lyd4Mvp3iJlc4tBTp
	A16qkNaGZiBRQ1oT7b6wiAwGPkDCHJx0gAPoU5m4n+1pDJx5BMDcSmOwTzxD7yP9
	Fg8mlg7+OkaBg03DRaBxr7/iLiZwc9dDwtrtjnaABFCPCFIioIa9D/2jUlrznjA/
	A8UA39IXMVrWlVBIMSNJozgka/jn9OMAl1x6CWwH5rA/YzvRTukdxRxubiuu1QFf
	Ysd/4LlaHvCe7zYfgIbd2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1758136814; x=1758223214; bh=w2nn+lqSchC0qTQpUOeT9ltrrDA6HwcTDIV
	OrJSFLqU=; b=RyoBWYHa7nFeDR6XpM/z4YbuON+adwXIRzFVuFrS1nYF3cph47e
	Bz4SKaQAzRssv2klPFDLpsU7AvLhwHRZJ1iYWdCghqKhiMF/bw4sorwmUAt9nM3d
	XqhS/R0notiRD57Hdv6uFX05BLncLi+qGyMauginYE5DMjoXK5l8oPNd3GHdvtcW
	xjAsYZ8beOiBve9RxfurnVF9pMThp37PMFaCc3vVIa5tbD83t15J1KjKOd6nq7EC
	0wyNsLoNZO2gSaVxrC9Bee8Jf19am9OekD+Y41aXlu06WfATJk91tnE5bAGdJp1A
	n2wZW1+NaqaPbhm7ZDK3fbyY+gqHArno2xQ==
X-ME-Sender: <xms:7QnLaAAU0MlRVh5GHEQTf92KOWgQ6e2wUgX6F51Rb2S_PHaYkdiJoA>
    <xme:7QnLaNGRer0dyX0GuGhwPnO_3sQdNkkUWzf11c2A8xwtUQ0rYWx_XBkRHuyqH-Jfk
    zF0n9Ovm2TBUQFZQaY>
X-ME-Received: <xmr:7QnLaALq_U86j3z0KTJznF4f9fhlksGwJh5lyehznA3TVrkzszeqCCFe7n_LHuV23lJTheejU4EvfKLpdrIbKNjDFkNmsq4eEn8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeggedvkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheptghonhhtrggtthesjhhooh
    hkihgrrdhorhhgpdhrtghpthhtohepkhhlvgifvghllhgvnhesshhhvghllhifohhrlhgu
    rdhnvghtpdhrtghpthhtoheptghluhhlodhsphgvrghkuhhpsehpohhsthgvohdrtghomh
    drsghrpdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhr
    gh
X-ME-Proxy: <xmx:7QnLaJmkc1KjWXriMllqjLGQzXi1pF0jEPXWy6m2rr-dxW9AcPzYMA>
    <xmx:7QnLaATZwLrCK6PmxVTcDo1-5dhJJFUXDSoAXGT4JcOUZfJkUuSnAw>
    <xmx:7QnLaDISsdbeUXcWqI2lrozvY4O0Ye-jyV5USpsKR3QVr9JUeT2Lbw>
    <xmx:7QnLaOCRAr3Vy68Ha7wQLotxHoR6OUM4aEwa9AtUhzJuiLiVqvJFFA>
    <xmx:7gnLaAFcuXvs38ZQGD-KaNYHxdPYY7fDrmxlVZvXm1VFHaxLO_3Yoj4A>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Sep 2025 15:20:12 -0400 (EDT)
Date: Wed, 17 Sep 2025 12:20:11 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jookia <contact@jookia.org>
cc: Karen Lewellen <klewellen@shellworld.net>, 
    Cleverson Casarin Uliana <clul+speakup@posteo.com.br>, 
    speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
In-Reply-To: <aMsF4T_1FAbaFEHz@titan>
Message-ID: <04cf9485-9346-d60c-8382-c0f340d5fea5@hubert-humphrey.com>
References: <202509111603.58BG3W3p018143@nfbcal.org> <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net> <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br> <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net> <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net> <aMOwSwrEWTBtFn60@titan> <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com> <aMsF4T_1FAbaFEHz@titan>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Jukia: Well, as I lost alot of files-and-directories several years ago, 
some1 was kind enough to send me Vocal-Eyes. Your plans sound quite 
interesting. I have an outboard DecTalk USB. Obviously, if there are 
experiments you want me to run, lets tackle that off-list. So are you saying 
DOSemu won't do those same things as dos box? I still say dos e m u is much 
more friendly in Linux with a screen-reader. Thanks in advance
Chime


