Return-Path: <speakup+bounces-726-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0D19C5A5300
	for <lists+speakup@lfdr.de>; Mon, 29 Aug 2022 19:21:23 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1DAB0380A89; Mon, 29 Aug 2022 13:21:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0809638098A
	for <lists+speakup@lfdr.de>; Mon, 29 Aug 2022 13:21:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 11727380995; Mon, 29 Aug 2022 13:21:07 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0061.b.hostedemail.com [64.98.42.61])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EFB2D380986
	for <speakup@linux-speakup.org>; Mon, 29 Aug 2022 13:21:06 -0400 (EDT)
Received: from omf05.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id EB595100334E9
	for <speakup@linux-speakup.org>; Mon, 29 Aug 2022 17:20:55 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf05.b.hostedemail.com (Postfix) with ESMTPA id 94B4918020492
	for <speakup@linux-speakup.org>; Mon, 29 Aug 2022 17:20:55 +0000 (UTC)
Message-ID: <014f01d8bbcb$b33a5790$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Debian Packages
Date: Mon, 29 Aug 2022 12:20:55 -0500
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
X-Spam-Status: No, score=-2.58
X-Stat-Signature: h86wc7pnwr1qfh75m8yi34younpsetdk
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 94B4918020492
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19fMgFzlzLacca8fXwXJKrr04K9hLivTX4=
X-HE-Tag: 1661793655-521795
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi All,
I'm running Debian 11.04 on the Asus 701 with speakup & espeak.
I wanted to see if I can get Voxin installed, so I put the .deb file on a 
USB drive, and I thought it would show up in /media, but the only thing 
there is cdrom, and nothing is in there.
During the install, I did the base install, because I wasn't sure if the 4GB 
internal storage would hold the Mate desktop, so I'm working in the CLI.
I didn't find anything in /mnt either.
So I did fdisk -l and it did not recognize the command.
So I tried sudo fdisk -l and it did not know the command sudo.
So I tried just su and it wanted root's password, and I was root.
But it still did not recognize fdisk.
Now, during the install, one option was install ssh-server, that was #11, 
and #12 was common system tools, and I thought I would get those choices 
again after installing ssh-server, but they were never presented again.
Question, without reinstalling again, is there a way to get the common 
system tools installed?
I did apt update as root.
Thanks.

Glenn 


