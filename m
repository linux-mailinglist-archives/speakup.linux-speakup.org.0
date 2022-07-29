Return-Path: <speakup+bounces-493-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9317A58496E
	for <lists+speakup@lfdr.de>; Fri, 29 Jul 2022 03:50:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=aDEReWxk;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=UKiGRakY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA061380AC3; Thu, 28 Jul 2022 21:50:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9507038078B
	for <lists+speakup@lfdr.de>; Thu, 28 Jul 2022 21:50:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 20B47380A9E; Thu, 28 Jul 2022 21:50:35 -0400 (EDT)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2D10638078B
	for <speakup@linux-speakup.org>; Thu, 28 Jul 2022 21:50:34 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 36FE45C006E;
	Thu, 28 Jul 2022 21:50:33 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 28 Jul 2022 21:50:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1659059433; x=
	1659145833; bh=J6PC8KkYJ064cuqgL7CAGtB+7q14MbKYhDYHgHx9DtU=; b=a
	DEReWxkgE5f4sy6fUAY7s2FGQ4sdqsoLpmPCOF2FN4HjvuM5aXeGLXw95EMM8lfC
	DBvYl2hG/53h7wxMuRy+Hg2RM4UmgY8tBpcoLXcEnP7Jm3JpbR7MFdMgPY85fRhT
	JFZ1fNyTt9PqpBoYbSGWOwKv1C0FFO1oYuJeAmNMFBb0LRBX52qK1tCxxMy0sFdM
	2No+Gy/6biA+V1dk0cFocpGgzuh+QQpWhxT7VYLZ34XGv1tJRK+NznqaAkyAm0Gs
	gu6IL8nNwWEiWiF50vRwSl+3xJL25VYu5MopW0iOIOMgCe9Ahws5kEkfjfjGfXFO
	qwmG5piLpJjUtA9Da6M8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1659059433; x=1659145833; bh=J6PC8KkYJ064cuqgL7CAGtB+7q14
	MbKYhDYHgHx9DtU=; b=UKiGRakYf/KGHdyKm7lA7CefI0PBnbSWS38dq8bvw7gL
	j7RYJWu7/fdRNkFKQ2u1KCZnwiyr+/1AFNg1npEhp854VKI4eZrql93vufkqXFvE
	SqK1VFc5nXRvAjWMgrNkArXcKHFLEf4Ephqq/hiXziB+1+fTzt7+S/R1bjCb9GI2
	+n+8LdF0TgTc6VbIf/mMTeaAtpXTAzi7dQ+aOPADNTJdDwRkanH+jevchtAt6a9u
	SSObGf7EL87IOSmXQ1llY0F4XD/P0O0yhHeRK9/2eOpi1WCtrOSAkaFhnmF+hTLy
	8o1HUDiRyK1Mzsgrmx7O6COV6ERKT7NMZI+cpW6Yqg==
X-ME-Sender: <xms:6TzjYoAlwy7MTe9FV4jTkawkKt13egsZ0Kctd06j6RPbPXhWSVRXGQ>
    <xme:6TzjYqgTvhYdXehH5CrX23rHkpGYdGU7JxhWd4tde0CjVx-HBA1jWC7Z-wTI7sxb8
    XsCj1zx-K8spdt257M>
X-ME-Received: <xmr:6TzjYrmm1zq1lmfppKNeSpoFw6encL_049fNj853_VIT7mbd-33z0n401eU8b4bkzJxAB8yCRa7AnrdPRIwRCOxQd90yidmnNw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdduhedgudehgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:6TzjYuyeCzP8BC0yr2pPcP3RhJBoZzto0mvsD2CdfRcen77YhevCcA>
    <xmx:6TzjYtR2jpLbqqcsM2hnx9DKoKd57NawL8eKr6KxMIyTlg4D1Rl2NA>
    <xmx:6TzjYpaswUneay1h5sSIKS3ab6pd7fMUnf92DsVdjdzGSA-hx6eXfw>
    <xmx:6TzjYu6BY67l-9iOUe1RIxEpPydaowD44rPvgKn7JptNGIcf0USC-g>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 28 Jul 2022 21:50:32 -0400 (EDT)
Date: Thu, 28 Jul 2022 18:50:31 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Gregory Nowak <greg@gregn.net>
cc: speakup@linux-speakup.org
Subject: Re: Speakup Punctuation Settings Within An Embedded Voxin Voice?
In-Reply-To: <YuMpteM2zBvNc7Dn@gregn.net>
Message-ID: <616dc61e-c3cb-e1d4-1eb7-fa5a904df10e@hubert-humphrey.com>
References: <669c9e7e-ab0b-dedd-cd51-a37aaa733ec8@hubert-humphrey.com> <YuMpteM2zBvNc7Dn@gregn.net>
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

Well, Greg, I can change pitch-and-rate. In the older IBM voxin voice, 
everything works. Eventually I may experiment with Fenrir, as I asked Chris for 
a Speakup style key map.
Chime


