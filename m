Return-Path: <speakup+bounces-817-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id CAE1561258D
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 23:26:24 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BED473840AE; Sat, 29 Oct 2022 17:26:23 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A9CE4383FDA
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 17:26:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8E3B8383FEB; Sat, 29 Oct 2022 17:26:18 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0207.b.hostedemail.com [64.98.42.207])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7B213383FDA
	for <speakup@linux-speakup.org>; Sat, 29 Oct 2022 17:26:18 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id 93E981003974C;
	Sat, 29 Oct 2022 21:26:17 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id D15F5BD04FA;
	Sat, 29 Oct 2022 21:26:16 +0000 (UTC)
Message-ID: <00ce01d8ebdd$14c87190$84ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "K0LNY_Glenn" <glenn@ervin.email>,
	"Chime Hart" <chime@hubert-humphrey.com>
Cc: "Gregory Nowak" <greg@gregn.net>,
	<speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com> <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net> <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM> <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com> <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM> <62e3adc6-08c3-7df8-75e0-93a67a4b562a@hubert-humphrey.com> <007a01d8ebb3$01d52990$84ffa8c0@Win7VM> <ed3afead-d02f-1758-bb2c-4a454e2ecfc1@hubert-humphrey.com> <009d01d8ebc1$bfcf77d0$84ffa8c0@Win7VM> <7cb6fde6-471d-b408-61bb-4e9c6a122b03@hubert-humphrey.com> <00b401d8ebd3$3c5c2c10$84ffa8c0@Win7VM> <00bb01d8ebd7$e2239b70$84ffa8c0@Win7VM>
Subject: Re: Installing Voxin
Date: Sat, 29 Oct 2022 16:26:16 -0500
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
X-Stat-Signature: uu41fg1je7emuzuzr6x7j5ng591w6736
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: D15F5BD04FA
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19Q+9k7iMV9wzKLJqkbfHRn6UFBYawpJIo=
X-HE-Tag: 1667078776-477076
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well in running spd-say -O again, I noticed more specifically, the module 
for speech-dispatcher was espeak-ng.
So I tried
espeak-ng test
and it didn't work, bad command.
So I did apt install espeak-ng and it installed.
Then espeak-ng test worked.
But speakup still does not work, I also rebooted.
Interesting how spd-say spoke using just espeak, when the -O said that 
espeak-ng was the module in use, but it was not installed.
But still no speakup.
Is there a speakup.conf file somewhere where I can specify the TTS?
Glenn
----- Original Message ----- 
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "K0LNY_Glenn" <glenn@ervin.email>; "Chime Hart" 
<chime@hubert-humphrey.com>
Cc: "Gregory Nowak" <greg@gregn.net>; <speakup@linux-speakup.org>; "Didier 
Spaier" <didier@slint.fr>
Sent: Saturday, October 29, 2022 3:49 PM
Subject: Re: Installing Voxin


Still just trying to get speakup to work again, it used to work until I
started trying to get Voxin to work.
But I found this page:
http://linux-speakup.org/pipermail/speakup/2013-October/058386.html

which suggests the following:
Debian based distros start speakup/espeakup at boot. So, you don't
need to edit boot scripts to make that happen. First put this line in
/etc/modules

speakup_soft

which will load speakup's software speech module. If you don't want to
reboot, you can simply load it by hand the first time by running the
command:

modprobe speakup_soft

You won't need to do that after subsequent reboots since the
speakup_soft module will be loaded for you when the system boots.
* end of page copy
But neither reboot nor the command brings up speakup.
Even though speakup did work before, that line was not in /etc/modules until
I just now put it there.
Hope someone has some ideas, spd-say works with espeak, but not Voxin, and I
can do espeak test and it works.
Glenn

----- Original Message ----- 
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Chime Hart" <chime@hubert-humphrey.com>
Cc: "Gregory Nowak" <greg@gregn.net>; <speakup@linux-speakup.org>; "Didier
Spaier" <didier@slint.fr>
Sent: Saturday, October 29, 2022 3:15 PM
Subject: Re: Installing Voxin


Hmm,
Not sure what to try now.
I have tried
sudo modprobe speakup
sudo modprobe speakup_soft
and
sudo speakup_soft
and nothing works, but I don't get an error either.
It just returns on sudo modprobe speakup
Not sure what to do now.
spd-say is still using espeak, so it should at least run with espeak.
Glenn
----- Original Message ----- 
From: "Chime Hart" <chime@hubert-humphrey.com>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Gregory Nowak" <greg@gregn.net>; <speakup@linux-speakup.org>; "Didier
Spaier" <didier@slint.fr>
Sent: Saturday, October 29, 2022 1:30 PM
Subject: Re: Installing Voxin


Hi Glen: I agree, that would be nice, but I think its
sudo modprobe speakup
Chime




