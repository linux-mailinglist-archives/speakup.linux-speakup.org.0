Return-Path: <speakup+bounces-801-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 21027611C63
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 23:24:54 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=NVaOd9hO;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=hc4wzF1k;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B180438404D; Fri, 28 Oct 2022 17:24:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 92043384026
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 17:24:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E314C384034; Fri, 28 Oct 2022 17:24:43 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C2A96384026
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 17:24:42 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 3EBAE320091B;
	Fri, 28 Oct 2022 17:24:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Fri, 28 Oct 2022 17:24:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666992280; x=
	1667078680; bh=qoqf9/5KY+o3wsj5mAhjUz5cnkjnigm7f4O3YH/kzBw=; b=N
	VaOd9hOxU4o/L5rTJqQsZtgkNScpgnDqc87fCwyBSGigcW/laCeqgjzVc9wjagjb
	7a9eagjNYLIJ3FzjYElCq/2d15KaBmooAI9cOq0cclClxfPtwau2yDREKCIz0dxE
	oHaN8TMCDnSDbuOyZqABub4tFPGDga4zeHr82PV6MMyZHr8j6Jlf55hAlgPVAVjp
	qv/K6loY6HUMRbEjlW2vVF6FU0faP2SOqWyUQx62Pbic8e2XbsK77FzApBjfVUvQ
	NEZhDOnOitePb9Q8quNLxBZsXayPta/lPz5otsgmZWn0HPMsk28T4excQv4t6Hwt
	eBTzdjFun3BHpox9IdLHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666992280; x=1667078680; bh=qoqf9/5KY+o3wsj5mAhjUz5cnkjn
	igm7f4O3YH/kzBw=; b=hc4wzF1keR2dvV4KKSBs0TuJwIlHQ4Zsa6Y3LEAdTYxt
	L7/Mib16ZXIOX+ziZ8y2dUkRSM4doRlShb2FkEEU1+toXluifD9x/hxNuGFLMcoG
	XfIXBQ344zgyDjyOFTaPLKfJHjz/BX8Q0NR5o1C2tym5feebxqvU1sLFa4aC8Vhd
	3cOrnZH0i7/8itODBldjN/IOkXCxCTNFA9nsrTxovgGNqQot2O8qCrsFAgrHNTk8
	uQcobbn6L0SEovUhp73YpG7IgphtwefmRyMR+KUdsYOYRAiw2bLRG9MNNS7/WLu6
	tK0liqn4cfFmaV64J23ZzzQMvCCLEX7XuCAouFPy3w==
X-ME-Sender: <xms:mEhcY1Js7wAwIit0A2uTmnaFMjwhcPPplgOXEbI3ENR2qO8ZnjKYlQ>
    <xme:mEhcYxLn0MB5efitOMIHicIATtDpzGZoZTMjyjvr8OekJf_cbTux2tcchyX8B9J0b
    3kAK3xQOEKEFyz0L88>
X-ME-Received: <xmr:mEhcY9vmhGAyrj9E2-8Vly98kzdyLL_TIOCRJ3rcrEDt00GMmS33z2Vx8WAqRD2bvSq17cJrv9Y3sfJUQMnfvwzSCsgfQfX5sw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdeigdduheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:mEhcY2Z5xoDUdqz3pQab9jh3HkPRtO--13pa_Ey2LSCArTxIL4hmhA>
    <xmx:mEhcY8YY37-bNbLo7FNvb5TRCl9FY8Qj6OVGWB0rDXv_gzSsyxpGww>
    <xmx:mEhcY6AMri2HSht_AWpuYvrtEHeKImIvNW8oRBzalAk57QeDywJj5g>
    <xmx:mEhcY3wLEeDPTJhmsiNa0NW-ybYVPl7Lzx0CX-9zafyY7pxRJV_X-A>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 28 Oct 2022 17:24:40 -0400 (EDT)
Date: Fri, 28 Oct 2022 14:24:38 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: speakup@linux-speakup.org, Didier Spaier <didier@slint.fr>
Subject: Re: Installing Voxin
In-Reply-To: <096901d8eb12$060be090$87ffa8c0@Win7VM>
Message-ID: <5df7ccfc-87d1-f7fa-c506-846f62e5b904@hubert-humphrey.com>
References: <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com> <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM> <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com>
 <088501d8ea5e$9033f820$87ffa8c0@Win7VM> <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com> <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net>
 <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com> <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM>
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

Hi Glen-and-All: From what I experienced as well as writing back-and-forth with 
Chris, Speakup-and-Fenrir don't play well together. So, maybe some1 can provide 
a command to unload that module, or run
ps -A
and look for speakup, then run
kill -9 speakup process
Good luck
Chime


