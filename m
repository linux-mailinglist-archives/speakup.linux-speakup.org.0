Return-Path: <speakup+bounces-1140-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BF9659249B2
	for <lists+speakup@lfdr.de>; Tue,  2 Jul 2024 23:05:37 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=UsofrXBO;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=vXRCp4xZ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4B98EC81C7E; Tue, 02 Jul 2024 17:05:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2BAE7C80894
	for <lists+speakup@lfdr.de>; Tue, 02 Jul 2024 17:05:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2ACA0C80896; Tue, 02 Jul 2024 17:05:29 -0400 (EDT)
Received: from fout5-smtp.messagingengine.com (fout5-smtp.messagingengine.com [103.168.172.148])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0C79CC80893
	for <speakup@linux-speakup.org>; Tue, 02 Jul 2024 17:05:29 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfout.nyi.internal (Postfix) with ESMTP id 39DAB13802D5;
	Tue,  2 Jul 2024 17:05:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Tue, 02 Jul 2024 17:05:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1719954328;
	 x=1720040728; bh=KaTutlosywWMG2eGSu0RlykekJo3SGVe2DhyoXJuW0Y=; b=
	UsofrXBOn0MgHIVb60STbhHvtbipLaAgh35X6B0c8c+7W3jwnDOqbELdNYRMxEtR
	ELD52ThTfwW1hya9QwsP+beYgYGQDr2/YgViLe1jIpjLxk7sAGUwS/8APzvFbMvG
	2FZ4eTgbuCP4WtIsj/KdcV/0jAotT9JatJc0mfGpnrkffHzarkC2MT6uSxwIU+06
	A7zNHgh4dkECCX/U/O2Ff+J4YVXDTg0iGKDDx/TCVxTOabyaHMknXXm3TOG36UvV
	7cxaOpJXIJQem8xHDoHpNURLVObMNnmXWcGt0Ms86IdGzpr7XlM81o2DBVDNLKRl
	+WU3CLli95MhDWfTKiA3SA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1719954328; x=1720040728; bh=KaTutlosywWMG2eGSu0RlykekJo3
	SGVe2DhyoXJuW0Y=; b=vXRCp4xZxM/Nz4IdhElmqE0wVr4ciz3yCNXhlcvsDuQ/
	LB6MPSYqt0FNtOLTmO4uyu6T2Ii5ycOHW1QWKY5eEXfoXig0U0QQ2WWmg8e9lpPG
	Fked79SkfN1deUepzrPv9w+LOKRwfnxmeocvEaHg01JJPk860QghVeAPpZFKKkbP
	nOe/8UUZYRdqt1aUnux6166Rvjv7G30QS1BAFcHEA6H74WzQpy9orOqWFwsStfDd
	+9qtwjp+mebJEQPdXfRNoJqS7Yzar5Vujcka5nNYWKpsFX2LnIGk3WADVHke4aF9
	SqboWahYNQC1ptYYkPgH/X3lD+LxWdCfveLZrHUQGA==
X-ME-Sender: <xms:l2uEZiDmVCk6AmELIEEW_c_oNB_Hfac-4Vk8tyGdK6O2nHKcNdaoLA>
    <xme:l2uEZsjXXA32B2ARBPP8VRmSgbTDvSUALpYaf3iPJyFtbjebItiqa1qVVvPvLbCSD
    yOL2yt1l4-gkua8MGM>
X-ME-Received: <xmr:l2uEZlnoJW7SNdopgO4rP4sFZfIO6Icnr8oR9U765mw7gVq_eG9owaemtlLJ-J84UuljNXzd9NFg5bxOdNDUwXJXd_Uax38oLJ8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehgdduheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:mGuEZgxQ05nvgizMR7aSWqBqQ1tB3I3YPMTLzBFTkHXIFHleXU6-JQ>
    <xmx:mGuEZnShN8iIftf1thLq3JAnCgLiZHYvVIc0Z6lNPUg7vPm3tyCfiA>
    <xmx:mGuEZraSlCqJFWJB3VaHHOz4wxRF4RTK52hSvhn0BY3f0B2XCF6STg>
    <xmx:mGuEZgSNdyO7FDxCM3mCYruaPdHM93HMBOWuxx8d9hyqX-zYPXxowg>
    <xmx:mGuEZifpAXtT44CGJ3f3wfzOgHQnTS-2oCGEWahSUik-SYhGvz8lWfmI>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 2 Jul 2024 17:05:27 -0400 (EDT)
Date: Tue, 2 Jul 2024 14:05:26 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Didier Spaier <didier@slint.fr>
cc: speakup@linux-speakup.org
Subject: Re: Can We Use Open Mary with Speakup?
In-Reply-To: <ec4d4046-28a7-400d-ab7f-c7c7061b0016@slint.fr>
Message-ID: <049c712f-2685-3ccd-19a7-8d9a1b5abd7c@hubert-humphrey.com>
References: <74c245c5-99a9-1fe3-57f8-82dbce6cb42f@hubert-humphrey.com> <9d90552f-72c5-464c-b2cd-213b5229fb84@slint.fr> <c0edf636-7a77-656f-2b8a-140ca6946bc0@hubert-humphrey.com> <ec4d4046-28a7-400d-ab7f-c7c7061b0016@slint.fr>
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

Thanks Didier, you accomplished more than I did in getting to that page. I ran 
instructions from the README file, but it failed because of a missing java 17 
e. Thanks again, will explore.
Chime


