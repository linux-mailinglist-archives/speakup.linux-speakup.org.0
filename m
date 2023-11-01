Return-Path: <speakup+bounces-1042-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 910DF7DD982
	for <lists+speakup@lfdr.de>; Wed,  1 Nov 2023 01:17:00 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=AnaHtKJB;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2168938225D; Tue, 31 Oct 2023 20:17:00 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id F24AD3820EE
	for <lists+speakup@lfdr.de>; Tue, 31 Oct 2023 20:16:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 548493820F0; Tue, 31 Oct 2023 20:16:52 -0400 (EDT)
Received: from mail72.out.titan.email (mail72.out.titan.email [209.209.25.165])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A65403820EC
	for <speakup@linux-speakup.org>; Tue, 31 Oct 2023 20:16:51 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 9A1E01000ED;
	Wed,  1 Nov 2023 00:16:45 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 2A26F10006B;
	Wed,  1 Nov 2023 00:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1698797805;
	bh=sV6LOnN0PK73YXsGKQRMV3ZdxHDvIRqKh1cYdBeQBmw=;
	h=Message-ID:Reply-To:From:To:Cc:References:Subject:Date:
	 MIME-Version:From:To:Cc:Subject:Message-ID;
	b=AnaHtKJBZ8FZKorns+LXV2WHxtMAab6nZ/yMHRvd+WYCmFVkOYa52eTBORc7Rjfz5
	 js5NMja4yAap6IuUTxBHWDMddiwLWh51UotR+Lzo5lQoPkBCc4eTqGY6ML7qmforSt
	 E7hfDaHAvTN0ynwxjSlXYOmTHlNmPEtFbe+i/ItY=
Message-ID: <1a1901da0c58$b29deac0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Butch Bussen" <butchb@shellworld.net>,
	"Karen Lewellen" <klewellen@shellworld.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Pine.LNX.4.64.2310311538430.3146024@users.shellworld.net> <Pine.LNX.4.64.2310311709250.3149750@users.shellworld.net>
Subject: Re: slightly different dectalk question.
Date: Tue, 31 Oct 2023 19:16:44 -0500
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
X-Titan-Src-Out: 1698797805423224874.32424.8133256573741176756@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=F9yRNItN c=1 sm=1 tr=0 ts=654198ed
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=9_GH9xibAAAA:8 a=qPKtzgQbAAAA:8 a=xCv5ScOFqdvM9xHGjKYA:9
	a=wPNLvfGTeEIA:10 a=dO7qa_Xy17WzffDKgyPM:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I thought that somewhere in with the DecTalk files, there was a tool that 
probes for the Dectalk.
It should not be hard to change the jumpers on the card, I used to do it all 
the time.
Seems like I usually used IRQ 5 or 7 and what is the other, DMA?
I think that was usually 3.
Anyway, it wouldn't hurt to move them, as the worse that can happen is that 
it will be not working like it it is currently.
You just feel the the available jumper pins, and move the jumper over.

Glenn
----- Original Message ----- 
From: "Butch Bussen" <butchb@shellworld.net>
To: "Karen Lewellen" <klewellen@shellworld.net>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Tuesday, October 31, 2023 7:10 PM
Subject: Re: slightly different dectalk question.


I don't know of a tool, but I have a whole folder of dectalk stuff, says
software 4.2 if I remember right.  There is one file, for example, that
talks about a conflict with certain cdrom drives.
On Tue, 31 Oct 2023,
Karen Lewellen wrote:

> And likely more on point.
> I did get a copy of the pc1 software, from another list.
> The error suggests address factors, but my associate took one look at all
> those switches and was afraid to touch them.
> Given dt.bat can be edited it seems,
> any tool that will locate the dectalk internal card?
> Thanks,
> Karen
>
>
>
>


