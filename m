Return-Path: <speakup+bounces-1010-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 604A5755435
	for <lists+speakup@lfdr.de>; Sun, 16 Jul 2023 22:27:50 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=DWbwqXrf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E37BE38257D; Sun, 16 Jul 2023 16:27:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C4C12382478
	for <lists+speakup@lfdr.de>; Sun, 16 Jul 2023 16:27:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 34E0838247D; Sun, 16 Jul 2023 16:27:42 -0400 (EDT)
Received: from mail71.out.titan.email (mail71.out.titan.email [209.209.25.178])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D857B382471
	for <speakup@linux-speakup.org>; Sun, 16 Jul 2023 16:27:41 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id E3D79140054;
	Sun, 16 Jul 2023 20:27:37 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 75C8C14000D;
	Sun, 16 Jul 2023 20:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1689539257;
	bh=A4Criz49H0wfkH4wCB7autl01uhgy1hiaYvQHWa7iYI=;
	h=Message-ID:Reply-To:From:To:References:Subject:Date:MIME-Version:
	 From:To:Cc:Subject:Message-ID;
	b=DWbwqXrf+xzG2otj8Vr4kBhHHOeOIdOBAJ2UTyzp/tmnotu9dxGkp0qXvzvUsZkgI
	 kvrV/Yb9efAyQUR7/9iG8Ufsz1DDSTmIKajM5LSjn9heLJhhZLhzfwTWLIesZz6K8t
	 5PCjrJbVk7JEEuYHmQxDyI7XyGEhjkU3Tl0l/j0Y=
Message-ID: <038201d9b823$f61f1aa0$01ffa8c0@nucwin10>
Reply-To: "K0LNY" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY" <glenn@ervin.email>
To: <pawel@lobap.ca>,
	<speakup@linux-speakup.org>
References: <000a01d9b823$3acb7a00$b0626e00$@lobap.ca>
Subject: Re: Serial-to-USB adapter
Date: Sun, 16 Jul 2023 15:27:36 -0500
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
	boundary="----=_NextPart_000_037F_01D9B7FA.0CC14500"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1689539257710962143.22953.2704171966207634030@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=Wrftc/Tv c=1 sm=1 tr=0 ts=64b452b9
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=r77TgQKjGQsHNAKrUKIA:9 a=vggBfdFIAAAA:8 a=9DW3d_bzAAAA:8 a=qPKtzgQbAAAA:8
	a=afO2odzGWFd2xIrbRb0A:9 a=wPNLvfGTeEIA:10 a=SSmOFEACAAAA:8
	a=yMhMjlubAAAA:8 a=Ke_vGStW3HN4w6FE3ssA:9 a=LvcDshgCukBH0AQy:21
	a=gKO2Hq4RSVkA:10 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10
	a=9bkbTV5emX0aIFC-QskG:22 a=OTAqJWGB1laLS8RTg9aS:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multi-part message in MIME format.

------=_NextPart_000_037F_01D9B7FA.0CC14500
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I just bought this one less than a month ago from Amazon.com for 11 =
dollars:
https://www.amazon.com/dp/B00IDSM6BW?ref=3Dppx_yo2ov_dt_b_product_details=
&th=3D1
Glenn
  ----- Original Message -----=20
  From: pawel@lobap.ca=20
  To: speakup@linux-speakup.org=20
  Sent: Sunday, July 16, 2023 3:22 PM
  Subject: Serial-to-USB adapter


  Hi,

  Could you recommend any serial-to-USB adapter to connect my Apollo =
synth to my Linux box, please?

  Thanks,

  Pawel

------=_NextPart_000_037F_01D9B7FA.0CC14500
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns=3D"http://www.w3.org/TR/REC-html40" xmlns:v =3D=20
"urn:schemas-microsoft-com:vml" xmlns:o =3D=20
"urn:schemas-microsoft-com:office:office" xmlns:w =3D=20
"urn:schemas-microsoft-com:office:word" xmlns:m =3D=20
"http://schemas.microsoft.com/office/2004/12/omml"><HEAD>
<META content=3D"text/html; charset=3Diso-8859-1" =
http-equiv=3DContent-Type>
<META name=3DGENERATOR content=3D"MSHTML 11.00.10570.1001">
<STYLE>@font-face {
	font-family: Cambria Math;
}
@font-face {
	font-family: Calibri;
}
@page WordSection1 {size: 612.0pt 792.0pt; margin: 72.0pt 72.0pt 72.0pt =
72.0pt; }
P.MsoNormal {
	FONT-SIZE: 11pt; FONT-FAMILY: "Calibri",sans-serif; MARGIN: 0cm; =
mso-ligatures: standardcontextual; mso-fareast-language: EN-US
}
LI.MsoNormal {
	FONT-SIZE: 11pt; FONT-FAMILY: "Calibri",sans-serif; MARGIN: 0cm; =
mso-ligatures: standardcontextual; mso-fareast-language: EN-US
}
DIV.MsoNormal {
	FONT-SIZE: 11pt; FONT-FAMILY: "Calibri",sans-serif; MARGIN: 0cm; =
mso-ligatures: standardcontextual; mso-fareast-language: EN-US
}
SPAN.EmailStyle17 {
	FONT-FAMILY: "Calibri",sans-serif; COLOR: windowtext; mso-style-type: =
personal-compose
}
.MsoChpDefault {
	FONT-FAMILY: "Calibri",sans-serif; mso-fareast-language: EN-US; =
mso-style-type: export-only
}
DIV.WordSection1 {
	page: WordSection1
}
</STYLE>
<!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></HEAD>
<BODY lang=3DEN-CA style=3D"WORD-WRAP: break-word" vLink=3D#954f72 =
link=3D#0563c1=20
bgColor=3D#ffffff>
<DIV><FONT size=3D2 face=3DArial>I just bought this one less than a =
month ago from=20
Amazon.com for 11 dollars:</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial><A=20
href=3D"https://www.amazon.com/dp/B00IDSM6BW?ref=3Dppx_yo2ov_dt_b_product=
_details&amp;th=3D1">https://www.amazon.com/dp/B00IDSM6BW?ref=3Dppx_yo2ov=
_dt_b_product_details&amp;th=3D1</A></FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV>
<BLOCKQUOTE=20
style=3D"PADDING-LEFT: 5px; MARGIN-LEFT: 5px; BORDER-LEFT: #000000 2px =
solid; PADDING-RIGHT: 0px; MARGIN-RIGHT: 0px"=20
dir=3Dltr>
  <DIV style=3D"FONT: 10pt arial">----- Original Message ----- </DIV>
  <DIV=20
  style=3D"BACKGROUND: #e4e4e4; FONT: 10pt arial; font-color: =
black"><B>From:</B>=20
  <A title=3Dpawel@lobap.ca =
href=3D"mailto:pawel@lobap.ca">pawel@lobap.ca</A> </DIV>
  <DIV style=3D"FONT: 10pt arial"><B>To:</B> <A =
title=3Dspeakup@linux-speakup.org=20
  =
href=3D"mailto:speakup@linux-speakup.org">speakup@linux-speakup.org</A> =
</DIV>
  <DIV style=3D"FONT: 10pt arial"><B>Sent:</B> Sunday, July 16, 2023 =
3:22 PM</DIV>
  <DIV style=3D"FONT: 10pt arial"><B>Subject:</B> Serial-to-USB =
adapter</DIV>
  <DIV><BR></DIV>
  <DIV class=3DWordSection1>
  <P class=3DMsoNormal><SPAN lang=3DEN-US>Hi,<o:p></o:p></SPAN></P>
  <P class=3DMsoNormal><SPAN lang=3DEN-US>Could you recommend any =
serial-to-USB=20
  adapter to connect my Apollo synth to my Linux box,=20
  please?<o:p></o:p></SPAN></P>
  <P class=3DMsoNormal><SPAN lang=3DEN-US>Thanks,<o:p></o:p></SPAN></P>
  <P class=3DMsoNormal><SPAN=20
lang=3DEN-US>Pawel<o:p></o:p></SPAN></P></DIV></BLOCKQUOTE></BODY></HTML>=


------=_NextPart_000_037F_01D9B7FA.0CC14500--


