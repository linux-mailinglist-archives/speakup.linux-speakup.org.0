Return-Path: <speakup+bounces-1033-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 41EEA7D7817
	for <lists+speakup@lfdr.de>; Thu, 26 Oct 2023 00:38:59 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=Q8l5Qg6R;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D0ADA382665; Wed, 25 Oct 2023 18:38:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AEE09382316
	for <lists+speakup@lfdr.de>; Wed, 25 Oct 2023 18:38:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 40AE8382640; Wed, 25 Oct 2023 18:38:43 -0400 (EDT)
Received: from mail67.out.titan.email (mail67.out.titan.email [3.216.99.49])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DDD7A382300
	for <speakup@linux-speakup.org>; Wed, 25 Oct 2023 18:38:42 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 2EB7B100057;
	Wed, 25 Oct 2023 22:38:38 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id B3827100032;
	Wed, 25 Oct 2023 22:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1698273518;
	bh=E9lGdheQHgZ7LGB5lV33CTItqp5vHRsgcVp9MRPk8JE=;
	h=Message-ID:Reply-To:From:To:References:Subject:Date:MIME-Version:
	 From:To:Cc:Subject:Message-ID;
	b=Q8l5Qg6RuJ1GnfufTP3qszf7YHWgxrkHMESVtQzMEHW865/ZxM/OsIv/jbSc/qEbd
	 9WstsrEStccQV+8rr/W8novw624gXsHGpBL7pfUJg55aaYc0KjcDrd5Yzbq225H0Xp
	 gnx89eAfjGjyrmsCb9Bb7hetJ2iQLZiHSMXylexE=
Message-ID: <03f701da0793$ff733c20$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Karen Lewellen" <klewellen@shellworld.net>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2310251832220.3052405@users.shellworld.net>
Subject: Re: perhaps, decktalk internal card settings?
Date: Wed, 25 Oct 2023 17:38:37 -0500
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
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1698273517951320152.2807.300738988843356931@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=K8XkXQaI c=1 sm=1 tr=0 ts=653998ed
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=9_GH9xibAAAA:8 a=qPKtzgQbAAAA:8 a=lHIoq_I0u_TEzokgQ0IA:9
	a=wPNLvfGTeEIA:10 a=zgiPjhLxNE0A:10 a=zZCYzV9kfG8A:10
	a=dO7qa_Xy17WzffDKgyPM:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Karen,
It's been a lot of years for me, but I have changed a lot of jumper settings 
on internal speech cards, and sound cards too, and I would say that there is 
no specific setting, and that it is best to look to see what settings are 
not being used by something else, and then put the jumpers on the speech 
card on the jumpers that aren't being used by something else.
Glenn
----- Original Message ----- 
From: "Karen Lewellen" <klewellen@shellworld.net>
To: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Wednesday, October 25, 2023 5:34 PM
Subject: ot: perhaps, decktalk internal card settings?


Asking as some may use it with speakup, and I will have talented help
tomorrow to confirm that they are correct.
Can someone share what the default jumpers should be using?
Thanks,
Karen




