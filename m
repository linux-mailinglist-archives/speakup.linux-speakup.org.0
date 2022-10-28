Return-Path: <speakup+bounces-796-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1C996611778
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 18:25:12 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=EgJIWbyw;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=Gzv8Qfm4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8B80F384002; Fri, 28 Oct 2022 12:25:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6B14D383FE6
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 12:25:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B6560383FEA; Fri, 28 Oct 2022 12:25:01 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 194AD383FE6
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 12:25:00 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 84CC732004CE;
	Fri, 28 Oct 2022 12:24:53 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Fri, 28 Oct 2022 12:24:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666974293; x=
	1667060693; bh=oF9ZYJJMNTYlF99o7RsSqpBcz5LHn1q3Fm0Hui9wwcg=; b=E
	gJIWbyw4uWv9oVLGIA8HcLQydeyO8WlMq5Z8IJD2h98Fvw4EqJgkrsJeHGhyen/X
	AX6eeDYoVssAt1qgS9bi1sxtlxYeoqQPjt6lbxXJoZOgPzsmkN9xVhVzpvNyWo+f
	ZEZxlLl/b09Znf/IxZZgW2IGXWtHjtYb9slnzK55HZ85IRPRdqtQixHUSSrVdU8d
	E0wDAedviHn4/+CTK7mrevuTXo30A81X04imaZ3ZziF/TLH7M13W3n9MpZLG/8hd
	gznd5jXH6FRV9ZEWEYjjW+j6LpAJAWJVhPniyB/5RreFDuQncAb88eSW1OG2+Bz5
	+7RQqBaSnDwCiBtYXZDnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666974293; x=1667060693; bh=oF9ZYJJMNTYlF99o7RsSqpBcz5LH
	n1q3Fm0Hui9wwcg=; b=Gzv8Qfm4MUCtj6kM83GcG6IPfmcSETfID6KShd8I8r4j
	lFbVqD1WReUjy2pQxhIEeQqtZWs393xYKXKPD/P26Rcw2gySmm03CZrTsFEj1Lv6
	xQG+fKnWMvGd0LGczagzdHxbgKnC2F57s1ikgl/1RbJnLBU3Ht5eIqSPsMafHPn6
	eIOWw5JWcgQDg9ZJXxlwXPgfqTQv2n5IQuLTBYkDZ88VyDKCX6WRcu3ZMcCJKjMG
	d6T9NI+a+cAoqTiOIz73y4pRZ1jchZjWZJOu4AfV9VKi2o8/yUPucBMhusx41MkJ
	3fEIP2LriyXLNqPucw2C0IJxaQdzzwUb3lEhoTcxeg==
X-ME-Sender: <xms:VAJcY3kuNAzmXgVqLKedb_0ngPmYI80WiFlPIJ0Dl6e-5YszvzeTCg>
    <xme:VAJcY62beiEvAC3YEtNT4ym_vLd9ReprGwE0ofJMMYHZa-pRukO6NJ1uanItWSZ2p
    iQG5wr7K2U-e75dYNI>
X-ME-Received: <xmr:VAJcY9oO7umYknqrGjETNS1soWu_YC9RM3byOCcEIbshf6XOXiNQmjinoSioTajhXdu_f-CSuBH1MRW-j2TdwJgzYVHrv5f1xw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdeigdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:VAJcY_maj30FMTy37N0XGJjHm3o5zPV4aLMddcimMsUtHFepsfKHxA>
    <xmx:VAJcY112MINHtA5_Qsgl8aBbfeJguR-su5fKfewx7tVjeTtcHGrAKg>
    <xmx:VAJcY-uPnKqE3BQorKzefac286sLp0ZpYNqErTW-62a9gFl2ZaCwDQ>
    <xmx:VQJcY2-sF4nIJ-jIAHmXB_1sSHs-t7ThFYJRd5DSSyUIoiRdxNeC4Q>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 28 Oct 2022 12:24:52 -0400 (EDT)
Date: Fri, 28 Oct 2022 09:24:49 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Gregory Nowak <greg@gregn.net>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing Voxin
In-Reply-To: <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM>
Message-ID: <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
References: <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com> <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM> <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com>
 <088501d8ea5e$9033f820$87ffa8c0@Win7VM> <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com> <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net>
 <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM>
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

Hi Glen: Just guessing, unless you were to install a Debian package of Fenrir, 
you could try putting a dot slash ahead of fenrir.
Chime


