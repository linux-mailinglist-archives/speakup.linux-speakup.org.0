Return-Path: <speakup+bounces-1207-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BF46A96A437
	for <lists+speakup@lfdr.de>; Tue,  3 Sep 2024 18:25:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=RkY4yTh8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D62B73841C9; Tue, 03 Sep 2024 12:25:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B5645383CA6
	for <lists+speakup@lfdr.de>; Tue, 03 Sep 2024 12:25:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AC2D6383CA8; Tue, 03 Sep 2024 12:25:20 -0400 (EDT)
Received: from mail38.out.titan.email (mail38.out.titan.email [209.209.25.3])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C8CAE38266E
	for <speakup@linux-speakup.org>; Tue, 03 Sep 2024 12:25:19 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 0B0B56050D;
	Tue,  3 Sep 2024 16:25:19 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=WixZ3vkvSXpKKONJeoYSH7ZLNIkBJKst4GEDG3xezNY=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=from:reply-to:to:references:date:mime-version:message-id:subject:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1725380718; v=1;
	b=RkY4yTh8owyQmRWp102n9Bof7rIdS240Vwczl2MSOhQ5NuFG+ivy6d6Y8iroptyTUvzpWCcV
	nqctlSWuL/ERToSiATqIbLYO6KZ9jlRwr9ucr6cfXzeR8wuILOXK5WUVDTK4OmU094ImdzbqoQz
	Z8+KjciXKD6bbppwR94nsDLY=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 7D24A6050F;
	Tue,  3 Sep 2024 16:25:18 +0000 (UTC)
Message-ID: <01ee01dafe1d$de15ac80$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "cstrobel crosslink.net" <cstrobel@crosslink.net>,
	"Martin McCormick" <martin.m@suddenlink.net>,
	<speakup@linux-speakup.org>,
	"John G. Heim" <jheim@math.wisc.edu>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za> <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu> <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca> <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net> <E1slFDa-0001Hb-0R@wb5agz> <MN2PR18MB3344FAF885B2801CAC79DD75C7932@MN2PR18MB3344.namprd18.prod.outlook.com> <99cfd787-9c6c-4344-9f1f-e37a6b174074@math.wisc.edu>
Subject: Re: Debian v Ubuntu (Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was howto run speakup/orca concurrently in ubuntu))
Date: Tue, 3 Sep 2024 11:25:18 -0500
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
	boundary="----=_NextPart_000_01EB_01DAFDF3.F4988F10"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1725380718909261526.10061.3982605846038257735@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=HplwGVTS c=1 sm=1 tr=0 ts=66d7386e
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=r77TgQKjGQsHNAKrUKIA:9
	a=AGkJtRo6AAAA:8 a=qPKtzgQbAAAA:8 a=8LaAqv5HAAAA:8 a=8Ro6GKBAAAAA:8
	a=buy3t8_BMOulBRBmKjAA:9 a=QEXdDO2ut3YA:10 a=UqCG9HQmAAAA:8
	a=Lkmrw-Z17-3ku0D3FGQA:9 a=xGf5UkoMZv7pUyvb:21 a=frz4AuCg-hUA:10
	a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=2y2M8S3z8Ys9FvGlKFEg:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=YAwQf-ttL5rETw8UNFVx:22
	a=Xhl6o1fcNCG9FGZrHFNY:22 a=P3K-DvM3-jjlTNsN-mCd:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_01EB_01DAFDF3.F4988F10
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ubuntu Mate is the best.
----- Original Message -----=20
From: John G. Heim=20
To: cstrobel crosslink.net ; Martin McCormick ; =
speakup@linux-speakup.org=20
Sent: Tuesday, September 3, 2024 11:22 AM
Subject: Debian v Ubuntu (Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI =
Terminals with Speakup (Was howto run speakup/orca concurrently in =
ubuntu))


Its not just the packages, although that is part of it. The main reason =
Ubuntu is still favored over Debian by many end-users is ease of =
installation and upkeep. I support Linux users in STEM fields. As you =
probably know, Linux is huge with researchers in STEM fields. But they =
don't want to figure out how to install Debian and update it. They just =
want their computer to work.

Personally, I run Debian. That Ubuntu automatic update system gives me =
the willies. I don't want to click a button that says "Update now". But =
I'm not a researcher, I'm the support staff.




On 9/3/24 9:58 AM, cstrobel crosslink.net wrote:

  aI have been using Speakup and ORCA at the same time for about a year =
on Bookworm.  I have Bookworm backports active. I agree with Jason, use =
Pipewire.  I'm not sure why folks want to use Ubuntu any more unless =
they have some very specific package that isn't on Debian you may be =
asking for more trouble than it is worth.
  I know I read the Debian accessibility FAQ, but I'm not sure exactly =
what I did off the top of my head.
  Make sure that pipewire-pulse is running on your system by doing "ps =
-ef|grep pipewire" or something similar.







-------------------------------------------------------------------------=
-----

  From: Martin McCormick <martin.m@suddenlink.net>

  Sent: Monday, September 2, 2024 6:08 PM
  To: speakup@linux-speakup.org <speakup@linux-speakup.org>
  Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with =
Speakup (Was howto run speakup/orca concurrently in ubuntu)

  Thanks for the clarification about pipewire and why it is here.

          I didn't realize that pulseaudio is fading into the
  sunset as it has been around and served well for quite a few
  years.

          To remind those who have followed this thread today, the
  only real problem I am talking about is minor compared with stuff
  that is supposed to work but doesn't.

          It looks like one should be able to get speakup to work
  older world of pure text-based command-line consoles since there
  are things that runa little more smoothly there than when GUI
  tools are needed.

          By the same token, the present implimentation of speakup
  with gnome also does well and all I was hoping to do was have
  both functionalities on the same system.

          Thanks for the information that has been provided as it
  is useful and I am still interested if there is a way to do this
  but at least things are about 95% working.

  Martin
        =20
  "Jason J.G. White" <jason@jasonjgw.net> writes:
  > While we're discussing clarifications, note that Pulseaudio is =
effectively
  > deprecated now. Pipewire has superseded it. Also, Pipewire includes =
an
  > implementation of the Pulseaudio client API, so that client =
applications
  > designed for Pulseaudio still work normally under Pipewire.





-------------------------------------------------------------------------=
-----

  From: Martin McCormick <martin.m@suddenlink.net>
  Sent: Monday, September 2, 2024 6:08 PM
  To: speakup@linux-speakup.org <speakup@linux-speakup.org>
  Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with =
Speakup (Was howto run speakup/orca concurrently in ubuntu)=20

  Thanks for the clarification about pipewire and why it is here.

          I didn't realize that pulseaudio is fading into the
  sunset as it has been around and served well for quite a few
  years.

          To remind those who have followed this thread today, the
  only real problem I am talking about is minor compared with stuff
  that is supposed to work but doesn't.

          It looks like one should be able to get speakup to work
  older world of pure text-based command-line consoles since there
  are things that runa little more smoothly there than when GUI
  tools are needed.

          By the same token, the present implimentation of speakup
  with gnome also does well and all I was hoping to do was have
  both functionalities on the same system.

          Thanks for the information that has been provided as it
  is useful and I am still interested if there is a way to do this
  but at least things are about 95% working.

  Martin
        =20
  "Jason J.G. White" <jason@jasonjgw.net> writes:
  > While we're discussing clarifications, note that Pulseaudio is =
effectively
  > deprecated now. Pipewire has superseded it. Also, Pipewire includes =
an
  > implementation of the Pulseaudio client API, so that client =
applications
  > designed for Pulseaudio still work normally under Pipewire.


------=_NextPart_000_01EB_01DAFDF3.F4988F10
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

=EF=BB=BF<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3Dutf-8" http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001"></HEAD>
<BODY bgColor=3D#ffffff>
<DIV>
<DIV><FONT size=3D2 face=3DArial>Ubuntu Mate is the =
best.</FONT></DIV></DIV>
<DIV style=3D"FONT: 10pt arial">----- Original Message -----=20
<DIV style=3D"BACKGROUND: #e4e4e4; font-color: black"><B>From:</B> <A=20
title=3Djheim@math.wisc.edu href=3D"mailto:jheim@math.wisc.edu">John G. =
Heim</A>=20
</DIV>
<DIV><B>To:</B> <A title=3Dcstrobel@crosslink.net=20
href=3D"mailto:cstrobel@crosslink.net">cstrobel crosslink.net</A> ; <A=20
title=3Dmartin.m@suddenlink.net =
href=3D"mailto:martin.m@suddenlink.net">Martin=20
McCormick</A> ; <A title=3Dspeakup@linux-speakup.org=20
href=3D"mailto:speakup@linux-speakup.org">speakup@linux-speakup.org</A> =
</DIV>
<DIV><B>Sent:</B> Tuesday, September 3, 2024 11:22 AM</DIV>
<DIV><B>Subject:</B> Debian v Ubuntu (Re: SPFUNSUPPORTED MAY BE =
MALICIOUS CLI=20
Terminals with Speakup (Was howto run speakup/orca concurrently in=20
ubuntu))</DIV></DIV>
<DIV><BR></DIV>
<P>Its not just the packages, although that is part of it. The main =
reason=20
Ubuntu is still favored over Debian by many end-users is ease of =
installation=20
and upkeep. I support Linux users in STEM fields. As you probably know, =
Linux is=20
huge with researchers in STEM fields. But they don't want to figure out =
how to=20
install Debian and update it. They just want their computer to work.</P>
<P>Personally, I run Debian. That Ubuntu automatic update system gives =
me the=20
willies. I don't want to click a button that says "Update now". But I'm =
not a=20
researcher, I'm the support staff.</P>
<P><BR></P>
<DIV class=3Dmoz-cite-prefix>On 9/3/24 9:58 AM, cstrobel crosslink.net=20
wrote:<BR></DIV>
<BLOCKQUOTE=20
cite=3Dmid:MN2PR18MB3344FAF885B2801CAC79DD75C7932@MN2PR18MB3344.namprd18.=
prod.outlook.com=20
type=3D"cite">
  <STYLE style=3D"DISPLAY: none" type=3Dtext/css>P {
	MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px
}
</STYLE>

  <DIV class=3DelementToProof=20
  style=3D"FONT-SIZE: 12pt; FONT-FAMILY: Aptos, Aptos_EmbeddedFont, =
Aptos_MSFontService, Calibri, Helvetica, sans-serif; COLOR: =
rgb(0,0,0)">aI=20
  have been using Speakup and ORCA at the same time for about a year on=20
  Bookworm.&nbsp; I have Bookworm backports active. I agree with Jason, =
use=20
  Pipewire.&nbsp; I'm not sure why folks want to use Ubuntu any more =
unless they=20
  have some very specific package that isn't on Debian you may be asking =
for=20
  more trouble than it is worth.</DIV>
  <DIV class=3DelementToProof=20
  style=3D"FONT-SIZE: 12pt; FONT-FAMILY: Aptos, Aptos_EmbeddedFont, =
Aptos_MSFontService, Calibri, Helvetica, sans-serif; COLOR: =
rgb(0,0,0)">I=20
  know I read the Debian accessibility FAQ, but I'm not sure exactly =
what I did=20
  off the top of my head.</DIV>
  <DIV class=3DelementToProof=20
  style=3D"FONT-SIZE: 12pt; FONT-FAMILY: Aptos, Aptos_EmbeddedFont, =
Aptos_MSFontService, Calibri, Helvetica, sans-serif; COLOR: =
rgb(0,0,0)">Make=20
  sure that pipewire-pulse is running on your system by doing "ps =
-ef|grep=20
  pipewire" or something similar.</DIV>
  <DIV class=3DelementToProof=20
  style=3D"FONT-SIZE: 12pt; FONT-FAMILY: Aptos, Aptos_EmbeddedFont, =
Aptos_MSFontService, Calibri, Helvetica, sans-serif; COLOR: =
rgb(0,0,0)"><BR></DIV>
  <DIV class=3DelementToProof=20
  style=3D"FONT-SIZE: 12pt; FONT-FAMILY: Aptos, Aptos_EmbeddedFont, =
Aptos_MSFontService, Calibri, Helvetica, sans-serif; COLOR: =
rgb(0,0,0)"><BR></DIV>
  <DIV class=3DelementToProof=20
  style=3D"FONT-SIZE: 12pt; FONT-FAMILY: Aptos, Aptos_EmbeddedFont, =
Aptos_MSFontService, Calibri, Helvetica, sans-serif; COLOR: =
rgb(0,0,0)"><BR></DIV>
  <HR style=3D"WIDTH: 98%; DISPLAY: inline-block">

  <DIV id=3DdivRplyFwdMsg class=3DelementToProof dir=3Dltr><SPAN=20
  style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri, sans-serif; COLOR: =
rgb(0,0,0)"><B>From:</B>&nbsp;Martin=20
  McCormick <A class=3Dmoz-txt-link-rfc2396E=20
  =
href=3D"mailto:martin.m@suddenlink.net">&lt;martin.m@suddenlink.net&gt;</=
A><BR></SPAN></DIV>
  <DIV=20
  style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri, sans-serif; COLOR: =
rgb(0,0,0); DIRECTION: ltr"><B>Sent:</B>&nbsp;Monday,=20
  September 2, 2024 6:08 PM<BR><B>To:</B>&nbsp;<A =
class=3Dmoz-txt-link-abbreviated=20
  =
href=3D"mailto:speakup@linux-speakup.org">speakup@linux-speakup.org</A> =
<A=20
  class=3Dmoz-txt-link-rfc2396E=20
  =
href=3D"mailto:speakup@linux-speakup.org">&lt;speakup@linux-speakup.org&g=
t;</A></DIV>
  <DIV class=3DelementToProof=20
  style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri, sans-serif; COLOR: =
rgb(0,0,0); DIRECTION: ltr"><B>Subject:</B>&nbsp;Re:=20
  SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was howto =
run=20
  speakup/orca concurrently in ubuntu)</DIV>
  <DIV class=3DelementToProof style=3D"DIRECTION: ltr">&nbsp;</DIV>
  <DIV class=3DelementToProof style=3D"FONT-SIZE: 11pt">Thanks for the =
clarification=20
  about pipewire and why it is=20
  here.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I didn't =
realize that=20
  pulseaudio is fading into the<BR>sunset as it has been around and =
served well=20
  for quite a =
few<BR>years.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To=20
  remind those who have followed this thread today, the<BR>only real =
problem I=20
  am talking about is minor compared with stuff<BR>that is supposed to =
work but=20
  doesn't.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It looks =
like one=20
  should be able to get speakup to work<BR>older world of pure =
text-based=20
  command-line consoles since there<BR>are things that runa little more =
smoothly=20
  there than when GUI<BR>tools are=20
  needed.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; By the same =
token,=20
  the present implimentation of speakup<BR>with gnome also does well and =
all I=20
  was hoping to do was have<BR>both functionalities on the same=20
  system.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks for =
the=20
  information that has been provided as it<BR>is useful and I am still=20
  interested if there is a way to do this<BR>but at least things are =
about 95%=20
  =
working.<BR><BR>Martin<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR>"=
Jason=20
  J.G. White" <A class=3Dmoz-txt-link-rfc2396E=20
  href=3D"mailto:jason@jasonjgw.net">&lt;jason@jasonjgw.net&gt;</A>=20
  writes:<BR>&gt; While we're discussing clarifications, note that =
Pulseaudio is=20
  effectively<BR>&gt; deprecated now. Pipewire has superseded it. Also, =
Pipewire=20
  includes an<BR>&gt; implementation of the Pulseaudio client API, so =
that=20
  client applications<BR>&gt; designed for Pulseaudio still work =
normally under=20
  Pipewire.<BR><BR></DIV>
  <DIV=20
  style=3D"FONT-SIZE: 12pt; FONT-FAMILY: Aptos, Aptos_EmbeddedFont, =
Aptos_MSFontService, Calibri, Helvetica, sans-serif; COLOR: =
rgb(0,0,0)"><BR></DIV>
  <HR style=3D"WIDTH: 98%; DISPLAY: inline-block">

  <DIV id=3DdivRplyFwdMsg dir=3Dltr><SPAN=20
  style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri, sans-serif; COLOR: =
rgb(0,0,0)"><B>From:</B>&nbsp;Martin=20
  McCormick <A class=3Dmoz-txt-link-rfc2396E=20
  =
href=3D"mailto:martin.m@suddenlink.net">&lt;martin.m@suddenlink.net&gt;</=
A><BR><B>Sent:</B>&nbsp;Monday,=20
  September 2, 2024 6:08 PM<BR><B>To:</B>&nbsp;<A =
class=3Dmoz-txt-link-abbreviated=20
  =
href=3D"mailto:speakup@linux-speakup.org">speakup@linux-speakup.org</A> =
<A=20
  class=3Dmoz-txt-link-rfc2396E=20
  =
href=3D"mailto:speakup@linux-speakup.org">&lt;speakup@linux-speakup.org&g=
t;</A><BR><B>Subject:</B>&nbsp;Re:=20
  SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was howto =
run=20
  speakup/orca concurrently in ubuntu)</SPAN>=20
  <DIV>&nbsp;</DIV></DIV>
  <DIV style=3D"FONT-SIZE: 11pt">Thanks for the clarification about =
pipewire and=20
  why it is here.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I =
didn't=20
  realize that pulseaudio is fading into the<BR>sunset as it has been =
around and=20
  served well for quite a=20
  few<BR>years.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To =
remind=20
  those who have followed this thread today, the<BR>only real problem I =
am=20
  talking about is minor compared with stuff<BR>that is supposed to work =
but=20
  doesn't.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It looks =
like one=20
  should be able to get speakup to work<BR>older world of pure =
text-based=20
  command-line consoles since there<BR>are things that runa little more =
smoothly=20
  there than when GUI<BR>tools are=20
  needed.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; By the same =
token,=20
  the present implimentation of speakup<BR>with gnome also does well and =
all I=20
  was hoping to do was have<BR>both functionalities on the same=20
  system.<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thanks for =
the=20
  information that has been provided as it<BR>is useful and I am still=20
  interested if there is a way to do this<BR>but at least things are =
about 95%=20
  =
working.<BR><BR>Martin<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR>"=
Jason=20
  J.G. White" <A class=3Dmoz-txt-link-rfc2396E=20
  href=3D"mailto:jason@jasonjgw.net">&lt;jason@jasonjgw.net&gt;</A>=20
  writes:<BR>&gt; While we're discussing clarifications, note that =
Pulseaudio is=20
  effectively<BR>&gt; deprecated now. Pipewire has superseded it. Also, =
Pipewire=20
  includes an<BR>&gt; implementation of the Pulseaudio client API, so =
that=20
  client applications<BR>&gt; designed for Pulseaudio still work =
normally under=20
  Pipewire.<BR><BR></DIV></BLOCKQUOTE></BODY></HTML>

------=_NextPart_000_01EB_01DAFDF3.F4988F10--


