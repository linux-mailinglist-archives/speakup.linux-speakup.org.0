Return-Path: <speakup+bounces-942-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7C4AD713727
	for <lists+speakup@lfdr.de>; Sun, 28 May 2023 01:20:34 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id ACAF93824AE; Sat, 27 May 2023 19:20:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 96AFB382421
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 19:20:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A70A382467; Sat, 27 May 2023 19:20:28 -0400 (EDT)
Received: from relay.b.hostedemail.com (smtprelay0244.b.hostedemail.com [64.98.42.244])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1BB5B382421
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 19:20:28 -0400 (EDT)
Received: from omf15.b.hostedemail.com (omf15 [10.200.6.78])
	by unirelay10.b.hostedemail.com (Postfix) with ESMTP id 282271C02A4;
	Sat, 27 May 2023 23:20:27 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf15.b.hostedemail.com (Postfix) with ESMTPA id D7362180002;
	Sat, 27 May 2023 23:20:25 +0000 (UTC)
Message-ID: <2a9c01d990f1$d1dd4e40$01ffa8c0@nucwin10>
Reply-To: "K0LNY" <glenn@ervin.email>
From: "K0LNY" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
	"John G. Heim" <jheim@wisc.edu>
References: <2a1801d990c2$5c0559d0$01ffa8c0@nucwin10> <a867b0a9-ce97-6760-b1a4-1093c913f26b@wisc.edu>
Subject: Re: Debian Install With Speech
Date: Sat, 27 May 2023 18:20:25 -0500
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
	boundary="----=_NextPart_000_2A99_01D990C7.E877D780"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Stat-Signature: hs1u1ozyyi1y6yttb8mh919hzieg91oo
X-Rspamd-Server: rspamout02
X-Spam-Status: No, score=-2.40
X-Rspamd-Queue-Id: D7362180002
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1/ON+iNRP+GNSvT0UH8sSVVqTQb7C+NKlU=
X-HE-Tag: 1685229625-996192
X-HE-Meta: U2FsdGVkX18HgTIfomzoTSAqKG8+Gr6gE98zkZJEvghQwlK/LO4CtJbuK7InHj877+ew1iYzZJBuiNQ9iRfE8w==
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_2A99_01D990C7.E877D780
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks John,
Yes, I finally went to use my Seeing AI to help me figure out that I =
needed to use the escape key on bootup to get a boot selection.
I thought I had this to boot to USB first, but apparently not.
I know it's set to boot to SD first.
But that is what happens when we have non tech types help us with the =
BIOS.
But now I'm not getting an option to connect to WIFI, and it does not =
find the install media during the install.
So I may have to try something else.
The Vinux image has downloaded corrupt twice for me now, and I've never =
downloaded a bad ISO before.
Glenn
  ----- Original Message -----=20
  From: John G. Heim=20
  To: K0LNY ; Speakup is a screen review system for Linux.=20
  Sent: Saturday, May 27, 2023 6:13 PM
  Subject: Re: Debian Install With Speech


  I don't know about 11.7 but I just did an 11.6 install a few weeks ago =
and it worked fine. The correct key is simply an s, by the way. If you =
have an iPhone, you can use Seeing AI to read the screen and it will =
allow you to figure out when to press the key. I propped my phone up in =
front of the computer monitor and just let it chatter away until I heard =
it speaking what I knew to be the installation menu.





  On 5/27/23 12:40, K0LNY wrote:

            Howdy All,
    I am not having luck with getting the Debian installer to speak.
    I am booting to:
    debian-11.7.0-i386-netinst.iso
    from:
    https://cdimage.debian.org/debian-cd/current/i386/iso-cd/
    and I have tried alt S, S alone, and down arrowing 5 times and =
enter, and down arrowing 4 times and enter.
    These are things I read that are supposed to put it into a talking =
installer.
    Does this version not have a talking installer?
    I asked on the Debian accessibility list, but I have gotten no =
responses, so I thought I'd ask here.
    I'll use speakup on it in a CLI, if I can get it working.

    Thanks.

    Glenn
------=_NextPart_000_2A99_01D990C7.E877D780
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=EF=BB=BF<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3Dutf-8" http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001"></HEAD>
<BODY bgColor=3D#ffffff>
<DIV>
<DIV><FONT size=3D2 face=3DArial>Thanks John,</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Yes, I finally went to use my Seeing AI =
to help me=20
figure out that I needed to use the escape key on bootup to get a boot=20
selection.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I thought I had this to boot to USB =
first, but=20
apparently not.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I know it's set to boot to SD =
first.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>But that is what happens when we have =
non tech=20
types help us with the BIOS.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>But now I'm not getting an option to =
connect to=20
WIFI, and it does not find the install media during the =
install.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>So I may have to try something =
else.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>The Vinux image has downloaded corrupt =
twice for me=20
now, and I've never downloaded a bad ISO before.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV></DIV>
<BLOCKQUOTE=20
style=3D"PADDING-LEFT: 5px; MARGIN-LEFT: 5px; BORDER-LEFT: #000000 2px =
solid; PADDING-RIGHT: 0px; MARGIN-RIGHT: 0px"=20
dir=3Dltr>
  <DIV style=3D"FONT: 10pt arial">----- Original Message ----- </DIV>
  <DIV=20
  style=3D"BACKGROUND: #e4e4e4; FONT: 10pt arial; font-color: =
black"><B>From:</B>=20
  <A title=3Djheim@wisc.edu href=3D"mailto:jheim@wisc.edu">John G. =
Heim</A> </DIV>
  <DIV style=3D"FONT: 10pt arial"><B>To:</B> <A =
title=3Dglenn@ervin.email=20
  href=3D"mailto:glenn@ervin.email">K0LNY</A> ; <A =
title=3Dspeakup@linux-speakup.org=20
  href=3D"mailto:speakup@linux-speakup.org">Speakup is a screen review =
system for=20
  Linux.</A> </DIV>
  <DIV style=3D"FONT: 10pt arial"><B>Sent:</B> Saturday, May 27, 2023 =
6:13=20
PM</DIV>
  <DIV style=3D"FONT: 10pt arial"><B>Subject:</B> Re: Debian Install =
With=20
  Speech</DIV>
  <DIV><BR></DIV>
  <P>I don't know about 11.7 but I just did an 11.6 install a few weeks =
ago and=20
  it worked fine. The correct key is simply an s, by the way. If you =
have an=20
  iPhone, you can use Seeing AI to read the screen and it will allow you =
to=20
  figure out when to press the key. I propped my phone up in front of =
the=20
  computer monitor and just let it chatter away until I heard it =
speaking what I=20
  knew to be the installation menu.<BR></P>
  <P><BR></P>
  <DIV class=3Dmoz-cite-prefix>On 5/27/23 12:40, K0LNY wrote:<BR></DIV>
  <BLOCKQUOTE cite=3Dmid:2a1801d990c2$5c0559d0$01ffa8c0@nucwin10 =
type=3D"cite">
    <META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001">
    <STYLE></STYLE>

    <DIV><FONT size=3D2 face=3DArial>&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp; Howdy=20
    All,</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>I am not having luck with getting =
the Debian=20
    installer to speak.</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>I am booting to:</FONT></DIV>
    <DIV><FONT size=3D2 =
face=3DArial>debian-11.7.0-i386-netinst.iso</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>from:</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial><A class=3Dmoz-txt-link-freetext=20
    href=3D"https://cdimage.debian.org/debian-cd/current/i386/iso-cd/"=20
    =
moz-do-not-send=3D"true">https://cdimage.debian.org/debian-cd/current/i38=
6/iso-cd/</A></FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>and I have tried alt S, S alone, =
and down=20
    arrowing 5 times and enter, and down arrowing 4 times and=20
enter.</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>These are things I read that are =
supposed to=20
    put it into a talking installer.</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>Does this version not have a =
talking=20
    installer?</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>I asked on the Debian accessibility =
list, but I=20
    have gotten no responses, so I thought I'd ask here.</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>I'll use speakup on it in a CLI, if =
I can get=20
    it working.</FONT></DIV>
    <DIV>&nbsp;</DIV>
    <DIV><FONT size=3D2 face=3DArial>Thanks.</FONT></DIV>
    <DIV>&nbsp;</DIV>
    <DIV><FONT size=3D2=20
face=3DArial>Glenn</FONT></DIV></BLOCKQUOTE></BLOCKQUOTE></BODY></HTML>

------=_NextPart_000_2A99_01D990C7.E877D780--


