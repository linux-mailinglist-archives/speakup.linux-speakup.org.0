Return-Path: <speakup+bounces-759-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0B7AB60685E
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 20:44:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=TTnHGHUD;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=Sv/VJZdB;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 94612384014; Thu, 20 Oct 2022 14:44:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 75C14383FBA
	for <lists+speakup@lfdr.de>; Thu, 20 Oct 2022 14:44:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 146C0383FDB; Thu, 20 Oct 2022 14:44:10 -0400 (EDT)
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com [64.147.123.24])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DE2CD383FBA
	for <speakup@linux-speakup.org>; Thu, 20 Oct 2022 14:44:09 -0400 (EDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id ADDF73200907;
	Thu, 20 Oct 2022 14:44:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Thu, 20 Oct 2022 14:44:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1666291445; x=
	1666377845; bh=f1Wqcb4eKbSzK3ynfBIFxLCvHR5E1asrnFVRNa9Kjjo=; b=T
	TnHGHUD/OSucFZBpti4hJrZZyo9nHNJzUDutNGz4k23IH5dWXFKsrusrptwbA9tN
	xqeLgHzIgu1my3Q+Kxr3XtWmuTMWa8xEeamFX2DtKnfQRT0BrkX4GRwogKwGCSfY
	maIxZ2k8Wjb4iHC3EL/UshLjFzyXWeEfqOU4tPHxm7YkEvNIKSPieDiSbNJGz1K9
	5/VksHoNDFdFc0pMuciDtkMIBddpjcwgl5pZFmNm4pH0RalEDvbwNloT81KfydBD
	IHrFLwGrwRuOvIuifyQN0YAGKeDzMUIw2IxPo0ywViy+X8pSIhdxiuU9EroWccOj
	HHFMWeY9343wqBA3M8k/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1666291445; x=1666377845; bh=f1Wqcb4eKbSzK3ynfBIFxLCvHR5E
	1asrnFVRNa9Kjjo=; b=Sv/VJZdBWEwvHzTTdpNf26rPCVsm4/an/yg4r4w4Knj+
	/n05t/hE+phE8pIFxWmJmkQ68D/razTWJvHOeWabA9yaClucYHAKhpaEJtcnX4nK
	HMgqHBfdizBSVeh2070Y7IS1GBQeGiRLFSg54rDONbVqssQQApVFrmVv/ovObd01
	P8uaPZUOLjGqXA31AJ3JXeJ6+hGI/CkDHexVDOZ+/2cDQ6KKcze3nwIkEOCopFIt
	TfqAvHa3YMw6MOzeqV9oivh7xizrbAML+l3/kJ3oU1EeUJYuEmlU506XZCRDgg55
	vsUiUh+DDPTQPyfYLpdCfzKEYQqaCiue6BNM8bi8Qg==
X-ME-Sender: <xms:9ZZRY3HNCmpjaO8a-ztf-6PB42dlozydZXNecUa_rUBfDzCj-jSMeA>
    <xme:9ZZRY0UbT4Xk2xhyTGdy8W7NjkDebMKOUMA--zu7OCbTAfBkJ_UZNVs7k1dVM1E3R
    6XnbRClbG81ScDvZ9A>
X-ME-Received: <xmr:9ZZRY5LyKsY-NITTIP6Ojc1B6EPIEKi054vebVCUNd6FIYDmN9Awn1lvp_XMIfa40H_9DqdxLZn6XjHqGUy7xePxb2hG9qK0eg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeeliedguddvjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:9ZZRY1Hgs3WfFBiK-N9Zc-rxHx7lPXPhntFhAItl1qV7G-Sl4_YCHA>
    <xmx:9ZZRY9UMD_4L-pH33DqkoFT4smIqrLGnJ8ZTwryeny5E4WIS8l3Y0w>
    <xmx:9ZZRYwNxMr2LNNq0wkRaLJCV2cm85TPQun4TuWKmhjyQhSZ4XAl9dQ>
    <xmx:9ZZRY8dEjrocBJD9zeoWOYsF8e85-o5pySXRsscpYaaFzZQgqFXCtQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 20 Oct 2022 14:44:04 -0400 (EDT)
Date: Thu, 20 Oct 2022 11:44:02 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>
cc: Rudy Vener <salt@panix.com>, speakup@linux-speakup.org
Subject: Re: spelling words with military letter pronunciation
In-Reply-To: <20221020182405.v4w6ixi4fk435zdk@begin>
Message-ID: <dfbb70b0-6c62-c0ae-4aa1-3fe9c279355b@hubert-humphrey.com>
References: <20210105173502.GA17449@panix.com> <20221020181216.o5rpkuy5tgdcmgyo@begin> <2a1d5948-d1b1-f210-42e8-e0919f21394c@hubert-humphrey.com> <20221020182405.v4w6ixi4fk435zdk@begin>
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

Honestly Samuel, I've never understood when folks refer to a name of a 
screen-reader as a keystroke. Sure NVDA-and-even Chromevox also do this, but it 
seemed less confusing when I was in windows-and-the name was more universal, 
such as a "windows kee" which is to the right of an alt. Once I completely 
understand which key to press, I will certainly try it. Numpad2 pronounces a 
current letter phoneticly. Thanks so much in advance
Chime


