Return-Path: <speakup+bounces-1194-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8D1099687EF
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 14:51:25 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=SmyxgUF4;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=k4kbJJDf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E88F93841BA; Mon, 02 Sep 2024 08:51:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C8E16383CA6
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 08:51:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6F40383CA8; Mon, 02 Sep 2024 08:51:13 -0400 (EDT)
Received: from fout6-smtp.messagingengine.com (fout6-smtp.messagingengine.com [103.168.172.149])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 64FBF382651
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 08:51:13 -0400 (EDT)
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id 96BD1138030A;
	Mon,  2 Sep 2024 08:51:11 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Mon, 02 Sep 2024 08:51:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1725281471;
	 x=1725367871; bh=CGQHQs9fEWF2pgYbUvp0KzC5vCDXZJb93RpAkHpKAIA=; b=
	SmyxgUF4EFL3Yh+eC2Ly0E/jacTPHhkWTDZLwHPUE0whnQx3iZZ/kOkVzuGEoDoZ
	aUEeUaX30HVitd8TBycYPphjup7/V0J1xNkVvJYAAjqEBZI6CzTljjlUOK/8vjhR
	cnwhm1pbCEWcUmEYXcufwFD8aJy4d8ZDPzsE3H26sNqRPVh2l2ZV+wyu/jalF6JD
	v5zNkB4feKDWXSm5aZo63tWU0xamEwZhtb0M9GEk638t4BoF74PR7RiNYvTj+XFZ
	nXe3ntF/F/J1h/2KxeUTs/XS9MFzlK/nxZIjQyuRpBjnglAWcXapkUYZeJ4Bkucf
	BXQAn5VD2OGXruhwNEdvfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1725281471; x=1725367871; bh=CGQHQs9fEWF2pgYbUvp0KzC5vCDX
	ZJb93RpAkHpKAIA=; b=k4kbJJDf4gOSQEGAaV2/zyWj6shk9DUEpg/OYzFvfOmc
	zbjo7829SRV0omR+S/LJRg+aT42dDyLyhGHoZkPrLYGP8MK+tMjgCRe2SxGL1p/v
	6eST4eq53Tv1EGpp3LK30iBdYjdiedzmRU01HFqZ/q76BFmbMCNuxKHP3bjabzJq
	ijSjRVhf/kWlu8KuFPgHwhRGk30FgGP8r1z3zEM1ovqOwAZHij1Jpza66fesEvMr
	HPmg957+0uca76IXSzPN8VWyE0/JIOx1UiGQgSP7bsIaxnj5DydgoVDw1ya5CM6x
	PCkjlRn6E+RoK/T+cBxQupaDgSNwf8pWy4C49pL17g==
X-ME-Sender: <xms:v7TVZryEDjfJ_jb6f0nUCII8wl3oPnVvAqCXagfi7iJUt9qwBn4mlQ>
    <xme:v7TVZjSItSng6qaKpSIZc3Jsb-huXos8YJql3LZIzWsox5hRJb0GeV2G6p_V_m2nr
    mws1R16IPWs5nG3ddY>
X-ME-Received: <xmr:v7TVZlUO-nmjWfvrZzlQ98_LPp2luBc9C-KF9gWDiFtiQOjYKeTQMWCEmx64zTBykMWoEfAnfU5OruaqfLBSkegTLpzRlenZLag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehfedgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecu
    hfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedv
    keekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgih
    rdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhrtghpthhtohepshhp
    vggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgh
X-ME-Proxy: <xmx:v7TVZljkl8kWTxDC4qj-TXw26IFc-LpsZ9VIeZRhxtxiHUulNHWcxw>
    <xmx:v7TVZtANN1qKLEqFum3jMFP_wG59LfYF79le_R4iYfad3CK8Gkbxtw>
    <xmx:v7TVZuJdgHwn12StRtoxpMwoG-T5UzB27wAlEG6Qbib5SvBjnBU4bw>
    <xmx:v7TVZsCW9lEpSfF2qehwnJwrqSpf24XExtAIA_FpaB7Ss8OF8hDx2w>
    <xmx:v7TVZgMFiL5ruqrR7xOFcd-nCJzG4npSBsieod4-ASuDrb-weIzpzi1N>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 2 Sep 2024 08:51:10 -0400 (EDT)
Date: Mon, 2 Sep 2024 05:51:08 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Martin McCormick <martin.m@suddenlink.net>
cc: speakup@linux-speakup.org
Subject: Re: CLI Terminals with Speakup (Was howto run speakup/orca concurrently
 in ubuntu)
In-Reply-To: <E1sl62C-0002oX-0Y@wb5agz>
Message-ID: <286a75c4-4d28-f45b-fb44-65aeb7a3d358@hubert-humphrey.com>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Martin: I wish I had solutions for you, just an observation. About you 
noticing "long winded text" I am listening with a DecTalk USB. Even in your 
message at line 54 was garbled, but of course useing flat-review, all was fine. 
Not completely sure but either blank-lines or quoting an original message may 
be confusing to Speakup. I will need to pay attention-and-see if its always the 
same line numbers involved? Your quote of Greg began on line 62. I have a 
maximum of 180 lines by 240 colomns. Hope we find a solution.
Chime


