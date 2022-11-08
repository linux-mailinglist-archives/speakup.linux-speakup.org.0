Return-Path: <speakup+bounces-850-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C06B2620796
	for <lists+speakup@lfdr.de>; Tue,  8 Nov 2022 04:37:45 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DADFD383660; Mon,  7 Nov 2022 22:37:44 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C64CB383628
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 22:37:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 200163835FF; Mon,  7 Nov 2022 22:37:40 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0163.b.hostedemail.com [64.98.42.163])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0FCF63835F7
	for <speakup@linux-speakup.org>; Mon,  7 Nov 2022 22:37:40 -0500 (EST)
Received: from omf06.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id 70F5F8EE8623;
	Tue,  8 Nov 2022 03:37:39 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf06.b.hostedemail.com (Postfix) with ESMTPA id AAF6B8EE78C4;
	Tue,  8 Nov 2022 03:37:38 +0000 (UTC)
Message-ID: <0e0101d8f323$7493d540$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "K0LNY_Glenn" <glenn@ervin.email>,
	"Gregory Nowak" <greg@gregn.net>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM> <08a901d8efbc$33020490$80ffa8c0@Win7VM> <Y2RSm7hG8WHdiygs@gregn.net> <0b4101d8f063$69069fe0$80ffa8c0@Win7VM> <Y2XF6wmcbFCsq5l/@gregn.net> <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM> <Y2XV2QOPjryMKRJv@gregn.net> <0c3801d8f145$e2eb2b90$80ffa8c0@Win7VM> <Y2h53YPr311PDObk@gregn.net> <0d4001d8f25b$b873c450$80ffa8c0@Win7VM> <Y2mVfR5AnGTOs9Sm@gregn.net> <0dec01d8f321$3d253ab0$80ffa8c0@Win7VM>
Subject: Re: Voxin/ibmtts with eSpeakup
Date: Mon, 7 Nov 2022 21:37:37 -0600
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
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: AAF6B8EE78C4
X-Spam-Status: No, score=-2.60
X-Stat-Signature: 43z9bgemz8t7iknhcseypjtb36g4t83p
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/Loc+F4UBUVq8BI089Xra2/n7YOxsq5Kk=
X-HE-Tag: 1667878658-433367
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well I wrote too soon.
I rebooted a second time, to see if those very slow voxin errors would 
happen again, and espeak loaded with espeak, something about an error with 
something, I wasn't able to review the screen.
Maybe that is in the speech-dispatcher or IBMTTS or Voxin logs.
Glenn
----- Original Message ----- 
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen 
review system for Linux." <speakup@linux-speakup.org>
Sent: Monday, November 07, 2022 9:21 PM
Subject: Re: Voxin/ibmtts with eSpeakup


Hi Greg,
Well, so far so good, only I still get about twenty very slow speaking Voxin
voice errors on bootup, spoken with Voxin , the message is:

failed
failed to load voxin speech module.

But the voxin voice spoke correctly with the speakupconf load settings
loaded after that, and voxin sounds normal, and except for that annoying
slow load up error, it is now working in speakup.
So making the /home/lenny/.config/speech-dispatcher/modules directory and
putting voxin.conf there seems to fixed things.
Glenn

----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen
review system for Linux." <speakup@linux-speakup.org>
Sent: Monday, November 07, 2022 5:32 PM
Subject: Re: Voxin/ibmtts with eSpeakup


In your speech-dispatcher.log, I see this:

[Sun Nov  6 21:34:35 2022 : 781132] speechd:  Initializing output
module voxin
+with binary /usr/lib/speech-dispatcher-modules/sd_voxin and
configuration
+/home/lenny/.config/speech-dispatcher/modules/voxin.conf
[Sun Nov  6 21:34:35 2022 : 781180] speechd:   Output module is
logging to file
+/run/user/1000/speech-dispatcher/log//voxin.log
[Sun Nov  6 21:34:35 2022 : 782083] speechd:  Module voxin loaded.
[Sun Nov  6 21:34:35 2022 : 783321] speechd: Exec of module
+"/usr/lib/speech-dispatcher-modules/sd_voxin" with config
+"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed
with error 2:+No such file or directory
[Sun Nov  6 21:34:35 2022 : 784208] speechd: ERROR: Bad syntax from
output
+module voxin 1

It looks like you're running speech-dispatcher with per user
configuration instead of system wide. That's something I haven't done,
and don't have experience with. My best suggestion is to copy your
system wide voxin.conf into lenny's configuration directory:

mkdir -p /home/lenny/.config/speech-dispatcher/modules
cp /etc/speech-dispatcher/modules/voxin.conf
/home/lenny/.config/speech-dispatcher/modules/
chown lenny.lenny
/home/lenny/.config/speech-dispatcher/modules/voxin.conf

Reboot, and see if you get speech. If you don't, you should now at
least have a voxin.log file which should help pin down other problems.

Greg


On Sun, Nov 06, 2022 at 09:47:54PM -0600, K0LNY_Glenn wrote:
> Here are two files from 1000/speech-dispatcher/log
> The voxin log is empty.
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



