Return-Path: <speakup+bounces-380-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C0B634F0C4F
	for <lists+speakup@lfdr.de>; Sun,  3 Apr 2022 21:36:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=LdZd/sWU;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=cLvAR7ZN;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AB4A2380D3D; Sun,  3 Apr 2022 15:36:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 968C1380370
	for <lists+speakup@lfdr.de>; Sun,  3 Apr 2022 15:36:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B6A4338092D; Sun,  3 Apr 2022 15:36:33 -0400 (EDT)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DD9D4380370
	for <speakup@linux-speakup.org>; Sun,  3 Apr 2022 15:36:32 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id C69C73201DD7
	for <speakup@linux-speakup.org>; Sun,  3 Apr 2022 15:36:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sun, 03 Apr 2022 15:36:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm1; bh=sa8PnEGgl0KAN3iFzgM3+2YROd0EZXcwta7Vnl
	DJ3M4=; b=LdZd/sWUnWY54xpHf6ffircaQiWDgcWob4XKQN8KOq7ylN4lQdzcoG
	r2qH9RhyuGHTnl30n8uwwQ9H9GvrJRpvrb3ZazWmLG9UcAgWIfx9Y8WnRO27D1Yq
	oCiIUPVGlaTN3rMKUES8qE2I+yXWW001YbA45ke2UCWPDjUJoJzO239weu0Wll4e
	42UKniwfYer3WVYPIXMWOxjtQpsVEAPeXzc1cMr6Lne9xHO/InVNhC5NxeF0hk/C
	tGc6y5AsgdEZn/5oWb9uxjIjiWEIEKTYgLthdOrDiF1vv+XRJ8vg6gYPefTxhPdU
	9neJfZ2OBpAlG/KacK8OkIoxzu1GRt+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; bh=sa8PnEGgl0KAN3iFzgM3+2YROd0EZXcwta7VnlDJ3
	M4=; b=cLvAR7ZNaOZaoCXYbBUb8BOrZt4Ob3wrg7gCCgsNC33WiazR/hiUxGJEg
	jze6JFfnbvgaE3zDz13gbPdJizB/dhRomhVHVl5a+/RONC8iZJzM5qUWgiwGBVqK
	BlIBb8+dWyG72vXFd/vKAWWQ9xGQj7RBzogCVNOYVTPEBI/USCcE+15a1QoYKHdY
	3E/0dSDQohS6HIeX3C+Wso8lpKy4bXvU1db0Z+hEYsf0jIYPNsM9g6BC2McO71HF
	tyO2B2103S0EhG3/RNocfLxcgMnM3HiI0+/biXuznaKxzoSLsnTuw0Y1N3VtCwE2
	45d6/q7Zn+qOBNTb2UqQMgH9Zo55Q==
X-ME-Sender: <xms:O_dJYq16cZBiCKd6POwSig7DMBo0nIksOhAV-tz1-oxGNsOX3-s-eg>
    <xme:O_dJYtHF-tlyNnXMHqeKvlIWLBb8eHO5tNcuqwCxTiBv05hvZSFRDNiiUUAscDR5c
    Aq2K8TjIHKt-8jQrnY>
X-ME-Received: <xmr:O_dJYi5YjK9ZNhnNJsOXp10aFbSV5fg4Hqr8jWXlbyzrNXw27CTdrZ3TICTPkl5z-ZaQhdSTRPko9enAHcTBmhvKY4QpvXFrkw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudejtddgudegudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepjeffffdujeelueffieevtd
    eiteettdekgffgkedvueejteektdehfefhhfdvteeknecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomh
X-ME-Proxy: <xmx:O_dJYr1LRkl8URyPWM9668jCJqe3mbVKmoXV1rSbkW0Gq3U1FxZXDQ>
    <xmx:O_dJYtHReU89ckhdDMOEJiuVLRpjgFinj6TCgOujHCBMnbxbrvyIyg>
    <xmx:O_dJYk-48nTooJbZ5RDntIwhGOblU3nHbymE3o3nxspdryxvP2bbhQ>
    <xmx:O_dJYsyBKbCVhr9JTPncUC0QkV5-p9yS86E9eDpZcy6RSZLIhxjB1w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Sun, 3 Apr 2022 15:36:26 -0400 (EDT)
Date: Sun, 3 Apr 2022 12:36:25 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: How Can I Switch Synthesizers on the Fly?
Message-ID: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
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

Hi All: I've asked others in other forums such as Slint-and-Debian 
Accessibility, but so far I am striking out. I have a DecTalk U S B, but last 
year I purchased some hi quality voices from Oralux, which are software speech. 
When I have Allison installed, I can send her text through spd-say. Making 
matters more complex, speech-dispatcher will not seem to install on this Debian 
Sid machine. Guidance I've received from 2 sources, says I must install and 
have espeak talking before I can switch to Allison, which is an embedded voice. 
When I was running Slint on a laptop, Didier had created a talk-with command to 
easily switch synths, but his script would need to be re written for Debian. In 
addition, 
if I unload the DecTalk module, I won't have speech, or would their be a way of 
having both DecTalk and software speech at the same time? So, can some1 please 
provide exact commands I can switch synths on the fly? I ran a locate for 
softsynth  but nothing found. Thanks so much in advance
Chime

