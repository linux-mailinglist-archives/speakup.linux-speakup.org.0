Return-Path: <speakup+bounces-1609-lists+speakup=lfdr.de@linux-speakup.org>
Delivered-To: lists+speakup@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id xFOlApjFHGqTSQkAu9opvQ
	(envelope-from <speakup+bounces-1609-lists+speakup=lfdr.de@linux-speakup.org>)
	for <lists+speakup@lfdr.de>; Mon, 01 Jun 2026 01:34:48 +0200
X-Original-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0BBAA6184B5
	for <lists+speakup@lfdr.de>; Mon, 01 Jun 2026 01:34:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=UEf7NtqN;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 872CB3828BE; Sun, 31 May 2026 19:25:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 67D603818CB
	for <lists+speakup@lfdr.de>; Sun, 31 May 2026 19:25:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3B894381952; Sun, 31 May 2026 19:25:39 -0400 (EDT)
Received: from mail412.out.titan.email (mail412.out.titan.email [98.80.1.170])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E8B3E3817D9
	for <speakup@linux-speakup.org>; Sun, 31 May 2026 19:25:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 4gTCrC3RW0z1xmm
	for <speakup@linux-speakup.org>; Sun, 31 May 2026 23:25:31 +0000 (UTC)
X-Titan-User-Uid: eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..eqDCIolu3fwGDExw.ClHH5_R5WpW5YvjbK40xe3-eVYStyM6k4yPBPKi4sOIceCR4mRGH32IlmWDvAt9ukAltKXUSArVJbJO1SCdT1uYZD1KcNfwADWUTNzk.Bsq5bIfhXYIGySuOqohpbQ
DKIM-Signature: a=rsa-sha256; bh=hYBhIo3JKbS8RcKFxC/AeiwZ82wG8nd5C7SJOpvNkQU=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=reply-to:subject:date:message-id:from:to:mime-version:from:to:subject:date:message-id:reply-to:cc:in-reply-to:references;
	q=dns/txt; s=titan1; t=1780269931; v=1;
	b=UEf7NtqNI50QqhOckJdKz5SW2QP04oLv64ULMwOtBXNhpEu+0ScJYjHMKLxDOQVzbfyo0Yqc
	1mxSJrRE+V6SPIeFa74f9/g7GHZiuersUkx9+PSUQePw3qATvsWJwRGHkos5tBsnj8z1Xw3GHXo
	S6tYOJsPpm+yGw4XilJTyAfU=
X-AuthUser: glenn@ervin.email
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 4gTCrC0jwcz1xmj
	for <speakup@linux-speakup.org>; Sun, 31 May 2026 23:25:30 +0000 (UTC)
Message-ID: <03d401dcf154$c5e86180$8d01f80a@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: you killed speakup
Date: Sun, 31 May 2026 18:25:30 -0500
Organization: Home
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_03D1_01DCF12A.DC8F46D0"
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1780269931288805580.32333.7369356426891592280@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=K98S2SWI c=1 sm=1 tr=0 ts=6a1cc36b
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10 a=r77TgQKjGQsHNAKrUKIA:9
	a=kU8mcblDKfQzzrIqsa0A:9 a=wPNLvfGTeEIA:10 a=wx4m7dFGSJivKYz_sIQA:9
	a=XDPa82nxXYzZ82Cu:21 a=_W_S_7VecoQA:10 a=P3K-DvM3-jjlTNsN-mCd:22
	a=NWVoK91CQySWRX1oVYDe:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5
X-Spamd-Result: default: False [2.12 / 15.00];
	OLD_X_MAILER(2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[t39smtp-sign001.email:s=titan1];
	MAILLIST(-0.18)[generic];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[bounces-1609-lists,speakup=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DMARC_NA(0.00)[ervin.email];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	HAS_X_PRIO_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[glenn@ervin.email];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[glenn@ervin.email,speakup@linux-speakup.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[t39smtp-sign001.email:+];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[speakup];
	ASN(0.00)[asn:5645, ipnet:206.248.128.0/18, country:CA];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: 0BBAA6184B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is a multi-part message in MIME format.

------=_NextPart_000_03D1_01DCF12A.DC8F46D0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm trying to remember how to make speakup silent.
I remember I've pressed a key combo on my netbook where it says
you killed speakup
and pressing it again says
I'm alive
What is that command?
Thanks

Glenn

It used to be wine, women, and song,
Now it's beer, the old lady, and TV.

Glenn K0LNY & WSAT439
My TGIF TalkGroup is 4499

------=_NextPart_000_03D1_01DCF12A.DC8F46D0
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
<DIV><FONT size=3D2 face=3DArial>Hi,</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I'm trying to remember how to make =
speakup=20
silent.</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I remember I've pressed a key combo on =
my netbook=20
where it says</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>you killed speakup</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>and pressing it again says</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>I'm alive</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>What is that command?</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial>Thanks</FONT></DIV>
<DIV><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>
<DIV><FONT size=3D2 face=3DArial>Glenn</FONT></DIV><FONT size=3D2 =
face=3DArial>
<DIV><BR>It used to be wine, women, and song,<BR>Now it's beer, the old =
lady,=20
and TV.</DIV>
<DIV>&nbsp;</DIV>
<DIV>Glenn K0LNY &amp; WSAT439<BR>My TGIF TalkGroup is=20
4499<BR></FONT></DIV></BODY></HTML>

------=_NextPart_000_03D1_01DCF12A.DC8F46D0--


