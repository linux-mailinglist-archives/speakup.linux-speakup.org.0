Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1F76D268ACC
	for <lists+speakup@lfdr.de>; Mon, 14 Sep 2020 14:23:31 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 681D91C077D; Mon, 14 Sep 2020 08:23:29 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mm.st header.i=@mm.st header.a=rsa-sha256 header.s=fm1 header.b=HdTUSn5Z;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=PCV34cup;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 338791C0746;
	Mon, 14 Sep 2020 08:22:17 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 008D61C0707; Mon, 14 Sep 2020 08:22:11 -0400 (EDT)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 67E0B1C0135
 for <speakup@linux-speakup.org>; Mon, 14 Sep 2020 08:22:08 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 970575C00DB
 for <speakup@linux-speakup.org>; Mon, 14 Sep 2020 08:22:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 14 Sep 2020 08:22:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mm.st; h=to:from
 :subject:message-id:date:mime-version:content-type
 :content-transfer-encoding; s=fm1; bh=lNJmIrgMyYeTWU8yeYSzzrOX6N
 DzG8DfUyF44eNrAeM=; b=HdTUSn5ZE/75ARPefJrwI2hQfi6Xq3Cysuf1Zgxcw6
 GDBmCbIsOCxc/1+QoaKO8GUPGzQuvXLvqYx65NKV7xedjs6rImhjTNIuqhDqXH6f
 GlCvDt/ofCHgXL97rjOFcO2k2P5uXzb7I7IW/nyzAruQuCU56TbtdIw/x9VoEqDw
 xitMqYww+KVTFMUaGZb4ox5bXIUrTr6Shw9Rd7OsBBQJa+jtdy6RGWlWVMdVqh5u
 GONcItUg8e5OI1JtHenSCfSipNRvZVWMXaJ/5Yb3thzWnsMUptqzveZS08/lHaZc
 eUPYqb+kzeDCgEtzSZ63pXcQBmQsxblE8eHSo+HUsrjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:message-id:mime-version:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=lNJmIr
 gMyYeTWU8yeYSzzrOX6NDzG8DfUyF44eNrAeM=; b=PCV34cupdK9D2IsD9XzLjU
 goARXUSERAfXRTopNtA5TXmeXAVE++a129XmkBS066ZsvRKLxv8i0llRw5u3d4OU
 FyXQcmnuj8HRT7HqcNoUKD5vMN3HX+YthOIGZKcPjJwj3SYNfbvDKtryHWy9lQy7
 j0z5ktxt04XFA2PcYt+kfGFS46p2iyyBYo+ek1RDO3wSpwGz9nTeQHK+V4IZ7rvh
 hLRGSAwyh2GvZ1r8X+T2peVqPMX8rDlkynfAfCLOccWV0NfhPg9aFI3R2dCFg3Qy
 S75Eg8Zvbs47ZjWvjdANLC5nxDyRpl1OIV9If8MT6caOCt1aooFULxRtLVtaJMMg
 ==
X-ME-Sender: <xms:b2BfX4IgYUSiCxniKY5PnZOTktpmeiw3-NBIm-64kz_N57oQM2KMdw>
 <xme:b2BfX4K_XVwiqDiKE6B7VBx-4jrxVjCjSidzvLtdnC0sdK-aI0MihDqlBxGICHXV2
 HJwKHRGHouNcWR6uVE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudeiiedghedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepvffhuffkffgfgggtgfesthejredttdefjeenucfhrhhomhepvehlvghvvghr
 shhonhcuvegrshgrrhhinhcufghlihgrnhgruceotghluhhlsehmmhdrshhtqeenucggtf
 frrghtthgvrhhnpeduhfeuudehffetvdeigfejffdvuddvleetveeghedvffelvdehteel
 ueekgfdthfenucfkphepudekjedrieejrddvtdekrddvtdegnecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghluhhlsehmmhdrshht
X-ME-Proxy: <xmx:b2BfX4uuMc2-TQoPCz_Upkvl3HrYOm1o4Jp5M3-yRULiLvpnuna2lQ>
 <xmx:b2BfX1af_7eMbt-UGs8Nok_nGrWpNSZ-wBdsRhTtUwcIsNR8DtaPSw>
 <xmx:b2BfX_bfibQfjmJgrgtp2avBo2AwG6Dn6ze_V4zSOxihCvn9ON_tJQ>
 <xmx:b2BfX4lZ0CCoMnhv_ZU20k5eXME4KreI0t0Qv6ssR8JqViMeub_oXQ>
Received: from [192.168.0.23] (unknown [187.67.208.204])
 by mail.messagingengine.com (Postfix) with ESMTPA id 07F0C3280065
 for <speakup@linux-speakup.org>; Mon, 14 Sep 2020 08:22:06 -0400 (EDT)
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Cleverson Casarin Uliana <clul@mm.st>
Subject: Speech stops responding on Talking Arch
Message-ID: <4212af47-2452-fbcc-a376-1a48e5aa9d7c@mm.st>
Date: Mon, 14 Sep 2020 09:22:03 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
Content-Language: pt-BR
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

Hi all, there is a bug I couldn't yet reproduce reliably on the Talking 
Arch live image. It apears to manifest when I type several characters 
quickly, or when I press speakup review commands when the screen is 
changing. The speech simply gets muted, and any command to try 
restarting espeakup via systemCTL, or even trying to make espeak speak 
something, doesn't work. Still, the shell responds to commands such as 
poweroff.

Does anyone know this problem? Is it possible to resume speech without 
turning off the system completely?

FYI, the Talking Arch image was generated last 09 september, and my 
machine is a HP 246G7 laptop with a Logitech USB keyboard attached.

Thanks,
Cleverson
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
