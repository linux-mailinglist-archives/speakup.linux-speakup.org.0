Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 042241D2F63
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 14:18:36 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 03BE01C0AD9; Thu, 14 May 2020 08:18:34 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mm.st header.i=@mm.st header.a=rsa-sha256 header.s=fm3 header.b=EZs34IwR;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=QrYGs4Bt;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7A4AC1C0BE8;
	Thu, 14 May 2020 08:17:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id 0424C1C0831; Thu, 14 May 2020 08:17:25 -0400 (EDT)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 74AFD1C0486
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 08:17:18 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 1EDA45C018A
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 08:17:12 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Thu, 14 May 2020 08:17:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mm.st; h=to:from
 :subject:message-id:date:mime-version:content-type
 :content-transfer-encoding; s=fm3; bh=efOfExMTX3qjsaIBVZgmRKtR2Y
 GMoNk1FxjgA9za6oY=; b=EZs34IwRlb5PTC6ZeIQzKikrBAHChE/z8yw0ApAMVW
 41nDm9LN+1ZJMI55f0I9xazcD4K8fqBZevfQvTjAkZ4Pn9dczDs/YKGnSHSpFVMA
 67jElKf0Fs5/YG5C9FgAGLme2QxSt8jfiq/RP9SS28nZ5qp5cxD7IOCFwx0KdhvZ
 AVngbyCnJ+R+euob4xldYHzcvNWlIH30328mdbrpFuDzHesaNvtY9gXRgZbmdYPA
 c0wQHHA6bTs9GRFgXV6/dG87KqKnT8YPSlkP34nqpPfH9lW6fdJoxhJkmzh4GmFI
 tLP3CXuhHjDgMTPEq5x97nf5xtkUBStP0loH/Ko4G36Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:message-id:mime-version:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=efOfEx
 MTX3qjsaIBVZgmRKtR2YGMoNk1FxjgA9za6oY=; b=QrYGs4BtlimM4UFWu/yTo6
 uR6upESWIwtHmywVSbGsZbJNotkp8ZFiLApMs7/bEyFI3Kk3XnqTEWxTtfaXo8BV
 3Cs0dXcwM2ssYmtUCr1c1jjiwrOabEUWATjBN4pYwNKc1iKNcKLyJ3dM+ME7xmyy
 hM7/Fo9613mZKVSST/AqS3sNBG070hMY9gAZcNXxkt/VBi+9dMvX8netxNnp/3uf
 e1J2OpBMsf4j1vh38w4qjp+SOsmZIQM21UfIbHZNdibXU4VQYQco01gAByaN8oES
 zRbqfjKL1ry7JM80ivSQEuHcVwGbtLsphPZKr6C3oQLih5Qgoqaay8kMCaJAWK3Q
 ==
X-ME-Sender: <xms:xza9Xr8CKH6so5-lFKiCZ9dIzGL059mYmBz5h03nlZqVk73-bUpJaA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeigdegjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepvffhuffkffgfgggtgfesthejredttd
 efjeenucfhrhhomhepvehlvghvvghrshhonhcuvegrshgrrhhinhcufghlihgrnhgruceo
 tghluhhlsehmmhdrshhtqeenucggtffrrghtthgvrhhnpeduhfeuudehffetvdeigfejff
 dvuddvleetveeghedvffelvdehteelueekgfdthfenucfkphepudekjedrieejrddvfeei
 rdefkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 gtlhhulhesmhhmrdhsth
X-ME-Proxy: <xmx:xza9XnvhihtmrReMvrl5OuRhkue433EpWuE0NJLQlx4P9M_SORDLIw>
 <xmx:xza9XpDbev9V62kxNyOsNBsaXFs63JQUcSQioh8PJVnnemIGy9EIPg>
 <xmx:xza9XndINraN0bRgLMjiScRt3JxcQImk49fDtlEmNMNdP-7sMxNERQ>
 <xmx:yDa9XqujHw-pfqOyJAGPeo6p1oyZL98g8srSPGAvOelcPdxqAIlxvw>
Received: from [192.168.0.10] (unknown [187.67.236.38])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4CE343060C1B
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 08:17:11 -0400 (EDT)
To: speakup@linux-speakup.org
From: Cleverson Casarin Uliana <clul@mm.st>
Subject: Any laptop with a pc speaker?
Message-ID: <c33d254a-cc1d-ed09-b0ae-d759dae80dcb@mm.st>
Date: Thu, 14 May 2020 09:17:10 -0300
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

Hello all, I'd like to know if there is any laptop, or perhaps another 
kind of mobile computer, that comes with a built-in pc speaker, and is 
still supported by the manufacturer and resellers. I'm talking about 
that speaker which is still available on most desktop computers, which 
allows us to configure boot managers like grub to issue a beep when it 
displays a menu containing more than one entry for the OSes installed on 
the machine.

Many thanks,
Cleverson
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
