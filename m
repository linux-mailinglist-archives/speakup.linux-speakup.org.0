Return-Path: <speakup+bounces-1369-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 80DD4B82552
	for <lists+speakup@lfdr.de>; Thu, 18 Sep 2025 02:01:11 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=UbutH5N7;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=LnwCevXm;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6B445382A7D; Wed, 17 Sep 2025 20:01:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4ABB03827C8
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 20:01:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E535A3827C8; Wed, 17 Sep 2025 20:01:02 -0400 (EDT)
Received: from fhigh-a5-smtp.messagingengine.com (fhigh-a5-smtp.messagingengine.com [103.168.172.156])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 54734382128
	for <speakup@linux-speakup.org>; Wed, 17 Sep 2025 20:01:02 -0400 (EDT)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 86BB41400210;
	Wed, 17 Sep 2025 20:01:00 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Wed, 17 Sep 2025 20:01:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1758153660;
	 x=1758240060; bh=ydsm3SL1v/w4ncAAHtAuKhSp/R2tMWVMivsB3HN5s30=; b=
	UbutH5N7srBjLj10xCJQ1oSx24aN0g3vW+9oROLOMKhWfkc66J6VzfStV39CkeyN
	H1XoBz2isThBcXx0/o7v9hxWzsUxfJSLk6hcJ8yfoYhPGDbk1B4oGOdVrUjC9zM0
	cEqw03v1o0IgjwzEXLXqLCQX033St/YpHkfPBdeuRpZI6IBujVOlmouzRkr2fwJb
	ank32v9OQ7cq/Bci8lTuIS+YSHj/FdC3TVtRpyeNsX2BnM2jkZT/87UeQBBpy5ET
	N8ekwTDP+Re5YtXKdssfmNh107Rc9wN7BKW6P8FcP1f4tT4J0YnVp5SgWPD8gGkk
	oM2XPmsJ7RvGzHisl8c3Rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1758153660; x=1758240060; bh=ydsm3SL1v/w4ncAAHtAuKhSp/R2tMWVMivs
	B3HN5s30=; b=LnwCevXmmd/A42Pqgw7GJZh+lGf/glIW8mbWjm9JB0buMLGwuFy
	tWAE9NpO62RGH9W/1NU09xlaRAyZ+lIqFBNKfOLGYNUEIs2NsqIdORs4TBRiFTdC
	uBtPTCmhNGgalu3ww33I/FkLVEP5aD1SdEwnd9BEHSi3X4ZxE3NdsO0IOFUzvOpC
	6sREbpgC92/ITw9aUIIMWacVLj3k8fTaPFycK3xh+mnv6f3MDLutnM4zxT3Kn1XD
	lO+kLtN6FqvM2YsnNDsJ9qeNimILCK9NLNFpUnAIYmKa9PnuO54AYtx3PTGuRsr6
	F0Pdt2Sf6N4Ts5zqgBmDAqnuO1YFnbYnGqQ==
X-ME-Sender: <xms:vEvLaHA41pr3HCUYs-KO7rci5MsW5-P_NfBJ1eSWgQMFCG-JxSEFtw>
    <xme:vEvLaIax_fid66NYzNrk_YRbdwJX4kDLMYp4WoSBeEkfiflcXE-kbA6FbwtNdYQlM
    kSBcQL9rylYLHsxpVw>
X-ME-Received: <xmr:vEvLaKa6OTANhglglZbxkULJGii0R4PlixRy8w3WwRRieiS9HeaD2R6Gx2Yzd8NBsyLL27DCeyrZ__LbZCLNYfhH8ryaCjPOgg0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeggeekfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepgedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepkhhlvgifvghllhgvnhessh
    hhvghllhifohhrlhgurdhnvghtpdhrtghpthhtoheptghonhhtrggtthesjhhoohhkihgr
    rdhorhhgpdhrtghpthhtohepshgrlhhtsehprghnihigrdgtohhmpdhrtghpthhtohepsh
    hpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrgh
X-ME-Proxy: <xmx:vEvLaH-qN9mflCtWVyMuQOTlRsOeoCYbSCOu6Lyxs8JPp0E2fUEf3w>
    <xmx:vEvLaBjAFajS49v3H7tnMXyQI6NkIjM3jYlV4_sI2lPqok4jAJzt2A>
    <xmx:vEvLaPePOa-ziou89ZhLgnDxdtlM2X7CDDEH0fBZq9tnOWmW_wFDew>
    <xmx:vEvLaAqEJIsBxfPghgAlrhfnRFNBh3qiL2zgu_I2V0Gbjth3zOampQ>
    <xmx:vEvLaF9FqsGaHxlZWeDHdgRQvVWwWLjNXy53nV4dftSjRhWOTq0UiaNz>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Sep 2025 20:00:59 -0400 (EDT)
Date: Wed, 17 Sep 2025 17:00:57 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Jookia <contact@jookia.org>, Rudy Vener <salt@panix.com>, 
    speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
In-Reply-To: <Pine.LNX.4.64.2509171937230.3963832@users.shellworld.net>
Message-ID: <13c3575f-e8f3-5ea7-9d9f-b8220cd308f0@hubert-humphrey.com>
References: <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net> <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br> <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net> <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net> <aMOwSwrEWTBtFn60@titan> <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com> <aMsF4T_1FAbaFEHz@titan> <aMsboMhBL4klsYZD@panix.com> <Pine.LNX.4.64.2509171823280.3962820@users.shellworld.net>
 <aMs6TdEMXhkXkkJP@titan> <Pine.LNX.4.64.2509171937230.3963832@users.shellworld.net>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Jookia-and-Karen: Jookia, currently an only way of useing Speakup with a 
DecTalk USB is by switching a unit to an rs232 mode. And Karen, remember  how 
nice it was in the 90s when each DOS screen-reader or stand alone reading 
machine not only had DecTalk support, but staff were quite willing to guide a 
user in what to type or ajust. Certainly as I've said for many years, because 
these were commercial products, they were quite willing to provide phone 
support.
Chime


