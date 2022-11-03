Return-Path: <speakup+bounces-830-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 17D37618CFD
	for <lists+speakup@lfdr.de>; Fri,  4 Nov 2022 00:49:38 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A601D383BCF; Thu,  3 Nov 2022 19:49:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 914C0383BAE
	for <lists+speakup@lfdr.de>; Thu,  3 Nov 2022 19:49:37 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ADC66383BAE; Thu,  3 Nov 2022 19:49:32 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0126.b.hostedemail.com [64.98.42.126])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9DDD5383BAA
	for <speakup@linux-speakup.org>; Thu,  3 Nov 2022 19:49:32 -0400 (EDT)
Received: from omf05.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id C33198C24502;
	Thu,  3 Nov 2022 23:49:30 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf05.b.hostedemail.com (Postfix) with ESMTPA id 2DA741802F718;
	Thu,  3 Nov 2022 23:49:30 +0000 (UTC)
Message-ID: <0ab401d8efde$eb620f40$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM> <Y2LqK66AdnnW9DOg@gregn.net> <20221102233629.ayyi63uakfhkw3dc@begin> <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM> <08a901d8efbc$33020490$80ffa8c0@Win7VM> <Y2RSm7hG8WHdiygs@gregn.net>
Subject: Re: Voxin/ibmtts with eSpeakup
Date: Thu, 3 Nov 2022 18:49:30 -0500
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
X-Rspamd-Queue-Id: 2DA741802F718
X-Spam-Status: No, score=-2.59
X-Stat-Signature: rxhhgd9xneptm1e3aj6mrw494m5djybu
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18rkAwn6GKZWhUKIkx/HUmWb0bwTW7BR34=
X-HE-Tag: 1667519370-397647
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
The /etc/rc.local is only there because I created it, it wasn't there to 
begin with.
On the adding the user to the audio group, how is that done?
Thanks
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen 
review system for Linux." <speakup@linux-speakup.org>
Sent: Thursday, November 03, 2022 6:45 PM
Subject: Re: Voxin/ibmtts with eSpeakup


On Thu, Nov 03, 2022 at 02:40:57PM -0500, K0LNY_Glenn wrote:
> Well here's an update.
> It seems that Bullseye no longer uses /etc/rc.local, I created the file, 
> but
> my command:
> sudo /usr/bin/speakupconf load
> didn't work.

Apologies. The rc.local file is still present in devuan, so I assumed
it still exists and is executed at boot in debian.

> spd-say test, without sudo is still silent
> but with sudo, I get Voxin.

Is the user you're running spd-say as in the audio group?

> So, espeakup, or just speakup, whichever I'm using, is not runing as sudo,

As far as I know, espeakup runs as root, unless you have a user named
sudo on your system, and have made necessary changes to run espeakup
as that user. Also, you need to decide what you want speakup to
use. More likely espeakup and speech-dispatcher will just get in each
other's way. If you're going to stick with voxin, you want to use
speechd-up. If you're going to stick with espeak, you want to use espeakup.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org


