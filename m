Return-Path: <speakup+bounces-660-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6356B5A2863
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 15:19:44 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm1 header.b=sgY9I9HP;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm1 header.b=ZYrb/Fzc;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0CB6F380F5D; Fri, 26 Aug 2022 09:19:44 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E0C85380C8C
	for <lists+speakup@lfdr.de>; Fri, 26 Aug 2022 09:19:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C5EE9380CEE; Fri, 26 Aug 2022 09:19:36 -0400 (EDT)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3FC05380C5C
	for <speakup@linux-speakup.org>; Fri, 26 Aug 2022 09:19:35 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 75DD632009DA;
	Fri, 26 Aug 2022 09:19:33 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Fri, 26 Aug 2022 09:19:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1661519972; x=
	1661606372; bh=VFuhhmaAh25d3ygLVqw2XuZ5r67Q5EUoRjXp/ZsdGGc=; b=s
	gY9I9HPev9I/ZEz2B38I5y9tqrOwdPnhBg59T3Q+yRh5/Wq2Uh713F6DqTacR6zi
	kT6RRF+ndtVb5qNXqmxAhvtUeKeJiao/eS4GUmfCcaHFtFiKDAyYf3ZIyQCBsLi+
	l8pRBsdBM2KVJdTN9CG5togxL0lhUEYMnuJu9+LJvqATBYw1+UpLYRf1Cle6Q4Mp
	mMF3eMmaPlCOAtTUCXnhMc5CcHuAvcYyLWrtmaQ4NxWU1ljihePL8W7fE3L9Fsh7
	5M1LVvCaKlwOERGGPMmc97rpVUoPiAs99gEY5NeVhuDgqMwenG82RwDBreOmkwPc
	6Yb4Pf+11FcWpGVYOsC4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1661519972; x=1661606372; bh=VFuhhmaAh25d3ygLVqw2XuZ5r67Q
	5EUoRjXp/ZsdGGc=; b=ZYrb/FzcoYaWflAHo18nBVG3InfSyDx9WaoOeV2cMGR+
	3WGDXjnmONJkLrBxWNoRKS02J1ZwTXWcDgvJ9N43wKO90XMa8HBSxITUy4XUhniE
	e9R6GoEbAEaQc+7O7fcQE2iWxoeSN9v9HxtjN3umVw7/cDWwEyuWdDcw3f+cyn+0
	txg5HHGzHT3GTGLDugOEeyYz2adpPuIoXE4wU3do2aBn4ssK7zfxTWA5OLat9ZpH
	z4KAZ0O1MriRcz/AjtRQsvnjhTQY1BoP3kmZQ/cW/N1aq2FDq112mG1EXT2WDMn2
	+QnheMpfW9086dyFUVLBQ6rEv78THSIwbiawdYbviA==
X-ME-Sender: <xms:ZMgIY0re8dnGGy-OGYaZVLPb4NiOZvg7VVRgmwh2S4oAbzvI2fsNQg>
    <xme:ZMgIY6o94HmH81oKpj1TPwN7jCIUCekLI2x1mu3Z6pWZB74sy_4_eYL4BnUZpjmKw
    UKmLfEEvtC3cYAm1ZY>
X-ME-Received: <xmr:ZMgIY5NV-ZdiAZqerYZa7QxyKO4Lbbyrz_XMA39tTCn1v_iCxSuGJirZTeZw259pLrxUvE1RSXE1vFmeGCBOLG1k6M6MyBDmSQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdejhedgieefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:ZMgIY77tcloexoZXoT-KfQEfpa4XasfiQh8AzKx86u6O4lTpwimiZw>
    <xmx:ZMgIYz6y8-8OeIYxndgV58xpyQS5K1zR_Yw8ZQHtDl2QS0BZKEEEiQ>
    <xmx:ZMgIY7g09bIX6j3fczTs0OkrL8uHZzrx-HRKRF9mGzEcObF8olEeOw>
    <xmx:ZMgIY9SyRoQwcsDCsGq_yCQEtuS_Fz2nQDfMJasgerDU9rYoblkENQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 26 Aug 2022 09:19:31 -0400 (EDT)
Date: Fri, 26 Aug 2022 06:19:29 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: Willem van der Walt <wvdwalt@csir.co.za>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <029801d8b94e$09c913b0$80ffa8c0@Win7VM>
Message-ID: <afe9ca5e-fcb2-8764-d9e2-0d5123c4adec@hubert-humphrey.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <007001d8b776$2a7193a0$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208241123100.3538@willempc.meraka.csir.co.za> <011d01d8b7dc$1fbf79c0$80ffa8c0@Win7VM>
 <alpine.DEB.2.21.1.2208251022200.17853@willempc.meraka.csir.co.za> <020a01d8b8b9$97365310$80ffa8c0@Win7VM> <alpine.DEB.2.21.1.2208261051420.318@willempc.meraka.csir.co.za> <029801d8b94e$09c913b0$80ffa8c0@Win7VM>
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

Well Glen, why not run
ps -A
to see what's actually running.
Chime


