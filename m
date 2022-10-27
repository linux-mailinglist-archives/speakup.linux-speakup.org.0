Return-Path: <speakup+bounces-774-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0324261059F
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 00:21:36 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3F0BC384045; Thu, 27 Oct 2022 18:21:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 29712383FB8
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 18:21:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E7F7D383FE8; Thu, 27 Oct 2022 18:21:29 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0100.b.hostedemail.com [64.98.42.100])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D62C7383FAA
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 18:21:29 -0400 (EDT)
Received: from omf11.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay06.b.hostedemail.com (Postfix) with ESMTP id 1DDFD18B98E83;
	Thu, 27 Oct 2022 22:21:28 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf11.b.hostedemail.com (Postfix) with ESMTPA id 96FA317E33;
	Thu, 27 Oct 2022 22:21:27 +0000 (UTC)
Message-ID: <084101d8ea52$51894c80$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: <speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <b7dc2bd6-13e7-3b7a-5651-a1a7e7cc3f11@slint.fr>
Subject: Re: Installing Voxin
Date: Thu, 27 Oct 2022 17:20:27 -0500
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
	charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Stat-Signature: ceajtq7ea47wm8dxge9p8r4qrb5werbw
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 96FA317E33
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/8vE4t28OBJry0y1WdDXqEtH44CxKThwY=
X-HE-Tag: 1666909287-125876
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I meant speakup.
Glenn
----- Original Message ----- 
From: "Didier Spaier" <didier@slint.fr>
To: <speakup@linux-speakup.org>
Sent: Thursday, October 27, 2022 7:13 PM
Subject: Re: Installing Voxin


I don't understand. the voxin TTS and voices are intended to be used with 
screen
readers like fenrir, speechd-up or orca, or with emacspeac, not espeakup and 
the
same goes for speech-dispatcher. Which screen reader do you use? Or are 
trying
to use several ones at the same time?

I assume that if speakup repeatedly speaks something like:
speakup failed to load software synth and still works, maybe the 
speakup-soft
driver is built-in your kernel, not provided as a module?

Didier


Le 27/10/2022 à 21:54, K0LNY_Glenn a écrit :
> Well some improvement, Voxin has installed to my Debian Bullseye, I heard
> back from Gilles, and he informed me that Voxin 3.X won't install to a 32
> bit system, so I installed Voxin-2.2
> But when it boots up, Speakup repeatedly speaks something like:
> speakup failed to load software synth
> But it defaulted to eSpeak, so I still have that.
> The Voxin installer asked if I want Voxin to be the default synth, and I
> entered for yes. don't nde
> So, is there a problem in speech-dispatcher, specifically in speechd.conf?
> Thanks for any info.
>
> Glenn
>
> ----- Original Message ----- 
> From: "K0LNY_Glenn" <glenn@ervin.email>
> To: "Speakup is a screen review system for Linux."
> <speakup@linux-speakup.org>
> Sent: Thursday, October 27, 2022 2:12 PM
> Subject: Installing Voxin
>
>
> Hi Group,
> I'm back working on Debian Bullseye on my old Asus 701 netbook.
> It is operating okay, and I wanted to get something installed to control 
> my
> NanoVNA network analiser for Ham radio work.
> But first, I thought I would try again to get Voxin (IBM ViaVoice) working
> on it.
> I am just using Speakup with eSpeak at this time.
> I contacted Oralux on this, a long time back, and was offered a suggestion
> to try, but I get errors in trying the command they gave me, and I'm 
> hoping
> someone here might help me to understand the usage of their suggestion.
> Here's what was suggested I try:
>
> sudo --login $PWD/voxin-installer.sh
> Normally I just do:
> sudo bash voxin-installer.sh
> But here's the error from that which prompted me to contact Oralux
> initially:
> Your version of speech-dispatcher has not been recognized.
> If the installation continues, voxin will use its module for
> speech-dispatcher                                                graphic 
> 545
> Do you really
> want to continue?
> If yes, press the ENTER key.
>
>                                                 Logs written in
> log/voxin.log
> Initialization; please wait...
> Error: more details in
> /home/lenny/Downloads/voxin-3.3rc5/voxin-enu-3.3rc5/log/voxin.log
> graphic 545 For support, email
> to contact at oralux.org
> Here's the contents of the voxin.log file:
>
>   GNU nano 5.4                                              voxin.log
> graphic 192 /usr/bin/gettext
>
> uninstallOldVoxin
> installSystem
> graphic 545
>
> rfs all tarball not found!
> voxin package not found!installOldVoxin
>
>
>
>


