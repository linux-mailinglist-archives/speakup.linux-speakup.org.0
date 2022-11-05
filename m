Return-Path: <speakup+bounces-835-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EB97461A6E2
	for <lists+speakup@lfdr.de>; Sat,  5 Nov 2022 03:24:50 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 83A3B38361F; Fri,  4 Nov 2022 22:24:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6FD373835B9
	for <lists+speakup@lfdr.de>; Fri,  4 Nov 2022 22:24:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A69963835BF; Fri,  4 Nov 2022 22:24:45 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0211.b.hostedemail.com [64.98.42.211])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 95F2B382BFC
	for <speakup@linux-speakup.org>; Fri,  4 Nov 2022 22:24:45 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 53E52801D5F6;
	Sat,  5 Nov 2022 02:24:39 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id AB638BF4378;
	Sat,  5 Nov 2022 02:24:38 +0000 (UTC)
Message-ID: <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM> <Y2LqK66AdnnW9DOg@gregn.net> <20221102233629.ayyi63uakfhkw3dc@begin> <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM> <08a901d8efbc$33020490$80ffa8c0@Win7VM> <Y2RSm7hG8WHdiygs@gregn.net> <0b4101d8f063$69069fe0$80ffa8c0@Win7VM> <Y2XF6wmcbFCsq5l/@gregn.net>
Subject: Re: Voxin/ibmtts with eSpeakup
Date: Fri, 4 Nov 2022 21:24:38 -0500
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
X-Stat-Signature: 7y3uhejm31z53w1tcnubhxr1xpmox41f
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: AB638BF4378
X-Spam-Status: No, score=-2.53
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX191df4nQpNN0Waq6lOwC1i4tZ14wOkBjSs=
X-HE-Tag: 1667615078-486238
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Correct, I never understood why in the user folder is only 1000.
That is all there is in /user.
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen 
review system for Linux." <speakup@linux-speakup.org>
Sent: Friday, November 04, 2022 9:09 PM
Subject: Re: Voxin/ibmtts with eSpeakup


I assume that lenny is the only  login user on the system. So,
anything interesting in /var/run/user/1000/speech-dispatcher/log/*
after you run spd-say as lenny?

Greg


On Fri, Nov 04, 2022 at 10:37:54AM -0500, K0LNY_Glenn wrote:
> I ran  the following:
> sudo adduser audio lenny
> and I got the message that lenny was already a member of audio.
> speaker-test works  as sudo, but no sound without sudo.
> Just like spd-say, no errors, just no audio.
> Any ideas?
> Thanks.
> Glenn


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org 


