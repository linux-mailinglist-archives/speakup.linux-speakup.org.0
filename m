Return-Path: <speakup+bounces-491-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 429335848A1
	for <lists+speakup@lfdr.de>; Fri, 29 Jul 2022 01:22:37 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=hubert-humphrey.com header.i=@hubert-humphrey.com header.a=rsa-sha256 header.s=fm3 header.b=Z2m5NLRr;
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=QRdAnzkQ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 47A54380ACF; Thu, 28 Jul 2022 19:22:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 28B8D380A86
	for <lists+speakup@lfdr.de>; Thu, 28 Jul 2022 19:22:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 02B9938096D; Thu, 28 Jul 2022 19:22:29 -0400 (EDT)
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D79AE380029
	for <speakup@linux-speakup.org>; Thu, 28 Jul 2022 19:22:28 -0400 (EDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id C92463200912;
	Thu, 28 Jul 2022 19:22:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Thu, 28 Jul 2022 19:22:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	hubert-humphrey.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1659050547; x=
	1659136947; bh=uugQISYfnXZ1BAkVDPM7GsEsvNSPfj6ygz10VNUnPTk=; b=Z
	2m5NLRrBALtHPRA32OOpYo4cKk7wMuv7JU1eBi1veA+sf5ew1gx6cWUbfO773We6
	D6u9Mtk/8ulh0UCklF8cpEe91uPA8Ubu8VQuMyocSCDLrXgjk+BU5jbp0rox7FBD
	D24uMKyiTxdSofsdsr4xYWK26bdbCgwdDZHSOiRt8r+jK+XPkxgdRjn2pHe76I+n
	ZLBQ9EyXkzduP/ayAskGz03A2KRkUZyI4E7HDWkveLTg6Yczrhd73T9XtWBXmuvG
	oMWlLJG82yy5d11zrQuCukMkn9TgSUmpFhrj7uMEqaz14kzQCsAbLE4Q/L3q2k9b
	eZiJqDDmtgRrBJHp/yqOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1659050547; x=1659136947; bh=uugQISYfnXZ1BAkVDPM7GsEsvNSP
	fj6ygz10VNUnPTk=; b=QRdAnzkQeRBdffHICK+6Y7kONDxrGdNGKj4CM1e6icHo
	PFrLVyqGv5UtI1ewe5xqQj1AKinGXDvady1ZHbh2ukXhOhd4rh37wY9AbW56gWE0
	A5PToAyM7jtdIN+Q9aRJC8QedjqtI2gjmFUw4FAqvD+cMZ2qZEz5CIhMJ86DsK78
	PSitNyg6uoO7ijKWLswsmCNlTDWkC7ySa+GstQw8u7veU3l4QCKBHWvj6ceq5RFS
	hmtbsEgyshDYHJFUoljDWwnc6us4JN3skJh9NeRl0a4uGHM83QgmeHqMfQSvBwDh
	1ockDkdxddNkJUBub/zzZuAMfDAgUbOoTzlFERy/RQ==
X-ME-Sender: <xms:MxrjYkOI1lcR8O8HbsacersR413voHdjr9bQeh7xVRuiQse3_h28QQ>
    <xme:MxrjYq9SfiSKPkH2M-BH6DK8LwuD8OfOFjZTF-uvfVeLyfJbKeo3yzmvE_ywH12Pd
    IBOkqrCyuCIpORjbVM>
X-ME-Received: <xmr:MxrjYrTGxvqU5aL--dcJ8FL7A9qrCLMZcv3cOKrDM1eKbr-UAzXtrN1zU3Q0unXiMUiaR03WmKyE9ilnPFd1LGxmdQvq6sw0gQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdduhedguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:MxrjYsu---eP3Ji5hLIsrVSbK5DZ9swp14iMK-BvE4KofxYvTB8EYg>
    <xmx:MxrjYsdiAh2PvajgYt9C9j3fgr8k8ILntpw-ojqMbrObbi1YyOiuRg>
    <xmx:MxrjYg11HaFCcHzgAc_weGghQqzqwHO51mDfb1vguvk55ecbkaBBOQ>
    <xmx:MxrjYkmGWnWSMkkP1IJ_u_x07kN2NQsca6r4B7rLdJbnBLd_07zsDg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 28 Jul 2022 19:22:26 -0400 (EDT)
Date: Thu, 28 Jul 2022 16:22:25 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
cc: speakup@linux-speakup.org
Subject: Re: Speakup Punctuation Settings Within An Embedded Voxin Voice?
In-Reply-To: <20220728225041.7oyk45b6gmmaff7n@begin>
Message-ID: <edd99593-d448-d66e-c3e9-3896103344a9@hubert-humphrey.com>
References: <669c9e7e-ab0b-dedd-cd51-a37aaa733ec8@hubert-humphrey.com> <20220728225041.7oyk45b6gmmaff7n@begin>
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

Thank you Samuel. Typing without sudo  I just get a prompt, otherwise, it did 
create those files-and-dirs, but so-far no change, still hearing way too much 
punctuation. Would I somehow need to reload Speakup or reboot for changes? And 
still no change in the volume pannel. Thanks in advance
Chime


