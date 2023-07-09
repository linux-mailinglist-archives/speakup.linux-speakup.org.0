Return-Path: <speakup+bounces-985-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E489574C924
	for <lists+speakup@lfdr.de>; Mon, 10 Jul 2023 01:55:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=EzAE7Yet;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 680FD382566; Sun,  9 Jul 2023 19:55:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 46C2B382459
	for <lists+speakup@lfdr.de>; Sun,  9 Jul 2023 19:55:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 93B9B38245E; Sun,  9 Jul 2023 19:55:12 -0400 (EDT)
Received: from mail68.out.titan.email (mail68.out.titan.email [3.216.99.50])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5D449382459
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 19:55:12 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 35C4A100093;
	Sun,  9 Jul 2023 23:55:11 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id BFE0A10000D;
	Sun,  9 Jul 2023 23:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1688946911;
	bh=7tLkxXjYZR95dzp6JIrQgGXxSdHaJxDJvKPwgO1MRrs=;
	h=Message-ID:Reply-To:From:To:References:Subject:Date:MIME-Version:
	 From:To:Cc:Subject:Message-ID;
	b=EzAE7Yet4aWkcTb7IRicXJik5dXYgftVQsFvYZ8usGj1CivTUIsGLaFCdf7J6JCqW
	 NdUpEEYb+uyBBpE+/srWvBKCsj7wjErhL4KkbuUEDoo6v9/6CsYYMo3id8YXhRWzbn
	 OFlq7cBYSGlv+aQB3iyWBaLnZgU6oq4fk03Egjmk=
Message-ID: <023301d9b2c0$cc014300$01ffa8c0@nucwin10>
Reply-To: "K0LNY" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY" <glenn@ervin.email>
To: <speakup@linux-speakup.org>,
	"Jason White" <jason@jasonjgw.net>
References: <022501d9b2ba$f6c7ca10$01ffa8c0@nucwin10> <a9d7f09d-71c6-8e1d-5f90-243a82de497c@jasonjgw.net>
Subject: Re: configuring a USB/Serial port
Date: Sun, 9 Jul 2023 18:55:10 -0500
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
	boundary="----=_NextPart_000_0230_01D9B296.E293B5F0"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1688946911007209861.11573.1571975190109887188@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=RbBWSXhv c=1 sm=1 tr=0 ts=64ab48df
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=r77TgQKjGQsHNAKrUKIA:9 a=qPKtzgQbAAAA:8 a=eDnfQn2ii8wbki4sGgIA:9
	a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10 a=8Ro6GKBAAAAA:8
	a=uNZRaWmWZJughtaDvn4A:9 a=kIg5BXuLoCr6CAYP:21 a=_W_S_7VecoQA:10
	a=lqcHg5cX4UMA:10 a=OTAqJWGB1laLS8RTg9aS:22 a=Xhl6o1fcNCG9FGZrHFNY:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_0230_01D9B296.E293B5F0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I should have added, I did lsusb, and the futuretk is on usb2, but =
I tried that command I sent with /dev/usb2 and it gave an invalid device =
or something like that.
Glenn
  ----- Original Message -----=20
  From: Jason White=20
  To: speakup@linux-speakup.org=20
  Sent: Sunday, July 9, 2023 6:45 PM
  Subject: Re: configuring a USB/Serial port





  On 9/7/23 19:13, K0LNY wrote:

    I am trying to be able to send anything to the Dectalk express.=20
    I have tried configuring the port with the below command, and I get =
the error
    unable to  perform all requested actions
    I really don't know what I'm doing, so any advice would be =
appreciated.
    Here's what I'm entering:
    stty -F /dev/tty4 9600 cs8 -cstopb -parenb
  Check your kernel logs to obtain the name of the device representing =
the serial port. It's probably /dev/ttyS0 or /dev/ttyusb0 or similar. =
/dev/tty4 is not it, I'm fairly sure.

------=_NextPart_000_0230_01D9B296.E293B5F0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=EF=BB=BF<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3DUTF-8" http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001"></HEAD>
<BODY bgColor=3D#ffffff>
<DIV><FONT size=3D2 face=3DArial>Yes, I should have added, I did lsusb, =
and the=20
futuretk is on usb2, but I tried that command I sent with /dev/usb2 and =
it gave=20
an invalid device or something like that.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV>
<BLOCKQUOTE=20
style=3D"PADDING-LEFT: 5px; MARGIN-LEFT: 5px; BORDER-LEFT: #000000 2px =
solid; PADDING-RIGHT: 0px; MARGIN-RIGHT: 0px">
  <DIV style=3D"FONT: 10pt arial">----- Original Message ----- </DIV>
  <DIV=20
  style=3D"BACKGROUND: #e4e4e4; FONT: 10pt arial; font-color: =
black"><B>From:</B>=20
  <A title=3Djason@jasonjgw.net href=3D"mailto:jason@jasonjgw.net">Jason =
White</A>=20
  </DIV>
  <DIV style=3D"FONT: 10pt arial"><B>To:</B> <A =
title=3Dspeakup@linux-speakup.org=20
  =
href=3D"mailto:speakup@linux-speakup.org">speakup@linux-speakup.org</A> =
</DIV>
  <DIV style=3D"FONT: 10pt arial"><B>Sent:</B> Sunday, July 9, 2023 6:45 =
PM</DIV>
  <DIV style=3D"FONT: 10pt arial"><B>Subject:</B> Re: configuring a =
USB/Serial=20
  port</DIV>
  <DIV><BR></DIV>
  <P><BR></P>
  <DIV class=3Dmoz-cite-prefix>On 9/7/23 19:13, K0LNY wrote:<BR></DIV>
  <BLOCKQUOTE cite=3Dmid:022501d9b2ba$f6c7ca10$01ffa8c0@nucwin10 =
type=3D"cite">
    <META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001">
    <STYLE></STYLE>
    <FONT size=3D2 face=3DArial>I am trying to be able to send anything =
to the=20
    Dectalk express.</FONT>=20
    <DIV><FONT size=3D2 face=3DArial>I have tried configuring the port =
with the=20
    below command, and I get the error</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>unable to&nbsp; perform all =
requested=20
    actions</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>I really don't know what I'm doing, =
so any=20
    advice would be appreciated.</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>Here's what I'm =
entering:</FONT></DIV>
    <DIV><FONT size=3D2 face=3DArial>stty -F /dev/tty4 9600 cs8 -cstopb=20
    -parenb</FONT></DIV></BLOCKQUOTE><FONT size=3D2><FONT =
face=3DArial>Check your=20
  kernel logs to obtain the name of the device representing the serial =
port.=20
  It's probably /dev/ttyS0 or /dev/ttyusb0 or similar. /dev/tty4 is not =
it, I'm=20
  fairly sure.</FONT></FONT><BR></BLOCKQUOTE></BODY></HTML>

------=_NextPart_000_0230_01D9B296.E293B5F0--


