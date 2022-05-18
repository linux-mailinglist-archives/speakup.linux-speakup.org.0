Return-Path: <speakup+bounces-433-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 59EAB52BFA4
	for <lists+speakup@lfdr.de>; Wed, 18 May 2022 18:14:14 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E974C3810C6; Wed, 18 May 2022 12:14:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8F40238162F
	for <lists+speakup@lfdr.de>; Wed, 18 May 2022 12:14:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 088C4380B0C; Wed, 18 May 2022 12:14:12 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0007.b.hostedemail.com [64.98.42.7])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E3F2338092D
	for <speakup@linux-speakup.org>; Wed, 18 May 2022 12:14:11 -0400 (EDT)
Received: from omf02.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay06.b.hostedemail.com (Postfix) with ESMTP id 2241F185AB846;
	Wed, 18 May 2022 16:14:11 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf02.b.hostedemail.com (Postfix) with ESMTPA id 80C5286D2439;
	Wed, 18 May 2022 16:14:06 +0000 (UTC)
Message-ID: <064701d86ad1$e210f1a0$82ffa8c0@WIN40RPKAT965G>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: <jdashiel@panix.com>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
References: <061e01d86acb$37cbd440$82ffa8c0@WIN40RPKAT965G> <180d7d62bb8.2923.7f5f0e00eb39c74e480406aa7dcc21f8@panix.com>
Subject: Re: Getting Speech-Dispatcher To Work
Date: Wed, 18 May 2022 11:11:06 -0500
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
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0644_01D86AA7.F85607E0"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Stat-Signature: ar4wp4yoi7zm9wwgoedf6a386zwnnnah
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 80C5286D2439
X-Spam-Status: No, score=-2.58
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+os+jBDm+m+AGUq/PPLo5NVk5ff1lcz+c=
X-HE-Tag: 1652890446-680837
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_0644_01D86AA7.F85607E0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi again,
Well I tried it in both system and user, since that is the first choice =
in spd-conf.
I also selected to have it auto start and I let it write a debug file =
because it still doesn't work.
spd-conf states that it might be pulseaudio, but I installed that.
Glenn

----- Original Message -----=20
From: jdashiel@panix.com=20
To: K0LNY_Glenn ; Speakup is a screen review system for Linux.=20
Sent: Wednesday, May 18, 2022 10:42 AM
Subject: Re: Getting Speech-Dispatcher To Work


In your user directory please run spd-conf and answer questions in order =
to make a user configuration file.  Since you are running orca, you may =
want to have speech-dispatcher started up when the system comes up.  =
That may get orca working for you.


On May 18, 2022 11:23:42 AM "K0LNY_Glenn" <glenn@ervin.email> wrote:


  Hi,
  I am using a Pine64 board, it is an ARM board like a Raspberry PI.
  I installed Armbian on it.
  Then I installed the Mate desktop.
  I cannot get Orca to work, but there are sounds like Orca is working, =
just=20
  not talking.
  I have system sounds and espeak and espeak-ng work when tested.
  And also, spd-say gives me an error.
  It got installed in a non-usual location, in /usr/sbin.
  I get the following error when running spd-say
  lenny@pine64:~/speech-dispatcher-0.8.8$ spd-say test=20
  graphic 192 Failed to connect to Speech Dispatcher:


  Error: Can't connect to unix socket=20
  /run/user/1000/speech-dispatcher/speechd.soc
  k: No such file or directory. Autospawn: Autospawn failed. Speech =
Dispatcher=20
  refgraphic 545 used to start with error code, stating this as a =
reason:


  So I downloaded speech-dispatcher from its site and put it into the =
user=20
  folder and unpacked it.
  Can someone give me the steps for installing from these files?
  I'll paste the contents of the unpacked .tar.gz file below.
  I don't get the make command stuff.
  Thanks.


  lenny@pine64:~$ cd speech-dispatcher-0.8.8=20
  graphic 545 lenny@pine64:~/speech-dispatcher-0.8.8$ ls


  aclocal.m4  config.guess  doc              Makefile.am  =
README.packagers
  ANNOUNCE    config.h.in   FAQ              Makefile.in  README.style
  AUTHORS     config.sub    git-version-gen  missing      =
README.translators
  BUGS        configure     include          NEWS=20
  speech-dispatcher.pc.in graphic 733 build.sh    configure.ac  INSTALL=20
  po           split-version.sh


  compile     COPYING       install-sh       py-compile   src=20
  graphic 186 config      depcomp       ltmain.sh        README       =
TODO


------=_NextPart_000_0644_01D86AA7.F85607E0
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3Diso-8859-1" =
http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.19597">
<STYLE></STYLE>
</HEAD>
<BODY bgColor=3D#ffffff>
<DIV><FONT size=3D2 face=3DArial>Hi again,</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Well I tried it in both system and =
user, since that=20
is the first choice in spd-conf.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I also selected to have it auto start =
and I let it=20
write a debug file because it still doesn't work.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>spd-conf states that it might be =
pulseaudio, but I=20
installed that.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV>
<DIV>&nbsp;</DIV>
<DIV style=3D"FONT: 10pt arial">----- Original Message -----=20
<DIV style=3D"BACKGROUND: #e4e4e4; font-color: black"><B>From:</B> <A=20
title=3Djdashiel@panix.com =
href=3D"mailto:jdashiel@panix.com">jdashiel@panix.com</A>=20
</DIV>
<DIV><B>To:</B> <A title=3Dglenn@ervin.email=20
href=3D"mailto:glenn@ervin.email">K0LNY_Glenn</A> ; <A=20
title=3Dspeakup@linux-speakup.org =
href=3D"mailto:speakup@linux-speakup.org">Speakup=20
is a screen review system for Linux.</A> </DIV>
<DIV><B>Sent:</B> Wednesday, May 18, 2022 10:42 AM</DIV>
<DIV><B>Subject:</B> Re: Getting Speech-Dispatcher To Work</DIV></DIV>
<DIV><BR></DIV>
<DIV>
<DIV>In your user directory please run spd-conf and answer questions in =
order to=20
make a user configuration file.&nbsp; Since you are running orca, you =
may want=20
to have speech-dispatcher started up when the system comes up.&nbsp; =
That may=20
get orca working for you.</DIV>
<DIV><BR></DIV>
<DIV id=3Daqm-original style=3D"COLOR: black">
<DIV>On May 18, 2022 11:23:42 AM "K0LNY_Glenn" &lt;<A=20
href=3D"mailto:glenn@ervin.email">glenn@ervin.email</A>&gt; wrote:</DIV>
<DIV><BR></DIV>
<BLOCKQUOTE class=3Dgmail_quote=20
style=3D"PADDING-LEFT: 0.75ex; MARGIN: 0px 0px 0px 0.75ex; BORDER-LEFT: =
#808080 1px solid"=20
type=3D"cite">
  <DIV>Hi,</DIV>
  <DIV>I am using a Pine64 board, it is an ARM board like a Raspberry =
PI.</DIV>
  <DIV>I installed Armbian on it.</DIV>
  <DIV>Then I installed the Mate desktop.</DIV>
  <DIV>I cannot get Orca to work, but there are sounds like Orca is =
working,=20
  just&nbsp;</DIV>
  <DIV>not talking.</DIV>
  <DIV>I have system sounds and espeak and espeak-ng work when =
tested.</DIV>
  <DIV>And also, spd-say gives me an error.</DIV>
  <DIV>It got installed in a non-usual location, in /usr/sbin.</DIV>
  <DIV>I get the following error when running spd-say</DIV>
  <DIV>lenny@pine64:~/speech-dispatcher-0.8.8$ spd-say test&nbsp;</DIV>
  <DIV>graphic 192 Failed to connect to Speech Dispatcher:</DIV>
  <DIV><BR></DIV>
  <DIV>Error: Can't connect to unix socket&nbsp;</DIV>
  <DIV>/run/user/1000/speech-dispatcher/speechd.soc</DIV>
  <DIV>k: No such file or directory. Autospawn: Autospawn failed. Speech =

  Dispatcher&nbsp;</DIV>
  <DIV>refgraphic 545 used to start with error code, stating this as a=20
  reason:</DIV>
  <DIV><BR></DIV>
  <DIV>So I downloaded speech-dispatcher from its site and put it into =
the=20
  user&nbsp;</DIV>
  <DIV>folder and unpacked it.</DIV>
  <DIV>Can someone give me the steps for installing from these =
files?</DIV>
  <DIV>I'll paste the contents of the unpacked .tar.gz file below.</DIV>
  <DIV>I don't get the make command stuff.</DIV>
  <DIV>Thanks.</DIV>
  <DIV><BR></DIV>
  <DIV>lenny@pine64:~$ cd speech-dispatcher-0.8.8&nbsp;</DIV>
  <DIV>graphic 545 lenny@pine64:~/speech-dispatcher-0.8.8$ ls</DIV>
  <DIV><BR></DIV>
  <DIV>aclocal.m4 &nbsp;config.guess &nbsp;doc &nbsp; &nbsp; &nbsp; =
&nbsp;=20
  &nbsp; &nbsp; &nbsp;Makefile.am &nbsp;README.packagers</DIV>
  <DIV>ANNOUNCE &nbsp; &nbsp;config.h.in &nbsp; FAQ &nbsp; &nbsp; &nbsp; =
&nbsp;=20
  &nbsp; &nbsp; &nbsp;Makefile.in &nbsp;README.style</DIV>
  <DIV>AUTHORS &nbsp; &nbsp; config.sub &nbsp; &nbsp;git-version-gen=20
  &nbsp;missing &nbsp; &nbsp; &nbsp;README.translators</DIV>
  <DIV>BUGS &nbsp; &nbsp; &nbsp; &nbsp;configure &nbsp; &nbsp; include =
&nbsp;=20
  &nbsp; &nbsp; &nbsp; &nbsp;NEWS&nbsp;</DIV>
  <DIV>speech-dispatcher.pc.in graphic 733 build.sh &nbsp; =
&nbsp;configure.ac=20
  &nbsp;INSTALL&nbsp;</DIV>
  <DIV>po &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; split-version.sh</DIV>
  <DIV><BR></DIV>
  <DIV>compile &nbsp; &nbsp; COPYING &nbsp; &nbsp; &nbsp; install-sh =
&nbsp;=20
  &nbsp; &nbsp; py-compile &nbsp; src&nbsp;</DIV>
  <DIV>graphic 186 config &nbsp; &nbsp; &nbsp;depcomp &nbsp; &nbsp; =
&nbsp;=20
  ltmain.sh &nbsp; &nbsp; &nbsp; &nbsp;README &nbsp; &nbsp; &nbsp;=20
TODO</DIV></BLOCKQUOTE></DIV>
<DIV><BR></DIV></DIV></BODY></HTML>

------=_NextPart_000_0644_01D86AA7.F85607E0--


