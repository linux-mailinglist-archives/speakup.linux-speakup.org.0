Return-Path: <speakup+bounces-388-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5A61B4F19AC
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 20:17:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=kuBnY9nk;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=Fds437Dt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ECE3A380D33; Mon,  4 Apr 2022 14:17:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D8EDE380927
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 14:17:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D4620380974; Mon,  4 Apr 2022 14:17:36 -0400 (EDT)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 10ECA380927
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 14:17:36 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 61F085C015E;
	Mon,  4 Apr 2022 14:17:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 04 Apr 2022 14:17:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; bh=4FK1p9i2ahdCF8
	21sZvGdMp+FjU+y2C+NgS+cYY/7OQ=; b=kuBnY9nkffOuyrjoNMyhZr/BJ4PtBa
	fs0fMUX2ev4Sk9B7/BBiMRShFeUK2rw4xOA7GiAIpTK5aV8I/buIpfOr4Q54lNdZ
	gLmqEy0juAnbPCw75XT1sJPqPhZNSvltd/bVE/Kt+IjmrHuES3lME/ofqnhPMy7r
	gumswNOVzeBqNf7OrHp8rCGWXvqqEU/VkavSKQxnfyHBQ7Mu6rs+12UqF3L7DRLZ
	WCPIvn9qf4NURACX81rxX7pmtTF61zQQycZC7cK8u96jFt4FIt4kqPkdhZDw1HVa
	nmBA2e0wO0gJ4mhipcEeLL/qpMwyvf3Inrzbh50m1iHK2Ae+qenGiTRg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4FK1p9i2ahdCF821s
	ZvGdMp+FjU+y2C+NgS+cYY/7OQ=; b=Fds437Dt2OSownr2CfQE7ygIInLz3PW7n
	X6Li0BxoMobqU8SLY5Fx6HiYy6fR3ddNCJ6Zfs7CQ2TfdSAaKRdnJswxQAS/aGF/
	LhYoBNnyFWFNR9U98QMzt17kP506LhAR2iP8XmOi2qzL9HTtuvvJBMJ2IC5iDKY4
	qWdTNDNuKSqvJReG0qgErv9AgMfjJgUVWvvZEWAYSZOz7iSFxdFxKsyTZdEAzDCe
	TZ7cNYHyeYTP4PNyCHFYfzIUWhDqg7ImTUmjfpnhCe6uDy+7EkjZ6Y12SBw7hPky
	I010jnfZDibravKJ/WHAg5oGN/ciewT3sE2slwMc5bS/4jk1wru9g==
X-ME-Sender: <xms:PzZLYkHSIhHCi3rBVZG4Xs3ulyKopgYlQLN1h1W6WzUZ4PMc5QWwSg>
    <xme:PzZLYtUHnA4xwDYF0DlbhJOi1x-ypebgbImsjmrfHjCAP0TfER3afMfxkSFTFigOF
    REcB1PWDTmiIsPvthc>
X-ME-Received: <xmr:PzZLYuILNU1goPmyS6CtmcInlzd7Tcqis0wNaC3ewLMl4ZvXcXz2OOe4_F_-msxblm7G5iV5njDHvrViWfrhy8e8uEJ_8B9EZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudejvddguddukecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeffhedthfdvvdeuueeihedvfeffuedtgeeuudfhgfelteelvddu
    udfgleekvedtveenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:PzZLYmGHfr1QFKVZQV-bv-Gni2f5qRrPwX7eQQJrOrChMv7bR8ZkPA>
    <xmx:PzZLYqWOMITjA2Gj9oFOy9m4qpqUF9gCJSZZuXUFGshgvQNdLUCcWg>
    <xmx:PzZLYpOW1_8ZudcmYQMSpOLL3z8i9rO_ZKz5c5vGLn_-hObg3z0wNQ>
    <xmx:PzZLYte9wO7VbGtxqJL52bgFfMfEYQqVji8JjUwlDN-ykWL0YJDqhw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 4 Apr 2022 14:17:34 -0400 (EDT)
Date: Mon, 4 Apr 2022 11:17:33 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: "Joseph C. Lininger" <joe@pcdesk.net>
cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org
Subject: Re: How Can I Switch Synthesizers on the Fly?
In-Reply-To: <e4b20df5-5211-efaa-5937-ed214d1ae35e@pcdesk.net>
Message-ID: <7da3e7da-321-40cd-5d66-3761b9143e3@hubert-humphrey.com>
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com> <Yko9zLikCNY1qcDX@gregn.net> <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com> <e4b20df5-5211-efaa-5937-ed214d1ae35e@pcdesk.net>
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

Thank you Joe for a `wonderful explainer-and-I think you are most likely 
correct. We had similar results running an inflection script for the DecTalk.
Chime


