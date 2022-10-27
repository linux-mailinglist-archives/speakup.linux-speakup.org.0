Return-Path: <speakup+bounces-783-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F148261064E
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 01:19:32 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=XKpiIr9/;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=YQWxaXBk;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8AD8B384040; Thu, 27 Oct 2022 19:19:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6A20E384003
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 19:19:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A89D8384022; Thu, 27 Oct 2022 19:19:22 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8F710384003
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:19:21 -0400 (EDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 9215C320070D;
	Thu, 27 Oct 2022 19:19:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Thu, 27 Oct 2022 19:19:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666912756; x=
	1666999156; bh=RKOB14ZT2quPPJdDqKyn5Rb9dvjeFft1i0QMcg4bc5w=; b=X
	KpiIr9/kZcGrI4TSo9MMQC8Xlky30GE4L6bQG9VfU67qZz7aVmza1lE1CqSX/E1f
	zMXtrlp1Sd8XTbPJXG0je8TsyUrmKaW8C64S40fR6U1YMXGygMkOshERZePYrW+D
	0iYI6guPdl0bfoTYeQm7DHjKGMFG/w1YG8THOjiQb2PDNyorjLIaTcaInYXE389x
	uuT9MXwM6z+62DFFGT8l2BQGneNA0pwxLp2QVj+uSDG1vNmK1E0Tq8WFJTgylpMX
	HwjcJsmqLjDB2sK4Lm2R5ggr5vqW0MwKWDQ/i9Q8j+P7zeCIsQA8Hm32YbLJYnmq
	lRKsoOZ8/jhKNq6JRdICQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666912756; x=1666999156; bh=RKOB14ZT2quPPJdDqKyn5Rb9dvje
	Fft1i0QMcg4bc5w=; b=YQWxaXBkc0mV60iVc+hOer5XZ3U+A3gk3izCLZQEr4TK
	eB6bga+mIFFmcuAcg9X2Fu2+NwmB5kmsanNS22YCyI9sOAPKZMBozgro2IHkBKzg
	t3ECwzq1k/kwdmbbtX/4nCc7bH48vwbdjLl3AMCL8mPHKeTadAeYcquXoY0bTnl7
	P8xuzxcDsqGmC44udjFloSrORs8VyHL1o5Q0nj1iwWfvtp591sYDxlr0Jlieccb4
	vFTx7zSyQJbA9gSdO1vaTfdTxDeXtW3X6ZHENcfV2JnPj0YP+peNrqLPXk6m+Zjc
	Yc8z7V19hotFdDnUfWSzWOfcPyrJopYW2xKHkcud6Q==
X-ME-Sender: <xms:9BFbY4Nc3FZmIeQzYE1329lMxNue4MNyVx4jPw5vqjYPXcIzxsr_9w>
    <xme:9BFbY-8xqyG4YHELQONEZV5vqsNHbeQm7x_vDrpWosp8HGGJKZhXSb0l-CbnRM7p3
    OyDaZeSZpi1zvjntks>
X-ME-Received: <xmr:9BFbY_RUdWY-JGj7O10t0wi0Lnh6GMvHzp9o-hG1Jvos9YPUQ5mEuv9JbNt4bOFtGTEto57JrpdAcOrMn9oOfx0M0gUihrom_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdehgddvtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:9BFbYwvQGzgbIVWeXa-3uLGHFaoGlNUvMN4zO7vrL8sRszrti_Pjvg>
    <xmx:9BFbYwc7KXFNYg296ygjPh5XoXjA5kjRPtlGk-Vp4XnHULSjP9Jg6w>
    <xmx:9BFbY00I8Ta7pnk_pWicZRxy6XL3daMGvCwGjOP9biEMVfYN409vNw>
    <xmx:9BFbY4mcdBBB0b303YkEX6tZhJewcWWlSaPgpq-dvrW49sPd-pH2OQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Oct 2022 19:19:15 -0400 (EDT)
Date: Thu, 27 Oct 2022 16:19:13 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: K0LNY_Glenn <glenn@ervin.email>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Installing Voxin
In-Reply-To: <086601d8ea59$9bd758c0$87ffa8c0@Win7VM>
Message-ID: <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com> <085b01d8ea55$190b4b80$87ffa8c0@Win7VM> <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com>
 <086601d8ea59$9bd758c0$87ffa8c0@Win7VM>
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

OK Glen, please run
sudo apt install locate plocate
In TCSH I must type rehash to make the system realize new packages are 
available. Once you can successfully run
locate spd-conf
We can continue working through these.
Chime


