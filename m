Return-Path: <speakup+bounces-1243-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 46F48A3C804
	for <lists+speakup@lfdr.de>; Wed, 19 Feb 2025 19:53:26 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=m0ebp.uk header.i=@m0ebp.uk header.a=rsa-sha256 header.s=gm1 header.b=my6pNDmS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A3BEE38216B; Wed, 19 Feb 2025 13:48:06 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 86122381909
	for <lists+speakup@lfdr.de>; Wed, 19 Feb 2025 13:48:06 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9ADD738190A; Wed, 19 Feb 2025 13:47:59 -0500 (EST)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9A9C8381902
	for <speakup@linux-speakup.org>; Wed, 19 Feb 2025 13:47:58 -0500 (EST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5898C4327F
	for <speakup@linux-speakup.org>; Wed, 19 Feb 2025 18:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=m0ebp.uk; s=gm1;
	t=1739990854;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ibTVruFa3q4gBF/B3NZBe4toCkK/LvLzLPw9RNuvHaI=;
	b=my6pNDmSMPBhXZh1rh/qRFmszSfvbEzzBm9veVbGx6dCd/HjjfG6O5KpI5ByOiQKbt6bJm
	vEaGCk6aWyVmduGnVZOVEPoDXt6xFD/6g1NAKUFEVZ4yrA8lDbL+67bYus/JNOUwNtHn3M
	EQPy2bAaOZF8Bag0gjyH3Xwvt0JxF993U5jSvGca6GkpjED7rFOdLT/o5+WT6LaI/BW836
	cm2iNBzhVSjaySfYUtv+N8WHDDL8DmuDto61mIehNO1v1bek/P21Jt7ILJ7/faZbiwD5G+
	oer42iJ2b8so8Dze5qD6irS2dAOFubN6BS2j9Ter9ZD6k8IDa7pLoTRA+0ndMQ==
From: Georgina Joyce <gena@m0ebp.uk>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: speakup andorca  playing nice on debian
Message-Id: <99CEE4DB-225D-4B3C-A017-7BAC1B5F31B0@m0ebp.uk>
Date: Wed, 19 Feb 2025 18:47:13 +0000
To: speakup@linux-speakup.org
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeihedtvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucenucfjughrpefhtgfgggfukfffvffosehtqhhmtdhhtddvnecuhfhrohhmpefivghorhhgihhnrgculfhohigtvgcuoehgvghnrgesmhdtvggsphdruhhkqeenucggtffrrghtthgvrhhnpeeutedttdfggfefuedtkeevjeduheevleeljeegvddvudffgeejvefgkeeghfehvdenucfkphepudegiedrvddttddrvddrvdegtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedugeeirddvtddtrddvrddvgedtpdhhvghlohepshhmthhptghlihgvnhhtrdgrphhplhgvpdhmrghilhhfrhhomhepghgvnhgrsehmtdgvsghprdhukhdpnhgspghrtghpthhtohepuddprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhg
X-GND-Sasl: gena@m0ebp.uk
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello All,

I thought I squirrelled away a message that someone had posted quite =
recently of how to get a system where both screen readers were working =
together. However, I can't find it. Could that person repost or PM me?

The debian install went well using speakup but it boots into Mate and =
orca handles the graphical login. Then I loose all speech. I do have =
very little installed on the system and don't know orca very well. I'd =
rather use the console but need to use the graphical interface =
occasionally. I'm sure the post I dreamt of or it was posted here would =
help very much.=20

I don't mind reinstalling and just get speakup well established. Then =
install the GUI. But I'd like to get both working.

Thanks,

Gena M0EBP=

