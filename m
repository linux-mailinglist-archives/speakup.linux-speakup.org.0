Return-Path: <speakup+bounces-1432-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D345BBEEC82
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 23:00:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=QJiO77ui;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2FD62382652; Sun, 19 Oct 2025 17:00:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0EF953818FC
	for <lists+speakup@lfdr.de>; Sun, 19 Oct 2025 17:00:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C06D73818F6; Sun, 19 Oct 2025 16:59:59 -0400 (EDT)
Received: from mail121.out.titan.email (mail121.out.titan.email [54.208.145.58])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5186D3818E5
	for <speakup@linux-speakup.org>; Sun, 19 Oct 2025 16:59:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4cqWCf2dW5z9rvn;
	Sun, 19 Oct 2025 20:59:58 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=xZ0GiQ6UeaDFaWhG/7vxLnzeXEyKDGX8BM3mN+y33b0=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=subject:date:mime-version:message-id:reply-to:from:to:references:from:to:subject:date:message-id:reply-to:references:cc:in-reply-to;
	q=dns/txt; s=titan1; t=1760907598; v=1;
	b=QJiO77uirEXGI6EF1jbjz1W8ANbmwNP9xSDQ2dpZHDB8L7eUEgqtbNOEwrHJa+7hrC8IQOAR
	TAsrnlDXHfbPVdnFHCUTRdz3X78R5DhBGljWsMcuYJ0Jxpv1uuj8Ki69iGuyL0Zn8rUdyinN/y0
	Z+CopPXdrMdzM1yfs6WsgA80=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4cqWCd6k9wz9rvT;
	Sun, 19 Oct 2025 20:59:57 +0000 (UTC)
Message-ID: <01f901dc413b$53e0ce70$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: <speakup@linux-speakup.org>,
	"Jason J.G. White" <jason@jasonjgw.net>
References: <01e601dc4137$e14192d0$01ffa8c0@nucwin10> <8eb4fc42-e67c-469a-b518-fe20303ac41b@jasonjgw.net>
Subject: Re: Stop Espeakup From Starting Automatically
Date: Sun, 19 Oct 2025 15:59:57 -0500
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
	boundary="----=_NextPart_000_01F6_01DC4111.6A847F70"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1760907598195367367.2350.4811890513546747654@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=JbdGrVKV c=1 sm=1 tr=0 ts=68f5514e
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=r77TgQKjGQsHNAKrUKIA:9
	a=qPKtzgQbAAAA:8 a=VNj0__E9qx5OF6pa-YYA:9 a=QEXdDO2ut3YA:10
	a=8Ro6GKBAAAAA:8 a=IHA5YLaaP4mT5WKuB3EA:9 a=xEgv43MNpvb6jjRX:21
	a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=OTAqJWGB1laLS8RTg9aS:22
	a=Xhl6o1fcNCG9FGZrHFNY:22 a=P3K-DvM3-jjlTNsN-mCd:22
	a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_01F6_01DC4111.6A847F70
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jason,
I'll bet that does it.
I didn't know it would be a service, as such.
Thanks.
----- Original Message -----=20
From: Jason J.G. White=20
To: speakup@linux-speakup.org=20
Sent: Sunday, October 19, 2025 3:52 PM
Subject: Re: Stop Espeakup From Starting Automatically





On 19/10/25 16:35, K0LNY ?? wrote:

  I installed espeakup on my Raspberry PI, and I don't want it to start =
automatically.
does "systemctl disable espeakup" work? Assuming you're running systemd, =
you need to find and disable the relevant systemd unit. 
------=_NextPart_000_01F6_01DC4111.6A847F70
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=EF=BB=BF<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content=3D"text/html; charset=3DUTF-8" http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001">
<STYLE></STYLE>
</HEAD>
<BODY bgColor=3D#ffffff>
<DIV>
<DIV><FONT size=3D2 face=3DArial>Hi Jason,</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I'll bet that does it.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I didn't know it would be a service, as =

such.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Thanks.</FONT></DIV></DIV>
<DIV style=3D"FONT: 10pt arial">----- Original Message -----=20
<DIV style=3D"BACKGROUND: #e4e4e4; font-color: black"><B>From:</B> <A=20
title=3Djason@jasonjgw.net href=3D"mailto:jason@jasonjgw.net">Jason J.G. =
White</A>=20
</DIV>
<DIV><B>To:</B> <A title=3Dspeakup@linux-speakup.org=20
href=3D"mailto:speakup@linux-speakup.org">speakup@linux-speakup.org</A> =
</DIV>
<DIV><B>Sent:</B> Sunday, October 19, 2025 3:52 PM</DIV>
<DIV><B>Subject:</B> Re: Stop Espeakup From Starting =
Automatically</DIV></DIV>
<DIV><BR></DIV>
<P><BR></P>
<DIV class=3Dmoz-cite-prefix>On 19/10/25 16:35, K0LNY ?? =
wrote:<BR></DIV>
<BLOCKQUOTE cite=3Dmid:01e601dc4137$e14192d0$01ffa8c0@nucwin10 =
type=3D"cite">
  <DIV><FONT size=3D2 face=3DArial>I installed espeakup on my Raspberry =
PI, and I=20
  don't want it to start automatically.</FONT></DIV></BLOCKQUOTE>does =
"systemctl=20
disable espeakup" work? Assuming you're running systemd, you need to =
find and=20
disable the relevant systemd unit. </BODY></HTML>

------=_NextPart_000_01F6_01DC4111.6A847F70--


