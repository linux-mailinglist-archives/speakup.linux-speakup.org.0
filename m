Return-Path: <speakup+bounces-769-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3FE22610146
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 21:13:35 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 80E6C38403D; Thu, 27 Oct 2022 15:13:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6BB57380921
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 15:13:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4100A383FAA; Thu, 27 Oct 2022 15:13:27 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0162.b.hostedemail.com [64.98.42.162])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 25EA138074C
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 15:13:27 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 4C16F8036A79
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:13:26 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id DB646BC9301
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 19:13:25 +0000 (UTC)
Message-ID: <082101d8ea38$0d104d70$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Installing Voxin
Date: Thu, 27 Oct 2022 14:12:25 -0500
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
X-Stat-Signature: 44sj3aei4giesqmqb4ihhk5n1ue9xcbe
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: DB646BC9301
X-Spam-Status: No, score=-1.87
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19EJZGesXUUZXAgZbh9itr0W5EEGoSsrlo=
X-HE-Tag: 1666898005-389261
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

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
 


