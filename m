Return-Path: <speakup+bounces-771-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B4A8F6104D9
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 23:55:25 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4BE6A38401E; Thu, 27 Oct 2022 17:55:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 36268383FB8
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 17:55:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0C0D0383FAA; Thu, 27 Oct 2022 17:55:20 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0096.b.hostedemail.com [64.98.42.96])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EE419383EC6
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 17:55:19 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 1DFAF10037508;
	Thu, 27 Oct 2022 21:55:19 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id 92FD7BB4F50;
	Thu, 27 Oct 2022 21:55:18 +0000 (UTC)
Message-ID: <083301d8ea4e$aa578240$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "K0LNY_Glenn" <glenn@ervin.email>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM>
Subject: Re: Installing Voxin
Date: Thu, 27 Oct 2022 16:54:18 -0500
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
X-Stat-Signature: idzgg5dxh1cjqbsw3dhpy6egjhe7wmfz
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 92FD7BB4F50
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/WRxTP+9s/3BNhAq8itAEfEjd8GPFqyTE=
X-HE-Tag: 1666907718-305511
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well some improvement, Voxin has installed to my Debian Bullseye, I heard 
back from Gilles, and he informed me that Voxin 3.X won't install to a 32 
bit system, so I installed Voxin-2.2
But when it boots up, Speakup repeatedly speaks something like:
speakup failed to load software synth
But it defaulted to eSpeak, so I still have that.
The Voxin installer asked if I want Voxin to be the default synth, and I 
entered for yes.
So, is there a problem in speech-dispatcher, specifically in speechd.conf?
Thanks for any info.

Glenn

----- Original Message ----- 
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Thursday, October 27, 2022 2:12 PM
Subject: Installing Voxin


Hi Group,
I'm back working on Debian Bullseye on my old Asus 701 netbook.
It is operating okay, and I wanted to get something installed to control my
NanoVNA network analiser for Ham radio work.
But first, I thought I would try again to get Voxin (IBM ViaVoice) working
on it.
I am just using Speakup with eSpeak at this time.
I contacted Oralux on this, a long time back, and was offered a suggestion
to try, but I get errors in trying the command they gave me, and I'm hoping
someone here might help me to understand the usage of their suggestion.
Here's what was suggested I try:

sudo --login $PWD/voxin-installer.sh
Normally I just do:
sudo bash voxin-installer.sh
But here's the error from that which prompted me to contact Oralux
initially:
Your version of speech-dispatcher has not been recognized.
If the installation continues, voxin will use its module for
speech-dispatcher                                                graphic 545
Do you really
want to continue?
If yes, press the ENTER key.

                                                Logs written in
log/voxin.log
Initialization; please wait...
Error: more details in
/home/lenny/Downloads/voxin-3.3rc5/voxin-enu-3.3rc5/log/voxin.log
graphic 545 For support, email
to contact at oralux.org
Here's the contents of the voxin.log file:

  GNU nano 5.4                                              voxin.log
graphic 192 /usr/bin/gettext

uninstallOldVoxin
installSystem
graphic 545

rfs all tarball not found!
voxin package not found!installOldVoxin




