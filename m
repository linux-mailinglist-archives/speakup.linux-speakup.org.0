Return-Path: <speakup+bounces-1310-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5FC62AE6EDD
	for <lists+speakup@lfdr.de>; Tue, 24 Jun 2025 20:46:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=temperror header.d=ccs.covici.com header.i=@ccs.covici.com header.a=rsa-sha256 header.s=default header.b=rOqzlXuT;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0DA84382497; Tue, 24 Jun 2025 14:46:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DE76E38190E
	for <lists+speakup@lfdr.de>; Tue, 24 Jun 2025 14:46:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B4E173822AA; Tue, 24 Jun 2025 14:46:38 -0400 (EDT)
Received: from dallas-out-001-2.smtp25.com (dallas-out-001-2.smtp25.com [63.71.12.129])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1FFE838190E
	for <speakup@linux-speakup.org>; Tue, 24 Jun 2025 14:46:38 -0400 (EDT)
Received: from ccs2 (ccs2 [192.168.0.2])
	(authenticated bits=0)
	by ccs.covici.com (8.18.1/8.18.1) with ESMTPSA id 55OIkSe4747115
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 24 Jun 2025 14:46:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ccs.covici.com;
	s=default; t=1750790793;
	bh=FUkZy3STzNjt+s2UsPOic1hVQEPv+fAhMOuGqs4Ud4E=;
	h=Reply-To:From:To:Cc:References:In-Reply-To:Subject:Date;
	b=rOqzlXuTL/zTg9Gy0bjoHIgqnidbFhwzuw57tdcJ65SZXr/Lc5CptSeiLN7F9KW5c
	 DOj0w7PjpZ8BKacZTTHkOOlUzQyl4HF1P8vlSgmt7H2/IciCUKavO1D2Gxwkvc9lSL
	 sIdnWd8wUvs/NBeC+F26pBtXIoz9snC8bRdCKe8A=
Reply-To: <covici@ccs.covici.com>
From: "John Covici" <covici@ccs.covici.com>
To: "'John G. Heim'" <jheim@math.wisc.edu>
Cc: "'Speakup is a screen review system for Linux.'" <speakup@linux-speakup.org>
References: <29a0419a-e54f-457d-9e8f-68a0c98d2dae@math.wisc.edu> <m3o6udb785.wl-covici@ccs.covici.com> <874ed182-9d75-4834-b630-a281f3ceb0f1@math.wisc.edu>
In-Reply-To: <874ed182-9d75-4834-b630-a281f3ceb0f1@math.wisc.edu>
Subject: RE: GRML for Speakup
Date: Tue, 24 Jun 2025 14:46:23 -0400
Organization: Covici Computer Systems
Message-ID: <007601dbe538$4e734cb0$eb59e610$@ccs.covici.com>
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
	boundary="----=_NextPart_000_0077_01DBE516.C7635A60"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQHpWpePNw7JfrMrzAuX8IAhTyq/xAIKEKdrAaIQj/mz2llBQA==
X-SpamH-Filter: dallas-out-001.smtp25.com-55OIkYpq030159
X-SpamH-OriginatingIP: 70.109.51.194
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multipart message in MIME format.

------=_NextPart_000_0077_01DBE516.C7635A60
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Speakout is one of the original hardware synths =E2=80=93 I think the =
speakup code is spkout.  It would be great if you were to build.
=20
Thanks lots.
=20
=20
=20
=20
From: John G. Heim <jheim@math.wisc.edu>=20
Sent: Tuesday, June 24, 2025 11:31 AM
To: covici@ccs.covici.com
Cc: Speakup is a screen review system for Linux. =
<speakup@linux-speakup.org>
Subject: Re: GRML for Speakup
=20
I don't know what speakout is. It does not seem to be one of the synths =
supported by speakup. But as I said, if you need a version for a =
particular hardware synth, you can download the script and build the iso =
file yourself. Or you can email me, I'll build the iso image, and I'll =
post it on my space at the Uni of Wisc.=20
=20
=20
On 6/24/25 8:27 AM, John Covici wrote:
How would I get one for speakout?
=20
On Mon, 09 Jun 2025 23:03:25 -0400,
John G. Heim wrote:
=20
With the help of someone on the GRML list, I created a script
that can modify a standard GRML image for a particular hardware
synth. If you use this script, you can create a GRML image that
comes up talking via your hardware synth or via software speech
without having to type in the commands after it boots.
=20
GRML is a Debian fork designed for use by people who like the
command line. It is useful as a rescue system. You can activate
speakup after it bootsbut with my script, you don't have to type
anything.
=20
I pre-built images for the LiteTalk and for software
speech. These images and the script can be found here:
=20
https://people.math.wisc.edu/~jheim/GRML/=20
=20
=20
=20

------=_NextPart_000_0077_01DBE516.C7635A60
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DProgId content=3DWord.Document><meta name=3DGenerator =
content=3D"Microsoft Word 15"><meta name=3DOriginator =
content=3D"Microsoft Word 15"><link rel=3DFile-List =
href=3D"cid:filelist.xml@01DBE516.C11F5960"><!--[if gte mso 9]><xml>
<o:OfficeDocumentSettings>
<o:AllowPNG/>
</o:OfficeDocumentSettings>
</xml><![endif]--><!--[if gte mso 9]><xml>
<w:WordDocument>
<w:DocumentKind>DocumentEmail</w:DocumentKind>
<w:TrackMoves/>
<w:TrackFormatting/>
<w:EnvelopeVis/>
<w:ValidateAgainstSchemas/>
<w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
<w:IgnoreMixedContent>false</w:IgnoreMixedContent>
<w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
<w:DoNotPromoteQF/>
<w:LidThemeOther>EN-US</w:LidThemeOther>
<w:LidThemeAsian>X-NONE</w:LidThemeAsian>
<w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
<w:Compatibility>
<w:DoNotExpandShiftReturn/>
<w:BreakWrappedTables/>
<w:SnapToGridInCell/>
<w:WrapTextWithPunct/>
<w:UseAsianBreakRules/>
<w:DontGrowAutofit/>
<w:SplitPgBreakAndParaMark/>
<w:EnableOpenTypeKerning/>
<w:DontFlipMirrorIndents/>
<w:OverrideTableStyleHps/>
</w:Compatibility>
<m:mathPr>
<m:mathFont m:val=3D"Cambria Math"/>
<m:brkBin m:val=3D"before"/>
<m:brkBinSub m:val=3D"&#45;-"/>
<m:smallFrac m:val=3D"off"/>
<m:dispDef/>
<m:lMargin m:val=3D"0"/>
<m:rMargin m:val=3D"0"/>
<m:defJc m:val=3D"centerGroup"/>
<m:wrapIndent m:val=3D"1440"/>
<m:intLim m:val=3D"subSup"/>
<m:naryLim m:val=3D"undOvr"/>
</m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"false" =
DefSemiHidden=3D"false" DefQFormat=3D"false" DefPriority=3D"99" =
LatentStyleCount=3D"376">
<w:LsdException Locked=3D"false" Priority=3D"0" QFormat=3D"true" =
Name=3D"Normal"/>
<w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" =
Name=3D"heading 1"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 2"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 3"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 4"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 5"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 6"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 7"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 8"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 9"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index 7"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index 8"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index 9"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toc 1"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toc 2"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toc 3"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toc 4"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toc 5"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toc 6"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toc 7"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toc 8"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toc 9"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Normal Indent"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"footnote text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"annotation text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"header"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"footer"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"index heading"/>
<w:LsdException Locked=3D"false" Priority=3D"35" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"caption"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"table of figures"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"envelope address"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"envelope return"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"footnote reference"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"annotation reference"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"line number"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"page number"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"endnote reference"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"endnote text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"table of authorities"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"macro"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"toa heading"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Bullet"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Number"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Bullet 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Bullet 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Bullet 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Bullet 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Number 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Number 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Number 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Number 5"/>
<w:LsdException Locked=3D"false" Priority=3D"10" QFormat=3D"true" =
Name=3D"Title"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Closing"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Signature"/>
<w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Default Paragraph Font"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Body Text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Body Text Indent"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Continue"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Continue 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Continue 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Continue 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"List Continue 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Message Header"/>
<w:LsdException Locked=3D"false" Priority=3D"11" QFormat=3D"true" =
Name=3D"Subtitle"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Salutation"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Date"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Body Text First Indent"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Body Text First Indent 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Note Heading"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Body Text 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Body Text 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Body Text Indent 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Body Text Indent 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Block Text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Hyperlink"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"FollowedHyperlink"/>
<w:LsdException Locked=3D"false" Priority=3D"22" QFormat=3D"true" =
Name=3D"Strong"/>
<w:LsdException Locked=3D"false" Priority=3D"20" QFormat=3D"true" =
Name=3D"Emphasis"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Document Map"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Plain Text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"E-mail Signature"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Top of Form"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Bottom of Form"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Normal (Web)"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Acronym"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Address"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Cite"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Code"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Definition"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Keyboard"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Preformatted"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Sample"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Typewriter"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"HTML Variable"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Normal Table"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"annotation subject"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"No List"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Outline List 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Outline List 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Outline List 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Simple 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Simple 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Simple 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Classic 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Classic 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Classic 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Classic 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Colorful 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Colorful 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Colorful 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Columns 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Columns 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Columns 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Columns 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Columns 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Grid 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Grid 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Grid 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Grid 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Grid 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Grid 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Grid 7"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Grid 8"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table List 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table List 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table List 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table List 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table List 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table List 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table List 7"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table List 8"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table 3D effects 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table 3D effects 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table 3D effects 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Contemporary"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Elegant"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Professional"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Subtle 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Subtle 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Web 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Web 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Web 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Balloon Text"/>
<w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"Table Grid"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Table Theme"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Placeholder =
Text"/>
<w:LsdException Locked=3D"false" Priority=3D"1" QFormat=3D"true" =
Name=3D"No Spacing"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light =
Shading"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading =
1"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading =
2"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List =
1"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List =
2"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid =
1"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid =
2"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid =
3"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful =
Shading"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful =
List"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful =
Grid"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading =
1 Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading =
2 Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 =
Accent 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Revision"/>
<w:LsdException Locked=3D"false" Priority=3D"34" QFormat=3D"true" =
Name=3D"List Paragraph"/>
<w:LsdException Locked=3D"false" Priority=3D"29" QFormat=3D"true" =
Name=3D"Quote"/>
<w:LsdException Locked=3D"false" Priority=3D"30" QFormat=3D"true" =
Name=3D"Intense Quote"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful =
Shading Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading =
1 Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading =
2 Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful =
Shading Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading =
1 Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading =
2 Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful =
Shading Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading =
1 Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading =
2 Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful =
Shading Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading =
1 Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading =
2 Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful =
Shading Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading =
1 Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading =
2 Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful =
Shading Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"19" QFormat=3D"true" =
Name=3D"Subtle Emphasis"/>
<w:LsdException Locked=3D"false" Priority=3D"21" QFormat=3D"true" =
Name=3D"Intense Emphasis"/>
<w:LsdException Locked=3D"false" Priority=3D"31" QFormat=3D"true" =
Name=3D"Subtle Reference"/>
<w:LsdException Locked=3D"false" Priority=3D"32" QFormat=3D"true" =
Name=3D"Intense Reference"/>
<w:LsdException Locked=3D"false" Priority=3D"33" QFormat=3D"true" =
Name=3D"Book Title"/>
<w:LsdException Locked=3D"false" Priority=3D"37" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Bibliography"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"TOC Heading"/>
<w:LsdException Locked=3D"false" Priority=3D"41" Name=3D"Plain Table =
1"/>
<w:LsdException Locked=3D"false" Priority=3D"42" Name=3D"Plain Table =
2"/>
<w:LsdException Locked=3D"false" Priority=3D"43" Name=3D"Plain Table =
3"/>
<w:LsdException Locked=3D"false" Priority=3D"44" Name=3D"Plain Table =
4"/>
<w:LsdException Locked=3D"false" Priority=3D"45" Name=3D"Plain Table =
5"/>
<w:LsdException Locked=3D"false" Priority=3D"40" Name=3D"Grid Table =
Light"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 =
Light"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 =
Dark"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 =
Colorful"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 =
Colorful"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 =
Light Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 =
Dark Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 =
Colorful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 =
Colorful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 =
Light Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 =
Dark Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 =
Colorful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 =
Colorful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 =
Light Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 =
Dark Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 =
Colorful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 =
Colorful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 =
Light Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 =
Dark Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 =
Colorful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 =
Colorful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 =
Light Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 =
Dark Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 =
Colorful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 =
Colorful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 =
Light Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 =
Dark Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 =
Colorful Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 =
Colorful Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 =
Light"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 =
Dark"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 =
Colorful"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 =
Colorful"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 =
Light Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 =
Dark Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 =
Colorful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 =
Colorful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 =
Light Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 =
Dark Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 =
Colorful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 =
Colorful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 =
Light Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 =
Dark Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 =
Colorful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 =
Colorful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 =
Light Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 =
Dark Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 =
Colorful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 =
Colorful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 =
Light Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 =
Dark Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 =
Colorful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 =
Colorful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 =
Light Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 =
Dark Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 =
Colorful Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 =
Colorful Accent 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Mention"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Smart Hyperlink"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Hashtag"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Unresolved Mention"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" =
UnhideWhenUsed=3D"true" Name=3D"Smart Link"/>
</w:LatentStyles>
</xml><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:-536869121 1107305727 33554432 0 415 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1073732485 9 0 511 0;}
@font-face
	{font-family:Aptos;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:536871559 3 0 0 415 0;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-536869121 64767 1 0 415 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-fareast-font-family:Aptos;
	mso-bidi-font-family:Aptos;}
a:link, span.MsoHyperlink
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:blue;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:purple;
	text-decoration:underline;
	text-underline:single;}
pre
	{mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	mso-pagination:widow-orphan;
	tab-stops:45.8pt 91.6pt 137.4pt 183.2pt 229.0pt 274.8pt 320.6pt 366.4pt =
412.2pt 458.0pt 503.8pt 549.6pt 595.4pt 641.2pt 687.0pt 732.8pt;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-font-family:Aptos;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-unhide:no;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-fareast-font-family:Aptos;
	mso-bidi-font-family:Aptos;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-unhide:no;
	mso-style-locked:yes;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-ascii-font-family:Consolas;
	mso-fareast-font-family:Aptos;
	mso-hansi-font-family:Consolas;
	mso-bidi-font-family:Aptos;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	mso-style-noshow:yes;
	mso-style-unhide:no;
	mso-ansi-font-size:11.0pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ascii-font-family:Aptos;
	mso-fareast-font-family:Aptos;
	mso-hansi-font-family:Aptos;
	mso-bidi-font-family:"Times New Roman";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-size:10.0pt;
	mso-ansi-font-size:10.0pt;
	mso-bidi-font-size:10.0pt;
	mso-font-kerning:0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 10]><style>/* Style Definitions */
table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin:0in;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Times New Roman",serif;}
</style><![endif]--><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'tab-interval:.5in;word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-fami=
ly:Aptos;mso-bidi-font-family:"Times New Roman"'>Speakout is one of the =
original hardware synths =E2=80=93 I think the speakup code is =
spkout.<span style=3D'mso-spacerun:yes'>=C2=A0 </span>It would be great =
if you were to build.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-fami=
ly:Aptos;mso-bidi-font-family:"Times New =
Roman"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-fami=
ly:Aptos;mso-bidi-font-family:"Times New Roman"'>Thanks =
lots.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-fami=
ly:Aptos;mso-bidi-font-family:"Times New =
Roman"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-fami=
ly:Aptos;mso-bidi-font-family:"Times New =
Roman"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-fami=
ly:Aptos;mso-bidi-font-family:"Times New =
Roman"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;mso-ascii-font-family:Aptos;mso-hansi-font-fami=
ly:Aptos;mso-bidi-font-family:"Times New =
Roman"'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-fo=
nt-family:"Times New Roman"'>From:</span></b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;mso-fareast-fo=
nt-family:"Times New Roman"'> John G. Heim &lt;jheim@math.wisc.edu&gt; =
<br><b>Sent:</b> Tuesday, June 24, 2025 11:31 AM<br><b>To:</b> =
covici@ccs.covici.com<br><b>Cc:</b> Speakup is a screen review system =
for Linux. &lt;speakup@linux-speakup.org&gt;<br><b>Subject:</b> Re: GRML =
for Speakup<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p>I don't know what speakout is. =
It does not seem to be one of the synths supported by speakup. But as I =
said, if you need a version for a particular hardware synth, you can =
download the script and build the iso file yourself. Or you can email =
me, I'll build the iso image, and I'll post it on my space at the Uni of =
Wisc. =
<o:p></o:p></p><p><o:p>&nbsp;</o:p></p><p><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal><span style=3D'mso-fareast-font-family:"Times New =
Roman"'>On 6/24/25 8:27 AM, John Covici =
wrote:<o:p></o:p></span></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><pre>How would I get one =
for speakout?<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre>On Mon, =
09 Jun 2025 23:03:25 -0400,<o:p></o:p></pre><pre>John G. Heim =
wrote:<o:p></o:p></pre><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><pre><o:p>&nbsp;</o:p></pr=
e><pre>With the help of someone on the GRML list, I created a =
script<o:p></o:p></pre><pre>that can modify a standard GRML image for a =
particular hardware<o:p></o:p></pre><pre>synth. If you use this script, =
you can create a GRML image that<o:p></o:p></pre><pre>comes up talking =
via your hardware synth or via software =
speech<o:p></o:p></pre><pre>without having to type in the commands after =
it boots.<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre>GRML is a =
Debian fork designed for use by people who like =
the<o:p></o:p></pre><pre>command line. It is useful as a rescue system. =
You can activate<o:p></o:p></pre><pre>speakup after it bootsbut with my =
script, you don't have to =
type<o:p></o:p></pre><pre>anything.<o:p></o:p></pre><pre><o:p>&nbsp;</o:p=
></pre><pre>I pre-built images for the LiteTalk and for =
software<o:p></o:p></pre><pre>speech. These images and the script can be =
found here:<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre><a =
href=3D"https://people.math.wisc.edu/~jheim/GRML/">https://people.math.wi=
sc.edu/~jheim/GRML/</a> =
<o:p></o:p></pre><pre><o:p>&nbsp;</o:p></pre><pre><o:p>&nbsp;</o:p></pre>=
</blockquote><pre><o:p>&nbsp;</o:p></pre></blockquote></div></body></html=
>
------=_NextPart_000_0077_01DBE516.C7635A60--


