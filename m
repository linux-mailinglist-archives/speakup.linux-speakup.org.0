Return-Path: <speakup+bounces-1027-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 380AA7AA6F8
	for <lists+speakup@lfdr.de>; Fri, 22 Sep 2023 04:20:22 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=Yc76hGA4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 18DDA382696; Thu, 21 Sep 2023 22:20:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E96FE38263A
	for <lists+speakup@lfdr.de>; Thu, 21 Sep 2023 22:20:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6ED5638263B; Thu, 21 Sep 2023 22:20:05 -0400 (EDT)
Received: from mail12.out.flockmail.com (mail12.out.flockmail.com [52.7.194.170])
	by befuddled.reisers.ca (Postfix) with ESMTPS id ABB48382636
	for <speakup@linux-speakup.org>; Thu, 21 Sep 2023 22:20:04 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id D26FC60095
	for <speakup@linux-speakup.org>; Fri, 22 Sep 2023 02:20:02 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 6A1B660076
	for <speakup@linux-speakup.org>; Fri, 22 Sep 2023 02:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1695349202;
	bh=Gk5aqDcUs3GzHC5OK8O1L7i/zBFsDiYX6FYkxZg4kHg=;
	h=Message-ID:Reply-To:From:To:Subject:Date:MIME-Version:From:To:Cc:
	 Subject:Message-ID;
	b=Yc76hGA4OSe8yeWQnHaVvaEqCRjQM4M45IZnK+P107tsbdCSttTRukX5eTzfGJEHU
	 JTiJR8x6wpPPozQZXkCM34bhP1pOezhNNS4k1rTJ+YAo/DAQ8aKGT8grs1Hy6Gp931
	 11GOLfBDSMCtuTX607AAn3omVSGXf2DmuxJ5lRvs=
Message-ID: <042301d9ecfb$4b9a9a70$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Voxin In Ubuntu-Server
Date: Thu, 21 Sep 2023 21:20:02 -0500
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
	boundary="----=_NextPart_000_0420_01D9ECD1.623C76B0"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1695349202589551902.1460.2331327320222237278@prod-use1-smtp-out1001.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=b5x0oPKx c=1 sm=1 tr=0 ts=650cf9d2
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=r77TgQKjGQsHNAKrUKIA:9 a=cgY4HTEKVMvgrbhspVkA:9 a=wPNLvfGTeEIA:10
	a=eaem5abnVm5gNZGoc9IA:9 a=1xiaDYMIoMxA6leZ:21 a=_W_S_7VecoQA:10
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_0420_01D9ECD1.623C76B0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Group,
I have a VM running of Ubuntu Server, CLI only, and latest version, I =
downloaded it this year, and the latest Voxin (IBM voice).
I installed Voxin, and it spoke after the install, and no errors.
I rebooted the server,  and espeak was all that was talking.
I ran spd-say, with no sound.
So I ran spd-conf multiple times with different variations.
I tried it with and without sudo.
I always set up a user config.
I tried both voxin and ibmtts for the synth choice.
The only way I got audio from the audio test was with alsa, and with =
sudo when I started it.
But never any voxin or ibmtts output.
Thanks for any suggestions.
Glenn

A man with a clock always knows what time it is.
A man with two clocks is never sure.
-- A derivative of Segal's law
------=_NextPart_000_0420_01D9ECD1.623C76B0
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
<DIV><FONT size=3D2 face=3DArial>I have a VM running of Ubuntu Server, =
CLI only, and=20
latest version, I downloaded it this year, and the latest Voxin (IBM=20
voice).</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I installed Voxin, and it spoke after =
the install,=20
and no errors.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I rebooted the server,&nbsp; and espeak =
was all=20
that was talking.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I ran spd-say, with no =
sound.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>So I ran spd-conf multiple times with =
different=20
variations.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I tried it with and without =
sudo.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I always set up a user =
config.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I tried both voxin and ibmtts for the =
synth=20
choice.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>The only way I got audio from the audio =
test was=20
with alsa, and with sudo when I started it.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>But never any voxin or ibmtts =
output.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Thanks for any =
suggestions.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV><FONT size=3D2 face=3DArial>A man with a clock always knows what =
time it=20
is.<BR>A man with two clocks is never sure.<BR>-- A derivative of =
Segal's=20
law</FONT></DIV></BODY></HTML>

------=_NextPart_000_0420_01D9ECD1.623C76B0--


