Return-Path: <speakup+bounces-1433-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 196D0BEED16
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 23:18:37 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=E2xh39Bs;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A8C3F3821E5; Sun, 19 Oct 2025 17:18:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 872C538190E
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 17:18:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1C0EA381919; Sun, 19 Oct 2025 17:18:29 -0400 (EDT)
Received: from mail70.out.titan.email (mail70.out.titan.email [3.216.99.52])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D72FD3818FC
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 17:18:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cqWcp6tzsz9rvn
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 21:18:18 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=Xp4423ywMUIklxSm37P5z0ulGpy4CJn9l/B+KZHJpX0=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=message-id:reply-to:date:mime-version:from:to:subject:from:to:subject:date:message-id:reply-to:cc:in-reply-to:references;
	q=dns/txt; s=titan1; t=1760908698; v=1;
	b=E2xh39BsgqquiLteDGjT3GyHH16+dNNF+cAau0111P9rm/blL+viidmmnLez8RyVmKXRGRUq
	MN/riWuHU/LVIxNx4bjFJwO5+KetEepwOVCujdj1hIskNpiHTGtrYsZo38D3cEt5nbkurjIh79I
	t3hZeuNqWf6Fy1rcU/gfeN18=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cqWcp4VpVz9rvY
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 21:18:18 +0000 (UTC)
Message-ID: <021401dc413d$e3e246a0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Switching To Voxin
Date: Sun, 19 Oct 2025 16:18:17 -0500
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
	boundary="----=_NextPart_000_0211_01DC4113.FA984720"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1760908698788658068.2350.8685961315590463468@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=GYTtnRXL c=1 sm=1 tr=0 ts=68f5559a
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=r77TgQKjGQsHNAKrUKIA:9
	a=AR6RWPhoa1sB9bu1elQA:9 a=wPNLvfGTeEIA:10 a=ROu1sIqoyElQ6XBX_hUA:9
	a=dLdiA2G3PL9aiMz9:21 a=_W_S_7VecoQA:10 a=P3K-DvM3-jjlTNsN-mCd:22
	a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_0211_01DC4113.FA984720
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All again,
Well I got the Voxin installed, and set up spd-conf to use voxin.
Voxin talks with spd-say, and now espeak has no voice.
Which almost solves the talking on startup, but not the right solution, =
LOL
So, how do I tell espeakup to use the Voxin, which is set up in =
speech-dispatcher?
Thanks.

Glenn

It used to be wine, women, and song,
Now it's beer, the old lady, and TV.

Glenn K0LNY & WSAT439

------=_NextPart_000_0211_01DC4113.FA984720
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
<DIV><FONT size=3D2 face=3DArial>Hi All again,</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Well I got the Voxin installed, and set =
up spd-conf=20
to use voxin.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Voxin talks with spd-say, and now =
espeak has no=20
voice.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Which almost solves the talking on =
startup, but not=20
the right solution, LOL</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>So, how do I tell espeakup to use the =
Voxin, which=20
is set up in speech-dispatcher?</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Thanks.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV><FONT size=3D2 =
face=3DArial>
<DIV><BR>It used to be wine, women, and song,<BR>Now it's beer, the old =
lady,=20
and TV.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Glenn K0LNY &amp; WSAT439<BR></FONT></DIV></BODY></HTML>

------=_NextPart_000_0211_01DC4113.FA984720--


