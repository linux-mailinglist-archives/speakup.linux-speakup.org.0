Return-Path: <speakup+bounces-1421-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0248FBA25A2
	for <lists+speakup@lfdr.de>; Fri, 26 Sep 2025 05:53:06 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=daQN8Q63;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=VFBdPun1;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F148382BAC; Thu, 25 Sep 2025 23:53:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4EB2D3815E1
	for <lists+speakup@lfdr.de>; Thu, 25 Sep 2025 23:53:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0CF423815CB; Thu, 25 Sep 2025 23:52:58 -0400 (EDT)
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 72A533815BD
	for <speakup@linux-speakup.org>; Thu, 25 Sep 2025 23:52:57 -0400 (EDT)
Received: from phl-compute-12.internal (phl-compute-12.internal [10.202.2.52])
	by mailfout.stl.internal (Postfix) with ESMTP id 29D141D000CC;
	Thu, 25 Sep 2025 23:52:55 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Thu, 25 Sep 2025 23:52:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1758858775;
	 x=1758945175; bh=fymB1m13fMa3yyYFfUa+GnDMehIXijCFmFo6gY938Os=; b=
	daQN8Q63Av72zmA7sJ6oCMgBvixtC2NXBWoj2za5o1wD5UD1MSHE+PjOtwh078oG
	0y6bo5oIN2YpACFTvbfCvF3uN94Iz7jm9X/2FdMzdcKaA2WIaYHURit3E7HmfB4D
	GQ1XsAVoVUrH2++Ge2mzHdWxkiqrSQY4TkIAKu+wqeHe/RgFJEFzv4l7VVPr3TpV
	yLR/daf8gcY4zWVI22CiDb5wN/7Rx9uE7dJZ76Lb+P+vhJKcoxl58kJGavGYCJnO
	HpTdEKmIj7rRr2fT3h1Z2zYx7iO/9sK+CVKMTXUv0XZLzYsE7t32HPtzXkzIQG9o
	T/LNAUgedeIW4hGSvm9WNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1758858775; x=1758945175; bh=fymB1m13fMa3yyYFfUa+GnDMehIXijCFmFo
	6gY938Os=; b=VFBdPun1bYYAVaIGLUqZpdQVqTieLFP6qj3l77OqVM13kUMwvzS
	jaYACxl2ZOlUZivZYIokjRgJ7iE1qqD5qixvd47IElJcAauyvvmjO47DTVU8PbW1
	Iw8cWGk9F47z4VgJ05uhzMUIqZPjMwazt29kSpkvZxuskVTXBSDK5XgpQBbaOwnc
	7s70gTq+YRxLskBuCJO2WuHje4jfY3+j9bYv5niGHTpUrXMAKQm6EHvF3dpbtevf
	BJiq4tYEnn5MOrH9FwsnTBEarDTxp6IBRO6nHbRV7ZsJXHaAxdTlqk60duYH/SkP
	9x3ddKMjkKk6L7+NkktESyaf/AKU6nJJh3Q==
X-ME-Sender: <xms:Fg7WaDxDAE8ZLL9sbWy1a2ZqcxLOfAP8sRuzvYPx_2-0FClhlHffEg>
    <xme:Fg7WaEn4wcZhizAeOoAYL5BSZdlOkH2-D-vrW7wrhP6xC3f15KJTF3GlFNiFhbIta
    meogFKJdUVtsX0RwHFwio5UOfe6tumbsVIKNmHr6Wl_ZnD7Td1kKQ>
X-ME-Received: <xmr:Fg7WaEkcan1-HFATC7uhtO8Bd2iTCwx_nwh2mrlX96NFkM86IBK-bBKpMAHbP3bCWxr6QvypH06vRqhJdZwKEdbGNSH3YMwNuGo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeikeeffecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepiedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepjhhhvghimhesmhgrthhhrd
    ifihhstgdrvgguuhdprhgtphhtthhopehklhgvfigvlhhlvghnsehshhgvlhhlfihorhhl
    ugdrnhgvthdprhgtphhtthhopegtohhnthgrtghtsehjohhokhhirgdrohhrghdprhgtph
    htthhopehgrhgvghesghhrvghgnhdrnhgvthdprhgtphhtthhopegtlhhulhdoshhpvggr
    khhuphesphhoshhtvghordgtohhmrdgsrhdprhgtphhtthhopehsphgvrghkuhhpsehlih
    hnuhigqdhsphgvrghkuhhprdhorhhg
X-ME-Proxy: <xmx:Fg7WaOy_E6yVXZI0PlO0oIRY0luLHSUmsJhLiDCYJ6P-CCB1betv6A>
    <xmx:Fg7WaBo2b6Ywv_Q6njc4Q5YqdcOBpnSt8JiifXi-kDHw4jAkggg74Q>
    <xmx:Fg7WaF5puzJSImbi0keTwaS3wZi-US1XS9UW_NVhPGAnXT_nao45-A>
    <xmx:Fg7WaActYow9zl60W62XHveQPKQlJWLRnQwtQAq5j5gawcvH_5JmAA>
    <xmx:Fg7WaAfIuZ3IOeksQm2uY6qxHhwyb-KPg5C-nSu8tDlJ_w8rvaI-Mycu>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 Sep 2025 23:52:53 -0400 (EDT)
Date: Thu, 25 Sep 2025 20:52:51 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: "John G. Heim" <jheim@math.wisc.edu>
cc: Karen Lewellen <klewellen@shellworld.net>, Jookia <contact@jookia.org>, 
    Gregory Nowak <greg@gregn.net>, 
    Cleverson Casarin Uliana <clul+speakup@posteo.com.br>, 
    speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
In-Reply-To: <15afdcb8-ebf8-4e8b-a139-03be2da5c7fb@math.wisc.edu>
Message-ID: <c1851576-7f12-132f-2bb4-352248ac5e6d@hubert-humphrey.com>
References: <202509111603.58BG3W3p018143@nfbcal.org> <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net> <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br> <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net> <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net> <aMOwSwrEWTBtFn60@titan> <aMTOpzhGX72PC_2S@gregn.net> <aMVgIfSRDN3Uewj3@titan> <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu> <aNIv2l1tKiR26V-R@titan> <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu>
 <Pine.LNX.4.64.2509231554180.4080399@users.shellworld.net> <d8d6dfa8-db72-43e9-80b6-9a0053e31b2c@math.wisc.edu> <Pine.LNX.4.64.2509242315480.4100948@users.shellworld.net> <fd0c0d0c-ff55-40ff-a65e-3e912a03f5ba@math.wisc.edu> <Pine.LNX.4.64.2509251917520.4128886@users.shellworld.net>
 <15afdcb8-ebf8-4e8b-a139-03be2da5c7fb@math.wisc.edu>
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

Hi John-and-All: In October 2003 I had a dual-boot with windows-and-RedHat9. 
The late Bill Acker did alot of remote configuring. Once there were DecTalk 
drivers, I began a slow transition to Linux, however, I had a DecPC which 
worked fantasticly in pure DOS or a DOS prompt, but in Speakup, it was murder. 
You could hardly interrupt speech. Really it wasn't until I purchased an 
outboard DecTalk USB that I could really begin enjoying Linux, without running 
back to a windows Dos prompt. I agree that time period you mention was 
wonderful, alot of folks involved in Speakup. As you can imagine I really miss 
Vocal-Eyes, but I guess if I were either a programmer or could wave a magic 
wond, I really like the way Speakup handles flat-review, but in Vocal-Eyes an 
alt kee froze the screen, so if you were looking over an inbox in Pine, you 
wouldn't know of any new messages. If there were a way of combining the best 
features of both screen-readers. Well, I guess I can dream.
Chime


