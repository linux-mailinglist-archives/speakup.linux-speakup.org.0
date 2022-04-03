Return-Path: <speakup+bounces-382-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6BD324F0C78
	for <lists+speakup@lfdr.de>; Sun,  3 Apr 2022 22:12:14 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0585B380D3D; Sun,  3 Apr 2022 16:12:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E458238094F
	for <lists+speakup@lfdr.de>; Sun,  3 Apr 2022 16:12:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F0593380932; Sun,  3 Apr 2022 16:12:08 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0054.b.hostedemail.com [64.98.42.54])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DEB963807F4
	for <speakup@linux-speakup.org>; Sun,  3 Apr 2022 16:12:08 -0400 (EDT)
Received: from omf02.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay01.b.hostedemail.com (Postfix) with ESMTP id 3358D18481BDA;
	Sun,  3 Apr 2022 20:12:08 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf02.b.hostedemail.com (Postfix) with ESMTPA id 9BB278526410;
	Sun,  3 Apr 2022 20:12:07 +0000 (UTC)
Message-ID: <090801d84797$17aac150$81ffa8c0@WIN40RPKAT965G>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>,
	<speakup@linux-speakup.org>
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
Subject: Re: How Can I Switch Synthesizers on the Fly?
Date: Sun, 3 Apr 2022 15:12:05 -0500
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
X-Spam-Status: No, score=0.11
X-Stat-Signature: 7bmz1cmztqiaqjmhfgmjjezcc1wjnncq
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 9BB278526410
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX192XRYQOki4cWImnfZtYJpTqm2SMedVHwI=
X-HE-Tag: 1649016727-456828
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I'm using raspberrypi's latest image on an RPI Zero.
I'm looking in:
/etc/speech-dispatcher/speechd.conf
and the default synth is
espeak-ng
Above that line, it says you must use one of the names added with AddModule.
I don't find any other names even though I ran the Voxin-installer.sh for 
Evan.
Seems like this is how to get it going.
spd-say still uses espeak for me.
Glenn
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: <speakup@linux-speakup.org>
Sent: Sunday, April 03, 2022 2:36 PM
Subject: How Can I Switch Synthesizers on the Fly?


Hi All: I've asked others in other forums such as Slint-and-Debian
Accessibility, but so far I am striking out. I have a DecTalk U S B, but 
last
year I purchased some hi quality voices from Oralux, which are software 
speech.
When I have Allison installed, I can send her text through spd-say. Making
matters more complex, speech-dispatcher will not seem to install on this 
Debian
Sid machine. Guidance I've received from 2 sources, says I must install and
have espeak talking before I can switch to Allison, which is an embedded 
voice.
When I was running Slint on a laptop, Didier had created a talk-with command 
to
easily switch synths, but his script would need to be re written for Debian. 
In
addition,
if I unload the DecTalk module, I won't have speech, or would their be a way 
of
having both DecTalk and software speech at the same time? So, can some1 
please
provide exact commands I can switch synths on the fly? I ran a locate for
softsynth  but nothing found. Thanks so much in advance
Chime


