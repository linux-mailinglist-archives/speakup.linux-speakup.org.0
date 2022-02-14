Return-Path: <speakup+bounces-368-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D52634B3E89
	for <lists+speakup@lfdr.de>; Mon, 14 Feb 2022 01:10:33 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=samobile.net header.i=@samobile.net header.a=rsa-sha256 header.s=mr01 header.b=f8Zg8Aq6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5DB0038117C; Sun, 13 Feb 2022 19:10:33 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3F6E4380961
	for <lists+speakup@lfdr.de>; Sun, 13 Feb 2022 19:10:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 17C5D380BD3; Sun, 13 Feb 2022 19:10:27 -0500 (EST)
Received: from 001.mia.mailroute.net (001.mia.mailroute.net [199.89.3.4])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B9303380961
	for <speakup@linux-speakup.org>; Sun, 13 Feb 2022 19:10:26 -0500 (EST)
Received: from localhost (001.mia.mailroute.net [127.0.0.1])
	by 001.mia.mailroute.net (Postfix) with ESMTP id 4Jxl3j69Rvz2KYPr;
	Mon, 14 Feb 2022 00:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samobile.net; h=
	in-reply-to:message-id:date:date:subject:subject:from:from
	:content-type:content-type:content-transfer-encoding
	:mime-version:received:received:received; s=mr01; t=1644797423;
	 x=1647389424; bh=KUaIrdByoMiNRnejPGxki5a8fHccAErjgLlrAlJChPg=; b=
	f8Zg8Aq6hKPEgk9QXM42btGPIb5KEPDpGeIYZ0oFLDyaldt6i/6MrATNzADAzMDA
	tdVVne/qe18AXvXa2m2oBzTjvJGhBRTgAaVCZ8y0CvaE5xrhtVQ3//YDQV7efLeU
	5VRZVWSKDejljR0JXhwhsRFrKdU+kMiboyeKFRoyzehmke8iRGGJAbAzqTrJSXAr
	XDO2rkYAM/Alr/BTno1UE8BnXiTTbIA7nJjhrOZ4NoCXf+qRxhNhyBW9JLdgL9xs
	H3fJnWqIlQFZoQpYqg8gcC4qLSXO72wXFUsRf080OCXRnxmQYR9B691Zgruxqjnz
	ns8Qrbjl4Owa07HML1+EYw==
X-Virus-Scanned: by MailRoute
Received: from 001.mia.mailroute.net ([199.89.3.4])
	by localhost (001.mia [127.0.0.1]) (mroute_mailscanner, port 10026)
	with LMTP id bV2M6RSPf3iV; Mon, 14 Feb 2022 00:10:23 +0000 (UTC)
Received: from vin1.pneumasolutions.com (vin1.pneumasolutions.com [15.204.140.160])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by 001.mia.mailroute.net (Postfix) with ESMTPS id 4Jxl3f1pWcz2KYPq;
	Mon, 14 Feb 2022 00:10:21 +0000 (UTC)
Received: from vin1.pneumasolutions.com (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lp800@internal.samobile.net)
	by vin1.pneumasolutions.com (Postfix) with ESMTPSA id 5027C45C80;
	Sun, 13 Feb 2022 19:10:20 -0500 (EST)
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
To: greg@gregn.net
Cc: speakup@linux-speakup.org
Subject: Re: how to use ltlk with usb to serial converter
Date: Sun, 13 Feb 2022 19:10:20 -0500
Message-ID: <84357c01.d926.4073.bb4d.b7d31e959648@samobile.net>
In-Reply-To: <YgiAbvvPEkj9cKEN@gregn.net>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Yes indeed! Thank ya muchee, that did it. I put a dash instead of an 
underline in that command. Now it works.
I looked all over for that, where did you find it please? In case I 
ever forget.
Again, thanks much!
Cheereo!

