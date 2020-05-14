Return-Path: <speakup-bounces@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (tunnel25281-pt.tunnel.tserv21.tor1.ipv6.he.net [IPv6:2001:470:1c:288::2])
	by mail.lfdr.de (Postfix) with ESMTP id 0D93C1D307E
	for <lists+speakup@lfdr.de>; Thu, 14 May 2020 15:00:22 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 543661C0837; Thu, 14 May 2020 09:00:21 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=mm.st header.i=@mm.st header.a=rsa-sha256 header.s=fm3 header.b=aw4xZdYq;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=hcpa0ibn;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 749821C0C59;
	Thu, 14 May 2020 08:59:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
 id BE2FF1C0837; Thu, 14 May 2020 08:59:56 -0400 (EDT)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by befuddled.reisers.ca (Postfix) with ESMTPS id 9BF4D1C0831
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 08:59:54 -0400 (EDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 66CF45C0266
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 08:59:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute1.internal (MEProxy); Thu, 14 May 2020 08:59:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mm.st; h=subject
 :to:references:from:message-id:date:mime-version:in-reply-to
 :content-type:content-transfer-encoding; s=fm3; bh=KEV6mkdzZouuZ
 O2yGMbfjRY9sPnQx+GdRyIxNABqVLs=; b=aw4xZdYq+1CG2ffsx3pJicOaOst+o
 p0n6EyniiPfYxOb0GC8aaQrRafZc2W27+uxi8jvyvVB74JgSXhyG9tDl4d3QhUW6
 44q3mi2Z6Vqoa6K4qCBQlrTBacT/ddESwQ+uS93bH8V3F4Erqml+ZeIib5Bg6YRn
 Jlfg0BzOfXaV2rFL9Fe6xexKFm2J9gmj5WnSzAaly7SxYI1BAJbnT125TxSXZ4SK
 hROvRzUvNqqXml5EBO41X7IE3tkFQX8X3W2MwNqDBlDtV2wMMlNTF2zsVKzRtx78
 7scsRYe8yOzFIoGpAFTB1U7j475jWib++XtLOu5WsTLTE14kI/B5HeLHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=KEV6mkdzZouuZO2yGMbfjRY9sPnQx+GdRyIxNABqV
 Ls=; b=hcpa0ibnb6wWaAV1Rl0GBxpY62DgAEDPgp7X1zPUuMF8kBgoPMHsJM8zO
 byt0iwWsn/OMdEJ1ngAidjMUif6+HWw9GQu3Xq1G2AzsDA9kxvpiBL0h+515A2hL
 +l2oLMpnRvwmyuGfveyTO8y2KAUAuC0L6mSi42LXCeJyGtHOB6PHgTPFlTdUQeyh
 qy+Mvq/PcD5RDusrUQ+7JOKiDnYOW+AHhJ5SYbqAfxwnETiy5M4tNM4ljDc+Bx3d
 uzEw0uQ1pTcV00yPmWhAlQIvqzTGHNrgJMqsQOX0a8M81QzufEe58QyMNRH3swUU
 d70E/6V2iN6dvU1jyMUlIchQPlokg==
X-ME-Sender: <xms:xUC9Xqg88bm1rkSgDFUGPzYOj4dYDxwdktWlLr6aNB9qKy59ztpVpg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeigdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpeevlhgvvhgv
 rhhsohhnucevrghsrghrihhnucgflhhirghnrgcuoegtlhhulhesmhhmrdhstheqnecugg
 ftrfgrthhtvghrnhepveehheffleeiieekgfekueeufeetvefhveefvdekveektefgvddt
 geeifeegveffnecukfhppedukeejrdeijedrvdefiedrfeeknecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghluhhlsehmmhdrshht
X-ME-Proxy: <xmx:xUC9XrDfC8vFeOwJbMZc9nlAAjc9sg9s3bOBOoa1UMaMDPGQ0zhtxg>
 <xmx:xUC9XiG2puwJErqPPeGTJtXTDmgmIjLNPgIOVG1CniJggTIBD9bliw>
 <xmx:xUC9XjSe7FMwZYM5A_nwEhthyRLO9AE-jQpClYy5bTkZKMrRmQ7rsQ>
 <xmx:xUC9Xjh4iMkQk5jUUu8u5Yu1fPNiEFyn3T1VWOnaom4sfQlGjC6RWA>
Received: from [192.168.0.10] (unknown [187.67.236.38])
 by mail.messagingengine.com (Postfix) with ESMTPA id CA7123060BE4
 for <speakup@linux-speakup.org>; Thu, 14 May 2020 08:59:48 -0400 (EDT)
Subject: Re: Any laptop with a pc speaker?
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <c33d254a-cc1d-ed09-b0ae-d759dae80dcb@mm.st>
 <7a609ac5-9b6e-5bd6-9b60-421324cc0577@gmail.com>
From: Cleverson Casarin Uliana <clul@mm.st>
Message-ID: <3286689f-2319-3685-ba30-908fed7e6d9f@mm.st>
Date: Thu, 14 May 2020 09:59:47 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <7a609ac5-9b6e-5bd6-9b60-421324cc0577@gmail.com>
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

Thanks for such information, Alexander. So maybe the grub developers can 
say what models grub is capable to beep using the soundcard. I'm gonna 
look for them to ask.

Greetings,
Cleverson
_______________________________________________
Speakup mailing list
Speakup@linux-speakup.org
http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
