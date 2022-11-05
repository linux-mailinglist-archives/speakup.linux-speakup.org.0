Return-Path: <speakup+bounces-838-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 022FB61DD50
	for <lists+speakup@lfdr.de>; Sat,  5 Nov 2022 19:39:15 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CE50938363E; Sat,  5 Nov 2022 14:39:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BAF323831DA
	for <lists+speakup@lfdr.de>; Sat,  5 Nov 2022 14:39:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 19D253831E2; Sat,  5 Nov 2022 14:39:09 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0030.b.hostedemail.com [64.98.42.30])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 090AD382BFC
	for <speakup@linux-speakup.org>; Sat,  5 Nov 2022 14:39:09 -0400 (EDT)
Received: from omf03.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay05.b.hostedemail.com (Postfix) with ESMTP id C9ADD1005EBED;
	Sat,  5 Nov 2022 18:39:05 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf03.b.hostedemail.com (Postfix) with ESMTPA id 29326802715F;
	Sat,  5 Nov 2022 18:39:05 +0000 (UTC)
Message-ID: <0c3801d8f145$e2eb2b90$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM> <Y2LqK66AdnnW9DOg@gregn.net> <20221102233629.ayyi63uakfhkw3dc@begin> <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM> <08a901d8efbc$33020490$80ffa8c0@Win7VM> <Y2RSm7hG8WHdiygs@gregn.net> <0b4101d8f063$69069fe0$80ffa8c0@Win7VM> <Y2XF6wmcbFCsq5l/@gregn.net> <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM> <Y2XV2QOPjryMKRJv@gregn.net>
Subject: Re: Voxin/ibmtts with eSpeakup
Date: Sat, 5 Nov 2022 13:39:05 -0500
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
X-Stat-Signature: e5zjjx43ntemdyt8sfkpbn44exu9rrt1
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 29326802715F
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+48YTW+eSs6EMNIRVfVlyUeqgfGO4Y2SA=
X-HE-Tag: 1667673545-982929
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

In doing some research, I'm wondering if the only user, "lenny" can't get 
audio, but root can, is that I need to give ownership to "lenny" for the 
1000 folder.
In similar problems I found on-line, the suggested command was as follows, 
but in the command, it can't find lenny or ./lenny.
sudo chown 1000 ./lenny
or
sudo chown 1000 lenny
So I don't know how to make this work.
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen 
review system for Linux." <speakup@linux-speakup.org>
Sent: Friday, November 04, 2022 10:17 PM
Subject: Re: Voxin/ibmtts with eSpeakup


What's under 1000?

Greg


On Fri, Nov 04, 2022 at 09:24:38PM -0500, K0LNY_Glenn wrote:
> Correct, I never understood why in the user folder is only 1000.
> That is all there is in /user.
> Glenn
> ----- Original Message ----- 
> From: "Gregory Nowak" <greg@gregn.net>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
> review system for Linux." <speakup@linux-speakup.org>
> Sent: Friday, November 04, 2022 9:09 PM
> Subject: Re: Voxin/ibmtts with eSpeakup
>
>
> I assume that lenny is the only  login user on the system. So,
> anything interesting in /var/run/user/1000/speech-dispatcher/log/*
> after you run spd-say as lenny?
>
> Greg
>
>
> On Fri, Nov 04, 2022 at 10:37:54AM -0500, K0LNY_Glenn wrote:
> > I ran  the following:
> > sudo adduser audio lenny
> > and I got the message that lenny was already a member of audio.
> > speaker-test works  as sudo, but no sound without sudo.
> > Just like spd-say, no errors, just no audio.
> > Any ideas?
> > Thanks.
> > Glenn
>
>
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> skype: gregn1
> (authorization required, add me to your contacts list first)
> If we haven't been in touch before, e-mail me before adding me to your
> contacts.
>
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
>
>

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org 


