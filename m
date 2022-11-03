Return-Path: <speakup+bounces-827-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F0864617416
	for <lists+speakup@lfdr.de>; Thu,  3 Nov 2022 03:18:05 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DACCA383BB0; Wed,  2 Nov 2022 22:18:04 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C53A7383B60
	for <lists+speakup@lfdr.de>; Wed,  2 Nov 2022 22:18:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BFD84383B60; Wed,  2 Nov 2022 22:17:59 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0082.b.hostedemail.com [64.98.42.82])
	by befuddled.reisers.ca (Postfix) with ESMTPS id ADC34383B5D
	for <speakup@linux-speakup.org>; Wed,  2 Nov 2022 22:17:59 -0400 (EDT)
Received: from omf04.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay05.b.hostedemail.com (Postfix) with ESMTP id B6B4610033B01;
	Thu,  3 Nov 2022 02:17:58 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf04.b.hostedemail.com (Postfix) with ESMTPA id 2339D1004D827;
	Thu,  3 Nov 2022 02:17:58 +0000 (UTC)
Message-ID: <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"Gregory Nowak" <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM> <Y2LqK66AdnnW9DOg@gregn.net> <20221102233629.ayyi63uakfhkw3dc@begin>
Subject: Re: Voxin/ibmtts with eSpeakup
Date: Wed, 2 Nov 2022 21:17:57 -0500
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
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 2339D1004D827
X-Spam-Status: No, score=-2.52
X-Stat-Signature: 57neeis5wk1pfnhj6r6tdrcuj1jfsxff
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18b42/1mpOXPDkaY+f7AkrZsdlZxCj9u5U=
X-HE-Tag: 1667441878-458733
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hey All, there is a little more progress, but something needs fixin'.
So, on my Debian Bullseye 32 bit, I have Voxin talking with either espakup 
or speakup, I don't know which it is.
I am not sure which of the following did  the trick.
I installed speechd-up
but IBMTTS only worked under sudo, and only with spd-say
And previously, I had installed
speech-dispatcher-ibmtts
Which helped, but it wasn't working with speakup.
So finally, I installed just
speech-dispatcher
and now IBMTTS/Voxin is talking with the screenreader, whichever it is.
But here's the only problem,
when it reboots, the rate is really slow, and it repeats:
failed
failed to load speakup
and then it gets to the login prompt, after about twenty times of stating 
the above message.
And although I run
speakupconf save
it does not save.
I thought I wrote speakupconf load into somewhere in INIT.d or something so 
it would load.
So I'm almost there, but if anyone can hint me on why it isn't loading up 
the screenreader settings, it would be much appreciated.
Glenn
----- Original Message ----- 
From: "Samuel Thibault" <samuel.thibault@aquilenet.fr>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system 
for Linux." <speakup@linux-speakup.org>
Sent: Wednesday, November 02, 2022 6:36 PM
Subject: Re: Voxin/ibmtts with eSpeakup


Gregory Nowak, le mer. 02 nov. 2022 15:07:39 -0700, a ecrit:
> No, espeakup works only with espeak.

Yes. To make use of speech-dispatcher's modules, you need to use
speechd-up, which connects speakup with speech-dispatcher.

Samuel 


