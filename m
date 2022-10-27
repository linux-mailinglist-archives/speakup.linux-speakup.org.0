Return-Path: <speakup+bounces-777-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AC6806105E0
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 00:41:29 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 37FCF384038; Thu, 27 Oct 2022 18:41:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2361B383FEF
	for <lists+speakup@lfdr.de>; Thu, 27 Oct 2022 18:41:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DC6DA383FE6; Thu, 27 Oct 2022 18:41:23 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0014.b.hostedemail.com [64.98.42.14])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CB64C383FE0
	for <speakup@linux-speakup.org>; Thu, 27 Oct 2022 18:41:23 -0400 (EDT)
Received: from omf05.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay06.b.hostedemail.com (Postfix) with ESMTP id C27BF18BAD0C8;
	Thu, 27 Oct 2022 22:41:21 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf05.b.hostedemail.com (Postfix) with ESMTPA id 4F81C1803888E;
	Thu, 27 Oct 2022 22:41:21 +0000 (UTC)
Message-ID: <085b01d8ea55$190b4b80$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <082101d8ea38$0d104d70$87ffa8c0@Win7VM> <083301d8ea4e$aa578240$87ffa8c0@Win7VM> <32971cb4-513b-70e2-4371-fd1544adb848@hubert-humphrey.com>
Subject: Re: Installing Voxin
Date: Thu, 27 Oct 2022 17:40:20 -0500
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
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 4F81C1803888E
X-Spam-Status: No, score=-2.44
X-Stat-Signature: 4u5wfgfqrnguqj361keh3snybxd85t4f
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19XSx+nH37Xjrnl9vmEk5tLxDqNovvAAoA=
X-HE-Tag: 1666910481-901305
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

That is weird, I get the error
spd-conf
command not found
I installed speech-dispatcher, and the voxin-installer for 2.2 doesn't 
report it not being there.
Are there some speech-dispatcher utilities that need to be installed?
Thanks.

----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Thursday, October 27, 2022 5:16 PM
Subject: Re: Installing Voxin


Hi Glen-and-All: I have sure had alot of challenges getting Voxin working,
however, try-and-type
spd-conf
When you answer its questions, backspace over espeak and type voxin. It will
say you need to correct your answer. Say "no" Many of those values you can 
just
accept the defaults. My version of spd-conf is 0.11.3  but I am in Debian 
SID.
Also, you know, after running an installer for voxin, it will usually take
affect after a reboot. Hope all of that helps alot.
Chime



