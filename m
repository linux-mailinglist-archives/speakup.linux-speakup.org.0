Return-Path: <speakup+bounces-785-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 14A3761067D
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 01:43:25 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=bdLsOIs9;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=AcivRuiB;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 93C7738400B; Thu, 27 Oct 2022 19:43:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 73D59383FF7
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 19:43:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C850C384002; Thu, 27 Oct 2022 19:43:14 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9D4F9383FF4
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:43:14 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 83A63320069B;
	Thu, 27 Oct 2022 19:43:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 27 Oct 2022 19:43:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666914193; x=
	1667000593; bh=hjZOKxbPlJgilC0d0JyPVNjfieei2V1JeTtDS5Qd+Z8=; b=b
	dLsOIs98lk9eW36OOkTPJXrfYFYl3fmWdXN63r0ExAQjxpBxR4ImaaiUkC7Nalvw
	9L6fuyAwPG6asVMfDhWw12KA8cNw5KBFoX687jf2CP/JFf08iS2kJ+twjLANCNp5
	oaGWwN6oDVNQYvYhtXfI/iBekPpF9VmEmhX6IGNYiaNN7CwYb5rxC+lqfS0+Irm8
	gfIdvMDztd7bNbO6vIS2uwmamOFTGmRbkjVtuw/TFOCvB/irzHjETbolsQyT/6fm
	i6tfPCLUDNToAkl3/RBXd+TVSiCKgqcgB+srazVxjVKxjv9J+CeicVuv0fMxTvPE
	kn+g4HWxpVeXAXBTHdz+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666914193; x=1667000593; bh=hjZOKxbPlJgilC0d0JyPVNjfieei
	2V1JeTtDS5Qd+Z8=; b=AcivRuiBhxvioXL9zvy8m5vedHtZgCRSV1k1tfoy95YD
	QWzQpZUcmsJCf0SFrJ1PVoUNTlu64xwM94BwvOKP+BBeaKx85hAWKEbGT3h3xfLC
	+5wLHBQK8XmT735v5lUdFvPjAfo/FNo8bX00OPTOerUb2+2SVnoQagUo8xrkcr7D
	IK8lHsKMQ6E86Nyr2i/caiaebpMl29x8lf6nzQqn+oxPBSiZNa+ceWj7gBKp1Uld
	ZNej7CzXHqOAnQLvc2q/XY5FN0GcM0tMCgTE4uI3XUDr8mAeOumPBJe3Jhz8f5gN
	ep7OZDo6Q0NcLWS+7urz36j8035ZUWYdhHlir9Lshw==
X-ME-Sender: <xms:kBdbY25HSqtLmVheTK9u3KbmL9z9-OEY1PhSgQhMI0TXf46kOCf5Rg>
    <xme:kBdbY_5ZKzDFjMoNFf0k1vW9VoRVh9HXZ2MwdBte0oBTXopDNTYaPxcbNYhVALBys
    LzR1bYrlBEpQ015Cek>
X-ME-Received: <xmr:kBdbY1fd16Z6mR9dYKOyEtmUZyKKTxBRrTWa-L6_E4EPh_0vponVuZgi2ZO9-qS8k85KjJzOvzb-KesW-Sb4WYRa-JYcemLyGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdehgddvhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:kBdbYzLU3L3PSBVVd51aiQzOhor0JtOe6WNyUmjmTDwf_Ockwg02BQ>
    <xmx:kBdbY6IJB3RX4r_GIQr7lGeVqd5XOvcyrSft14raF5OY2DfBKzVUDQ>
    <xmx:kBdbY0xC5ZeU8A_tdcf7C9XHWPyXyc4SRcx0jbF5mXlejVH_IwdAUg>
    <xmx:kRdbY0yuLMODcJid-Mf2KiHVu37hTki4wVYlW0vivW5E5aUMcNSC5g>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Oct 2022 19:43:12 -0400 (EDT)
Date: Thu, 27 Oct 2022 16:43:10 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing Voxin
In-Reply-To: <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM>
Message-ID: <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM> <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com>
 <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM>
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

OK, Glen, let me explain again, a couple of things. First, when you run 
spd-conf  you must type in voxin, even though it will ask you to correct your 
answer. 2nd select alsa which at least in my case works better. I am thinking a 
live phone call might be better than all these back-and-forth messaging, but 
first try those steps. Good luck
Chime


