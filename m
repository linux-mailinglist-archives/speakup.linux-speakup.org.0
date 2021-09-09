Return-Path: <speakup+bounces-279-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C90CC4058F8
	for <lists+speakup@lfdr.de>; Thu,  9 Sep 2021 16:25:26 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 559CA380BAE; Thu,  9 Sep 2021 10:25:26 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=DeojW7R/;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C04A6380F7E
	for <lists+speakup@lfdr.de>; Thu,  9 Sep 2021 10:25:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6849B380B12; Thu,  9 Sep 2021 10:25:19 -0400 (EDT)
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 332033809C6
	for <speakup@linux-speakup.org>; Thu,  9 Sep 2021 10:25:19 -0400 (EDT)
Received: by mail-il1-f169.google.com with SMTP id x5so2083440ill.3
        for <speakup@linux-speakup.org>; Thu, 09 Sep 2021 07:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:references:in-reply-to:subject:date:message-id
         :mime-version:thread-index:content-language;
        bh=LtVaqMFYpyJqlONiH8cb1cy/yeTVPeEr31LPEek/Rzg=;
        b=DeojW7R/zBLlM6PV0hx5vMNJ7lVvh1tzPKM69KdPPTsRDhGQ9HkRJlN1V/7bgxSz3l
         aqp1//fJMB9wdXBpr82BqXA21sBG8fCkUgEZ9ogtLfYjP9O/rhjYkaf1uu//RezIy5FO
         N0PXxjUCz2ms/jI+XqhOc5otFrK5mSneg/b17hlCpmFzIIndXKzCbHbUYqpfKNTkye0x
         3+wOX+avlB35xm7L7kzKeVD6sdmS5UwXFXGJrxGDazG8MSr1L61Kcd73FoeCYaC48as8
         AV12h0Qoh/uG5mOOoToXJz96Wy93tlMY3mbME903LGcGkxn8OMO6Z3J12kpbNM+BxPuO
         1aEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:references:in-reply-to:subject
         :date:message-id:mime-version:thread-index:content-language;
        bh=LtVaqMFYpyJqlONiH8cb1cy/yeTVPeEr31LPEek/Rzg=;
        b=4PP2q7js6Z9hf2kPGYIS07zEjnXnqfFmZIXLy1il3AgQonxD7rl8tWA32Nd6Iwh/bx
         iKcnVJBFtI895P5R8wPt8jxxEu00C98295WdiQq85jOt5aDnEp0+7mA5Dn2/jpkecJUj
         y18iMaKv+MWnr8xmVfDpGg7Ej6rYG6HfG7+HsDF2FadD96hwL3cMWNkywVfizy68vjrH
         chge4W0B/7Hm2esLi3mUVd9Po5UPmbZBM1mLGnhuhsi6z3TyLq+TqDFqTHWhzcQtGLy2
         If+Nr63oXP1ZzX7Mo8rn2k+lcMDPI2LrmVr1N18NHIZ0OvFhzDHSf3JYkm6nvZ4iOvY+
         23RA==
X-Gm-Message-State: AOAM531ITnw3XXF8OQB6ZXcOHDbOE8XkwdSvpkCOolbOaPdrRLBTpppc
	OTkyDFptWsPKANrennOUYhQ=
X-Google-Smtp-Source: ABdhPJxz0wjsdFAave5lmu+Xog4DDNsmCfKYiFloHdN+ewexV3fuzmDd9SJTiXWZmWuPHOshPz7a8Q==
X-Received: by 2002:a92:190b:: with SMTP id 11mr2426328ilz.4.1631197456577;
        Thu, 09 Sep 2021 07:24:16 -0700 (PDT)
Received: from TECHP10R95915 (99-74-22-187.lightspeed.brhmal.sbcglobal.net. [99.74.22.187])
        by smtp.gmail.com with ESMTPSA id x12sm900884ill.6.2021.09.09.07.24.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 07:24:16 -0700 (PDT)
Sender: Keith Wessel <kwessel76@gmail.com>
From: "Keith Wessel" <keith@wessel.com>
To: "'Jayson Smith'" <jaybird@bluegrasspals.com>,
	"'Speakup is a screen review system for Linux.'" <speakup@linux-speakup.org>
References: <d32931d2-c683-fdcc-b38b-75a7139eb0fc@comcast.net> <a877f914-9885-48e9-0b2c-ce71303d18f9@bluegrasspals.com>
In-Reply-To: <a877f914-9885-48e9-0b2c-ce71303d18f9@bluegrasspals.com>
Subject: RE: [DECtalk] Fw: Looking for a home for a couple of serial synths
Date: Thu, 9 Sep 2021 09:24:16 -0500
Message-ID: <00c801d7a586$5f61e1d0$1e25a570$@wessel.com>
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
	boundary="----=_NextPart_000_00C9_01D7A55C.768D1250"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFjgZzoRmnxccQkEVmX+8OWvOv5dAIeo1WnrHMTzgA=
Content-Language: en-us
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multipart message in MIME format.

------=_NextPart_000_00C9_01D7A55C.768D1250
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Interesting. My mileage differs on both of these points.

 

1.	The older DECTalks won't power up when the battery is totally dead.
They aren't wired to take AC power first.
2.	I know at least two individuals who have replaced DECtalk dead
batteries and gotten them working again.

But perhaps Tom's experience was with a different model?

 

Thanks for sharing,

Keith

 

 

From: Jayson Smith <jaybird@bluegrasspals.com> 
Sent: Thursday, September 9, 2021 8:18 AM
To: Speakup is a screen review system for Linux. <speakup@linux-speakup.org>
Subject: Fwd: [DECtalk] Fw: Looking for a home for a couple of serial synths

 

Forwarding this response from the DECtalk list.

 



-------- Forwarded Message -------- 


Subject: 

Re: [DECtalk] Fw: Looking for a home for a couple of serial synths


Date: 

Thu, 9 Sep 2021 06:08:26 -0400


From: 

Tom Kopec  <mailto:w1pf@comcast.net> <w1pf@comcast.net>


Reply-To: 

DECtalk  <mailto:dectalk@bluegrasspals.com> <dectalk@bluegrasspals.com>


To: 

dectalk@bluegrasspals.com <mailto:dectalk@bluegrasspals.com> 



A DECTalk Express should power-up OK on external power with a dead/missing
battery.

The battery uses 600mAh prismatic ni-cad cells, which are very difficult to
find.. I don't think they are in current production.
I have seen some Chinese NiMH cells that might sort-of work, but the charger
circuitry is not compatible with NiMH cells.

There isn't a lot of room in there to hack in another solution. With
significant hacking it is might be possible to convert to a lithium battery,
but that's not plug-and-play.




----------------------------------------------------------------------

Message: 1
Date: Tue, 07 Sep 2021 16:18:07 -0400
From: "Jayson Smith"  <mailto:jaybird@bluegrasspals.com>
<jaybird@bluegrasspals.com>
To: dectalk@bluegrasspals.com <mailto:dectalk@bluegrasspals.com> 
Subject: [DECtalk] Fw: Looking for a home for a couple of serial
synths
Message-ID: <20210907.201807.235.1@TRENT
<mailto:20210907.201807.235.1@TRENT> >



----- Original Message -----
From: "Keith Wessel"  <mailto:keith@wessel.com> <keith@wessel.com>
To:  <mailto:speakup@linux-speakup.org> <speakup@linux-speakup.org>
Date: Tue, 7 Sep 2021 15:14:16 -0500
Subject: Looking for a home for a couple of serial synths

Hi, all,

I hope this isn't off-topic, but I know there are a lot of hardware synth
enthusiasts on this list, and I've got two that I'd rather find homes for
than send to electronics recycling.

Those of you on the brltty list saw my post a couple weeks ago about looking
for a new home for a serial braille display. My cleaning has now lead me to
two serial synths, both of which I'd be happy to let anyone have for the
cost of shipping.

One is a Doubletalk LT (speakup_synth=ltlk). This was the Doubletalk that
could either be run off of a 9-volt battery or an AC adapter. It has a
hard-wired cable that goes to a DB9 serial plug. It's in perfect working
condition, and I have the AC adapter that I'll include.

The other needs a little work. It's a DECTalk express, complete with case,
AC adapter, serial cable, and headphones. However, it won't power up
presumably because the internal battery needs to be replaced. Anyone handy
with a soldering iron should be able to tackle this, and last I checked the
battery was a type that's available from Batteries Plus and various on-line
sources.

I have no need for either of these any more since I no longer have a desktop
with a serial port. If you're interested in either of these, email me
off-list at keith@wessel.com <mailto:keith@wessel.com> .

Thanks,
Keith


_______________________________________________
Dectalk mailing list
Dectalk@bluegrasspals.com <mailto:Dectalk@bluegrasspals.com> 
https://bluegrasspals.com/mailman/listinfo/dectalk


------=_NextPart_000_00C9_01D7A55C.768D1250
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:492649799;
	mso-list-type:hybrid;
	mso-list-template-ids:844920830 67698703 67698713 67698715 67698703 =
67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Interesting. My mileage =
differs on both of these points.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><ol style=3D'margin-top:0in' =
start=3D1 type=3D1><li class=3DMsoListParagraph =
style=3D'margin-left:0in;mso-list:l0 level1 lfo1'>The older DECTalks =
won&#8217;t power up when the battery is totally dead. They aren&#8217;t =
wired to take AC power first.<o:p></o:p></li><li =
class=3DMsoListParagraph style=3D'margin-left:0in;mso-list:l0 level1 =
lfo1'>I know at least two individuals who have replaced DECtalk dead =
batteries and gotten them working again.<o:p></o:p></li></ol><p =
class=3DMsoNormal>But perhaps Tom&#8217;s experience was with a =
different model?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks for =
sharing,<o:p></o:p></p><p class=3DMsoNormal>Keith<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Jayson Smith =
&lt;jaybird@bluegrasspals.com&gt; <br><b>Sent:</b> Thursday, September =
9, 2021 8:18 AM<br><b>To:</b> Speakup is a screen review system for =
Linux. &lt;speakup@linux-speakup.org&gt;<br><b>Subject:</b> Fwd: =
[DECtalk] Fw: Looking for a home for a couple of serial =
synths<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p>Forwarding this response from =
the DECtalk list.<o:p></o:p></p><p><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal><br><br>-------- Forwarded Message -------- =
<o:p></o:p></p><table class=3DMsoNormalTable border=3D0 cellspacing=3D0 =
cellpadding=3D0><tr><td nowrap valign=3Dtop style=3D'padding:0in 0in 0in =
0in'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b>Subject: <o:p></o:p></b></p></td><td =
style=3D'padding:0in 0in 0in 0in'><p class=3DMsoNormal>Re: [DECtalk] Fw: =
Looking for a home for a couple of serial =
synths<o:p></o:p></p></td></tr><tr><td nowrap valign=3Dtop =
style=3D'padding:0in 0in 0in 0in'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b>Date: <o:p></o:p></b></p></td><td =
style=3D'padding:0in 0in 0in 0in'><p class=3DMsoNormal>Thu, 9 Sep 2021 =
06:08:26 -0400<o:p></o:p></p></td></tr><tr><td nowrap valign=3Dtop =
style=3D'padding:0in 0in 0in 0in'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b>From: <o:p></o:p></b></p></td><td =
style=3D'padding:0in 0in 0in 0in'><p class=3DMsoNormal>Tom Kopec <a =
href=3D"mailto:w1pf@comcast.net">&lt;w1pf@comcast.net&gt;</a><o:p></o:p><=
/p></td></tr><tr><td nowrap valign=3Dtop style=3D'padding:0in 0in 0in =
0in'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b>Reply-To: <o:p></o:p></b></p></td><td =
style=3D'padding:0in 0in 0in 0in'><p class=3DMsoNormal>DECtalk <a =
href=3D"mailto:dectalk@bluegrasspals.com">&lt;dectalk@bluegrasspals.com&g=
t;</a><o:p></o:p></p></td></tr><tr><td nowrap valign=3Dtop =
style=3D'padding:0in 0in 0in 0in'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b>To: <o:p></o:p></b></p></td><td =
style=3D'padding:0in 0in 0in 0in'><p class=3DMsoNormal><a =
href=3D"mailto:dectalk@bluegrasspals.com">dectalk@bluegrasspals.com</a><o=
:p></o:p></p></td></tr></table><p class=3DMsoNormal><span =
style=3D'color:black'><br></span><br>A DECTalk Express should power-up =
OK on external power with a dead/missing battery.<br><br>The battery =
uses 600mAh prismatic ni-cad cells, which are very difficult to find.. I =
don't think they are in current production.<br>I have seen some Chinese =
NiMH cells that might sort-of work, but the charger circuitry is not =
compatible with NiMH cells.<br><br>There isn't a lot of room in there to =
hack in another solution. With significant hacking it is might be =
possible to convert to a lithium battery, but that's not =
plug-and-play.<br><br><br><o:p></o:p></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>------------------------------------------=
----------------------------<br><br>Message: 1<br>Date: Tue, 07 Sep 2021 =
16:18:07 -0400<br>From: &quot;Jayson Smith&quot; <a =
href=3D"mailto:jaybird@bluegrasspals.com">&lt;jaybird@bluegrasspals.com&g=
t;</a><br>To: <a =
href=3D"mailto:dectalk@bluegrasspals.com">dectalk@bluegrasspals.com</a><b=
r>Subject: [DECtalk] Fw: Looking for a home for a couple of =
serial<br>synths<br>Message-ID: &lt;<a =
href=3D"mailto:20210907.201807.235.1@TRENT">20210907.201807.235.1@TRENT</=
a>&gt;<br><br><br><br>----- Original Message -----<br>From: &quot;Keith =
Wessel&quot; <a =
href=3D"mailto:keith@wessel.com">&lt;keith@wessel.com&gt;</a><br>To: <a =
href=3D"mailto:speakup@linux-speakup.org">&lt;speakup@linux-speakup.org&g=
t;</a><br>Date: Tue, 7 Sep 2021 15:14:16 -0500<br>Subject: Looking for a =
home for a couple of serial synths<br><br>Hi, all,<br><br>I hope this =
isn't off-topic, but I know there are a lot of hardware =
synth<br>enthusiasts on this list, and I've got two that I'd rather find =
homes for<br>than send to electronics recycling.<br><br>Those of you on =
the brltty list saw my post a couple weeks ago about looking<br>for a =
new home for a serial braille display. My cleaning has now lead me =
to<br>two serial synths, both of which I'd be happy to let anyone have =
for the<br>cost of shipping.<br><br>One is a Doubletalk LT =
(speakup_synth=3Dltlk). This was the Doubletalk that<br>could either be =
run off of a 9-volt battery or an AC adapter. It has a<br>hard-wired =
cable that goes to a DB9 serial plug. It's in perfect =
working<br>condition, and I have the AC adapter that I'll =
include.<br><br>The other needs a little work. It's a DECTalk express, =
complete with case,<br>AC adapter, serial cable, and headphones. =
However, it won't power up<br>presumably because the internal battery =
needs to be replaced. Anyone handy<br>with a soldering iron should be =
able to tackle this, and last I checked the<br>battery was a type that's =
available from Batteries Plus and various on-line<br>sources.<br><br>I =
have no need for either of these any more since I no longer have a =
desktop<br>with a serial port. If you're interested in either of these, =
email me<br>off-list at <a =
href=3D"mailto:keith@wessel.com">keith@wessel.com</a>.<br><br>Thanks,<br>=
Keith<o:p></o:p></p></blockquote><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><br>______________________________________=
_________<br>Dectalk mailing list<br><a =
href=3D"mailto:Dectalk@bluegrasspals.com">Dectalk@bluegrasspals.com</a><b=
r><a =
href=3D"https://bluegrasspals.com/mailman/listinfo/dectalk">https://blueg=
rasspals.com/mailman/listinfo/dectalk</a><o:p></o:p></p></div></div></bod=
y></html>
------=_NextPart_000_00C9_01D7A55C.768D1250--


