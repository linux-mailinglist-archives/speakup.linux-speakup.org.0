Return-Path: <speakup+bounces-875-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1E25D641AA4
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 04:55:56 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 99F81382AA7; Sat,  3 Dec 2022 22:55:55 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 86B50382A3F
	for <lists+speakup@lfdr.de>; Sat,  3 Dec 2022 22:55:55 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8F018382A41; Sat,  3 Dec 2022 22:55:50 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0140.b.hostedemail.com [64.98.42.140])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7DF0B382A3E
	for <speakup@linux-speakup.org>; Sat,  3 Dec 2022 22:55:50 -0500 (EST)
Received: from omf05.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay01.b.hostedemail.com (Postfix) with ESMTP id E6EA418B58DF9;
	Sun,  4 Dec 2022 03:55:49 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf05.b.hostedemail.com (Postfix) with ESMTPA id 70E5418035128;
	Sun,  4 Dec 2022 03:55:49 +0000 (UTC)
Message-ID: <017701d90794$4d7619c0$88ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM> <Y4wZa/0WtgPE3nyH@gregn.net>
Subject: Re: change eSpeak Default Voice
Date: Sat, 3 Dec 2022 21:55:50 -0600
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
X-Rspamd-Queue-Id: 70E5418035128
X-Spam-Status: No, score=-2.58
X-Stat-Signature: k7rwdpiyusd1o17fh4atiszarrgmgegg
X-Rspamd-Server: rspamout03
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18TBG4i++jwCGRN2F6ZY5UXaN4g3bA/AhU=
X-HE-Tag: 1670126149-553754
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks Gregory,
Is there a .conf file, and do you have any idea if there are voices in there 
to uncomment, or if it is done another way?
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." 
<speakup@linux-speakup.org>
Sent: Saturday, December 03, 2022 9:52 PM
Subject: Re: change eSpeak Default Voice


Depends on the front-end being used to drive espeak. If using espeakup,
the change would be in /etc/default/espeakup on debian and
derivatives. I don't know about other distributions like arch and
fedora.

If using speech-dispatcher, you would change the DefaultVoiceType
parameter in /etc/speech-dispatcher/speechd.conf.

Greg


On Sat, Dec 03, 2022 at 01:27:49PM -0600, K0LNY_Glenn wrote:
> Hi,
> Is there a conf file or something where I can change the default voice of
> eSpeak?
> So if I did something like:
> espeak "this is a test"
> it would use the default voice of another eSpeak voice?
> I changed it in Orca, so I'm wondering if it can be changed at this level.
> Thanks.
>
> Glenn
>
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


