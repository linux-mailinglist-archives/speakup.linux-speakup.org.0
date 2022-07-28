Return-Path: <speakup+bounces-490-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 92A08584860
	for <lists+speakup@lfdr.de>; Fri, 29 Jul 2022 00:42:03 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=kEhP3aZh;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=sJUkPkek;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5CAD2380B13; Thu, 28 Jul 2022 18:42:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 47C46380A86
	for <lists+speakup@lfdr.de>; Thu, 28 Jul 2022 18:42:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A699A380962; Thu, 28 Jul 2022 18:41:54 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BEA4238001E
	for <speakup@linux-speakup.org>; Thu, 28 Jul 2022 18:41:53 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 3FDFD3200903
	for <speakup@linux-speakup.org>; Thu, 28 Jul 2022 18:41:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Thu, 28 Jul 2022 18:41:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1659048107; x=1659134507; bh=9eTqneQWjO
	QzxfixtnQgsKudZESFAYAgzUXG9jpYdvk=; b=kEhP3aZh/S2UBhSSIvvCHAutEy
	8uZOPZyN2j1Jx9zSJSk27/srNwOyohblDpCgMnzPY0PG9iKpHQGB/RegJvdfT9jW
	pFAR+DkF3mbRHPs1A2nOW0QT8IaxKwkf5T3z2eyF33YN5XVcjahD/yNAfhIlgG2D
	kvlG0RjtXvhAlbGBf0z/VVFufXBLQBFQIEpCa1SJqDJn6A/0s73DYwh3cRdryM8V
	E+kCkhcZY0JTMAYj3j/5AGttfhFkl9uCDjjU9Fdwpq4d5SRPV8WvIsyqiunmEm3o
	04bQ+F4dl4wLHvNyUOM8jJVnVyVNpd0z7fbqIuvh8sIiMPFVI6BwPVi3oH+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1659048107; x=
	1659134507; bh=9eTqneQWjOQzxfixtnQgsKudZESFAYAgzUXG9jpYdvk=; b=s
	JUkPkekkfgKlgl2L4Ksw94m82qX6EP5Z7eoZLqA1YldizbV+3oSLkzJPCn5DKa7K
	9dQ/5XkMUnWrorhVNPLFf2Yim844p70+ErAUc0J4SpCWPqQMNxBAczb8fZhP2vsA
	WHQuULmRZciW95fprWln+KCwhEX34kcyytbVn7fC1fL2IOELyk/HFGNv0UexFBw9
	ycAuKH/alCrPLyK6tvpiDRgASqGjpTn/O/EOMcnVVTWs/WBRqFcy+GK0im/F5Ybu
	XryhPn+tMVLYCvk7BFYrwqkyf6peuysWoBC/cB6poH+OQzhUb8iuPCSmL/fLiSZJ
	WcqyLrQMqMxh02ifKudBg==
X-ME-Sender: <xms:qxDjYv4myX6zxfqzfGkN-OxQI5KuLV1PYI31iBNL8U6hitPCYpMPkA>
    <xme:qxDjYk7qyzKw1hCbjIIq7k2LjQ9IfssR4giBgC2zvwg24FPgCrckRoCpG0Zjh3prX
    XIW3xgHcrvoTgAy2H4>
X-ME-Received: <xmr:qxDjYmcvnXC3FCn06QL76p0IxNQHp1OnIENxggPLHMfsPILVyPqX0IIEQh352IwDnUFJxo8dwTL0Q6FdMkkzHRr7cNyIPMk11A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdduhedgudduiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtd
    eiteettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomh
X-ME-Proxy: <xmx:qxDjYgIlW3UoP6_4rs-n3A2Ch1KNMk8hBnG3DYaYtW471vy0g6g79A>
    <xmx:qxDjYjJSKvGPomPBBPpxx8wj9KW7Qz34Zx98UkwAH9Hrz9slowHM0Q>
    <xmx:qxDjYpyH3Fd0AIpOkxuD419YinmlY-guzRz-8yu6ZqRf98h6tcJ7BA>
    <xmx:qxDjYunY2fGCZXWS3RWPSJiB4kMwI4E_-JCZj_u5pOANF34MpTscOg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Thu, 28 Jul 2022 18:41:47 -0400 (EDT)
Date: Thu, 28 Jul 2022 15:41:45 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Speakup Punctuation Settings Within An Embedded Voxin Voice?
Message-ID: <669c9e7e-ab0b-dedd-cd51-a37aaa733ec8@hubert-humphrey.com>
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

Hi All: After `many months of struggles, I now have Allison, an embedded Voxin 
voice with Speakup. However, there are still issues? While the Speakup volume 
pannel announces changes, I can only change volume in alsa mixer. Sure, I can 
live with that, but, listening to all these dashes-and-colons, even with both 
punctuation settings on 0. Here are other strange things. There are no files or 
directories of Speakup settings, such as /etc/speakup. I suppose I could copy 
items from my desktop machine, but maybe there are better ways of solving this? 
In voxin.ini punctuation is set to "no" And I have traded messages with Gilles 
from Oralux, who says dictionaries are not yet available for embedded voices. I 
am in Debian SID. If I type sudo "speakupconf save/load" it says there is no 
directory /etc/speakup. So are their Debian or Speakup commands to create these 
files-and-would they help get rid of more punctuation? Thanks so much in 
advance.
Chime

