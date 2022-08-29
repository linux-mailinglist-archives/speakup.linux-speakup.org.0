Return-Path: <speakup+bounces-724-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2FA075A4EFD
	for <lists+speakup@lfdr.de>; Mon, 29 Aug 2022 16:19:01 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EF93238476B; Mon, 29 Aug 2022 10:18:59 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DA35D380A4D
	for <lists+speakup@lfdr.de>; Mon, 29 Aug 2022 10:18:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D8EEF3809DF; Mon, 29 Aug 2022 10:18:54 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0059.b.hostedemail.com [64.98.42.59])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 8B670380995
	for <speakup@linux-speakup.org>; Mon, 29 Aug 2022 10:18:54 -0400 (EDT)
Received: from omf06.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id 94C85881289D;
	Mon, 29 Aug 2022 14:18:53 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf06.b.hostedemail.com (Postfix) with ESMTPA id 04D9989D4E34;
	Mon, 29 Aug 2022 14:18:52 +0000 (UTC)
Message-ID: <011301d8bbb2$44eb8c50$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"John Covici" <covici@ccs.covici.com>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <20220829141057.lfbqnbb7rni4hstp@begin>
Subject: Re: Debian With Speech Installer
Date: Mon, 29 Aug 2022 09:18:52 -0500
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
X-Spam-Status: No, score=-1.53
X-Stat-Signature: 331xtjqr4urt5o4y3phr33ees7ia57uq
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 04D9989D4E34
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/z6r3TMyd2EYqCbvQeHkd5Aq5rJKZZ+oA=
X-HE-Tag: 1661782732-157703
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks, as in a previous message, down arrowing 5 times worked, but neither 
just S or alt S as I tried that too, worked.
Glenn
----- Original Message ----- 
From: "Samuel Thibault" <samuel.thibault@aquilenet.fr>
To: "K0LNY_Glenn" <glenn@ervin.email>; "John Covici" <covici@ccs.covici.com>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Monday, August 29, 2022 9:10 AM
Subject: Re: Debian With Speech Installer


K0LNY_Glenn wrote:
> I thought it said press F11 for something on the first screen, and I'm
> wondering if anyone knows if S does work, or you know to arrow up or down 
> a
> certain number of times to get speech on this Debian installer.

As documented, s and pressing the enter key should work:

https://www.debian.org/releases/stable/amd64/ch05s02.en.html#idm1289

The wiki provides more details:

https://wiki.debian.org/accessibility#Debian_installer_accessibility

K0LNY_Glenn wrote:
> Well I did find on-line something that stated to arrow down 5 times, and
> that worked.

"5 times" will depend on the image being used. Where did you find this
information? It needs to be fixed: pressing s should "just work", and
alternatively, since it is made the last element of the menu, pressing
the end key then the enter key should work as well.

Samuel 


