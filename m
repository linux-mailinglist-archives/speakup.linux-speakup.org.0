Return-Path: <speakup+bounces-1430-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C1BBEBEEC5B
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 22:45:05 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=XhJqTlbs;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A9DDC382651; Sun, 19 Oct 2025 16:35:33 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8B12B38210A
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 16:35:33 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 212023818D6; Sun, 19 Oct 2025 16:35:26 -0400 (EDT)
Received: from mail4.out.titan.email (mail4.out.titan.email [35.153.42.126])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BACD63815C8
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 16:35:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cqVg948xYz9rvg
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 20:35:17 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=Tkw9e9JDRfXX/TrFX+bofxwe3olgx3t2UIFBYCTDiU8=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=mime-version:from:message-id:reply-to:to:date:subject:from:to:subject:date:message-id:reply-to:cc:in-reply-to:references;
	q=dns/txt; s=titan1; t=1760906117; v=1;
	b=XhJqTlbsi+jaCyi5wqJ+A+p0O1lJtCRCf+1lF929MJx29tCzvi8UIhKLIL3IwJ/OaEXjimHF
	BeqpiJ/VT3O7ecBJlJGebD6DcOYicLsLKJ389HrZU/EUjp7m88PALRNv16EVNx+BRCEcDR8x5jx
	RwGMqZiSApxtjOmKUvBH5twY=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cqVg91lcQz9rvn
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 20:35:17 +0000 (UTC)
Message-ID: <01e601dc4137$e14192d0$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Stop Espeakup From Starting Automatically
Date: Sun, 19 Oct 2025 15:35:16 -0500
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
	boundary="----=_NextPart_000_01E3_01DC410D.F7E60720"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1760906117402544599.2350.5555069190919064806@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=GYTtnRXL c=1 sm=1 tr=0 ts=68f54b85
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=r77TgQKjGQsHNAKrUKIA:9
	a=VJOwDrUOiHIpqWtf_y0A:9 a=wPNLvfGTeEIA:10 a=Djg-FPn87BpvTZoU2hwA:9
	a=9bkV-ORXsPHIQFRi:21 a=_W_S_7VecoQA:10 a=P3K-DvM3-jjlTNsN-mCd:22
	a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_01E3_01DC410D.F7E60720
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,
I installed espeakup on my Raspberry PI, and I don't want it to start =
automatically.
How do I prevent this?
Thanks.

Glenn


It used to be wine, women, and song,
Now it's beer, the old lady, and TV.

Glenn K0LNY & WSAT439

------=_NextPart_000_01E3_01DC410D.F7E60720
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
<DIV><FONT size=3D2 face=3DArial>Hi All,</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I installed espeakup on my Raspberry =
PI, and I=20
don't want it to start automatically.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>How do I prevent this?</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Thanks.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV>
<DIV>&nbsp;</DIV><FONT size=3D2 face=3DArial>
<DIV><BR>It used to be wine, women, and song,<BR>Now it's beer, the old =
lady,=20
and TV.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Glenn K0LNY &amp; WSAT439<BR></FONT></DIV></BODY></HTML>

------=_NextPart_000_01E3_01DC410D.F7E60720--


