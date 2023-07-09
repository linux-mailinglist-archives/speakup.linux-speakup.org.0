Return-Path: <speakup+bounces-983-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4808674C90E
	for <lists+speakup@lfdr.de>; Mon, 10 Jul 2023 01:13:48 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=Yf62DFyL;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 77D08382578; Sun,  9 Jul 2023 19:13:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 57720382441
	for <lists+speakup@lfdr.de>; Sun,  9 Jul 2023 19:13:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA02F382459; Sun,  9 Jul 2023 19:13:39 -0400 (EDT)
Received: from mail41.out.titan.email (mail41.out.titan.email [209.209.25.33])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5CA8C3823DC
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 19:13:39 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id F07C060068
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 23:13:25 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 9DBB1600CF
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 23:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1688944405;
	bh=BY40g8hI32sT6NpbdsTOH0rXgQWfG0kQZCr0iCXaOgs=;
	h=Message-ID:Reply-To:From:To:Subject:Date:MIME-Version:From:To:Cc:
	 Subject:Message-ID;
	b=Yf62DFyLC4HLCRVd69TXnnlJF6GfB77bPnXEhVuZeN5eYcTIsXKTvx4IHn65dwMce
	 Bspt5CkGZdpP4b0orJad2uBtcMYltlS9M3Y35yzFeZ4IEsl1QqaqTrI+qcYRyx8glF
	 IBDtDfuywDMW2vW/rsFO0Dif8qmXNEfM7ruWxIsU=
Message-ID: <022501d9b2ba$f6c7ca10$01ffa8c0@nucwin10>
Reply-To: "K0LNY" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: configuring a USB/Serial port
Date: Sun, 9 Jul 2023 18:13:25 -0500
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
	boundary="----=_NextPart_000_0222_01D9B291.0D7C9210"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1688944405795988700.5404.1899900184386676158@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=RbBWSXhv c=1 sm=1 tr=0 ts=64ab3f15
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=r77TgQKjGQsHNAKrUKIA:9 a=NWVyi6acFmK7yo8P69sA:9 a=wPNLvfGTeEIA:10
	a=ZXulRonScM0A:10 a=7x4gi3i2s2xg_ZBCrFoA:9 a=A2CfKYFFfDNv4iAA:21
	a=_W_S_7VecoQA:10
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_0222_01D9B291.0D7C9210
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Group,
I have a Dectalk on a futureTK serial to USB converter in Ubuntu-server =
(CLI).
This is in a VM.
I am trying to be able to send anything to the Dectalk express.
I have tried configuring the port with the below command, and I get the =
error
unable to  perform all requested actions
I really don't know what I'm doing, so any advice would be appreciated.
Here's what I'm entering:
stty -F /dev/tty4 9600 cs8 -cstopb -parenb

Thanks.

Glenn
------=_NextPart_000_0222_01D9B291.0D7C9210
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3Diso-8859-1" =
http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001">
<STYLE></STYLE>
</HEAD>
<BODY bgColor=3D#ffffff>
<DIV><FONT size=3D2 face=3DArial>Hello Group,</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I have a Dectalk on a futureTK serial =
to USB=20
converter in Ubuntu-server (CLI).</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>This is in a VM.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I am trying to be able to send anything =
to the=20
Dectalk express.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I have tried configuring the port with =
the below=20
command, and I get the error</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>unable to&nbsp; perform all requested=20
actions</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I really don't know what I'm doing, so =
any advice=20
would be appreciated.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Here's what I'm entering:</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>stty -F /dev/tty4 9600 cs8 -cstopb=20
-parenb</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV><FONT size=3D2 face=3DArial>Thanks.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV></BODY></HTML>

------=_NextPart_000_0222_01D9B291.0D7C9210--


