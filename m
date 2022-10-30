Return-Path: <speakup+bounces-819-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C6A736126F3
	for <lists+speakup@lfdr.de>; Sun, 30 Oct 2022 03:45:33 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 603E63840AA; Sat, 29 Oct 2022 22:45:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4BAFE383FF4
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 22:45:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 34E84384000; Sat, 29 Oct 2022 22:45:28 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0015.b.hostedemail.com [64.98.42.15])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 18D41383FF4
	for <speakup@linux-speakup.org>; Sat, 29 Oct 2022 22:45:28 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 8233E801E94C;
	Sun, 30 Oct 2022 02:45:27 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id E8736BD6771;
	Sun, 30 Oct 2022 02:45:26 +0000 (UTC)
Message-ID: <018201d8ec09$ab0c4b00$84ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Chime Hart" <chime@hubert-humphrey.com>,
	<speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com> <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net> <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM> <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com> <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM> <Y13jtw4aw29Oy7p4@gregn.net>
Subject: Re: Installing Voxin
Date: Sat, 29 Oct 2022 21:45:26 -0500
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
X-Stat-Signature: kxcjk8xgac4ox57b1ei68fdz5nrbahek
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: E8736BD6771
X-Spam-Status: No, score=-2.59
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX187vZYmiuaW9ciHqKXq0B2PfLTrybOviGY=
X-HE-Tag: 1667097926-199081
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Greg,
I got a message yesterday, or the day before, I think it was on another 
list, about my Voxin installation issue, and the reply stated:
According to https://packages.debian.org/bullseye/python3-speechd
spd-conf is provided in the package python3-speechd.


I'm not sure any more, but Maybe I got this because speechd-up was not in 
the Debian repository.
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Chime Hart" <chime@hubert-humphrey.com>; <speakup@linux-speakup.org>; 
"Didier Spaier" <didier@slint.fr>
Sent: Saturday, October 29, 2022 9:38 PM
Subject: Re: Installing Voxin


On Sat, Oct 29, 2022 at 11:11:34AM -0500, K0LNY_Glenn wrote:
> Good morning All,
> At least it still is here.
> So I'm wondering, will speakup use Voxin?
> Seems like there is a way to launch it with a software synth.

It should. Install speechd-up, and that will interface speakup to
speech-dispatcher. That will in turn use whatever speech-dispatcher is
configured to use.

> Also, I don't recall how to launch speakup, it was working before I tried
> Fenrir.

apt install espeakup

That will use espeak directly, without requiring speech-dispatcher.

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


