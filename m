Return-Path: <speakup+bounces-821-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BEF886126F5
	for <lists+speakup@lfdr.de>; Sun, 30 Oct 2022 03:53:58 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 43D8D3840B5; Sat, 29 Oct 2022 22:53:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2F1DD384000
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 22:53:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0AAF4384008; Sat, 29 Oct 2022 22:53:53 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0250.b.hostedemail.com [64.98.42.250])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EF457383FFB
	for <speakup@linux-speakup.org>; Sat, 29 Oct 2022 22:53:52 -0400 (EDT)
Received: from omf02.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay06.b.hostedemail.com (Postfix) with ESMTP id 7405018BB7C50;
	Sun, 30 Oct 2022 02:53:52 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf02.b.hostedemail.com (Postfix) with ESMTPA id D3C2F8B42EAC;
	Sun, 30 Oct 2022 02:53:51 +0000 (UTC)
Message-ID: <018c01d8ec0a$d8073a10$84ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Chime Hart" <chime@hubert-humphrey.com>,
	<speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com> <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net> <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM> <6178c7b1-35b5-c47e-65c6-4a6dcddbeb25@hubert-humphrey.com> <007301d8ebb1$1e99bc00$84ffa8c0@Win7VM> <Y13jtw4aw29Oy7p4@gregn.net>
Subject: Re: Installing Voxin
Date: Sat, 29 Oct 2022 21:53:51 -0500
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
X-Stat-Signature: 37pxckwmpotaeysxpj496qroernfjrwo
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: D3C2F8B42EAC
X-Spam-Status: No, score=-2.57
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/GotIej00DuXZW1FjwZpdGsmO0a4Xmi4Q=
X-HE-Tag: 1667098431-717905
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Can you tell me where to set the speakup settings?
Like rate and pitch, so I don't have to reset them every time I boot up?
Thanks
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


