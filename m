Return-Path: <speakup+bounces-956-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 407F77208FA
	for <lists+speakup@lfdr.de>; Fri,  2 Jun 2023 20:19:38 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=3y0D0Epm;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=ixKtZzZ5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 58D1B38249E; Fri,  2 Jun 2023 14:19:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3922E3823E6
	for <lists+speakup@lfdr.de>; Fri,  2 Jun 2023 14:19:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 072DE3823E6; Fri,  2 Jun 2023 14:19:27 -0400 (EDT)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E9EFE38233E
	for <speakup@linux-speakup.org>; Fri,  2 Jun 2023 14:19:25 -0400 (EDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.west.internal (Postfix) with ESMTP id D83143200932;
	Fri,  2 Jun 2023 14:19:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 02 Jun 2023 14:19:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1685729963; x=1685816363; bh=5HVgTjOsFynlmApvPm+VVPAgJgQzryi4rPU
	AQiEUp58=; b=3y0D0EpmHIPpS9Md1xcR/Q83OrC2/RTrp96RD55p9eo8+RChISJ
	N6liniCy/6r0vmDXxLasUnTYZif9GoBbmX2JuLbs+twjngCM8pBFI9PeYEbMTOK2
	nIvAZcl0cTzwkG/ni5XYh/nEoC1fl/+qqu9ox/idLqE0uDLE0/bqQztG7Wpxll5l
	mPQ0acnT4HhRDNgzsq8kF5Op15XjMZ9iAUx2jLPFxvhXicLlZYnJf0YkK8LrUHNL
	mn0pAkCZHxd68vUCo/P9iQmpeGvgbrXBsqW2TmTayOYBnq1CBLvTvNmw3jaTb6vs
	FWdIzieUQr8OWcO9A1wA2nEjP7BYAWeOm0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1685729963; x=1685816363; bh=5HVgTjOsFynlm
	ApvPm+VVPAgJgQzryi4rPUAQiEUp58=; b=ixKtZzZ5tY825dYwdzsF8AQIL7GZA
	kScRVlNm2z6++UjlTnVwd/hG6b8kQin2w41FQ5ekHyCy295R+uK/Fgb+HTyXcXrg
	pPiaLWpBPpmqFbnStPuly0NCP4BBfm5T64YZw7BkCPUXBF7c+0vPXf2f/gFtSJCi
	kU5zGPdRtWvvSounB+ZXIGJFY0jpf3INjHkA920w+c/NV6lDAH9eY2ghxhj1TKK1
	vS09m+zAco6QwlgH9gARF+ZKXsl9NfhRwM+gZ0wjFVM9SMa7QJsqE+8kySiSn8og
	mzyTzFcszvG6lx7WQRMmQzUqxuxHI9frJna3X0uoLdmSfXyIfGbm7qZ2A==
X-ME-Sender: <xms:qzJ6ZIWKIbTWuxDMkcDaHekL_jex0Vf_fTnV9T0yfXBpRhYLAGWcHg>
    <xme:qzJ6ZMmUTSXIgQjnN66TbmyMroGDHfzaf3wfhcUXnKSC39LsA3SiaTbxtu5eRzsb3
    uglqOX6l_JvURRYIWE>
X-ME-Received: <xmr:qzJ6ZMZHYQRkfHhaeTLFxxOOvehp0ulIBWEz9b3va5jQy4LMVvlZx9ytCzcinU_NtEB0F086yiGqlMhmHonk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeelfedguddvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:qzJ6ZHXfUmevYDC2vNHSofWrzq1TMD6OSzQtl4QVsY8HaS4p9VDH7Q>
    <xmx:qzJ6ZCkHLCXj4kfURG7WDjI0rtmOqPLdIUuTXxGKwiaOXqGLI0M9_g>
    <xmx:qzJ6ZMd-4Ar007CBgdb1q4t2VXbLgQR32MBHwkcVP_bbWaPGWGNHPw>
    <xmx:qzJ6ZJtXCX6qc4evj77ftuYIyjS6gyG85p0eJ6jxaFJU1iNN-QLGtg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 2 Jun 2023 14:19:22 -0400 (EDT)
Date: Fri, 2 Jun 2023 11:19:20 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Martin McCormick <martin.m@suddenlink.net>
cc: speakup@linux-speakup.org
Subject: Re: Beep on Backspace in Console Sessions
In-Reply-To: <E1q58Da-0006GQ-2T@wb5agz.lan>
Message-ID: <5090839d-8a7d-5db6-30af-e67f1a3aa934@hubert-humphrey.com>
References: <ZHGmQFwqgliD6p3X@rednote.net> <b175e143-de30-9fb6-1ed2-d352a3af34a9@slint.fr> <ZHUKjA+f+SLDtpR+@gregn.net> <87e9db08-ba5f-1287-9409-d51fd5c3bad4@slint.fr> <ZHfVG9Z7CiU6csE6@gregn.net> <E1q58Da-0006GQ-2T@wb5agz.lan>
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

Sure I really like a back space beep, but whats lots more helpful are beeps 
while tab-completing. And speaking of tab-complete, while I like TCSH, you can 
try yash which steps through items instead of letting you hear them 
consecutively.
Chime


