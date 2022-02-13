Return-Path: <speakup+bounces-365-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0EF954B38F8
	for <lists+speakup@lfdr.de>; Sun, 13 Feb 2022 03:42:53 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=samobile.net header.i=@samobile.net header.a=rsa-sha256 header.s=mr01 header.b=27Ax17NX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4FC39381407; Sat, 12 Feb 2022 21:42:52 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 32E703805F3
	for <lists+speakup@lfdr.de>; Sat, 12 Feb 2022 21:42:52 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 11604380BEB; Sat, 12 Feb 2022 21:42:46 -0500 (EST)
Received: from 002.mia.mailroute.net (002.mia.mailroute.net [199.89.3.5])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B95123805F3
	for <speakup@linux-speakup.org>; Sat, 12 Feb 2022 21:42:45 -0500 (EST)
Received: from localhost (002.mia.mailroute.net [127.0.0.1])
	by 002.mia.mailroute.net (Postfix) with ESMTP id 4JxBTw6Bnfz25hNX
	for <speakup@linux-speakup.org>; Sun, 13 Feb 2022 02:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samobile.net; h=
	message-id:date:date:subject:subject:from:from:content-type
	:content-type:content-transfer-encoding:mime-version:received
	:received:received; s=mr01; t=1644720163; x=1647312164; bh=53iMB
	6stoWy83sdmdlUTBxx9Dvv3enQw6QrlJbEKWAQ=; b=27Ax17NX8GTmJPM6KPegR
	yXk0DPXPTAv54bDts7Fht9QxsjyC9bVzBKs6ABYJ0M9jfjLYKweU/WrxnDsptuW+
	C8Z/KdgbcCROwtYOL4apYJyKm/4v+tj8kScSL7UHeuKp74H6NFUw6lqMnTX/zm4q
	hB8PiYsvE0+zOuoo9FRp9w4kzIyfMZtdTo6PLdPDqrsgzq76hNOZTkEhE0AspXn0
	lZWtmWWPI0rOoK9uW7Y1AiLF5NIyg83QU6DPZK7wO7wuUqA+LuPIJMPYG+nLhnxw
	YCMcBZDEqQkRFSsksDPDFW3UXl78wwYSXjHE1TIih63GL80p9LPsbI5LExpB9klf
	w==
X-Virus-Scanned: by MailRoute
Received: from 002.mia.mailroute.net ([199.89.3.5])
	by localhost (002.mia [127.0.0.1]) (mroute_mailscanner, port 10026)
	with LMTP id vOGD4m9zONCm for <speakup@linux-speakup.org>;
	Sun, 13 Feb 2022 02:42:43 +0000 (UTC)
Received: from vin1.pneumasolutions.com (vin1.pneumasolutions.com [15.204.140.160])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by 002.mia.mailroute.net (Postfix) with ESMTPS id 4JxBTt73hJz25hWW
	for <speakup@linux-speakup.org>; Sun, 13 Feb 2022 02:42:37 +0000 (UTC)
Received: from vin1.pneumasolutions.com (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lp800@internal.samobile.net)
	by vin1.pneumasolutions.com (Postfix) with ESMTPSA id AD7DD42BEE
	for <speakup@linux-speakup.org>; Sat, 12 Feb 2022 21:42:35 -0500 (EST)
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
Subject: how to use ltlk with usb to serial converter
Date: Sat, 12 Feb 2022 21:42:35 -0500
Message-ID: <3c4a04f0.6f54.4391.8aca.3cbe239fbabf@samobile.net>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well hello there all:
The subject says it all. I seem to remember a way to start Speakup with 
a usb to serial converter but can't remember the syntax.
I know it may work because I can get the doubletalk to speak when I 
pipe text to ttyUBS0.
Thanks much for any help.
I'm using Speakup 3.16 with Kernel 5.14.14.
Thanks much...
Cheereo!

