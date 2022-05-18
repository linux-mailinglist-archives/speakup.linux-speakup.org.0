Return-Path: <speakup+bounces-431-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E767E52BDB7
	for <lists+speakup@lfdr.de>; Wed, 18 May 2022 17:23:37 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C49D6380C70; Wed, 18 May 2022 11:23:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AF81838082A
	for <lists+speakup@lfdr.de>; Wed, 18 May 2022 11:23:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 615B038092D; Wed, 18 May 2022 11:23:31 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0072.b.hostedemail.com [64.98.42.72])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 4F5153805F1
	for <speakup@linux-speakup.org>; Wed, 18 May 2022 11:23:31 -0400 (EDT)
Received: from omf07.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 731FF10032C92
	for <speakup@linux-speakup.org>; Wed, 18 May 2022 15:23:30 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf07.b.hostedemail.com (Postfix) with ESMTPA id EDBA810608AFD
	for <speakup@linux-speakup.org>; Wed, 18 May 2022 15:23:23 +0000 (UTC)
Message-ID: <061e01d86acb$37cbd440$82ffa8c0@WIN40RPKAT965G>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Getting Speech-Dispatcher To Work
Date: Wed, 18 May 2022 10:23:24 -0500
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
X-Stat-Signature: naingza39qspr7u6nxrgz6umj6rwgq7w
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: EDBA810608AFD
X-Spam-Status: No, score=-2.59
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/PXElDeXtPAZFPyLE5kiPFpmXo0xIARj4=
X-HE-Tag: 1652887403-367162
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi,
I am using a Pine64 board, it is an ARM board like a Raspberry PI.
I installed Armbian on it.
Then I installed the Mate desktop.
I cannot get Orca to work, but there are sounds like Orca is working, just 
not talking.
I have system sounds and espeak and espeak-ng work when tested.
And also, spd-say gives me an error.
It got installed in a non-usual location, in /usr/sbin.
I get the following error when running spd-say
lenny@pine64:~/speech-dispatcher-0.8.8$ spd-say test 
graphic 192 Failed to connect to Speech Dispatcher:

Error: Can't connect to unix socket 
/run/user/1000/speech-dispatcher/speechd.soc
k: No such file or directory. Autospawn: Autospawn failed. Speech Dispatcher 
refgraphic 545 used to start with error code, stating this as a reason:

So I downloaded speech-dispatcher from its site and put it into the user 
folder and unpacked it.
Can someone give me the steps for installing from these files?
I'll paste the contents of the unpacked .tar.gz file below.
I don't get the make command stuff.
Thanks.

lenny@pine64:~$ cd speech-dispatcher-0.8.8 
graphic 545 lenny@pine64:~/speech-dispatcher-0.8.8$ ls

aclocal.m4  config.guess  doc              Makefile.am  README.packagers
ANNOUNCE    config.h.in   FAQ              Makefile.in  README.style
AUTHORS     config.sub    git-version-gen  missing      README.translators
BUGS        configure     include          NEWS 
speech-dispatcher.pc.in graphic 733 build.sh    configure.ac  INSTALL 
po           split-version.sh

compile     COPYING       install-sh       py-compile   src 
graphic 186 config      depcomp       ltmain.sh        README       TODO 


