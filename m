Return-Path: <speakup+bounces-826-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 16B22617112
	for <lists+speakup@lfdr.de>; Wed,  2 Nov 2022 23:59:58 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 05506383BBD; Wed,  2 Nov 2022 18:59:57 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DE7CA382BFE
	for <lists+speakup@lfdr.de>; Wed,  2 Nov 2022 18:59:56 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DA3E2382BFE; Wed,  2 Nov 2022 18:59:51 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0176.b.hostedemail.com [64.98.42.176])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C1FB8380716
	for <speakup@linux-speakup.org>; Wed,  2 Nov 2022 18:59:51 -0400 (EDT)
Received: from omf01.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay06.b.hostedemail.com (Postfix) with ESMTP id A7EE018BD3160;
	Wed,  2 Nov 2022 22:59:50 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf01.b.hostedemail.com (Postfix) with ESMTPA id 1096D10B37A1D;
	Wed,  2 Nov 2022 22:59:49 +0000 (UTC)
Message-ID: <070d01d8ef0e$d0a207d0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "K0LNY_Glenn" <glenn@ervin.email>,
	"Gregory Nowak" <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <05de01d8eefb$e44f16a0$80ffa8c0@Win7VM> <Y2LqK66AdnnW9DOg@gregn.net> <05ed01d8ef09$699869d0$80ffa8c0@Win7VM>
Subject: Re: Voxin/ibmtts with eSpeakup
Date: Wed, 2 Nov 2022 17:59:50 -0500
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
X-Stat-Signature: rjyjixg5gsu54cdafpph77uw1jog4rku
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 1096D10B37A1D
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/TiV0bgIbaGMSxlIwE2V04ayMIxff2HwQ=
X-HE-Tag: 1667429989-639736
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Here is an odd thing, maybe someone can explain it, or offer a suggestion:
If I do sudo spd-say test
I hear voxin, or more precisely, ibmtts
But if I do it without sudo, I get no error, but also, no sound.
Also, when I run spd-conf without sudo and do a user setup, there is no 
audio feedback, whether I select pulse or alsa.
So it is like audio for speech-dispatcher and alsa want sudo, but yet, 
espeakup is talking with espeak.
Glenn
----- Original Message ----- 
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Wednesday, November 02, 2022 5:21 PM
Subject: Re: Voxin/ibmtts with eSpeakup


Hi,
Any idea on how to install just speakup?
I had tried Fenrir, but there was a lag with it, and speakup is snappier.
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux."
<speakup@linux-speakup.org>
Sent: Wednesday, November 02, 2022 5:07 PM
Subject: Re: Voxin/ibmtts with eSpeakup


No, espeakup works only with espeak.

Greg


On Wed, Nov 02, 2022 at 03:44:22PM -0500, K0LNY_Glenn wrote:
> Hi,
> I have installed a voxin 2.2.1 update from Oralux to try and get Voxin
> working with speakup.
> More accurately, with espeakup.
> I can get the spd-say to play with ibmtts, using the alsa selection.
> This is on Debian Bullseye 32 bit, which cannot use Voxin 3X.
> Are there any espeakup parameters that will make it use what is in
> speechd.conf?
> Thanks.
>
> Glenn
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



