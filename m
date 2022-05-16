Return-Path: <speakup+bounces-430-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1D807528C43
	for <lists+speakup@lfdr.de>; Mon, 16 May 2022 19:49:09 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=Jk2ldkbk;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=woRmucKZ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9538E380E1A; Mon, 16 May 2022 13:49:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 80AFC380925
	for <lists+speakup@lfdr.de>; Mon, 16 May 2022 13:49:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 99DD0380925; Mon, 16 May 2022 13:49:00 -0400 (EDT)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C596038082A
	for <speakup@linux-speakup.org>; Mon, 16 May 2022 13:48:59 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 1D4F15C026C
	for <speakup@linux-speakup.org>; Mon, 16 May 2022 13:48:59 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 16 May 2022 13:48:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1652723339; x=1652809739; bh=dVtBB6sIOf
	oH7t6m8iSZ0mut5GdHGsYLdtHquB5Zd3k=; b=Jk2ldkbk/gTBqqtT3J5rgL56qP
	OrlYDSEPfz/5MPP0OaCV1RcKl+3cqQQ0dMU5ABA5U2atRDo1QsIpbzsPkGRXyrL7
	AbWLQUOFqcxOtz1D1dRj8qBTx1JeU6uw5AE+ihXyRuwSHEN4tNKU1E6QxTGtFrui
	XtRfDszdJ69bHKUH3vuYJq+qYbEqnsomjCCWwsbrlpnLk4JTIc10cKMnfO9D5yka
	QioijBkhz7F4OvGCvctwyedn2o9Nr4Qqy+WXaXYG5SNh8nIIoAD+5+OLFR3pciZ2
	FVY7as1kOjqQqla9pSm4NJLCapNC2Qd8qoOs8kpuWDI27o2ng7P5jMawDYxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1652723339; x=1652809739; bh=dVtBB6sIOfoH7
	t6m8iSZ0mut5GdHGsYLdtHquB5Zd3k=; b=woRmucKZvldrxNj0YvoKUcGHKJGnE
	wxozWMjyRXqjMLRH1cmfND83KqPASA9uLpMCddbj96d683x++NOsBJUDX2CpF2fF
	1d/0dXeRex3ISHR8zecnYNFJna8DfWbap1Kxr76+Vh7IJxI9+eKNYeghKP++tRE1
	70gvzD+CQk1AFMb6+RGi7JMibSDmw+BTbkGxGsEYz0uBjJPJ+RjOvrr84ccGWvJq
	p412m1iNHQixIJyXDRbRUPWn+Q31vYRji3BQJ33rn2gf5WpeZnK0mkG5y7SSRw/5
	Qb6fwjCcbxGZONUuE4AoEMr+25FTej23B+zImaIU8A0o3qET5bAYyoz9w==
X-ME-Sender: <xms:io6CYtWOm9vxZ1prXAq1vnO2fPuUHgiPs84TNlZpRgYBFYqu_Im21w>
    <xme:io6CYtlK4e1ZMh6GKIv-sJ2E8bjPGxhFIoz7LKTlHXWlLjxJ86G2UorBxiFBQg8zB
    JDNA17aSZM-5kfkd9g>
X-ME-Received: <xmr:io6CYpYsmNdPJEwMfqbdl-K_mviqy0O7WSRZXcoBf5tAREg-Lwq_UErUi76ukBOEM74pWX50ZQsPcKpyAswbmkcy8Wcj0o7WTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrheehgdduudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtsehttdertddttd
    dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
    mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtie
    ettedtkefggfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhm
X-ME-Proxy: <xmx:io6CYgUsBfdKwEnJ7xeblunMYOq2rPqh-zRphATmPdVpRPEBQD0jMw>
    <xmx:io6CYnkAoPlniYRyZQLX4dZfQoeVBRBmmGDe7262dTrEoU5naCKlkA>
    <xmx:io6CYteF_-fAJYuNbR2-lob2Hhb22c-XIAuILgr5Yw8TIHqzQOOnMA>
    <xmx:i46CYtSfqJ_doTZvXMST6UoDPvwOUBSV9Lz25pnFPf0OkstoYfn1TQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <speakup@linux-speakup.org>; Mon, 16 May 2022 13:48:58 -0400 (EDT)
Date: Mon, 16 May 2022 10:48:56 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: speakup@linux-speakup.org
Subject: Did Something Change with an Insert Key in Speakup?
Message-ID: <ac8f55a5-0b3-bccc-6a8b-6895df3e8048@hubert-humphrey.com>
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

Hi All: I am in Debian SID somewhere around kernel 5.17.1. Usually while output 
is scrolling, I can hit the right insert and it will stop-and-not resume until 
I maybe hit that kee again or read my current line. Well, while reading an 
output of trn articles in usenet, even after hitting this insert, it began 
talking again. In the 19years I've been useing Speakup, this is a first time 
seeing this. Any insights please.
Chime

