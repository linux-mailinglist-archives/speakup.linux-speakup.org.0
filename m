Return-Path: <speakup+bounces-1274-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7C2C8AACAC8
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 18:22:26 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=YS9Zif51;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E203B38298D; Tue, 06 May 2025 12:22:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BFE0A382165
	for <lists+speakup@lfdr.de>; Tue, 06 May 2025 12:22:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B4C29382527; Tue, 06 May 2025 12:22:18 -0400 (EDT)
Received: from mail57.out.titan.email (mail57.out.titan.email [209.209.25.125])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 76E7E382163
	for <speakup@linux-speakup.org>; Tue, 06 May 2025 12:22:18 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4DED460522;
	Tue,  6 May 2025 16:22:16 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=NPfs86W1Sf90tIaObp84iQ6xGPfonsWlI4BlKHADCf4=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=message-id:date:references:reply-to:to:subject:mime-version:from:cc:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1746548536; v=1;
	b=YS9Zif513Di6OL1WH/nFRWABimcDSl6UJlUgjt3FeYb6codFp34nIAS5Eg0JkYv8k8u4sOEM
	kT5n8G96Alq7EfvVk8BX/CjMv9n3B9lM8zrW2+HlD110hWJqbVxdOqR8G/br3opX4nGQTGXab2r
	92GnZGgrl/NYYmjeW9DQxpXs=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 5A493600F4;
	Tue,  6 May 2025 16:22:15 +0000 (UTC)
Message-ID: <008801dbbea3$075d66f0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>,
	"John G. Heim" <jheim@math.wisc.edu>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu> <aBklhtM_CN4OmF3L@begin> <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu> <aBk1N295aRxq7LAP@begin> <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu> <aBlwpQWdLhedVVNx@gregn.net> <6c8093f9-e75e-442b-9d0c-570d066056a0@math.wisc.edu> <aBl-sbHNyN6NRrrs@gregn.net> <14db84c6-0360-44b0-beb2-54d7e5c424d9@math.wisc.edu>
Subject: Re: Load speakup module as kernel parameter?
Date: Tue, 6 May 2025 11:22:13 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1746548536013276368.5242.1547124989193997183@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=fZxXy1QF c=1 sm=1 tr=0 ts=681a3738
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=hEK2XftRAAAA:8
	a=qPKtzgQbAAAA:8 a=SUTpXeWRIqi0_B4EDQgA:9 a=QEXdDO2ut3YA:10
	a=pvvZm7_9ER1OwvpV3Ftp:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

One could use a startup script in systemd/system or maybe a line in 
rc.local.
Glenn
----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen 
review system for Linux." <speakup@linux-speakup.org>
Sent: Tuesday, May 6, 2025 11:17 AM
Subject: Re: Load speakup module as kernel parameter?



> If you want to start speakup by passing parameters to the kernel, the
> speakup modules you want to load have to be compiled into the kernel,
> unless grml does something nifty I don't know about. If the speakup
> modules are just modules, then the earliest stage to start speakup is
> inside the initramfs. That's still not as early as the kernel
> decompresses and loads, but it should still be enough for most
> purposes.
>
Hmm, I guess figuring out how to load hardware speech drivers isn't
worthwhile. It might be possible to install a custom kernel into a GRML
image but probably a more useful thing to try is to start speakup with
software speech automatically during boot. It is not too difficult to
start speakup after your machine is done booting but it would be better
to have it start automatically and during boot. I'll have to get back on
the GrML list to see if I can make this new approach work.

Man, I should have asked here first instead of spending a week trying to
load the speakup modules at the kernel command line.




