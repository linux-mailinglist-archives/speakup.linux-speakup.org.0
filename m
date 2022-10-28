Return-Path: <speakup+bounces-797-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CC5DA6118DE
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 19:07:28 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 33D2B38405A; Fri, 28 Oct 2022 13:07:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1EF5C383FBB
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 13:07:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D77CD383FE3; Fri, 28 Oct 2022 13:07:22 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0097.b.hostedemail.com [64.98.42.97])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C758E383FBB
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 13:07:22 -0400 (EDT)
Received: from omf10.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay01.b.hostedemail.com (Postfix) with ESMTP id 1E73A18AD4E93;
	Fri, 28 Oct 2022 17:07:21 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf10.b.hostedemail.com (Postfix) with ESMTPA id 7FDA03FF2;
	Fri, 28 Oct 2022 17:07:20 +0000 (UTC)
Message-ID: <090701d8eaef$9a45f930$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Gregory Nowak" <greg@gregn.net>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com> <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM> <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com> <088501d8ea5e$9033f820$87ffa8c0@Win7VM> <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com> <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com>
Subject: Re: Installing Voxin
Date: Fri, 28 Oct 2022 12:06:20 -0500
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
X-Stat-Signature: bk9iyke443ffphc6t6jgtpi7kgptnm4c
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 7FDA03FF2
X-Spam-Status: No, score=-0.77
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19p+YsD2XTJwEwPKcAuvrideebvdPFpgSE=
X-HE-Tag: 1666976840-734492
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I installed fenrir from the repository, and now when I boot, I can silently 
log in  and run fenrir now, and I get the fenrir tone, but no TTS.
If I do spd-say test, that works.
The speaker-test still works, and when it boots, the crontab script that 
uses espeak-ng speaks the IP Address like it should.
So, what would be the best thing to look into for getting Fenrir to use 
Voxin?
Thanks.

Glenn
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Gregory Nowak" <greg@gregn.net>; "Speakup is a screen review system for 
Linux." <speakup@linux-speakup.org>
Sent: Friday, October 28, 2022 11:24 AM
Subject: Re: Installing Voxin


Hi Glen: Just guessing, unless you were to install a Debian package of 
Fenrir,
you could try putting a dot slash ahead of fenrir.
Chime



