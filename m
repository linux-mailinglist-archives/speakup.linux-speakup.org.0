Return-Path: <speakup+bounces-1061-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ACD7782C84D
	for <lists+speakup@lfdr.de>; Sat, 13 Jan 2024 01:24:36 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=Cv6tmeEU;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 19A1138278A; Fri, 12 Jan 2024 19:24:28 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EAC643821B4
	for <lists+speakup@lfdr.de>; Fri, 12 Jan 2024 19:24:27 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 58D203821B4; Fri, 12 Jan 2024 19:24:20 -0500 (EST)
Received: from mail42.out.titan.email (mail42.out.titan.email [209.209.25.43])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0A24A38206A
	for <speakup@linux-speakup.org>; Fri, 12 Jan 2024 19:24:20 -0500 (EST)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id BB3DAE0046
	for <speakup@linux-speakup.org>; Sat, 13 Jan 2024 00:24:18 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 67F86E0033
	for <speakup@linux-speakup.org>; Sat, 13 Jan 2024 00:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1705105458;
	bh=E2Md19o7aw+amGnO9hzVqW1xqUin1lzYfmMGFicNdSM=;
	h=Message-ID:Reply-To:From:To:Subject:Date:MIME-Version:From:To:Cc:
	 Subject:Message-ID;
	b=Cv6tmeEU663uBKOWumg+xl56eGtxkmv8KjC+OSKcOCYMXF27G8vgbrCa0AGiByX5d
	 2jXothZT9JwfpUcqnHpIYy2JLd4i7j7K0R48PNlm94FLneRFQWb+4wyPE/6Z0TFPa8
	 V5gkFUHKznm3PI7x4PyGMothNLccTcriv3Z+DU48=
Message-ID: <011701da45b6$d8e23a00$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Documentation For Some Hardware Synths
Date: Fri, 12 Jan 2024 18:24:17 -0600
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
	boundary="----=_NextPart_000_0114_01DA4584.8DD64380"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1705105458569436208.4525.3849004164581411601@prod-use1-smtp-out1004.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=Z/zqHmRA c=1 sm=1 tr=0 ts=65a1d832
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=r77TgQKjGQsHNAKrUKIA:9 a=bLFSaJE4owTN6Uph2yoA:9 a=wPNLvfGTeEIA:10
	a=DLuIbwvRiOrO7gjQEdMA:9 a=y3EomSOYWBH6skzw:21 a=_W_S_7VecoQA:10
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_0114_01DA4584.8DD64380
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
I thought I'd start here, since I think this group might be the most =
likely to have the documentation I'm looking for.
An acquaintance is working on a project to make his device for Ham =
radios feed out to a speech synthesizer for Blind Hams.
He will need to know the port string information for communicating with =
them.
I have a Dectalk and a Doubletalk, and I think those are the most synths =
that folks might still have.
Can anyone with documentation on these and any other synths zip them up =
and send them to me, so I can send them on to him?
This is a fantastic project for Blind Hams.
Thanks.

Glenn
A man with a clock always knows what time it is.
A man with two clocks is never sure.
-- A derivative of Segal's law
------=_NextPart_000_0114_01DA4584.8DD64380
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
<DIV><FONT size=3D2 face=3DArial>Hello All,</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I thought I'd start here, since I think =
this group=20
might be the most likely to have the documentation I'm looking =
for.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>An acquaintance is working on a project =
to make his=20
device for Ham radios feed out to a speech synthesizer for Blind=20
Hams.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>He will need to know the port string =
information=20
for communicating with them.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I have a Dectalk and a Doubletalk, and =
I think=20
those are the most synths that folks might still have.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Can anyone with documentation on these =
and any=20
other synths zip them up and send them to me, so I can send them on to=20
him?</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>This is a fantastic project for Blind=20
Hams.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Thanks.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>A man with a clock always knows what =
time it=20
is.<BR>A man with two clocks is never sure.<BR>-- A derivative of =
Segal's=20
law</FONT></DIV></BODY></HTML>

------=_NextPart_000_0114_01DA4584.8DD64380--


