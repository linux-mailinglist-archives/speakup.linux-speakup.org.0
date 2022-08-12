Return-Path: <speakup+bounces-506-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B71C9591632
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 22:21:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 77090384789; Fri, 12 Aug 2022 16:21:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6158F381900
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 16:21:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0B42E381900; Fri, 12 Aug 2022 16:21:41 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0232.b.hostedemail.com [64.98.42.232])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EDDB738095E
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 16:21:40 -0400 (EDT)
Received: from omf12.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 10AE21003866C
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 20:21:40 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf12.b.hostedemail.com (Postfix) with ESMTPA id 9F2741807016F
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 20:21:39 +0000 (UTC)
Message-ID: <021801d8ae89$220560c0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: getting audio for Orca and Speakup or Fenrir
Date: Fri, 12 Aug 2022 15:21:40 -0500
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
X-Stat-Signature: m9x1g8y4ceg4obocmmksj8bhizq7u5wu
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 9F2741807016F
X-Spam-Status: No, score=-2.57
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/0hfk2QfOwgo47c6JyRS53o1paiGH4RPI=
X-HE-Tag: 1660335699-781247
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi All,
I have a Pine64 board with 2 GB of RAM.
I installed Armbian Bull'seye on a 32 GB card.
I erased the image I did yesterday and started over.
I have been able to SSH into it, as root with a password of 1234
It keeps wanting me to create a new PW when I log in, but I enter like three
times, and I'm back at the prompt as root.
So I installed espeak-ng, and speech-dispatcher, and I get no audio.
I installed mate-desktop-environment, and xinit and a couple xserver-xorg
items, including video-dummy.
I don't know if I should yet try installing Orca, since I don't know if it
is booting to the desktop.
Maybe it isn't logging with the keyboard.
When I ran x-session-manager it told me that there is no choice, that mate
is the only option.
speaker-test via SSH as well as espeak-ng test does not produce any audio,
that usually works.
I ran alsactl init and it seemed to identify the card for the board, but
still no audio.
I'm hoping someone here has some other ideas I can try.
Thanks.

Glenn


