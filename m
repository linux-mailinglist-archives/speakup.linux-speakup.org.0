Return-Path: <speakup+bounces-795-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 14A85611763
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 18:19:33 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2DFC738404A; Fri, 28 Oct 2022 12:19:31 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 18BEC383FD8
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 12:19:31 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C179C383FDC; Fri, 28 Oct 2022 12:19:25 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0071.b.hostedemail.com [64.98.42.71])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AFE63383FB8
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 12:19:25 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 99ED08064A0D;
	Fri, 28 Oct 2022 16:19:24 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id F1867BCE695;
	Fri, 28 Oct 2022 16:19:23 +0000 (UTC)
Message-ID: <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Chime Hart" <chime@hubert-humphrey.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com> <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM> <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com> <088501d8ea5e$9033f820$87ffa8c0@Win7VM> <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com> <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net>
Subject: Re: Installing Voxin
Date: Fri, 28 Oct 2022 11:18:23 -0500
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
X-Stat-Signature: xttsynnhjjnx98bqwnan3wyik9gnz9gf
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: F1867BCE695
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19LbjSJIs+DvmmBOayiCsUt6WAqjFOjZzM=
X-HE-Tag: 1666973963-601217
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, I purged speech-dispatcher, and installed it again for a clean 
speechd.conf file.
I backed up the original one, something I didn't do before I ran spd-conf 
before.
I edited it manually as you suggested.
speaker-test works now, and voxin-2.2 should still be installed.
I don't know if there was a newer Voxin 2X than 2.2, but that is what I 
found in storage.
I'd like to get fenrir going.
The latest I have is 1.9.7.1 and I ran the install.sh file and it had no 
errors, but when I run sudo fenrir, the computer freezes.
Anyone know what is up with that?
Thanks for any help.

Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Chime Hart" <chime@hubert-humphrey.com>; "Speakup is a screen review 
system for Linux." <speakup@linux-speakup.org>
Sent: Thursday, October 27, 2022 10:47 PM
Subject: Re: Installing Voxin


I don't use voxin, but:

1. If you can do this over an ssh connection, I think that would be
better. You need to:

a. apt purge espeakup

b. apt install speechd-up speech-dispatcher-voxin

2. Instead of messing with spd-conf, I just edit
/etc/speech-dispatcher/speechd.conf by hand to make changes. That way,
I know exactly what is being configured. So:

Find the line that says:

DefaultModule espeak-ng

and change it to say:

DefaultModule voxin

Save that file, and:

killall speech-dispatcher

To make sure speech-dispatcher actually restarts, I just reboot
instead of killall.

Greg


On Thu, Oct 27, 2022 at 07:53:49PM -0500, K0LNY_Glenn wrote:
> Hi Chime and All,
> Let's see,
> spd-say -O
> came back with
> output module is espeak-ng
> and spd-say -L
> failed to get voice list
>
> Thanks.
>


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org


