Return-Path: <speakup+bounces-1398-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 75138B8E448
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 21:45:15 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=NBUt3i1L;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CD33F3830AA; Sun, 21 Sep 2025 15:45:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A88AE382C4B
	for <lists+speakup@lfdr.de>; Sun, 21 Sep 2025 15:45:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5A4BE382C4B; Sun, 21 Sep 2025 15:45:07 -0400 (EDT)
Received: from mail10.out.titan.email (mail10.out.titan.email [3.226.153.83])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E9580382C46
	for <speakup@linux-speakup.org>; Sun, 21 Sep 2025 15:45:06 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 17EABE0010;
	Sun, 21 Sep 2025 19:45:06 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=3g6072+UKOi0C6t3tKSptW4n67WNfeG4qHx3rf0AI1k=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=to:date:references:subject:mime-version:from:message-id:reply-to:cc:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1758483905; v=1;
	b=NBUt3i1LpJElFkpjgLrvxRr4TKtvn30f+WiBsNY56fDMWXnEaK2L7vlxDtuk7bPqeSuqQFdL
	WFTANgHn68XYbbUzGyjBcJjkmCMh2LQSCVDx61I2uYGx/8cNJlotkc1FoT3fwwSE2pdcc7enR75
	sdne6I8C7euQsfFHweCO9EZQ=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 8C5C2E0020;
	Sun, 21 Sep 2025 19:45:05 +0000 (UTC)
Message-ID: <05dc01dc2b30$3b0a5630$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Terry D. Cudney" <terry@cudneys.ca>,
	"Chevelle" <cstrobel@crosslink.net>
Cc: <speakup@linux-speakup.org>
References: <aL5U_xg372xiMOJm@cudneys.ca> <aL5dVITcCcq369vC@cudneys.ca> <aL9BrQYKOSsZg6NJ@gregn.net> <2a46280b-3f61-492b-b7a4-b7f685c41a4e@crosslink.net> <aM9KHbWnRzHPHDr2@cudneys.ca> <d7e9ebe2-9ae2-4864-9704-664ca30d0664@crosslink.net>
Subject: Re: speakup from boot
Date: Sun, 21 Sep 2025 14:45:05 -0500
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
X-Titan-Src-Out: 1758483905899981814.32108.2592815879264842976@prod-use1-smtp-out1004.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=Sa8NduRu c=1 sm=1 tr=0 ts=68d055c1
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=xNf9USuDAAAA:8
	a=AGkJtRo6AAAA:8 a=VBeCEuiNAAAA:8 a=qPKtzgQbAAAA:8 a=CIpYmfHD4bhcy3NB52UA:9
	a=QEXdDO2ut3YA:10 a=2y2M8S3z8Ys9FvGlKFEg:22 a=K-WoAglidRTgu2AFuYQT:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=P3K-DvM3-jjlTNsN-mCd:22
	a=iFtThO9_p-c16l5TK7rv:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chevelle,
I'm on that list, what is the subject of the common  thread?
I don't recall any more, which of the messages that may have come through on 
this topic on the Debian list.
Thanks.

----- Original Message ----- 
From: "Chevelle" <cstrobel@crosslink.net>
To: "Terry D. Cudney" <terry@cudneys.ca>
Cc: <speakup@linux-speakup.org>
Sent: Sunday, September 21, 2025 2:35 PM
Subject: Re: speakup from boot


Terry, possibly you are having the issue that is being discussed on
Debian Accessibility. I may not have hit the issue since I upgraded
from Bookworm to Trixie without using the installer. I set up a test
system and I'll see if I can figure out what the difference is. You
might want to join Debian Accessibility mailing list if you aren't on it
already.
https://lists.debian.org/debian-accessibility/


On 9/20/25 8:43 PM, Terry D. Cudney wrote:
> Hi Chevelle,
>
>     With earlier installations of debian, speakup/speech was enabled from 
> the installer and was running thereafter in the installed system.
>
>     However, in more recent versions of the installer,, at least in my 
> current setup, when I select "speech" during the installation, the 
> installed system has "orca" running in the gui, but no speakup in the cli 
> tty's.
>
>     What we want to have here is orca in the gui, concurrently with 
> speakup/espeakup/espeak-ng in the consoles.
>
>     I am able to accomplish this by manually, after loggingin on a 
> console,  stopping the espeakup.service (systemd), modifying the 
> /dev/softsynth ownership from root:root to terry:terry and then running 
> espeakup as a user application.
>
>     The goal, as previously stated, is to have this all done/setup 
> automatically from boot-time, so that we have an audible prompt before 
> logging in on a console.
>
>     --terry
>
>
> On Mon, Sep 08, 2025 at 05:22:37PM -0400, Chevelle wrote:
> --> On my Debian systems, Speakup does talk before login in. I'm using
> --> espeak-ng. I'm not sure what 'softsynth' is, or why you need to stop
> --> espeakup at all? On this system typing 'systemctl status espeakup' 
> shows
> --> it running.
> -->
> -->
> -->
> --> On 9/8/25 4:50 PM, Gregory Nowak wrote:
> --> > Switch to a systemd-free distro like devuan or void. Probably not 
> the
> --> > advice you wanted.
> --> >
> --> > Greg
> --> >
> --> >
> --> > On Mon, Sep 08, 2025 at 04:36:36AM +0000, Terry D. Cudney wrote:
> --> > > Hi again,
> --> > >
> --> > >     To give credit where credit is due...
> --> > >
> --> > >     This little script (now modified) came from Kirk...
> --> > >
> --> > >     This is how I get speakup to talk after logging in.
> --> > >
> --> > >     First I must run this script,  as root:
> --> > > /* start of script */
> --> > > #!/bin/bash
> --> > >
> --> > > systemctl stop espeakup
> --> > > /usr/bin/chown terry:terry /dev/softsynth*
> --> > > /usr/bin/chmod 1777 /run
> --> > > /* end of script */
> --> > >
> --> > >
> --> > > Then logged in as myself, I run espeakup as an application.
> --> > > /usr/bin/espeakup
> --> > >
> --> > > From here on speakup talks normally on all tty's including the 
> login prompts.
> --> > >
> --> > > This is good, but not completely satisfactory, The goal is to have 
> speakup talking before loggin in, ideally from power-on.
> --> > >
> --> > > Thanks again for any suggestions/help ,
> --> > >
> --> > > --terry
> --> > > --
> --> > > Name: Terry D. Cudney
> --> > > Telephone: 289-438-6828
> --> > > E-mail: terry@cudneys.ca
> --> > >
> -->
>



