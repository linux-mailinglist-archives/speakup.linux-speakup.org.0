Return-Path: <speakup+bounces-1128-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2781F8BB395
	for <lists+speakup@lfdr.de>; Fri,  3 May 2024 20:57:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=G28kMk9p;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=IMfbWGs9;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8EBB6C81D05; Fri, 03 May 2024 14:57:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6F1E3C8104F
	for <lists+speakup@lfdr.de>; Fri, 03 May 2024 14:57:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 290B9C8104F; Fri, 03 May 2024 14:57:46 -0400 (EDT)
Received: from wfhigh6-smtp.messagingengine.com (wfhigh6-smtp.messagingengine.com [64.147.123.157])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 81BB8C81033
	for <speakup@linux-speakup.org>; Fri, 03 May 2024 14:57:45 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfhigh.west.internal (Postfix) with ESMTP id 352011800159
	for <speakup@linux-speakup.org>; Fri,  3 May 2024 14:57:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Fri, 03 May 2024 14:57:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm1; t=1714762662; x=1714849062; bh=4H7+v90yGj
	F8a1MKJSvBLBt8TaHyClX9020+DiMOwPo=; b=G28kMk9pfDNKNnYjfsBqkJvnrK
	Kk2WPXCmrNUI+VRMmaEVyvdeMl/sWsb6qATw4Twy0m4G0KekCjvrTmvSQWyRy0IG
	Fr1JSe0hBUcVVEWd02TcV4nFi2gGHQjxvYgQnwUdtlql7IoGfs16mSNuZxdenyvh
	7TNiA/yzfjmUVC/pnTCYu6zXqu/nMU5Mu2YlpyMTNRldSiaGI4jMVysJKV6vC/3y
	aksHrAteDlkw4iuwqAzb3oc+lzQoUcnBdcPrCL51SUFTxPr/TgLnNPPZ3OIYrmLx
	8sZSGgF1DHzz7AoBroz+kr/k8d/L3eI4bio3kQBrG68zkzY7Y/3ldkbHS+6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1714762662; x=1714849062; bh=4H7+v90yGjF8a1MKJSvBLBt8TaHyClX9020
	+DiMOwPo=; b=IMfbWGs9aZHNsKtc9F3V9Y2VHtf4HpM1vwsXf9MW+1kkPbse19I
	s7G7gXhTKAaxh17LdZbADCgj0HHNtdFkHU2o0FSfIJ7BNp8zPI9JFDq26SNazrb0
	feb9xv3PxCvxTZJNPXlsy9kGNmMjLZVQbgvqAqOfM+NOrLX4PSYLGhDEMsZB/AfO
	Pv7ZZOcAAT8bl2hixilicJj/tVrUbCWZ+C0jX52V+dSwfbC1lTHLmOMWvZvTnkGS
	zVomMgbtsLAzmoFjthXe6OgkT+fPRcrlbaaz4Q4KBwKurDo9PSsnEV2ztmhNADQx
	6BopF5ZvIegcXSyRDvZrJwkq9pCePmHi/ug==
X-ME-Sender: <xms:pjM1ZpAqNdPSP47KaNVvJnSvfYqRzAFEXcrkOIFVxH-nMn4p_7BvRw>
    <xme:pjM1Zniblha-SFxEVj8CdiZybgOAUOurRwwO1xX3FZDJzrPfCu5WxR9brOmHV4LzF
    IKJXvRE8Rn8jU3o_5I>
X-ME-Received: <xmr:pjM1ZklazkdgaVQB0OR0kwvLDJr5Asc9FTLdXiQERnZcEBAoLqRnu-WniWXhle88aF_HSoUCUMOmMkozpuv0dB9FOpw340rlTic>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddvtddgudefudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtd
    eiteettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomh
X-ME-Proxy: <xmx:pjM1ZjxzKcYcGp1NcxXdPNzncTlZ4xr8-3OJejZia8M5AbzkMKxjyw>
    <xmx:pjM1ZuS8wRwotDhp9tHdgo_1tjmSVIvVOQRa6i0ctlPzYygOVuwcWw>
    <xmx:pjM1ZmbhSKlI02UIaa0TgwMfsW2j21tojOA0TkPv2uKu5vFyjqc1Fg>
    <xmx:pjM1ZvQtLz9OQI-j9klD-cdlr0WHE4lDpYTESb3mIR1OCmivveVdSw>
    <xmx:pjM1ZhIq7VDEwitpnyAjhCQv29NNAHlW3OqH51j_TMwppkrg4A_5IHpo>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Fri, 3 May 2024 14:57:42 -0400 (EDT)
Date: Fri, 3 May 2024 11:57:40 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: speakup@linux-speakup.org
Subject: Can We `Please Enjoy Single Digit Numbering in Speakup?
Message-ID: <af4eb9cb-7a49-f290-7fbe-d77cb5e39982@hubert-humphrey.com>
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

Hi All: I think Speakup is an only screen-reader in almost any platform without 
an option to switch to hear single digits while reading. Maybe Chromevox may 
not have this, but just about all others from DOS up through Fenrir have 
offered this in some form. While it may seem like a small thing, while reading 
an Alpine mail index, hearing the word "hundred" feels as if it wastes alot of 
time. If it would be more official I can file a wish-list bug against 
speakup-tools? When I run reportbug, that seems an only package to file 
against. And speaking of outstanding bugs, back on February 20 I filed
#1062507
about the DecTalk drivers. Funny thing was, even while reading over what I had 
submitted, settings dropped. I looked around the Speakup drivers directory in a 
newest 6.9 kernel, where a specific change which Samuel had helped me with 
reguarding flush time. 10 is wonderful but in dectlk.c it still says 4000.
In basicly nearly 21years of useing Speakup, an only other wish list item would 
be an exception dictionary. Again, an item in most other screen-readers. Thanks 
so much in advance for listing-and-considering these.
Chime

