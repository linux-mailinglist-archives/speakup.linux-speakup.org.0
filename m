Return-Path: <speakup+bounces-607-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9E17A59F185
	for <lists+speakup@lfdr.de>; Wed, 24 Aug 2022 04:52:32 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C1C9B3809DB; Tue, 23 Aug 2022 22:52:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AD1B83807BC
	for <lists+speakup@lfdr.de>; Tue, 23 Aug 2022 22:52:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BA8B83807E9; Tue, 23 Aug 2022 22:52:26 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0032.b.hostedemail.com [64.98.42.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A9775380175
	for <speakup@linux-speakup.org>; Tue, 23 Aug 2022 22:52:26 -0400 (EDT)
Received: from omf13.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id E1FB38A8CA6E
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 02:52:24 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf13.b.hostedemail.com (Postfix) with ESMTPA id 81CBD80024E7
	for <speakup@linux-speakup.org>; Wed, 24 Aug 2022 02:52:24 +0000 (UTC)
Message-ID: <005b01d8b764$65f690e0$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: hopefully some help with AntiX
Date: Tue, 23 Aug 2022 21:51:23 -0500
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
X-Spam-Status: No, score=-2.18
X-Stat-Signature: itgsppzn9e38tam5udstsgjanca63c4x
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 81CBD80024E7
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/ffdbgZxHQZd5ulU1+cPQpnns7nFho5wo=
X-HE-Tag: 1661309544-713235
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,
So I successfully got a live version of AntiX 19.5 base 386 on my Asus701
I am having trouble getting in with SSH.
When I do speaker test on the actual netbook, it works, so I know the audio 
works.
Neither espeak test, or espeak-ng test, worked.
It is Debian based, so I did apt update and most of the following things, I 
tried both with sudo and without.
On the computer trying to get in, it tells me connection refused.
It is on the network as antix1
Everything I read on-line suggest it should have openssh installed, but I 
ran the apt install for openssh-server -y just in case.
I tried systemctl start openssh
and I tried system restart openssh
I guess it is possible espeak-NG may not be in its repository.
Then espeeakup wouldn't be there either.
If I had speakup going on the AntiX, or an SSH connection, I could start 
getting it going.

Anyone have any ideas for this?
This would be good on the Asus 701, it's using Buster, which isn't that 
old.Thanks for any assistance.

Glenn 


