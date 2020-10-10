Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 77DC328A14A
	for <lists+speakup@lfdr.de>; Sat, 10 Oct 2020 22:34:04 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 09D59380BDF; Sat, 10 Oct 2020 16:34:04 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm2 header.b=cho0aahm;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=k3IniG1I;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 587EC380B44;
	Sat, 10 Oct 2020 16:34:02 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 5667A380B33; Sat, 10 Oct 2020 16:34:01 -0400 (EDT)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by befuddled.reisers.ca (Postfix) with ESMTPS id DE3B2380B2F
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 16:34:00 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id C0BF55A1
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 16:33:57 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sat, 10 Oct 2020 16:33:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 hubert-humphrey.com; h=date:from:to:subject:in-reply-to
 :message-id:references:mime-version:content-type; s=fm2; bh=nxCY
 3dSHk+fADQGuvBQ79s40vLb/fg/ti8VKDv3TXVE=; b=cho0aahmInlqhDZie++d
 0njteRHRsbR4XruCQ9+kxcwlpyYznTo7cVvUqYce57Eghkjkc+2Adm6/8rYDrBkq
 OTMdh8M0a0W9uIWot6clRrbLUFUFl6MqTeCgafBo63IGarQQPBC2NW8jB+FPXLdy
 vk1JHIAsbzxMNaEojQmXJyHCtifw51ExwQDgl2wGOa6iXaX36/1JIvovgl1EFag7
 RZSfWEl5ppLsFR1YR/jeLxoZI1ciRuzPCpnmE/nL0OvydpuQSk5okM2j3m8hAof/
 oIWaIWwmBdFOws4D7sIMCkpchApolNwR2DWkoOD1YQcR74AIHZ7EtTrJCvz+pij5
 vg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=nxCY3d
 SHk+fADQGuvBQ79s40vLb/fg/ti8VKDv3TXVE=; b=k3IniG1IT+P7YDHgGWIdJk
 TjSfuBPdlrWf/eLmIy29BDjljFVA4yUH1DhkM2e/Tst8HdwBL4zGn7dvbi1Sum0r
 ec2SpSvEQFbG1xA7cIxIDfCDjE9jvTrsNA89tbAZjSRL747+6znBOutdkbSx2oFb
 GxF9o6LiWBmAe4X+xocWInIMwW4DLGgWfJOhLfteQZlEoVLl8POsA4hxJ2FmsLds
 T4TBB4Oj18C/+SRUdxOecSiBbrcA+WdcU3kRPAuWeS+yKY9bZfZwJGjCeny3wXJk
 K2bPOBbCeZaTyVtf/YWfhaHhtX8bzdG2iIGtc9uXta8fnYZhVY6KLezq/P0EA45Q
 ==
X-ME-Sender: <xms:tRqCX8naI0TC5N_5H41AARW-6WBty6cjhRZmIOvUT6_wl_lX0ttEyA>
 <xme:tRqCX73ZFoHNzaNMwNpt0_65ZqIxo2kaHbDAp7mLC6xi_Fu97K_5SS3e8L65o4XZo
 CchBpxVq-e2Iid3rcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrheefgdduhedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffujgfkfhgfgggtsehttdertddtredvnecuhfhrohhmpeevhhhimhgv
 ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
 ggtffrrghtthgvrhhnpeefuddvuddvvefffeevgeejfffggfeiiefgtdeugfehgfejhedt
 ieelhfeuleelffenucfkphepuddtgedrudejvddrfedrieefnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhh
 uhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:tRqCX6rb9hUAC1aA2RNuodPuE8PKJ5F-AcJlzZbjHcu38xfJyFfM2Q>
 <xmx:tRqCX4mvEVXFRkHVpyF4U1yTSqCsyBirmgMbQWuXSJFwY6uzUM1rQQ>
 <xmx:tRqCX62XzPhMxmrh17AQnObcoCYhnuvucRyji-rLMtHZjwN5kyFD5g>
 <xmx:tRqCX7B13w9aTRMWLDc3S9U5uJ2RyQQfaf0cd5pA8c95tjyUi4pz9Q>
Received: from chime.lan (cpe-104-172-3-63.socal.res.rr.com [104.172.3.63])
 by mail.messagingengine.com (Postfix) with ESMTPA id D2CD8306467D
 for <speakup@linux-speakup.org>; Sat, 10 Oct 2020 16:33:56 -0400 (EDT)
Date: Sat, 10 Oct 2020 13:33:55 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: So, where'd the volume controls get to?
In-Reply-To: <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
Message-ID: <alpine.DEB.2.23.453.2010101326500.4133495@chime>
References: <alpine.DEB.2.23.453.2010091111480.51713@befuddled.reisers.ca>
 <20201010151312.fbz27eyoua2574tw@function>
 <alpine.DEB.2.23.453.2010101446340.31356@befuddled.reisers.ca>
User-Agent: Alpine 2.23 (DEB 453 2020-06-18)
MIME-Version: 1.0
X-BeenThere: speakup@linux-speakup.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <http://linux-speakup.org/cgi-bin/mailman/options/speakup>, 
 <mailto:speakup-request@linux-speakup.org?subject=unsubscribe>
List-Archive: <http://linux-speakup.org/pipermail/speakup/>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup-request@linux-speakup.org?subject=help>
List-Subscribe: <http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup>,
 <mailto:speakup-request@linux-speakup.org?subject=subscribe>
Reply-To: "Speakup is a screen review system for Linux."
 <speakup@linux-speakup.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: speakup-bounces@linux-speakup.org
Sender: "Speakup" <speakup-bounces@linux-speakup.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.4

Hi  All, once again: So in looking in that patch, did I understand, once 
you fixed the volume, there are no push-buttons for the new inflection 
variable? Unfortunately insert+7 is an only unused in that roe. I suppose 
you could use insert+i for inflection or insert+v for volume. With an 
inflection option, instead of 2 keystrokes for up-and-down, we could type 
in a value. And lastly, can some1 please inform, how can I install a 
Speackup patch? I need to learn how. Thanks in advance
Chime

_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
