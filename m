Return-Path: <speakup+bounces-809-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D4E5A61246C
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 18:21:19 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=qtUfVWPY;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=iZ6Qb6hi;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 40094383FEA; Sat, 29 Oct 2022 12:21:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1FBCE383FE3
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 12:21:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8326F383FE8; Sat, 29 Oct 2022 12:21:09 -0400 (EDT)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 842D3383FE0
	for <speakup@linux-speakup.org>; Sat, 29 Oct 2022 12:21:08 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 647535C008E;
	Sat, 29 Oct 2022 12:21:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sat, 29 Oct 2022 12:21:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667060467; x=
	1667146867; bh=zcbNFwpx8P4iW3aqxu3QH4VDD2EIsdhnD2wXwAgPWg4=; b=q
	tUfVWPY81EaGz68Ouzd9DiYT9Dq+JFholY4ys3CYEjCdXDGPdrzSCIYut2Ye6sdT
	w2F644UkSfpuhk0dRfs6H45JHyxHxOv2m5JvltmvSrHYQeL7gKM73/j25/PdLWTB
	3Fvfk/VcID4fzQ6hDOezEKrzR9kKgt3yS35I5yFKUrTHq57vy0ohDIvR+BcETmFM
	+CcBUd1DoOH6zI4ySlHY6vYRpuwAGmy50aQTsvVXL4aRAdFu2eqXMSWeJt5Yx9fF
	Nkn3jFrN4u+bk4i5Sy4J7ARXwJrJYXZjLzNpCuILJXjhf43loEfg2cRynLidWnxc
	Ti31T/w14qpJx9hvZYRJg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667060467; x=1667146867; bh=zcbNFwpx8P4iW3aqxu3QH4VDD2EI
	sdhnD2wXwAgPWg4=; b=iZ6Qb6hiDWIg4MRTw/nrv6ABgUlipOCsLr2dRZgLmQ+K
	F6tSBvk+/urTFUdMfXqKIgQkVULo8nkTL2DCJHm8ADpYL7qHGUG7wvJgMj9XbDza
	mJ/C/X133GyEkwFS6u2VvOCB13G8C1Um5ix9W3jRmJ2nKvSiqE2pECGEs3FqDmKE
	x+WChWaSByRGAjJgCwxwZagoUFv6fqo4ztKoSnkpz14++UnbqUTLTttK+VxQjk5q
	lobNHgc2wHxwad+aXWfLsVql9E6I1V8DejTjQXdzI33vBNHgIfUKhJvl1UwuLq3g
	R8IzVViR7qkHx5PY29Nt3goi42PlKoUAnS5fDen5Cw==
X-ME-Sender: <xms:8lJdYwwySthRzCHez_M8UYTPx8yfL35W5SUnTWBgfyZpEaVTIClLPA>
    <xme:8lJdY0QzlJO5NK0G2oyr1fw7a9Hk_Z8-49PPnH4NqTFW9dGd3Fmj-kYhmxdEdLjPm
    B29MBS7eILfCI1Y7RI>
X-ME-Received: <xmr:8lJdYyVEOS4mVC5qQW5bdY3o3ivs6bHRgNjBC0yLZgIjZNLnlcmxGcL56Ea1tkyN_GerF64BMMulHnDjTChpVolpygTT-sQVxg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdekgdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:81JdY-itmk51IM032ivdoR03omwWev0kzUHm8RePaShSRpfVcLWthA>
    <xmx:81JdYyBAPi7afOhi0cAp4J4M7m2DrOwxLYiEE_OVCNTOpD8taQ-N9Q>
    <xmx:81JdY_KphPwi6CDmMTRwKjZLi3QIg-sj0OZB1QYPOyufBalsBWNRIQ>
    <xmx:81JdY1MxRYEwRqIr854cu67zmJCpOtcoJ-HHF8zC1mvXsU8s2Zg0wA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 29 Oct 2022 12:21:06 -0400 (EDT)
Date: Sat, 29 Oct 2022 09:21:04 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org, 
    Didier Spaier <didier@slint.fr>
Subject: Re: Installing Voxin
In-Reply-To: <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM>
Message-ID: <62e3adc6-08c3-7df8-75e0-93a67a4b562a@hubert-humphrey.com>
References: <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
 <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net> <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
 <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com> <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM>
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

Hi Glen: You know, last evening I realized these 2 steps might work for you? 
First, in your processes, you would sudo kill -9 items dealing with 
speech-dispatcher.  Then
sudo ./speechd-up
That might give you Voxin. At times this has worked here, not a perfect 
solution, but at least you hopefully can enjoy something better than `horrible 
espeak.
Chime


