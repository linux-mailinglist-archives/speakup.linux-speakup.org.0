Return-Path: <speakup+bounces-844-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AFAB661EB0A
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 07:34:27 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=FvLU2N9X;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=MG0pRFQu;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BEA9C383631; Mon,  7 Nov 2022 01:34:26 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A0877383613
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 01:34:26 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ADBAD383618; Mon,  7 Nov 2022 01:34:17 -0500 (EST)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0D00B383613
	for <speakup@linux-speakup.org>; Mon,  7 Nov 2022 01:34:16 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 8FC9C3200936;
	Mon,  7 Nov 2022 01:34:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 07 Nov 2022 01:34:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667802849; x=
	1667889249; bh=ti1MlGTt2MDkABJUC6UBl27MX223VQInmUGwqknXjjk=; b=F
	vLU2N9XA74rcVzY/W/Vzg/U2qNX2te+VQ3Y9amgXDMdEWzOvhJGRLfZPwSXaqcv7
	ax/U29LWY3gRVbEjeYf3SmCc6rj3mGNQpM8/DqeIGi6zNa5sko7pnsU+7UOg9+Tc
	3q0rECXJ08mCuhD1TbWY+MiuIJaK7xQJAUHFlCXJjObEaSA5J/2wX2Ue7vTjtKjt
	kZib03Ac+1Hr8scRi6SY9SaGij+5ug3A5T7yB16u7wlFMEQct2WrBdmPMs5a631Q
	GLGCphRzZv8a2BGaHSjdap+tPO96+ro69U9kIHqtWqMT/AbE7K880fRy4anGqxoG
	mcsMOcz59lLS1XoB1Y9Mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1667802849; x=1667889249; bh=ti1MlGTt2MDkABJUC6UBl27MX223
	VQInmUGwqknXjjk=; b=MG0pRFQu/M2oDzG1Kb71PJrJUrHh5VygWLxAX6cstzIX
	2Qg2xm19XZs8lkJ0GooBaT0+hB0lBhlOHkIwVFK5+5pywzHgFbQbNyGr/CRHAFw8
	U4Fi5gxWXR9ssgGpMqqSJASZyRRYjkwEeyi5Z+Uq8wH6B++9YI7g80chM02bjLda
	2NmyZ+iVsqqz2GI+YGrwWDIR7wXIiLqTbV6DDE/a8qyabDH+nDIjldOpfln1ZOnj
	RBRiplzVfQ3KaUouGr+JibyBzWVM4g5HeaW2KOtbj34rw0EvND5oguFHG7R2Yfl1
	zxBREEYeYglkBo99DlsKzNkSLLk2bqP6/lXqrQMZsg==
X-ME-Sender: <xms:4KZoYxydHeSv23o2gIXmKmUKxsnbRF9xqKvl0JzM4SVKNBkB92nYaQ>
    <xme:4KZoYxQpiSHoCoLaIlCVkkjqmt2nlXmxbtSraou-bbqpz67zFGlRUC_mGa0JOu_B6
    JmbHuTj6bmfW1kA-nc>
X-ME-Received: <xmr:4KZoY7XNHrBect7iVsz85dxdeX0e4o_VPTvM_ZshQHboGcjWKegCk1r_cpkDLAzlAwVFyv6SUubEaUFJQCqbvLuY0P5IwQ-Wsw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrvdejgdeljecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:4KZoYzigrYcbsQdMiP1SrRpjJUeXLFPA6Q_dEWbL0fO0opail9IUrA>
    <xmx:4KZoYzBMw0LKWv9-97fYt5-oxnD9y70vBthVP67N_zLlk9tq0avWYA>
    <xmx:4KZoY8IswUAYm4TOyZRwcrFFEfjTuhcGWuYXr8p34NRltajY70lISA>
    <xmx:4aZoY2OvOXedxOLC0tv0FDwzvUcdt5jTfYunRBTsf-L7iO81i_AW_Q>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 7 Nov 2022 01:34:08 -0500 (EST)
Date: Sun, 6 Nov 2022 22:34:05 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Gregory Nowak <greg@gregn.net>, 
    Samuel Thibault <samuel.thibault@aquilenet.fr>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Voxin/ibmtts with eSpeakup
In-Reply-To: <0d4001d8f25b$b873c450$80ffa8c0@Win7VM>
Message-ID: <5d859a14-742d-64b1-eead-e8512c9aed9e@hubert-humphrey.com>
References: <Y2LqK66AdnnW9DOg@gregn.net> <20221102233629.ayyi63uakfhkw3dc@begin> <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM> <08a901d8efbc$33020490$80ffa8c0@Win7VM> <Y2RSm7hG8WHdiygs@gregn.net> <0b4101d8f063$69069fe0$80ffa8c0@Win7VM> <Y2XF6wmcbFCsq5l/@gregn.net>
 <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM> <Y2XV2QOPjryMKRJv@gregn.net> <0c3801d8f145$e2eb2b90$80ffa8c0@Win7VM> <Y2h53YPr311PDObk@gregn.net> <0d4001d8f25b$b873c450$80ffa8c0@Win7VM>
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

Well, Glen, I may be in a similar boat, as while I was scrolling through  text 
Allison just plain stopped. After rebooting, we killed one of the espeak 
processes-and-now I only have espeak. Also spd-say -L and -O only have espeak 
modules. Later on Monday, I will try-and-examin what could have happened, but I 
may try-and-install an older IBM voice, as Allison is processing dates oddly.
Chime


