Return-Path: <speakup+bounces-468-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4415056D153
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 23:10:21 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=gs1XBF5K;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=QtJFr4EQ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C731A380BAB; Sun, 10 Jul 2022 17:10:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A6C2F380B61
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 17:10:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E1672380B5C; Sun, 10 Jul 2022 17:10:12 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0431D380ABF
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 17:10:12 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id DA8633200564;
	Sun, 10 Jul 2022 17:10:06 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sun, 10 Jul 2022 17:10:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1657487406; x=
	1657573806; bh=QcPzULEt7K8rZ3bllRRxuvs4qAqGG+hCIBzGBDn/rq4=; b=g
	s1XBF5K42ZqdsaS/i3Z2lx/TTIRPqtSif9PDW3RfDpmZgFeMSXkn4jE8V6tEDt5l
	MmbCpyNb3kZgLCal6xFbfN05i3xOaBPyc8/XUIqX2GiigP6GXzoj6b2LpcZR+t/E
	vBBKu3AbHJSdE5zAdhd08XotIIXPhbtEkFJnm7D47preV44in5eHqa3DGwvwKjH8
	oTvAVkuSi73cX7GMELRkA4Bn+r1qdr3uPAXNqzIcWGfQc37bnSNQiSDSOBQsd3cR
	xgFrStt96esZpEkqWrhXzValPWR8+3ByFEGb70TtbAe0DZEEyXwtrCdz/Rj8glkG
	Bbr9coFbn5s71DZ4RMghw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657487406; x=1657573806; bh=QcPzULEt7K8rZ3bllRRxuvs4qAqG
	G+hCIBzGBDn/rq4=; b=QtJFr4EQVf0SaZn+Xv4AuW4fpm6V/YV/rVcvQ/HH1tT2
	XqnokMcFLnC9KqvZRCXCgD6kZrNyOBGNIy/PxsIMOdeJo/R9HpUEg2ltJkKdjGsD
	VrbGo8cIZf5ylQ7zUzdYduQ5WEdk0K8an+KXlWZMda38XE8uIwoZJTObFwSFmR6g
	eh/ZLCdbbnKJrJwsI50O7fJlk5dTn2fnSf0flKlVP/UvZo/qdRL3hUQgVWyS5CEr
	FYORZ5tCbFodn79+OR/G67GsxqlYDWiDwkUxlo0CRI6wL4IAebYXAcqswU9f6Qjk
	RVFKDZ4k75sqLYvI1JuPDMhOfUlxGo2oLRUfPshGCg==
X-ME-Sender: <xms:LkDLYrTYsbO04TZ-OcnlnaeL3nKtmp_LiK8-zGrVYY4uDqK6MO9XQw>
    <xme:LkDLYswYUXGUvjXPdtQ3MY2Npzki9nDuG9QrvtfXfEKx8GDge1syCnrTa737OI_3Y
    WOwbnHHh3cZjtiqnQo>
X-ME-Received: <xmr:LkDLYg0vP9fB9Mt2Af7FVI2jWlcqeDz1LftZkGHjVMhvBqi9kOF3UpahjNluGckOWDdxYxqqSHdsysnPSsR1MzRSH-vczStx3Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejuddgudeiudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:LkDLYrAiDFW3FKz1dt3_ulFLzRFYiRxg5uFOz8ETXwBpD5avTFAjHg>
    <xmx:LkDLYkip2PNixiQeeY-md-5ENwsr1xV8eLw5HRA2JUPLuZk4or1ejg>
    <xmx:LkDLYvpfnXpCnR-5z5cGgH0q5SkA2lJZb23NgMvmJDUFRgSxqt1B1w>
    <xmx:LkDLYgbU4u5uP0WAe4DmnokD-3rRHczpaFY2rJmeCodGTovJ8sHXog>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 17:10:05 -0400 (EDT)
Date: Sun, 10 Jul 2022 14:10:04 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Samuel Thibault <samuel.thibault@aquilenet.fr>, speakup@linux-speakup.org
Subject: Re: About no_interrupt?
In-Reply-To: <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net>
Message-ID: <b9ac0798-5749-12be-6dbb-9d05f7e48078@hubert-humphrey.com>
References: <e12ad8db-3330-1eb3-bd02-65800c170ea9@hubert-humphrey.com> <20220710191638.ifp4speglszs3hm4@begin> <221ddb78-9ec2-6f00-b249-50dcbb7e57ef@hubert-humphrey.com> <a029ad61-468a-0daf-e245-fc679f1a8dab@hubert-humphrey.com>
 <Pine.LNX.4.64.2207101628140.440089@server2.shellworld.net> <20220710203826.3wasqo5hnxf3zdep@begin> <Pine.LNX.4.64.2207101659370.441118@server2.shellworld.net>
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

Well, I suppose if I understood much more, I could try-and-run Fenrir with 
Allison. I did install fenrir, sure alot of packages. While Fenrir has some 
options which Speakup does not, what I would really want would be a Speakup 
keymap for Fenrir. Chris was opened to that if it were supplied. From running a 
search, Fenrir works with these embedded voices, but again like a speakup 
situation, we would need real life experiences, "can you interrupt speech"?
And as to Karen's question, I have never heard of a pause keystroke in Speakup.
Chime


