Return-Path: <speakup+bounces-843-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 53B9761E9DB
	for <lists+speakup@lfdr.de>; Mon,  7 Nov 2022 04:48:02 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AE1FB383661; Sun,  6 Nov 2022 22:48:01 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 94DE9383619
	for <lists+speakup@lfdr.de>; Sun,  6 Nov 2022 22:48:01 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D9A7538361A; Sun,  6 Nov 2022 22:47:56 -0500 (EST)
Received: from smtprelay.b.hostedemail.com (smtprelay0092.b.hostedemail.com [64.98.42.92])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BBBC2383617
	for <speakup@linux-speakup.org>; Sun,  6 Nov 2022 22:47:56 -0500 (EST)
Received: from omf04.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay04.b.hostedemail.com (Postfix) with ESMTP id B233310034BD7;
	Mon,  7 Nov 2022 03:47:54 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf04.b.hostedemail.com (Postfix) with ESMTPA id E7D5A10063836;
	Mon,  7 Nov 2022 03:47:53 +0000 (UTC)
Message-ID: <0d4001d8f25b$b873c450$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Gregory Nowak" <greg@gregn.net>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <Y2LqK66AdnnW9DOg@gregn.net> <20221102233629.ayyi63uakfhkw3dc@begin> <072a01d8ef2a$7e7bd820$80ffa8c0@Win7VM> <08a901d8efbc$33020490$80ffa8c0@Win7VM> <Y2RSm7hG8WHdiygs@gregn.net> <0b4101d8f063$69069fe0$80ffa8c0@Win7VM> <Y2XF6wmcbFCsq5l/@gregn.net> <0bc501d8f0bd$c222dee0$80ffa8c0@Win7VM> <Y2XV2QOPjryMKRJv@gregn.net> <0c3801d8f145$e2eb2b90$80ffa8c0@Win7VM> <Y2h53YPr311PDObk@gregn.net>
Subject: Re: Voxin/ibmtts with eSpeakup
Date: Sun, 6 Nov 2022 21:47:54 -0600
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
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0D3D_01D8F229.6D10FB40"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Status: No, score=-2.54
X-Stat-Signature: y6tsnj7dgpibi1mot5ys847ppb45jxco
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: E7D5A10063836
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/ZBc1zjCsOT6yvgzXfTjX8YsOBo6YuJuo=
X-HE-Tag: 1667792873-249995
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_0D3D_01D8F229.6D10FB40
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Here are two files from 1000/speech-dispatcher/log
The voxin log is empty.

----- Original Message ----- 
From: "Gregory Nowak" <greg@gregn.net>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Samuel Thibault" <samuel.thibault@aquilenet.fr>; "Speakup is a screen 
review system for Linux." <speakup@linux-speakup.org>
Sent: Sunday, November 06, 2022 9:22 PM
Subject: Re: Voxin/ibmtts with eSpeakup


First, you haven't sent me any logs from speech-dispatcher. If you
had, I would have a better guess at what the problem is.

Second, the 1000 directory should already be owned by the correct
user. If you really want to make sure it is, then:

sudo chown lenny.lenny /var/run/user/1000

should do it.

Greg


On Sat, Nov 05, 2022 at 01:39:05PM -0500, K0LNY_Glenn wrote:
> In doing some research, I'm wondering if the only user, "lenny" can't get
> audio, but root can, is that I need to give ownership to "lenny" for the
> 1000 folder.
> In similar problems I found on-line, the suggested command was as follows,
> but in the command, it can't find lenny or ./lenny.
> sudo chown 1000 ./lenny
> or
> sudo chown 1000 lenny
> So I don't know how to make this work.
> Glenn


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your 
contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org 

------=_NextPart_000_0D3D_01D8F229.6D10FB40
Content-Type: application/octet-stream;
	name="ibmtts.11-6.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="ibmtts.11-6.log"

 Sun Nov  6 21:34:35 2022 [5.918686] ALSA: Start of playback on ALSA=0A=
 Sun Nov  6 21:34:35 2022 [5.918843] ALSA: Allocating new hw_params =
structure=0A=
 Sun Nov  6 21:34:40 2022 [0.288916] ALSA: Freeing HW parameters=0A=
 Sun Nov  6 21:34:40 2022 [0.289063] ALSA: End of playback on ALSA=0A=
 Sun Nov  6 21:34:41 2022 [1.499596] ALSA: Closing ALSA device=0A=
 Sun Nov  6 21:34:41 2022 [1.499686] ALSA: ALSA closed.=0A=

------=_NextPart_000_0D3D_01D8F229.6D10FB40
Content-Type: application/octet-stream;
	name="speech-dispatcher.11-6.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="speech-dispatcher.11-6.log"

[Thu Nov  3 16:18:30 2022 : 367603] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:18:30 2022 : 370401] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Thu Nov  3 16:18:30 2022 : 370714] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Thu Nov  3 16:18:30 2022 : 370944] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Thu Nov  3 16:18:30 2022 : 371940] speechd:  Module ibmtts loaded.=0A=
[Thu Nov  3 16:18:30 2022 : 373066] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_ibmtts" with config =
"/home/lenny/.config/speech-dispatcher/modules/ibmtts.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:18:30 2022 : 373945] speechd: ERROR: Bad syntax from =
output module ibmtts 1=0A=
[Thu Nov  3 16:18:30 2022 : 374165] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Thu Nov  3 16:18:30 2022 : 374216] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Thu Nov  3 16:18:30 2022 : 375194] speechd:  Module rhvoice loaded.=0A=
[Thu Nov  3 16:18:30 2022 : 376449] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:18:30 2022 : 377360] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Thu Nov  3 16:18:30 2022 : 377573] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Thu Nov  3 16:18:30 2022 : 377625] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Thu Nov  3 16:18:30 2022 : 378599] speechd:  Module voxin loaded.=0A=
[Thu Nov  3 16:18:30 2022 : 379813] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:18:30 2022 : 380689] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Thu Nov  3 16:18:30 2022 : 380856] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:18:30 2022 : 380920] speechd: Error [speechd.c:683]:No =
speech output modules were loaded - aborting...=0A=
[Thu Nov  3 16:19:11 2022 : 312032] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:19:11 2022 : 313504] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Thu Nov  3 16:19:11 2022 : 313661] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Thu Nov  3 16:19:11 2022 : 313708] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Thu Nov  3 16:19:11 2022 : 314700] speechd:  Module ibmtts loaded.=0A=
[Thu Nov  3 16:19:11 2022 : 315830] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_ibmtts" with config =
"/home/lenny/.config/speech-dispatcher/modules/ibmtts.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:19:11 2022 : 316695] speechd: ERROR: Bad syntax from =
output module ibmtts 1=0A=
[Thu Nov  3 16:19:11 2022 : 316898] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Thu Nov  3 16:19:11 2022 : 316948] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Thu Nov  3 16:19:11 2022 : 317864] speechd:  Module rhvoice loaded.=0A=
[Thu Nov  3 16:19:11 2022 : 319198] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:19:11 2022 : 320062] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Thu Nov  3 16:19:11 2022 : 320261] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Thu Nov  3 16:19:11 2022 : 320311] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Thu Nov  3 16:19:11 2022 : 321184] speechd:  Module voxin loaded.=0A=
[Thu Nov  3 16:19:11 2022 : 322302] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:19:11 2022 : 323277] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Thu Nov  3 16:19:11 2022 : 323451] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:19:11 2022 : 323516] speechd: Error [speechd.c:683]:No =
speech output modules were loaded - aborting...=0A=
[Thu Nov  3 16:19:33 2022 : 942976] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:19:33 2022 : 944451] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Thu Nov  3 16:19:33 2022 : 944612] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Thu Nov  3 16:19:33 2022 : 944659] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Thu Nov  3 16:19:33 2022 : 945646] speechd:  Module ibmtts loaded.=0A=
[Thu Nov  3 16:19:33 2022 : 946907] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_ibmtts" with config =
"/home/lenny/.config/speech-dispatcher/modules/ibmtts.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:19:33 2022 : 947792] speechd: ERROR: Bad syntax from =
output module ibmtts 1=0A=
[Thu Nov  3 16:19:33 2022 : 947998] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Thu Nov  3 16:19:33 2022 : 948045] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Thu Nov  3 16:19:33 2022 : 948919] speechd:  Module rhvoice loaded.=0A=
[Thu Nov  3 16:19:33 2022 : 950092] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:19:33 2022 : 951272] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Thu Nov  3 16:19:33 2022 : 951487] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Thu Nov  3 16:19:33 2022 : 951537] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Thu Nov  3 16:19:33 2022 : 952453] speechd:  Module voxin loaded.=0A=
[Thu Nov  3 16:19:33 2022 : 953618] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:19:33 2022 : 954575] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Thu Nov  3 16:19:33 2022 : 954748] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:19:33 2022 : 954812] speechd: Error [speechd.c:683]:No =
speech output modules were loaded - aborting...=0A=
[Thu Nov  3 16:20:49 2022 : 282652] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:20:49 2022 : 284183] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Thu Nov  3 16:20:49 2022 : 284350] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Thu Nov  3 16:20:49 2022 : 284399] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Thu Nov  3 16:20:49 2022 : 285356] speechd:  Module ibmtts loaded.=0A=
[Thu Nov  3 16:20:49 2022 : 286455] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_ibmtts" with config =
"/home/lenny/.config/speech-dispatcher/modules/ibmtts.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:20:49 2022 : 287479] speechd: ERROR: Bad syntax from =
output module ibmtts 1=0A=
[Thu Nov  3 16:20:49 2022 : 287688] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Thu Nov  3 16:20:49 2022 : 287737] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Thu Nov  3 16:20:49 2022 : 288649] speechd:  Module rhvoice loaded.=0A=
[Thu Nov  3 16:20:49 2022 : 289780] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:20:49 2022 : 290762] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Thu Nov  3 16:20:49 2022 : 290976] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Thu Nov  3 16:20:49 2022 : 291029] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Thu Nov  3 16:20:49 2022 : 291923] speechd:  Module voxin loaded.=0A=
[Thu Nov  3 16:20:49 2022 : 293060] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:20:49 2022 : 293920] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Thu Nov  3 16:20:49 2022 : 294089] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:20:49 2022 : 294155] speechd: Error [speechd.c:683]:No =
speech output modules were loaded - aborting...=0A=
[Thu Nov  3 16:22:10 2022 : 402032] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:22:10 2022 : 403730] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Thu Nov  3 16:22:10 2022 : 403898] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Thu Nov  3 16:22:10 2022 : 403945] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Thu Nov  3 16:22:10 2022 : 404886] speechd:  Module ibmtts loaded.=0A=
[Thu Nov  3 16:22:10 2022 : 454869] speechd:  Module ibmtts started =
successfully with message: =0A=
---------------=0A=
Ibmtts: Initialized successfully.=0A=
---------------=0A=
=0A=
[Thu Nov  3 16:22:10 2022 : 520787] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Thu Nov  3 16:22:10 2022 : 520854] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Thu Nov  3 16:22:10 2022 : 521941] speechd:  Module rhvoice loaded.=0A=
[Thu Nov  3 16:22:10 2022 : 523253] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:22:10 2022 : 524174] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Thu Nov  3 16:22:10 2022 : 524391] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Thu Nov  3 16:22:10 2022 : 524442] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Thu Nov  3 16:22:10 2022 : 525334] speechd:  Module voxin loaded.=0A=
[Thu Nov  3 16:22:10 2022 : 526578] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Thu Nov  3 16:22:10 2022 : 527462] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Thu Nov  3 16:22:10 2022 : 527637] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Thu Nov  3 16:22:10 2022 : 527701] speechd:   Speech Dispatcher started =
with 1 output module=0A=
[Thu Nov  3 16:22:10 2022 : 533246] speechd: Speech Dispatcher started =
and waiting for clients ...=0A=
[Thu Nov  3 16:22:10 2022 : 536343] speechd:   Warning: Didn't find =
preferred output module, using default=0A=
[Thu Nov  3 16:22:10 2022 : 536413] speechd:   Couldn't load default =
output module, trying other modules=0A=
[Thu Nov  3 16:22:10 2022 : 536458] speechd:   Output module ibmtts =
seems to be working, using it=0A=
[Thu Nov  3 16:22:10 2022 : 539391] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/gender-neutral.dic': No such =
file or directory=0A=
[Thu Nov  3 16:22:10 2022 : 556289] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/gender-neutral.dic': No such =
file or directory=0A=
[Thu Nov  3 16:22:10 2022 : 556376] speechd: Failed to load symbols =
'gender-neutral.dic' for locale 'en-us'=0A=
[Thu Nov  3 16:22:10 2022 : 556491] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/font-variants.dic': No such =
file or directory=0A=
[Thu Nov  3 16:22:10 2022 : 556606] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/font-variants.dic': No such file =
or directory=0A=
[Thu Nov  3 16:22:10 2022 : 556657] speechd: Failed to load symbols =
'font-variants.dic' for locale 'en-us'=0A=
[Thu Nov  3 16:22:10 2022 : 556735] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/emojis.dic': No such file or =
directory=0A=
[Thu Nov  3 16:22:10 2022 : 604835] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/base/emojis.dic': No such file or =
directory=0A=
[Thu Nov  3 16:22:10 2022 : 633741] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/symbols.dic': No such file or =
directory=0A=
[Thu Nov  3 16:22:10 2022 : 635309] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Thu Nov  3 16:22:10 2022 : 635377] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/en/symbols.dic: \0	blank	char	# null=0A=
[Thu Nov  3 16:22:10 2022 : 641900] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Thu Nov  3 16:22:10 2022 : 641971] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/base/symbols.dic: \0	blank	char	# =
null=0A=
[Thu Nov  3 16:22:10 2022 : 644938] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca.dic': No such file or =
directory=0A=
[Thu Nov  3 16:22:10 2022 : 645091] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca.dic': No such file or =
directory=0A=
[Thu Nov  3 16:22:10 2022 : 645142] speechd: Failed to load symbols =
'orca.dic' for locale 'en-us'=0A=
[Thu Nov  3 16:22:10 2022 : 645225] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca-chars.dic': No such file =
or directory=0A=
[Thu Nov  3 16:22:10 2022 : 645328] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca-chars.dic': No such file or =
directory=0A=
[Thu Nov  3 16:22:10 2022 : 645378] speechd: Failed to load symbols =
'orca-chars.dic' for locale 'en-us'=0A=
[Thu Nov  3 16:22:15 2022 : 491030] speechd: Terminating...=0A=
[Thu Nov  3 16:22:15 2022 : 491106] speechd:  Closing open connections...=0A=
[Thu Nov  3 16:22:15 2022 : 492511] speechd:  Closing open output =
modules...=0A=
[Thu Nov  3 16:22:15 2022 : 492586] speechd:   Unloading module =
name=3Dibmtts=0A=
[Thu Nov  3 16:22:15 2022 : 492630] speechd:   Closing module "ibmtts"...=0A=
[Thu Nov  3 16:22:15 2022 : 495140] speechd: ERROR: waitpid() failed =
when waiting for child (module).=0A=
[Thu Nov  3 16:22:15 2022 : 495242] speechd:  Closing server =
connection...=0A=
[Thu Nov  3 16:22:15 2022 : 495382] speechd:  Speech Dispatcher =
terminated correctly=0A=
[Fri Nov  4 10:11:38 2022 : 806456] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Fri Nov  4 10:11:38 2022 : 808143] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Fri Nov  4 10:11:38 2022 : 808345] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Fri Nov  4 10:11:38 2022 : 808396] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Fri Nov  4 10:11:38 2022 : 809338] speechd:  Module ibmtts loaded.=0A=
[Fri Nov  4 10:11:38 2022 : 855155] speechd:  Module ibmtts started =
successfully with message: =0A=
---------------=0A=
Ibmtts: Initialized successfully.=0A=
---------------=0A=
=0A=
[Fri Nov  4 10:11:38 2022 : 918074] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Fri Nov  4 10:11:38 2022 : 918141] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Fri Nov  4 10:11:38 2022 : 919177] speechd:  Module rhvoice loaded.=0A=
[Fri Nov  4 10:11:38 2022 : 920357] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Fri Nov  4 10:11:38 2022 : 921232] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Fri Nov  4 10:11:38 2022 : 921441] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Fri Nov  4 10:11:38 2022 : 921491] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Fri Nov  4 10:11:38 2022 : 922367] speechd:  Module voxin loaded.=0A=
[Fri Nov  4 10:11:38 2022 : 923615] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Fri Nov  4 10:11:38 2022 : 924495] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Fri Nov  4 10:11:38 2022 : 924661] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Fri Nov  4 10:11:38 2022 : 924723] speechd:   Speech Dispatcher started =
with 1 output module=0A=
[Fri Nov  4 10:11:38 2022 : 930015] speechd: Speech Dispatcher started =
and waiting for clients ...=0A=
[Fri Nov  4 10:11:38 2022 : 932910] speechd:   Warning: Didn't find =
preferred output module, using default=0A=
[Fri Nov  4 10:11:38 2022 : 932982] speechd:   Couldn't load default =
output module, trying other modules=0A=
[Fri Nov  4 10:11:38 2022 : 933027] speechd:   Output module ibmtts =
seems to be working, using it=0A=
[Fri Nov  4 10:11:38 2022 : 933664] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/gender-neutral.dic': No such =
file or directory=0A=
[Fri Nov  4 10:11:38 2022 : 933788] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/gender-neutral.dic': No such =
file or directory=0A=
[Fri Nov  4 10:11:38 2022 : 933838] speechd: Failed to load symbols =
'gender-neutral.dic' for locale 'en-us'=0A=
[Fri Nov  4 10:11:38 2022 : 933918] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/font-variants.dic': No such =
file or directory=0A=
[Fri Nov  4 10:11:38 2022 : 934004] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/font-variants.dic': No such file =
or directory=0A=
[Fri Nov  4 10:11:38 2022 : 934088] speechd: Failed to load symbols =
'font-variants.dic' for locale 'en-us'=0A=
[Fri Nov  4 10:11:38 2022 : 934177] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/emojis.dic': No such file or =
directory=0A=
[Fri Nov  4 10:11:38 2022 : 983837] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/base/emojis.dic': No such file or =
directory=0A=
[Fri Nov  4 10:11:39 2022 : 12463] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/symbols.dic': No such file or =
directory=0A=
[Fri Nov  4 10:11:39 2022 : 12978] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Fri Nov  4 10:11:39 2022 : 13032] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/en/symbols.dic: \0	blank	char	# null=0A=
[Fri Nov  4 10:11:39 2022 : 18849] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Fri Nov  4 10:11:39 2022 : 18920] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/base/symbols.dic: \0	blank	char	# =
null=0A=
[Fri Nov  4 10:11:39 2022 : 21691] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca.dic': No such file or =
directory=0A=
[Fri Nov  4 10:11:39 2022 : 21807] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca.dic': No such file or =
directory=0A=
[Fri Nov  4 10:11:39 2022 : 21857] speechd: Failed to load symbols =
'orca.dic' for locale 'en-us'=0A=
[Fri Nov  4 10:11:39 2022 : 21941] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca-chars.dic': No such file =
or directory=0A=
[Fri Nov  4 10:11:39 2022 : 22031] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca-chars.dic': No such file or =
directory=0A=
[Fri Nov  4 10:11:39 2022 : 22081] speechd: Failed to load symbols =
'orca-chars.dic' for locale 'en-us'=0A=
[Fri Nov  4 10:11:44 2022 : 493353] speechd: Terminating...=0A=
[Fri Nov  4 10:11:44 2022 : 493431] speechd:  Closing open connections...=0A=
[Fri Nov  4 10:11:44 2022 : 494859] speechd:  Closing open output =
modules...=0A=
[Fri Nov  4 10:11:44 2022 : 494927] speechd:   Unloading module =
name=3Dibmtts=0A=
[Fri Nov  4 10:11:44 2022 : 494971] speechd:   Closing module "ibmtts"...=0A=
[Fri Nov  4 10:11:44 2022 : 500556] speechd: ERROR: waitpid() failed =
when waiting for child (module).=0A=
[Fri Nov  4 10:11:44 2022 : 500661] speechd:  Closing server =
connection...=0A=
[Fri Nov  4 10:11:44 2022 : 500803] speechd:  Speech Dispatcher =
terminated correctly=0A=
[Fri Nov  4 10:18:44 2022 : 777864] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Fri Nov  4 10:18:44 2022 : 779521] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Fri Nov  4 10:18:44 2022 : 779725] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Fri Nov  4 10:18:44 2022 : 779776] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Fri Nov  4 10:18:44 2022 : 780761] speechd:  Module ibmtts loaded.=0A=
[Fri Nov  4 10:18:44 2022 : 821706] speechd:  Module ibmtts started =
successfully with message: =0A=
---------------=0A=
Ibmtts: Initialized successfully.=0A=
---------------=0A=
=0A=
[Fri Nov  4 10:18:44 2022 : 889151] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Fri Nov  4 10:18:44 2022 : 889219] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Fri Nov  4 10:18:44 2022 : 890199] speechd:  Module rhvoice loaded.=0A=
[Fri Nov  4 10:18:44 2022 : 891434] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Fri Nov  4 10:18:44 2022 : 892343] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Fri Nov  4 10:18:44 2022 : 892592] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Fri Nov  4 10:18:44 2022 : 892646] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Fri Nov  4 10:18:44 2022 : 893548] speechd:  Module voxin loaded.=0A=
[Fri Nov  4 10:18:44 2022 : 894802] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Fri Nov  4 10:18:44 2022 : 895733] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Fri Nov  4 10:18:44 2022 : 895904] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Fri Nov  4 10:18:44 2022 : 895969] speechd:   Speech Dispatcher started =
with 1 output module=0A=
[Fri Nov  4 10:18:44 2022 : 901442] speechd: Speech Dispatcher started =
and waiting for clients ...=0A=
[Fri Nov  4 10:18:44 2022 : 904524] speechd:   Warning: Didn't find =
preferred output module, using default=0A=
[Fri Nov  4 10:18:44 2022 : 904592] speechd:   Couldn't load default =
output module, trying other modules=0A=
[Fri Nov  4 10:18:44 2022 : 904637] speechd:   Output module ibmtts =
seems to be working, using it=0A=
[Fri Nov  4 10:18:44 2022 : 905243] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/gender-neutral.dic': No such =
file or directory=0A=
[Fri Nov  4 10:18:44 2022 : 905364] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/gender-neutral.dic': No such =
file or directory=0A=
[Fri Nov  4 10:18:44 2022 : 905415] speechd: Failed to load symbols =
'gender-neutral.dic' for locale 'en-us'=0A=
[Fri Nov  4 10:18:44 2022 : 905495] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/font-variants.dic': No such =
file or directory=0A=
[Fri Nov  4 10:18:44 2022 : 905582] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/font-variants.dic': No such file =
or directory=0A=
[Fri Nov  4 10:18:44 2022 : 905632] speechd: Failed to load symbols =
'font-variants.dic' for locale 'en-us'=0A=
[Fri Nov  4 10:18:44 2022 : 905712] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/emojis.dic': No such file or =
directory=0A=
[Fri Nov  4 10:18:44 2022 : 954322] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/base/emojis.dic': No such file or =
directory=0A=
[Fri Nov  4 10:18:44 2022 : 983806] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/symbols.dic': No such file or =
directory=0A=
[Fri Nov  4 10:18:44 2022 : 984324] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Fri Nov  4 10:18:44 2022 : 984378] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/en/symbols.dic: \0	blank	char	# null=0A=
[Fri Nov  4 10:18:44 2022 : 990320] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Fri Nov  4 10:18:44 2022 : 990393] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/base/symbols.dic: \0	blank	char	# =
null=0A=
[Fri Nov  4 10:18:44 2022 : 993307] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca.dic': No such file or =
directory=0A=
[Fri Nov  4 10:18:44 2022 : 993422] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca.dic': No such file or =
directory=0A=
[Fri Nov  4 10:18:44 2022 : 993474] speechd: Failed to load symbols =
'orca.dic' for locale 'en-us'=0A=
[Fri Nov  4 10:18:44 2022 : 993556] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca-chars.dic': No such file =
or directory=0A=
[Fri Nov  4 10:18:44 2022 : 993644] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca-chars.dic': No such file or =
directory=0A=
[Fri Nov  4 10:18:44 2022 : 993695] speechd: Failed to load symbols =
'orca-chars.dic' for locale 'en-us'=0A=
[Fri Nov  4 10:18:50 2022 : 490694] speechd: Terminating...=0A=
[Fri Nov  4 10:18:50 2022 : 490769] speechd:  Closing open connections...=0A=
[Fri Nov  4 10:18:50 2022 : 492138] speechd:  Closing open output =
modules...=0A=
[Fri Nov  4 10:18:50 2022 : 492208] speechd:   Unloading module =
name=3Dibmtts=0A=
[Fri Nov  4 10:18:50 2022 : 492290] speechd:   Closing module "ibmtts"...=0A=
[Fri Nov  4 10:18:50 2022 : 497789] speechd: ERROR: waitpid() failed =
when waiting for child (module).=0A=
[Fri Nov  4 10:18:50 2022 : 497894] speechd:  Closing server =
connection...=0A=
[Fri Nov  4 10:18:50 2022 : 498031] speechd:  Speech Dispatcher =
terminated correctly=0A=
[Sat Nov  5 19:00:35 2022 : 396425] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Sat Nov  5 19:00:35 2022 : 397954] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Sat Nov  5 19:00:35 2022 : 398155] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Sat Nov  5 19:00:35 2022 : 398207] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Sat Nov  5 19:00:35 2022 : 399248] speechd:  Module ibmtts loaded.=0A=
[Sat Nov  5 19:00:35 2022 : 455134] speechd:  Module ibmtts started =
successfully with message: =0A=
---------------=0A=
Ibmtts: Initialized successfully.=0A=
---------------=0A=
=0A=
[Sat Nov  5 19:00:35 2022 : 534811] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Sat Nov  5 19:00:35 2022 : 534879] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Sat Nov  5 19:00:35 2022 : 535831] speechd:  Module rhvoice loaded.=0A=
[Sat Nov  5 19:00:35 2022 : 536982] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Sat Nov  5 19:00:35 2022 : 537941] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Sat Nov  5 19:00:35 2022 : 538151] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Sat Nov  5 19:00:35 2022 : 538202] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Sat Nov  5 19:00:35 2022 : 539188] speechd:  Module voxin loaded.=0A=
[Sat Nov  5 19:00:35 2022 : 540365] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Sat Nov  5 19:00:35 2022 : 541246] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Sat Nov  5 19:00:35 2022 : 541418] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Sat Nov  5 19:00:35 2022 : 541484] speechd:   Speech Dispatcher started =
with 1 output module=0A=
[Sat Nov  5 19:00:35 2022 : 546885] speechd: Speech Dispatcher started =
and waiting for clients ...=0A=
[Sat Nov  5 19:00:35 2022 : 549684] speechd:   Warning: Didn't find =
preferred output module, using default=0A=
[Sat Nov  5 19:00:35 2022 : 549754] speechd:   Couldn't load default =
output module, trying other modules=0A=
[Sat Nov  5 19:00:35 2022 : 549800] speechd:   Output module ibmtts =
seems to be working, using it=0A=
[Sat Nov  5 19:00:35 2022 : 550444] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/gender-neutral.dic': No such =
file or directory=0A=
[Sat Nov  5 19:00:35 2022 : 554800] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/gender-neutral.dic': No such =
file or directory=0A=
[Sat Nov  5 19:00:35 2022 : 554863] speechd: Failed to load symbols =
'gender-neutral.dic' for locale 'en-us'=0A=
[Sat Nov  5 19:00:35 2022 : 554950] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/font-variants.dic': No such =
file or directory=0A=
[Sat Nov  5 19:00:35 2022 : 555040] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/font-variants.dic': No such file =
or directory=0A=
[Sat Nov  5 19:00:35 2022 : 555090] speechd: Failed to load symbols =
'font-variants.dic' for locale 'en-us'=0A=
[Sat Nov  5 19:00:35 2022 : 555209] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/emojis.dic': No such file or =
directory=0A=
[Sat Nov  5 19:00:35 2022 : 600277] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/base/emojis.dic': No such file or =
directory=0A=
[Sat Nov  5 19:00:35 2022 : 629464] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/symbols.dic': No such file or =
directory=0A=
[Sat Nov  5 19:00:35 2022 : 630029] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Sat Nov  5 19:00:35 2022 : 630088] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/en/symbols.dic: \0	blank	char	# null=0A=
[Sat Nov  5 19:00:35 2022 : 635872] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Sat Nov  5 19:00:35 2022 : 635944] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/base/symbols.dic: \0	blank	char	# =
null=0A=
[Sat Nov  5 19:00:35 2022 : 638855] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca.dic': No such file or =
directory=0A=
[Sat Nov  5 19:00:35 2022 : 638969] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca.dic': No such file or =
directory=0A=
[Sat Nov  5 19:00:35 2022 : 639021] speechd: Failed to load symbols =
'orca.dic' for locale 'en-us'=0A=
[Sat Nov  5 19:00:35 2022 : 639104] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca-chars.dic': No such file =
or directory=0A=
[Sat Nov  5 19:00:35 2022 : 639193] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca-chars.dic': No such file or =
directory=0A=
[Sat Nov  5 19:00:35 2022 : 639243] speechd: Failed to load symbols =
'orca-chars.dic' for locale 'en-us'=0A=
[Sat Nov  5 19:00:40 2022 : 490685] speechd: Terminating...=0A=
[Sat Nov  5 19:00:40 2022 : 490759] speechd:  Closing open connections...=0A=
[Sat Nov  5 19:00:40 2022 : 492145] speechd:  Closing open output =
modules...=0A=
[Sat Nov  5 19:00:40 2022 : 492215] speechd:   Unloading module =
name=3Dibmtts=0A=
[Sat Nov  5 19:00:40 2022 : 492260] speechd:   Closing module "ibmtts"...=0A=
[Sat Nov  5 19:00:40 2022 : 497585] speechd: ERROR: waitpid() failed =
when waiting for child (module).=0A=
[Sat Nov  5 19:00:40 2022 : 497687] speechd:  Closing server =
connection...=0A=
[Sat Nov  5 19:00:40 2022 : 497825] speechd:  Speech Dispatcher =
terminated correctly=0A=
[Sun Nov  6 21:32:44 2022 : 700846] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Sun Nov  6 21:32:44 2022 : 702383] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Sun Nov  6 21:32:44 2022 : 702908] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Sun Nov  6 21:32:44 2022 : 702970] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Sun Nov  6 21:32:44 2022 : 703904] speechd:  Module ibmtts loaded.=0A=
[Sun Nov  6 21:32:44 2022 : 763171] speechd:  Module ibmtts started =
successfully with message: =0A=
---------------=0A=
Ibmtts: Initialized successfully.=0A=
---------------=0A=
=0A=
[Sun Nov  6 21:32:44 2022 : 828679] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Sun Nov  6 21:32:44 2022 : 828746] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Sun Nov  6 21:32:44 2022 : 829711] speechd:  Module rhvoice loaded.=0A=
[Sun Nov  6 21:32:44 2022 : 831073] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Sun Nov  6 21:32:44 2022 : 831982] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Sun Nov  6 21:32:44 2022 : 832190] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Sun Nov  6 21:32:44 2022 : 832274] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Sun Nov  6 21:32:44 2022 : 833175] speechd:  Module voxin loaded.=0A=
[Sun Nov  6 21:32:44 2022 : 834344] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Sun Nov  6 21:32:44 2022 : 835343] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Sun Nov  6 21:32:44 2022 : 835514] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Sun Nov  6 21:32:44 2022 : 835578] speechd:   Speech Dispatcher started =
with 1 output module=0A=
[Sun Nov  6 21:32:44 2022 : 840842] speechd: Speech Dispatcher started =
and waiting for clients ...=0A=
[Sun Nov  6 21:32:44 2022 : 843863] speechd:   Warning: Didn't find =
preferred output module, using default=0A=
[Sun Nov  6 21:32:44 2022 : 843935] speechd:   Couldn't load default =
output module, trying other modules=0A=
[Sun Nov  6 21:32:44 2022 : 843980] speechd:   Output module ibmtts =
seems to be working, using it=0A=
[Sun Nov  6 21:32:44 2022 : 844630] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/gender-neutral.dic': No such =
file or directory=0A=
[Sun Nov  6 21:32:44 2022 : 844753] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/gender-neutral.dic': No such =
file or directory=0A=
[Sun Nov  6 21:32:44 2022 : 844804] speechd: Failed to load symbols =
'gender-neutral.dic' for locale 'en-us'=0A=
[Sun Nov  6 21:32:44 2022 : 844886] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/font-variants.dic': No such =
file or directory=0A=
[Sun Nov  6 21:32:44 2022 : 844975] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/font-variants.dic': No such file =
or directory=0A=
[Sun Nov  6 21:32:44 2022 : 845024] speechd: Failed to load symbols =
'font-variants.dic' for locale 'en-us'=0A=
[Sun Nov  6 21:32:44 2022 : 845104] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/emojis.dic': No such file or =
directory=0A=
[Sun Nov  6 21:32:44 2022 : 894192] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/base/emojis.dic': No such file or =
directory=0A=
[Sun Nov  6 21:32:44 2022 : 923904] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/symbols.dic': No such file or =
directory=0A=
[Sun Nov  6 21:32:44 2022 : 924465] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Sun Nov  6 21:32:44 2022 : 924522] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/en/symbols.dic: \0	blank	char	# null=0A=
[Sun Nov  6 21:32:44 2022 : 930317] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Sun Nov  6 21:32:44 2022 : 930392] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/base/symbols.dic: \0	blank	char	# =
null=0A=
[Sun Nov  6 21:32:44 2022 : 933364] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca.dic': No such file or =
directory=0A=
[Sun Nov  6 21:32:44 2022 : 933481] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca.dic': No such file or =
directory=0A=
[Sun Nov  6 21:32:44 2022 : 933534] speechd: Failed to load symbols =
'orca.dic' for locale 'en-us'=0A=
[Sun Nov  6 21:32:44 2022 : 933616] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca-chars.dic': No such file =
or directory=0A=
[Sun Nov  6 21:32:44 2022 : 933707] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca-chars.dic': No such file or =
directory=0A=
[Sun Nov  6 21:32:44 2022 : 933758] speechd: Failed to load symbols =
'orca-chars.dic' for locale 'en-us'=0A=
[Sun Nov  6 21:32:50 2022 : 493336] speechd: Terminating...=0A=
[Sun Nov  6 21:32:50 2022 : 493413] speechd:  Closing open connections...=0A=
[Sun Nov  6 21:32:50 2022 : 494980] speechd:  Closing open output =
modules...=0A=
[Sun Nov  6 21:32:50 2022 : 495052] speechd:   Unloading module =
name=3Dibmtts=0A=
[Sun Nov  6 21:32:50 2022 : 495097] speechd:   Closing module "ibmtts"...=0A=
[Sun Nov  6 21:32:50 2022 : 498258] speechd: ERROR: waitpid() failed =
when waiting for child (module).=0A=
[Sun Nov  6 21:32:50 2022 : 498368] speechd:  Closing server =
connection...=0A=
[Sun Nov  6 21:32:50 2022 : 501051] speechd:  Speech Dispatcher =
terminated correctly=0A=
[Sun Nov  6 21:34:35 2022 : 666909] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Sun Nov  6 21:34:35 2022 : 668409] speechd:  Configuration has been =
read from "/home/lenny/.config/speech-dispatcher/speechd.conf"=0A=
[Sun Nov  6 21:34:35 2022 : 668606] speechd:  Initializing output module =
ibmtts with binary /usr/lib/speech-dispatcher-modules/sd_ibmtts and =
configuration /home/lenny/.config/speech-dispatcher/modules/ibmtts.conf=0A=
[Sun Nov  6 21:34:35 2022 : 668656] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//ibmtts.log=0A=
[Sun Nov  6 21:34:35 2022 : 669604] speechd:  Module ibmtts loaded.=0A=
[Sun Nov  6 21:34:35 2022 : 711783] speechd:  Module ibmtts started =
successfully with message: =0A=
---------------=0A=
Ibmtts: Initialized successfully.=0A=
---------------=0A=
=0A=
[Sun Nov  6 21:34:35 2022 : 777581] speechd:  Initializing output module =
rhvoice with binary /usr/lib/speech-dispatcher-modules/sd_rhvoice and =
configuration /home/lenny/.config/speech-dispatcher/modules/rhvoice.conf=0A=
[Sun Nov  6 21:34:35 2022 : 777649] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//rhvoice.log=0A=
[Sun Nov  6 21:34:35 2022 : 778674] speechd:  Module rhvoice loaded.=0A=
[Sun Nov  6 21:34:35 2022 : 780028] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_rhvoice" with config =
"/home/lenny/.config/speech-dispatcher/modules/rhvoice.conf" failed with =
error 2: No such file or directory=0A=
[Sun Nov  6 21:34:35 2022 : 780920] speechd: ERROR: Bad syntax from =
output module rhvoice 1=0A=
[Sun Nov  6 21:34:35 2022 : 781132] speechd:  Initializing output module =
voxin with binary /usr/lib/speech-dispatcher-modules/sd_voxin and =
configuration /home/lenny/.config/speech-dispatcher/modules/voxin.conf=0A=
[Sun Nov  6 21:34:35 2022 : 781180] speechd:   Output module is logging =
to file /run/user/1000/speech-dispatcher/log//voxin.log=0A=
[Sun Nov  6 21:34:35 2022 : 782083] speechd:  Module voxin loaded.=0A=
[Sun Nov  6 21:34:35 2022 : 783321] speechd: Exec of module =
"/usr/lib/speech-dispatcher-modules/sd_voxin" with config =
"/home/lenny/.config/speech-dispatcher/modules/voxin.conf" failed with =
error 2: No such file or directory=0A=
[Sun Nov  6 21:34:35 2022 : 784208] speechd: ERROR: Bad syntax from =
output module voxin 1=0A=
[Sun Nov  6 21:34:35 2022 : 784370] speechd:   Speech Dispatcher Logging =
to file /run/user/1000/speech-dispatcher/log//speech-dispatcher.log=0A=
[Sun Nov  6 21:34:35 2022 : 784434] speechd:   Speech Dispatcher started =
with 1 output module=0A=
[Sun Nov  6 21:34:35 2022 : 789668] speechd: Speech Dispatcher started =
and waiting for clients ...=0A=
[Sun Nov  6 21:34:35 2022 : 792536] speechd:   Warning: Didn't find =
preferred output module, using default=0A=
[Sun Nov  6 21:34:35 2022 : 792603] speechd:   Couldn't load default =
output module, trying other modules=0A=
[Sun Nov  6 21:34:35 2022 : 792648] speechd:   Output module ibmtts =
seems to be working, using it=0A=
[Sun Nov  6 21:34:35 2022 : 793277] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/gender-neutral.dic': No such =
file or directory=0A=
[Sun Nov  6 21:34:35 2022 : 793395] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/gender-neutral.dic': No such =
file or directory=0A=
[Sun Nov  6 21:34:35 2022 : 793445] speechd: Failed to load symbols =
'gender-neutral.dic' for locale 'en-us'=0A=
[Sun Nov  6 21:34:35 2022 : 793522] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/font-variants.dic': No such =
file or directory=0A=
[Sun Nov  6 21:34:35 2022 : 793604] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/font-variants.dic': No such file =
or directory=0A=
[Sun Nov  6 21:34:35 2022 : 793651] speechd: Failed to load symbols =
'font-variants.dic' for locale 'en-us'=0A=
[Sun Nov  6 21:34:35 2022 : 793728] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/emojis.dic': No such file or =
directory=0A=
[Sun Nov  6 21:34:35 2022 : 843698] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/base/emojis.dic': No such file or =
directory=0A=
[Sun Nov  6 21:34:35 2022 : 872592] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/symbols.dic': No such file or =
directory=0A=
[Sun Nov  6 21:34:35 2022 : 873100] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Sun Nov  6 21:34:35 2022 : 873158] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/en/symbols.dic: \0	blank	char	# null=0A=
[Sun Nov  6 21:34:35 2022 : 878654] speechd: Loading NUL byte entry is =
not yet supported=0A=
[Sun Nov  6 21:34:35 2022 : 878739] speechd: Invalid line in file =
/usr/share/speech-dispatcher/locale/base/symbols.dic: \0	blank	char	# =
null=0A=
[Sun Nov  6 21:34:35 2022 : 881751] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca.dic': No such file or =
directory=0A=
[Sun Nov  6 21:34:35 2022 : 881883] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca.dic': No such file or =
directory=0A=
[Sun Nov  6 21:34:35 2022 : 881935] speechd: Failed to load symbols =
'orca.dic' for locale 'en-us'=0A=
[Sun Nov  6 21:34:35 2022 : 882019] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en-us/orca-chars.dic': No such file =
or directory=0A=
[Sun Nov  6 21:34:35 2022 : 882105] speechd: Failed to open file =
'/usr/share/speech-dispatcher/locale/en/orca-chars.dic': No such file or =
directory=0A=
[Sun Nov  6 21:34:35 2022 : 882156] speechd: Failed to load symbols =
'orca-chars.dic' for locale 'en-us'=0A=
[Sun Nov  6 21:34:41 2022 : 493558] speechd: Terminating...=0A=
[Sun Nov  6 21:34:41 2022 : 493644] speechd:  Closing open connections...=0A=
[Sun Nov  6 21:34:41 2022 : 495051] speechd:  Closing open output =
modules...=0A=
[Sun Nov  6 21:34:41 2022 : 495122] speechd:   Unloading module =
name=3Dibmtts=0A=
[Sun Nov  6 21:34:41 2022 : 495165] speechd:   Closing module "ibmtts"...=0A=
[Sun Nov  6 21:34:41 2022 : 500773] speechd: ERROR: waitpid() failed =
when waiting for child (module).=0A=
[Sun Nov  6 21:34:41 2022 : 500880] speechd:  Closing server =
connection...=0A=
[Sun Nov  6 21:34:41 2022 : 501019] speechd:  Speech Dispatcher =
terminated correctly=0A=

------=_NextPart_000_0D3D_01D8F229.6D10FB40--


