Return-Path: <speakup+bounces-804-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BB1BC611E8E
	for <lists+speakup@lfdr.de>; Sat, 29 Oct 2022 02:02:49 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 369E7384091; Fri, 28 Oct 2022 20:02:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1F1CD384064
	for <lists+speakup@lfdr.de>; Fri, 28 Oct 2022 20:02:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E70AD38406D; Fri, 28 Oct 2022 20:02:43 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0157.b.hostedemail.com [64.98.42.157])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D430C384054
	for <speakup@linux-speakup.org>; Fri, 28 Oct 2022 20:02:43 -0400 (EDT)
Received: from omf09.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay02.b.hostedemail.com (Postfix) with ESMTP id 1EE7B802696E;
	Sat, 29 Oct 2022 00:02:43 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf09.b.hostedemail.com (Postfix) with ESMTPA id 8765DBCDE81;
	Sat, 29 Oct 2022 00:02:42 +0000 (UTC)
Message-ID: <002b01d8eb29$c48a8af0$84ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: <speakup@linux-speakup.org>,
	"Didier Spaier" <didier@slint.fr>
References: <089101d8ea60$a48a59c0$87ffa8c0@Win7VM> <53a80b58-5be4-63ee-ab32-9b7bd469f522@hubert-humphrey.com> <089c01d8ea67$be809ae0$87ffa8c0@Win7VM> <Y1tQ09YHFIMW5W2P@gregn.net> <08ed01d8eae8$e7bbdab0$87ffa8c0@Win7VM> <153ebfb0-180b-a4b8-0027-857f22df878e@hubert-humphrey.com> <090701d8eaef$9a45f930$87ffa8c0@Win7VM> <082beb13-bca6-f001-6b28-8a2e14ad7b25@slint.fr> <096901d8eb12$060be090$87ffa8c0@Win7VM> <098901d8eb16$fcddc5b0$87ffa8c0@Win7VM> <Y1xm3HAleBaLGGnk@gregn.net>
Subject: Re: Installing Voxin
Date: Fri, 28 Oct 2022 19:02:41 -0500
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
X-Stat-Signature: th4ddkf1a6j8nred6pr6a5ezubqa8ro3
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 8765DBCDE81
X-Spam-Status: No, score=-2.60
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX18+oViEOv1JP3FUn+oQpv2MOXk+zYuYxKE=
X-HE-Tag: 1667001762-316209
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I hate to join another list, in the event that I go back to speakup.
But I've gone through the whole speechd.conf, and I thought everything 
important pointed to voxin.
But when I do
spd-say -O
it still says only espeak.
I did make backups of speechd.conf, so I wonder if spd-conf will mess it up 
again, or not.
Glenn
----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: <speakup@linux-speakup.org>; "Didier Spaier" <didier@slint.fr>
Sent: Friday, October 28, 2022 6:33 PM
Subject: Re: Installing Voxin


As has already been suggested, you need to go through the
configuration file where fenrir stores its settings, and set it up to
use speech-dispatcher for speech output if you want to use it with
voxin. I'm not a fenrir user, so can't help you beyond that. If you
start a new thread, others who can help you may notice it, if they're
skipping over this one. Better yet, take this to the fenrir group as
has also been suggested, you will probably get more help there. From the 
output you provided, it looks like
fenrir is trying every possible output system in order except
speech-dispatcher, and failing, but I don't know why.

Greg


On Fri, Oct 28, 2022 at 04:48:15PM -0500, K0LNY_Glenn wrote:
> Here's the message that comes up if I run sudo fenrir:
> If anyone can provide any direction from the error, I would very much
> appreciate it.
> Glenn
>
> lenny@asus701:~$ sudo fenrir
> graphic 192 play WARN alsa:
> can't encode 0-bit Unknown or not applicable
> ALSA lib pcm.c:2660:(snd_pcm_open_noupdate) Unknown PCM cards.pcm.rear
> ALSA lib pcm.c:2660:(snd_pcm_open_noupdate) Unknown PCM 
> cards.pcm.center_lfe
> graphic 545 ALSA lib pcm.c:2660:(snd_pcm_open_noupdate)
> Unknown PCM cards.pcm.side
> ALSA lib pcm_route.c:877:(find_matching_chmap) Found no matching channel 
> map
> Cannot connect to server socket err = No such file or directory
> Cannot connect to server request channel
> jack server is not running or cannot be started
> JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping
> unlock                                             graphic 545
> JackShmReadWritePtr::~JackShmReadWritePtr
> - Init not done for -1, skipping unlock
> Cannot connect to server socket err = No such file or directory
> Cannot connect to server request channel
> jack server is not running or cannot be started
> JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping
> unlock                                             graphic 545
> JackShmReadWritePtr::~JackShmReadWritePtr
> - Init not done for -1, skipping unlock
> ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
> ALSA lib pcm_oss.c:377:(_snd_pcm_oss_open) Unknown field port
> ALSA lib pulse.c:242:(pulse_connect) PulseAudio: Unable to connect:
> Connection refused
>
>                                                   graphic 545 ALSA lib
> pulse.c:242:(pulse_connect)
> PulseAudio: Unable to connect: Connection refused
>
> ALSA lib pcm_a52.c:823:(_snd_pcm_a52_open) a52 is only for playback
> ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type for
> card
> ALSA lib pcm_usb_stream.c:486:(_snd_pcm_usb_stream_open) Invalid type for
> card
> Cannot connect to server socket err = No such file or directory
> graphic 545 Cannot connect
> to server request channel
> jack server is not running or cannot be started
> JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping
> unlock
> JackShmReadWritePtr::~JackShmReadWritePtr - Init not done for -1, skipping
> unlock


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org 


