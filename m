Return-Path: <speakup+bounces-847-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 65BCE620689
	for <lists+speakup@lfdr.de>; Tue,  8 Nov 2022 03:17:51 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=samobile.net header.i=@samobile.net header.a=rsa-sha256 header.s=mr01 header.b=qleLscEY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 17E54383634; Mon,  7 Nov 2022 21:17:30 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EABF93831DA
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 21:17:29 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2BB033835F5; Mon,  7 Nov 2022 21:17:21 -0500 (EST)
Received: from 005.lax.mailroute.net (005.lax.mailroute.net [199.89.1.8])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A7EB938106D
	for <speakup@linux-speakup.org>; Mon,  7 Nov 2022 21:17:20 -0500 (EST)
Received: from localhost (005.lax.mailroute.net [127.0.0.1])
	by 005.lax.mailroute.net (Postfix) with ESMTP id 4N5sDv1sPdz1T5K1;
	Tue,  8 Nov 2022 02:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samobile.net; h=
	in-reply-to:message-id:date:date:subject:subject:from:from
	:content-type:content-type:content-transfer-encoding
	:mime-version:received:received:received; s=mr01; t=1667873838;
	 x=1670465839; bh=h8Ni8zHJTMQhJp3KIGGxpxzEDZYoy6mB01yeZtjXREc=; b=
	qleLscEYQ6/QQOqMOtIhneW9HA7VoXrIDU9xCbYrhXJVeJG6rpRBLEOAHkmtWb1K
	EuhEVtgMOaXHh9ZJABZjUsipDO6HFegrZxwh9E1pvOj9T94NUC2DgEWwoRS05Ydc
	y2EDkN3HINUMSvM/NgDVcnabiHUvvhNQmYt3h6PkU/bxmDW7+G8cQgHG2pJB5xsJ
	Ar5AKh00GEKdpPxUGcummjbuLTWbs8qUIXqgjUoYH6a6D5S8mwcXyIFvaL2ACUWj
	HWH7VnXX1/5yDpcuZvsKqRtjhFIRPWCPMmFW4gdMsS0e6OAaQywQF6UQ7dlYZ6ev
	4a+VQ9Si2rY0gQZD6D6pGw==
X-Virus-Scanned: by MailRoute
Received: from 005.lax.mailroute.net ([199.89.1.8])
	by localhost (005.lax [127.0.0.1]) (mroute_mailscanner, port 10026)
	with LMTP id LvLL_kMudxKA; Tue,  8 Nov 2022 02:17:18 +0000 (UTC)
Received: from vin1.pneumasolutions.com (vin1.pneumasolutions.com [15.204.140.160])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by 005.lax.mailroute.net (Postfix) with ESMTPS id 4N5sDt04MJz1T5Hq;
	Tue,  8 Nov 2022 02:17:17 +0000 (UTC)
Received: from vin1.pneumasolutions.com (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lp800@internal.samobile.net)
	by vin1.pneumasolutions.com (Postfix) with ESMTPSA id AF4A13B640;
	Mon,  7 Nov 2022 21:17:16 -0500 (EST)
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
To: didier@slint.fr
Cc: speakup@linux-speakup.org
Subject: Re: How to ship the speakup drivers
Date: Mon, 07 Nov 2022 21:17:16 -0500
Message-ID: <11ac737c.8924.47b4.9bf1.622de472c6b3@samobile.net>
In-Reply-To: <c7dd7efd-7f01-a827-97ba-7fa9356a3bcb@slint.fr>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Heya there Didier and all:
Hope this finds ya well when you do wake up over there.
Your instructions worked just fine indeed.
The module loads up nice and early in the boot process just like the 
days of old, with only one little hitch.
When I logged in, my speakup settings for ltlk didn't take affect. I 
figured that this was because I chose "none" for the speak-with option.
So, I chose ltlk and said yes to the option to load at next boot.
On the next reboot, the speakup settings did go into affect and no 
error messages as I thought there might be do to speakup_ltlk already running.
So once a user has their hard synth running then as root or su they 
should be able to save their speakup settings with the speak-with 
command so they won't have to put a command in their /etc/rc.d/rc.local 
file to save them the way I used to have to in days past.
So the test was a raging success!
Thanks muchee!
Take care... Cheereoe!

