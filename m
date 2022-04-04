Return-Path: <speakup+bounces-386-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DD0D64F0E69
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 06:58:01 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=t+u+kbYK;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=bNxsGiwF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7E331380D41; Mon,  4 Apr 2022 00:58:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6A8A2380953
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 00:58:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4EA58380BB9; Mon,  4 Apr 2022 00:57:55 -0400 (EDT)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A6A64380930
	for <speakup@linux-speakup.org>; Mon,  4 Apr 2022 00:57:54 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 132515C00DE;
	Mon,  4 Apr 2022 00:57:48 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Mon, 04 Apr 2022 00:57:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; bh=g0O7TPftA0QxVm
	4+wYmbROlG/OK94t61aRSb8pRNrBo=; b=t+u+kbYKeUKSyIeUmQAZsGcTsEOGo9
	+jFfjbKIoLjgjyf6TdDw+cDDviPSYBWOgyYIUDa+/InOQLEULnykjQSdnyvuYVOA
	6nawX2i11CqBKWxUCmQzzJvyCXGxpsQfUuYV6fQ4SpfGdWvQvm1YD9K6CKCP4uDC
	XlNNsaiBkeym68u6ZxNDJ1OUUfEd6X43DvRBkQuxjCQ5CmlCAwMSjwQjgqUicq8x
	Ls/FfOSVDiv0CvwqCO7DHj5ffWLmXiBtiai0M46pGSRqvoVipMNybrhvto3HV+5C
	6TmJnqhi7caBz6B5wSfrzsU01T4bQKbNRlQNe63GMSttyP/854slQ94g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=g0O7TPftA0QxVm4+w
	YmbROlG/OK94t61aRSb8pRNrBo=; b=bNxsGiwF3epctZzk2hLgoD9s7QQxsrF89
	sKmflj3YuwRqUoMPSaZ832OwV79WYtlrUU9u7ZHGaEt0ZhF3BL2NtGfR0PQeGQgY
	KVL9I5ZX4HSUc2toSs3tZf3irRavsLcq1CW9+rohsnnKVXLx/WUzR8aq/7CfpHeS
	MOIkQ6Cx5Bt9cQyWxKdGc8vo2rVRZEV1yW6YW9ilavbiWDwOD5rNYmOxk+HH4m02
	SglaioxC6UB6a0DBzW5Nox1//++dC05ISkMvxFr/taAD1xYj8YW5aWWD7RDC2WGE
	jN37G2U0qzDTeaq3cRd9UZW/UMWJMpBei474vGlavZYMcLH6A5MRg==
X-ME-Sender: <xms:y3pKYtcgui8_OJ1NI4icXyYSDcR20AHXAoRBp7wCKZgakc_PAPBMlw>
    <xme:y3pKYrNB64uSJGKPjruvkAXbFG31ycVaztR1G3rErNLQunZroDl7KPkcD8HKWTLd-
    cjpH6uY8eC_JHE0J5Y>
X-ME-Received: <xmr:y3pKYmgjlrI_xjjmpYGvqS66e7ktq5AAsgzqrw7X0ToxIEjX0r7Fb7beIgawxHGRmLSty_hYlUt0QlCtAFbSKDmINuSxcbzf0w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudejuddgledtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepffehtdfhvddvueeuieehvdefffeutdegueduhffgleetledvuddu
    gfelkeevtdevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:y3pKYm_vfwYUWK0Of--nybPjOTblC1mqR0WLI0QqPwmrOPzLJ7i5sQ>
    <xmx:y3pKYptwLu7vLZTOEok2j9iXeTZH8BYqnEkxkqcbN4QqoWxfGZlVhg>
    <xmx:y3pKYlHQu9wFKQkhQCkbMFsnbBrhV0SXamnlhT3wafLRwUGgmHA8oQ>
    <xmx:zHpKYn1FrSPGZKNkudhALHzqm8rvS5bVtAoJqRKC137f6_P5AAVpCw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 4 Apr 2022 00:57:47 -0400 (EDT)
Date: Sun, 3 Apr 2022 21:57:45 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Gregory Nowak <greg@gregn.net>
cc: speakup@linux-speakup.org
Subject: Re: How Can I Switch Synthesizers on the Fly?
In-Reply-To: <Ykp44UQ6vUlnyXEY@gregn.net>
Message-ID: <362f5e7-4cd6-9d6b-36e2-5485e066bb53@hubert-humphrey.com>
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com> <Yko9zLikCNY1qcDX@gregn.net> <4ce83a8d-a0a1-3ef8-e8df-c9881198622@hubert-humphrey.com> <Ykp44UQ6vUlnyXEY@gregn.net>
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

Hi Greg: I did not run any modprobe commands today. I guess unless I needed to 
string 2 of them together to switch off the DecTalk-and-enable soft synth, 
because otherwise I might not have speech. I suppose I could use 2 separate 
consoles for both commands. Anyway, here are the contents of 
/var/log/speechd-up.log
[Sun Apr  3 17:46:06 2022] speechd: Speechd-speakup starts!
[Sun Apr  3 17:46:06 2022] speechd: Error while openning the device in 
read/write mode 2,No such file or directory
[Sun Apr  3 17:46:06 2022] speechd: Trying to open the device in the old way.
[Sun Apr  3 17:46:06 2022] speechd: Error while openning the device in read 
mode 2,No such file or directory
[Sun Apr  3 17:46:06 2022] speechd: ERROR! Unable to open soft synth device 
(/dev/softsynth)
Chime


