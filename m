Return-Path: <speakup+bounces-525-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 181BE591C30
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 19:51:36 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=n8h+x3WW;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=KuOUhY0r;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9A2D03847A1; Sat, 13 Aug 2022 13:51:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7609F3819AC
	for <lists+speakup@lfdr.de>; Sat, 13 Aug 2022 13:51:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7E0D238376A; Sat, 13 Aug 2022 13:51:27 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 23A0F38190D
	for <speakup@linux-speakup.org>; Sat, 13 Aug 2022 13:51:26 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 35B7232005D8;
	Sat, 13 Aug 2022 13:51:23 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Sat, 13 Aug 2022 13:51:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1660413082; x=
	1660499482; bh=1YQNReIMqHT4H59Lk+x76SEivThkphnGK4odKx/nQPo=; b=n
	8h+x3WWsy9vsp6qt1JPsC3HAgg1KGD4VoybUxGkUirt6yHCh8LvkdvYOowLpHsVH
	b1L6B3b4wwYBqZcG1sq4IE3let0cAGD3Cl4366BtfLSMNfygVDHN6frI4vKjuJcR
	0aVXtazx2jpMiiG6rewkPuuvUrHrtjfqpSRrbHuz8xc9OiizuAlvkA2KfGzOl7f/
	ykLuIJNX9UrOXA0krn91vRTpnCiUfjHqp15SaZfo14E6TcCaJEcPpe0wr9peF/g9
	eoQ2RXYaIPHohm6IYM/V6jOIQh8QxFT4qMGm777bbgiKjziILi0Yf956jF9ONo8Q
	X9UMxHJnXWFeH10oCsTVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1660413082; x=1660499482; bh=1YQNReIMqHT4H59Lk+x76SEivThk
	phnGK4odKx/nQPo=; b=KuOUhY0rUxAaA1l7UJFHmEcS5BX4p5N3SbRlhfu1KkGp
	nYi3hx0B7a3Hefp8vuh6FJ52lwQdKqmPpEUPEx/ZW9WCA0WR2jLtN0kcJgmrtSLH
	xvGsGm5S+n8CIjk2E+nc+OS2AMyfL/h6FTCpmDOf8DTFnu1qk8IozKbpwwjMmUEI
	RpolayMPA1D8FlyrDhw0SWorg+Cnd8JvzKCG5nswhtf76oFO9Hbkk16Juvk8Es1z
	SV8fLlMRJFcC2icz2wDRpPAvimp+xcEOrgQO3O5+25BVfQC4VVffJL6GSnbhLHKC
	gvJnPgOulhnzAGyUnofyIkrcsJH9h7zqzh3Eyc9/5A==
X-ME-Sender: <xms:muT3YkXA96LAmiTynLNpOeMXwVtrEINL4bGjoWpVGQHXc06JxwX9uQ>
    <xme:muT3Yon3zFfZDj903qg0DJqKY_JyWOJIL3_QWPApJeAGWLA1WTyUnpxn5zhk8E5Ix
    AHwGCpCGr8fOuIyeQY>
X-ME-Received: <xmr:muT3YobTVoDjRZdfMmwx9tCFP93i5gX-GQgbbD40hjVGbDO6oh20WDeSfEGMvxp40iYm7WLjN99wHd5qDnL3net-JiZI7Gz5yA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdegkedguddvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:muT3YjXgbR8dI5vSuXXF_qGGoSddiD2GFGIx3S2rZcDUF4VY4LHGIg>
    <xmx:muT3YunYV_xIBUdfJ5T2i_VCWoJAJ-vfoDOtBUorBHBSC2mCvxvrIg>
    <xmx:muT3YodN--NePS5BM7uLaKF-GEH7JSQSJvmrEV6ZwBBM77wmOjWJ4w>
    <xmx:muT3Yjy6g-RrmxcDu_9VxLpUlWkB4JR_WqYqWCa3NlBXhMzxEZ0ypg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 13 Aug 2022 13:51:21 -0400 (EDT)
Date: Sat, 13 Aug 2022 10:51:20 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: speakup@linux-speakup.org, Milan Zamazal <pdm@zamazal.org>, 
    Blinux-list@redhat.com
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
In-Reply-To: <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
Message-ID: <b2f43dd6-dd6e-531f-5b4a-221e7f3c8a44@hubert-humphrey.com>
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net><1e623296-a020-b22d-52cc-77e3a01c2f61@pobox.com><Pine.LNX.4.64.2208121226001.1229118@server2.shellworld.net> <871qtkrs03.fsf@zamazal.org> <02e001d8af3c$0d4cdfb0$80ffa8c0@Win7VM>
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

Yes Glen, I agree-and-I already asked at least  3times for N V D A for a Linux 
version, as it is already written in Python. They said no-and-they explained.
Chime


