Return-Path: <speakup+bounces-1138-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E14C392492E
	for <lists+speakup@lfdr.de>; Tue,  2 Jul 2024 22:27:37 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=tOf4YGxu;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=RzZGBvRa;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 199E7C81C80; Tue, 02 Jul 2024 16:27:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EA2CCC80894
	for <lists+speakup@lfdr.de>; Tue, 02 Jul 2024 16:27:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D9DB3C80894; Tue, 02 Jul 2024 16:27:28 -0400 (EDT)
Received: from fout5-smtp.messagingengine.com (fout5-smtp.messagingengine.com [103.168.172.148])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0B1FBC80879
	for <speakup@linux-speakup.org>; Tue, 02 Jul 2024 16:27:28 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id 414B71380297;
	Tue,  2 Jul 2024 16:27:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Tue, 02 Jul 2024 16:27:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1719952046;
	 x=1720038446; bh=8SazmF+j87GVJ1BsW9EHiOIz1xlh4+/AekelFTcyR7o=; b=
	tOf4YGxujKX2fhTm6nCIOo+v6Pl/cLC70mrICuGIUVD9xzQnmdlFmZOWxhTbT/96
	8CjF4fwDN2gNH4dmEEWpLzVBnxOnUfSNEdS7bYp1zGKt9VwIDDif2M8Clpb1HiEu
	ng3eTsEoEm7NVoZH+hIDkEU2gAkm0nS2ttNysRhJc4w6WW3wuQv/Ojrl+DG8HVit
	Uj2ilwETrVhBye3golV7O11E3NMiDWCiAYQUbERYlioPDUizOZBqiTSKIyElDRp3
	h2WeIs8/0mk8WsNWUuOWbCdY5CjFSId3gtzdkr58z/JICDbZyfmfPs2Be7eHZKc8
	p5bK3L4xaFgaoOPCZwCChg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1719952046; x=1720038446; bh=8SazmF+j87GVJ1BsW9EHiOIz1xlh
	4+/AekelFTcyR7o=; b=RzZGBvRaBNLCZdBfickbOeFyPlZop3e2V8gd3CSEHUOM
	l33UUcAbk5T5+FylqDT+gP0EFHY1uu2u6awJJsFX621u2m5lnJYS0gZGhyfqt0VX
	/CARVjbvNphJx3EpdQffYW+4FMkY9oJacQGjbrzFR/pbayWvRGpQ7JDf7E5CXrKP
	NXSumkMTM+UieMeHkGs5zhxNToilH60H/LZGtz4NggTqrX6oH5oF1v6KzIG1nOKv
	PnR5SHLp0jiZbUatUHIsjPvOJXXDheqalUodgBH0JlQbpniEJDT5SdC70MUziG0/
	G8T6ZXMNYX+WIk8Hc2Pm6irab/YERwey01sehY+naw==
X-ME-Sender: <xms:rmKEZvb78wishZddvNIjhd9BamGnuiIN-LgHeBE_kKEsyDC4Wd32XQ>
    <xme:rmKEZuZn_-abTBLDb1xhk0VzEw2fvx5jUVsNgOY2sld25EdN2tMh657gwtSs0HApI
    IgY72b1ROPtZWkqEKQ>
X-ME-Received: <xmr:rmKEZh85gAU0aqigqAaKOELm3k-nXIqxVaQ8_NtdiNUEkgGreWzc0jKLdM14w8FwdHTY1iyXdRpyngHzhNV6mWyzqG4KLpMGPnE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehgddugeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:rmKEZlqYYVpsAbon-objVJYuOZu7-hjfSRGO1IDx_xJlgzJvyoUFRA>
    <xmx:rmKEZqp-quWXcvVKhfHk8wfouGuA8eaUDkFJYtzxaBbrTF37ipnRTQ>
    <xmx:rmKEZrRGA6msTajhS4vST97sS89dHZ9F6-3KlybRo6QtPz6Gv_Awow>
    <xmx:rmKEZipkeKCxXlKSMT3w015deDk59GhrmFP6uIZUKYafvjY4sgxEIQ>
    <xmx:rmKEZh33AiH2o2xs3-elGN0fx4VfnW6CaM8a700wjx0mAzLlVbE6iRSO>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 2 Jul 2024 16:27:25 -0400 (EDT)
Date: Tue, 2 Jul 2024 13:27:23 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Didier Spaier <didier@slint.fr>
cc: speakup@linux-speakup.org
Subject: Re: Can We Use Open Mary with Speakup?
In-Reply-To: <9d90552f-72c5-464c-b2cd-213b5229fb84@slint.fr>
Message-ID: <c0edf636-7a77-656f-2b8a-140ca6946bc0@hubert-humphrey.com>
References: <74c245c5-99a9-1fe3-57f8-82dbce6cb42f@hubert-humphrey.com> <9d90552f-72c5-464c-b2cd-213b5229fb84@slint.fr>
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

Thank you Didier. Un-commenting that line will work out, but I even looked at 
that github page in Storm's I38 browser, I cannot find an exact link to 
`download that package. Thanks so much in advance
Chime


