Return-Path: <speakup+bounces-364-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 637EE4B38F1
	for <lists+speakup@lfdr.de>; Sun, 13 Feb 2022 03:34:15 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=samobile.net header.i=@samobile.net header.a=rsa-sha256 header.s=mr01 header.b=pZ/mH6Or;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 104DC381401; Sat, 12 Feb 2022 21:34:14 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E55C53805C2
	for <lists+speakup@lfdr.de>; Sat, 12 Feb 2022 21:34:13 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0B87C380B9D; Sat, 12 Feb 2022 21:34:08 -0500 (EST)
Received: from 005.lax.mailroute.net (005.lax.mailroute.net [199.89.1.8])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 772913805C2
	for <speakup@linux-speakup.org>; Sat, 12 Feb 2022 21:34:07 -0500 (EST)
Received: from localhost (005.lax.mailroute.net [127.0.0.1])
	by 005.lax.mailroute.net (Postfix) with ESMTP id 4JxBHy2sd4z1T5G6
	for <speakup@linux-speakup.org>; Sun, 13 Feb 2022 02:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samobile.net; h=
	message-id:date:date:subject:subject:from:from:content-type
	:content-type:content-transfer-encoding:mime-version:received
	:received:received; s=mr01; t=1644719646; x=1647311647; bh=47DEQ
	pj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=pZ/mH6OrRhf9POy2bdMp1
	v/TgUbtABvHpXQ3BaIa5vgI9dRtI3ISzQm7yVoifb7sjmpFPRVo/j5zWWTrUJGCk
	31T21ShDpJoxuZdOFV7niKahNSeTLe8Zt/Z+uGHorZwLUYNp4SU/7v3V+GfPx4Gh
	LcD/Zd/yH96cPNfvin+ODnT1ujGNJtXDdK7Gkihh+YxFMbQ7anRQh2m3gvyeAwYG
	rG/DxvDh9TdvAga9IfKCl3VviHn2XJdWE2Wd6RIMU5MKUe5Sx808cfp+b0LGov9V
	1fXQ7twrG9/HUAeQOYlh467oL48CjJ655lXlJJg2+Ny4P2SuYa2Qcjae1u4AaBQ9
	g==
X-Virus-Scanned: by MailRoute
Received: from 005.lax.mailroute.net ([199.89.1.8])
	by localhost (005.lax [127.0.0.1]) (mroute_mailscanner, port 10026)
	with LMTP id ti6y05MXBvjk for <speakup@linux-speakup.org>;
	Sun, 13 Feb 2022 02:34:06 +0000 (UTC)
Received: from vin1.pneumasolutions.com (vin1.pneumasolutions.com [15.204.140.160])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by 005.lax.mailroute.net (Postfix) with ESMTPS id 4JxBHy09Ddz1T52M
	for <speakup@linux-speakup.org>; Sun, 13 Feb 2022 02:34:06 +0000 (UTC)
Received: from vin1.pneumasolutions.com (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lp800@internal.samobile.net)
	by vin1.pneumasolutions.com (Postfix) with ESMTPSA id 07379427FC
	for <speakup@linux-speakup.org>; Sat, 12 Feb 2022 21:34:05 -0500 (EST)
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; format="flowed"
From: tony seth <lp800@samobile.net>
To: speakup@linux-speakup.org
Subject: test please ignore
Date: Sat, 12 Feb 2022 21:34:05 -0500
Message-ID: <c9acec0d.2b8c.4d3c.823f.e4c179427ac9@samobile.net>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


