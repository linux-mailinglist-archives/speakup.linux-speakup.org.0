Return-Path: <speakup+bounces-800-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C9ABA611C45
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 23:13:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0199E384074; Fri, 28 Oct 2022 17:13:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E0264384008
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 17:13:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA337384017; Fri, 28 Oct 2022 17:13:45 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0225.b.hostedemail.com [64.98.42.225])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9806E384000
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 17:13:45 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay01.b.hostedemail.com (Postfix) with ESMTP id BFFFF18AAB3E7;
	Fri, 28 Oct 2022 21:13:44 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id 464BFBC7A0E;
	Fri, 28 Oct 2022 21:13:44 +0000 (UTC)
Message-ID: <096901d8eb12$060be090$87ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: <speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <d06e087d-7752-f42e-25ff-d2e736b5ed3b@hubert-humphrey.com> <086601d8ea59$9bd758c0$87ffa8c0@Win7VM> <ebac52ac-209b-686e-ad06-d743658cc6cb@hubert-humphrey.com> <087e01d8ea5c$c01349d0$87ffa8c0@Win7VM> <5a70be54-54a6-fd05-d02f-7fdc5a24d691@hubert-humphrey.com> <088501d8ea5e$9033f820$87ffa8c0@Win7VM> <ce900000-695c-23de-19f0-6bb50e7fcd25@hubert-humphrey.com> <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com> <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr>
Subject: Re: Installing Voxin
Date: Fri, 28 Oct 2022 16:12:43 -0500
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
	charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Stat-Signature: zgws4cmt6fchd91ccoygznjg49pguk33
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 464BFBC7A0E
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18wOunHp2Pxl0/osWRi6ZwIHx05tvs5KgY=
X-HE-Tag: 1666991624-354452
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi again All,
I'm hoping someone has some suggestions,
On my Debian Bullseye 32 bit, I installed Fenrir and if I run it without 
sudo, it loads with no TTS, but the fenrir sound affects work.
So I unload it and run it with sudo, and it speaks, but I get a lot of 
errors relating to audio, like alsa lib and
"jack server is not running or cannot be started"
and it really does not work after that, except when it does, it says the 
same bunch of error messages.
So it seems like it is close to working, but any suggestions are 
appreciated.

Glenn
----- Original Message ----- 
From: "Didier Spaier" <didier@slint.fr>
To: <speakup@linux-speakup.org>
Sent: Friday, October 28, 2022 2:42 PM
Subject: Re: Installing Voxin


The fenrir settings live in:
/etc/fenrirscreenreader/settings/settings.conf

The config file in GitHub is here:
https://github.com/chrys87/fenrir/blob/master/config/settings/settings.conf
I have added some comments to this file maybe this can helps:
https://slackware.uk/slint/x86_64/slint-15.0/source/fenrir/settings.conf

Other than that, I suggest that you post your question in the stoomux 
mailing
list: stormux@groups.io

Cheers,
Didier


Le 28/10/2022 à 17:06, K0LNY_Glenn a écrit :
> I installed fenrir from the repository, and now when I boot, I can 
> silently
> log in  and run fenrir now, and I get the fenrir tone, but no TTS.
> If I do spd-say test, that works.
> The speaker-test still works, and when it boots, the crontab script that
> uses espeak-ng speaks the IP Address like it should.
> So, what would be the best thing to look into for getting Fenrir to use
> Voxin?
> Thanks.
>
> Glenn
> ----- Original Message ----- 
> From: "Chime Hart" <chime@hubert-humphrey.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>
> Cc: "Gregory Nowak" <greg@gregn.net>; "Speakup is a screen review system 
> for
> Linux." <speakup@linux-speakup.org>
> Sent: Friday, October 28, 2022 11:24 AM
> Subject: Re: Installing Voxin
>
>
> Hi Glen: Just guessing, unless you were to install a Debian package of
> Fenrir,
> you could try putting a dot slash ahead of fenrir.
> Chime
>
>
>


