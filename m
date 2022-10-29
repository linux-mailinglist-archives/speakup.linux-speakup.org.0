Return-Path: <speakup+bounces-807-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BB43A611EB3
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 02:24:54 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4B4C63840E4; Fri, 28 Oct 2022 20:24:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 35543384035
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 20:24:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0ACFC384070; Fri, 28 Oct 2022 20:24:46 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0089.b.hostedemail.com [64.98.42.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id ED341384000
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 20:24:45 -0400 (EDT)
Received: from omf05.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay01.b.hostedemail.com (Postfix) with ESMTP id 2DD2A18AA14F2;
	Sat, 29 Oct 2022 00:24:45 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf05.b.hostedemail.com (Postfix) with ESMTPA id AC7FD18029850;
	Sat, 29 Oct 2022 00:24:44 +0000 (UTC)
Message-ID: <003b01d8eb2c$d89a7840$84ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: <speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com> <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net> <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM> <Y1xwn2kFZR5uVuI/@gregn.net>
Subject: Re: Installing Voxin
Date: Fri, 28 Oct 2022 19:24:43 -0500
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
X-Rspamd-Queue-Id: AC7FD18029850
X-Spam-Status: No, score=-2.55
X-Stat-Signature: g6id8sctf4dx7jeiufhf1rb7zh53q5pu
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19PkoBj1upex1KPj0PPlDh6GTjGiRzsx0c=
X-HE-Tag: 1667003084-104002
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, being impatient, I did run it before getting your message.
This time, I heard voxin in the test, and the sound played with alsa as the 
sound module.
But when I rebooted, spd-say test used espeak again.
And when I do spd-say -O it only lists espeak.
The voxin installs without a problem, but it does not get used.
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: <speakup@linux-speakup.org>; "Didier Spaier" <didier@slint.fr>
Sent: Friday, October 28, 2022 7:15 PM
Subject: Re: Installing Voxin


On Fri, Oct 28, 2022 at 07:02:41PM -0500, K0LNY_Glenn wrote:
> I hate to join another list, in the event that I go back to speakup.
> But I've gone through the whole speechd.conf, and I thought everything
> important pointed to voxin.
> But when I do
> spd-say -O
> it still says only espeak.

You said you purged speech-dispatcher, and installed it again
earlier. Since speech-dispatcher-voxin depends on speech-dispatcher,
that probably got purged too. So:

apt install speech-dispatcher-voxin

and make sure that in /etc/speech-dispatcher/speechd.conf you change

DefaultModule espeak-ng

to

DefaultModule voxin

> I did make backups of speechd.conf, so I wonder if spd-conf will mess it 
> up
> again, or not.

The spd-conf utility changes speechd.conf, so yes, it could mess it up.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org 


