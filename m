Return-Path: <speakup+bounces-1022-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6526F75A2F7
	for <lists+speakup@lfdr.de>; Thu, 20 Jul 2023 01:53:29 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=iMb3HuS5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DCB46382563; Wed, 19 Jul 2023 19:53:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BC024382419
	for <lists+speakup@lfdr.de>; Wed, 19 Jul 2023 19:53:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 18F1E38245B; Wed, 19 Jul 2023 19:53:21 -0400 (EDT)
Received: from mail12.out.flockmail.com (mail12.out.flockmail.com [52.7.194.170])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C215D38234B
	for <speakup@linux-speakup.org>; Wed, 19 Jul 2023 19:53:20 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id CD592600CC;
	Wed, 19 Jul 2023 23:53:17 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4B0C1600CD;
	Wed, 19 Jul 2023 23:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1689810797;
	bh=ow31f+BRFz5Up9UiUphdNgpEZqTTGVpIg+DL+T95++s=;
	h=Message-ID:Reply-To:From:To:Cc:References:Subject:Date:
	 MIME-Version:From:To:Cc:Subject:Message-ID;
	b=iMb3HuS5g6gW9o61edkg/iK7IcIiN9R6e/yHw7qKEY1ln9G48JS2VU/2Hac/UGUIj
	 Ms1P1j0kZtJtCI7jkl7nVeYFHc5NnviEdyIM6ovozfuEgMDJjJyxKppuX8jWWzzTb6
	 E6kt83HZRAriC0llrJpJFqyixBE9DTWqK1kselQc=
Message-ID: <0c4301d9ba9c$30ff4300$01ffa8c0@nucwin10>
Reply-To: "K0LNY" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY" <glenn@ervin.email>
To: "Jookia" <contact@jookia.org>,
	"Karen Lewellen" <klewellen@shellworld.net>
Cc: "John Covici" <covici@ccs.covici.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2307190655310.1206822@users.shellworld.net> <m3y1jcdu3l.wl-covici@ccs.covici.com> <Pine.LNX.4.64.2307190821260.1207890@users.shellworld.net> <ZLhxip9u1Z_8RMvx@titan>
Subject: Re: sort of ot: what causes this issue?
Date: Wed, 19 Jul 2023 18:53:17 -0500
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
	format=flowed;
	charset="iso-8859-1";
	reply-type=original
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1689810797642221201.1460.2912826044219048115@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=F76RNItN c=1 sm=1 tr=0 ts=64b8776d
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=jovt0mFxAAAA:8 a=9_GH9xibAAAA:8 a=uJ_w1ttZAAAA:8 a=qPKtzgQbAAAA:8
	a=z7KTAxwijA80W5ezjAoA:9 a=wPNLvfGTeEIA:10 a=Q2Fs8dv5wtUA:10
	a=StMmMNtBgVvPiZYFi0f4:22 a=dO7qa_Xy17WzffDKgyPM:22
	a=muQ5ErImgoUO71fbljk_:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Also, perhaps a UPS would stop any power spikes.
Glenn
----- Original Message ----- 
From: "Jookia" <contact@jookia.org>
To: "Karen Lewellen" <klewellen@shellworld.net>
Cc: "John Covici" <covici@ccs.covici.com>; "Speakup is a screen review 
system for Linux." <speakup@linux-speakup.org>
Sent: Wednesday, July 19, 2023 6:28 PM
Subject: Re: sort of ot: what causes this issue?


> Try changing the power supply of the device, maybe this new place has 
> power
> spikes that it can't handle.
>
> On Wed, Jul 19, 2023 at 08:25:10AM -0400, Karen Lewellen wrote:
>> What has been happening since I moved is that, say after a power change
>> happen sup stairs, I will first get a spike in pitch,
> 


