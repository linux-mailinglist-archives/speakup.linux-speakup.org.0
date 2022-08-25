Return-Path: <speakup+bounces-639-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CB51C5A1B53
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 23:42:35 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=lnUnZviw;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=p6yrBP2f;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0718D380EC7; Thu, 25 Aug 2022 17:42:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DB76B380E54
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 17:42:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2BF04380CEE; Thu, 25 Aug 2022 17:42:27 -0400 (EDT)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5D1A6380C60
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 17:42:25 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 70A735C006D;
	Thu, 25 Aug 2022 17:42:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Thu, 25 Aug 2022 17:42:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1661463744; x=
	1661550144; bh=3dUYjB0E8aChcl3HQkejAAoeikdmYfhD/3DFF9jkfzU=; b=l
	nUnZviwgpKodV6hYG97iumeSK2bBiDfZGTtyh85o4fyUOVBW3rJ/aRzvmiVUTlXm
	/467WYn9hHHpKmAf5u7GzfKK3o9wXqFQp4RtSkEnISCfTfRx+LoS7es3GnLq930U
	k+al6eF+o7L8QLWMNMSWyjvWxKVB9qeg8w3zuNv4LjHNaM8v5xLa8AEffI/oCRhQ
	3zuQIq4ottatIGdO6JuMN8+5oY7CUFokLueaE0+a7x8ABa4C/4iv+jRuDLmufgON
	OpVV+wBiE5yyfinsPSkOUHSyfSUiOOYfzB6ezYkTIXKOmDGfm4gvacRp/Qsj/6mo
	LKEWE39Qfm34K8fxDMmuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1661463744; x=1661550144; bh=3dUYjB0E8aChcl3HQkejAAoeikdm
	YfhD/3DFF9jkfzU=; b=p6yrBP2fiA+Xu7BHjnsmNaVjXiK9LcTCr3prJSoHsG7g
	rdFGx9Xicf3C2Y0Dv6g+Pa8LFRBt98mDFx4QbvMHD0TvMaaBA37wx2SapXLPdfhy
	zkC4rv3NGmVhZlhmCKk3RI04njKQuvxcT58aQ8J0Ysp1ooYo0nHwO7IGIvjsEugT
	5qqlFLjOY7Pqm16gJcY7BycgQydcIyFrSmLyzaWmY/tu7WUzdC38dbLpfeBuSxdT
	Wb/nyBKMr+9IylbwOG4ZqgWtzPA/OMUfd9o18UtqStchLrAUTsTNGudQE7JKctKH
	liKAETCs2XBI4WoySyfHem2uzuDJe6hAWcXRGY/9YQ==
X-ME-Sender: <xms:wOwHY1E5WLmDPuqp_oRs6Q_AoiFTfB11bwregOHtT30AvRwpr2BLEg>
    <xme:wOwHY6VJsYoS7l79Hc-30-74qit-TxGRDcWvohRUNyhZWBBldw6sPxVI6YpEG5DwQ
    VMR9V7Agtii4mwv9sk>
X-ME-Received: <xmr:wOwHY3LxIkdTq-hZGEiwbQB0fVqZMD6TC1t7ijtTJjFrwZHo2DxabC3TbkBM0ccr5HKHsPqlNko6x3dqs11HVN5TvVfB72q02Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdejgedgtdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvfeejfeeggffhtedtgfdtffeitdeigefhffeutedtffffveet
    lefglefhvefftdenucffohhmrghinhepuggvsghirghnrdhorhhgpdguohgtkhgvrhdrtg
    homhdpohhpthhushdrnhgvthdpuggvsgdqmhhulhhtihhmvgguihgrrdhorhhgnecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshh
    husggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:wOwHY7GlyGSC-NZed-kR37oD_aSuiM_BlNtRpQmzzMvDkzoXfJDA1w>
    <xmx:wOwHY7VWu6cWENA-FDzWFJjuprY17geBnJl2xCI6CSdltPNpcPMoBw>
    <xmx:wOwHY2MlbSC1Bv9y_wxrn67O-4EyhgHA76ZQzc19exB1szavbQGa6g>
    <xmx:wOwHYydWspnVey87KBLzAIn0qhDnmQ3zJKIE_7nd-qrwQBEMda0yCw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 25 Aug 2022 17:42:23 -0400 (EDT)
Date: Thu, 25 Aug 2022 14:42:22 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Jude DaShiell <jdashiel@panix.com>
cc: K0LNY_Glenn <glenn@ervin.email>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <a66e95d1-4eef-4ede-a970-39e5af7cddd@panix.com>
Message-ID: <8a99128b-f995-ce26-7e7a-6f1cbe869a95@hubert-humphrey.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <022401d8b8c1$9a2c40e0$80ffa8c0@Win7VM> <022901d8b8c6$2c5c46f0$80ffa8c0@Win7VM> <363bcd12-5bd3-5749-2d6e-348ebfa9b461@panix.com> <022d01d8b8c8$57f2a780$80ffa8c0@Win7VM>
 <a66e95d1-4eef-4ede-a970-39e5af7cddd@panix.com>
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

Hi Glen-and-All: I agree with Jude, you may be missing repos. I could paste in 
my apt-sources list from Debian SID
deb [arch=amd64,i386] http://ftp.us.debian.org/debian sid main contrib non-free
# deb http://ftp.us.debian.org/debian sid-updates main
deb [arch=amd64] https://download.docker.com/linux/debian buster stable
# deb-src [arch=amd64] https://download.docker.com/linux/debian buster stable
#Adding deb-multimedia from Australia
deb http://mirror.optus.net/deb-multimedia/ unstable main
deb https://www.deb-multimedia.org sid main non-free
#Adding Contrib from France
deb http://ftp.fr.debian.org/debian sid main contrib non-free
Back again live. Glen, its too bad some folks haven't thought to get on  a Zoom 
meeting-and-interactively help you live. That would seem faster than 3 days of 
back-and-forth, but I will say you have some great minds trying to work out a 
solution.
Chime


