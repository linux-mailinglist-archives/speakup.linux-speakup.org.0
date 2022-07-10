Return-Path: <speakup+bounces-461-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 59E2856CFBD
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 17:24:03 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.a=rsa-sha256 header.s=s2048 header.b=tjjOhYN9;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 15385380B8E; Sun, 10 Jul 2022 11:24:02 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E9AAC3807ED
	for <lists+speakup@lfdr.de>; Sun, 10 Jul 2022 11:24:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 77D97380A39; Sun, 10 Jul 2022 11:23:54 -0400 (EDT)
Received: from sonic314-20.consmr.mail.ne1.yahoo.com (sonic314-20.consmr.mail.ne1.yahoo.com [66.163.189.146])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EFF973807ED
	for <speakup@linux-speakup.org>; Sun, 10 Jul 2022 11:23:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1657466632; bh=/zCqFbbA0kL8Co6BGPSVnd2ikV17QJamypJIK1rsLjY=; h=From:To:Subject:Date:References:From:Subject:Reply-To; b=tjjOhYN9w8prhAjMyJKB6TqdOFb8WoT7iSTwMp+40CpM2oNKfOBBewGv7KneOwvOV3Go2OaCwSBqTzd3q2uW4DgLoxf9a0RbIuUNcsry+ptULZGfWmB6Wgzupy08zbfD2lB0xGsB2gPa3eyDGJ1waNO7yAvi9Ntwsh00rTwHkpssVFpsFxIzH24C4T78wgi3YjL0V51PT53Q9F872nubcT+u7OChzYoLYuMOKR5IYTDmyrzS47AhyJ79GB6lFWtZE4Mm9Vxx9CmllUdbCz1R6Mn3yQjM3dlVqF+umGC2o8z+wsWEdvcBLgEJZUPBdlsFI+s65wKBn1hQKxTbYe00fQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1657466632; bh=RuK2QcWpglBqn6ss8Ft98A+dceRiMJy74HhylKu8cSF=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=mB8V4zXfJDzvby1ti1fEfda0aZJhklhzEeVBGtLlc2rWAfefH9dKfLCpNGwY3nV6MawqD5TUKWgKQANZMujgkWf+EYEiTNasDFxwsvF2jP91xgWVSfRY1Nz3ga0WCufAgJIFwx0hU6FhmpG2ODd2GesZmTwf6y05eYwHaMSHxxL+KK4rYCrY1JEj3TyB81kV1MQNvn4UxLNADzLgcqm8iIpd/2QfyoaY/BI+kA8l0ypCeNwfspTOdZ1nxAQ2Q5GXNBLYfSjX9cU0UCjgyJhvwLaqk7QV9DsD1KGjIXhvCHb2dMncYBik/trHO5dm9i3pWKF2KAtr1d1tMTMEzVlobg==
X-YMail-OSG: 48XT7h8VM1ljg6MZ364lVisq1YlSaxpBimMngYl11AUU_s.pM9dW3wpLhiLoKNp
 X3qcU3lBch_jH5F7jyCYtahrJ3FYQV4qLJRte6l_jpFviVtNr98Ba3crx74end1zkbciIZ1r_TwS
 e8UbJ2_ElaOfZIP4gqBNYgo3VQBGbxx8N9x1k85bC06FBRdHQKuCcd0hJDj1QJAEDyya0sDsMg5F
 8Xt4o5Q_QjQtzYrDwiTF2nYQ1NfcR5xSDip_4yJ5GDuNkjR.1hFTgefp9DIb2JLyJHuTd8v88kM.
 Oh4QORzMobrW6ByTZRdyv_tsMYBvWElIuPt7_w3ouSJw9u0iT_i2EQ_haYV7.HaT_h1MYfHaYVYg
 E7fZC4GshPizq.mxIjPypee7dBGJDdH9LumvIELy1eKM0aQfRxQzlIobu2pw6oG7OkdBCKoz3dqk
 1SFobP6uo3UhD.618.1KpYkDKOIBhIlrq6jTzv.nNJqaheJf.UK9hDRdZQtlmFVfaaWPM3Plrfso
 MqCAz30bMCtbOshNS56dhMjSI_NTYnTgDlBcQ2XSBWZxTzmc1i2fmPu3fgpmz9to3qjzRzl6h5N3
 q1hqKlNPPXUBkR3ARiY9uy3JaiN6MuVj7BRABg_trAlZEgeJEVhlvg5drp0QidOcvpuGYXJn6gdw
 ._r2UFFaziWrjMjdPPrmd8lvaRN995Pe2R6V26f6ftnmt7SXllQw.jGvBZKoH03CEFY5Af8vxM.2
 LZtp2x7D1.09Aa8uz4BKVUqEjC71aqorAfGFS8wrZlDVoefaPisamfPmqfRQAoBu48Fl636tm6r6
 DOvY5u2loJ266T1MvwJaxZlfuEw4hWIvZtKBS62iBy0nR1Micv852Gp031BaArZe5MO6zQ7u_3mb
 zy67h9UPX4RbJsC8r40A7FvYRutclcFJpBi3LQbg2ztmRABalZjPHjKNNC.yO0bpGbTn0JiLhsnz
 wX9sHRLRXKeCdByuHjEUZGEY000tbXZNg.h8JqbRShi98pBjsx6x_wNqAaedDd890s3EnuE_s6Ca
 vFZ_Ncd0ByypdfjheWddnh2c0PtoGxgaQ8p_lbtq0J2mz4evNZPgwioMh8JhneueFKdFyxIti651
 4bg5Axtz5qoAaCe.WhlfDwFfsoDCv3x_9U97HEbcZyYqVGNGP1oSRek2uUzZU7GPAGNDH9A8ibUS
 FPhkGesTNXjU8ANeMLhhkmL.j.q.xIrhtu6LHNmiS4_J9szjiWJp9f24M2v0x72I.zQM1Rt_AHMP
 ZE7304TzZ8f22d9Rf5DdRNzSVJ8T5ZOZv4aFM96EDK27hG6JzVl6wvlYIgvrzfEOB9HbGVDoyZPP
 mcsuiuS1WV8oTC17L9CcNONyzoJStXGyhOirjKKjS7ghj40tGrwRN4J5hwVLFpf0zU23s5qVpC9g
 LoZ0V7QdmerhHwiqDHqd5ZKU3zdg5wmjdhuS13Dre5frEPy5MS4ZPwL_XfHseO5.OXUnyOybm87J
 0hqHmMWhN266A9Zf3tOGNJdZgM7Ro6CuubvMxkL3deh5bcmbUr6wHNssH9FJF7R2Pl6D9qDn61RP
 39V58c1NFO4ajfYbHUfBK_xB0bhL35SgMeS.UT0rwv9iK7WFqtzyt2.0XnG.iTGXE9b8TZA5a5Qw
 mdTmS3RvlZDbyzO83vMNSO4VWbjaUs45SnbEIiWVArUf6_DI9B65qrwDTFs22HAalxjy9PxJxk7W
 uPO7fLgPlbQ0xsG_2YEDE_GlP63adyEJ_f7iamCSMeo46T6kz9xH69EcvnBbKIzZ0BpXJBfWCnfF
 yGzynlaeDuo4IbbQebxxIEc_fjWFEC2ag5e1yELk820cZ_G.SSyyBrx3OcBdAyVvLjJlcGSMX5RQ
 6GHzIspSj4vxvI97nHVr6YlFLYWXaXvxYTxZoqdQLkaH1DZ925DowpL0YpBeIzqwheK0khu88cHY
 QO9oCNbLrKNgpiXZXG8BT1VSwAof1xFSOD1oLefc1bYnrMsnxxvCS8VFtm3oottSccHMcauWqo1z
 jUTQkqb_FXVLqV87r8ogiuRFjBxue7keKAozl.q3rfKGdtN5ZtQ.1E5uoLG_09jsiut0w5kIfS9z
 CmJDS4_uT0SyzJxMvBdiZPQSYWY03AMTvwo6R7VKo.dgJGFQo5853YsaLCMLUedcCZ_er0qyaq_W
 Nc8yfbS2__xOe1nds8urVM2LwSQ2Um7RyNU.rNNwrkUZX_n9zCnZN.fkl82nBipRzSMCU5Dgf9cT
 Foq1Cgu6lom349urobmJ0EaWm_Teq
X-Sonic-MF: <bearsfo@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.ne1.yahoo.com with HTTP; Sun, 10 Jul 2022 15:23:52 +0000
Received: by hermes--production-gq1-56bb98dbc7-5q5vp (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID d0f3c04085cd87f0d4e49c52b86c2b4e;
          Sun, 10 Jul 2022 15:23:51 +0000 (UTC)
From: "David" <bearsfo@yahoo.com>
To: <ubuntu-accessibility@lists.ubuntu.com>,
	<speakup@linux-speakup.org>
Subject: getting speakup to work in ubuntu
Date: Sun, 10 Jul 2022 08:23:49 -0700
Message-ID: <008101d89471$0ea72540$2bf56fc0$@yahoo.com>
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
	boundary="----=_NextPart_000_0082_01D89436.62484D40"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdiUb8GVLzQQZjIGSxOu72cflRUQHA==
References: <008101d89471$0ea72540$2bf56fc0$.ref@yahoo.com>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This is a multipart message in MIME format.

------=_NextPart_000_0082_01D89436.62484D40
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: 7bit

 

Hi there - new to ubuntu, but not with linux or speakup

 

With sighted help, I was able to install ubuntu server 22.04 LTS

 

Question 1: is it possible to install with speech, without sighted help?

 

After the machine booted up, I ran this and got no message [no news is good
news?]

 

# modprobe speakup_soft

 

So I installed 'espeakup' which brought in a bunch of other packages:

 

# apt-get install espeakup

 

And I get no speech,rebooted and that did not change anything

 

Question 2: did I missed something?

 

Any comments/help/direction/instruction appreciated, thank you very much in
advance

 

--David

 


------=_NextPart_000_0082_01D89436.62484D40
Content-Type: text/html;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Hi there &#8211; new to ubuntu, but not with linux or =
speakup<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>With sighted help, I was able to install ubuntu server =
22.04 LTS<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Question 1: is it possible to install with speech, =
without sighted help?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>After the =
machine booted up, I ran this and got no message [no news is good =
news?]<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal># modprobe speakup_soft<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>So I =
installed &#8216;espeakup&#8217; which brought in a bunch of other =
packages:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal># apt-get install espeakup<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>And I get no =
speech,rebooted and that did not change anything<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Question 2: =
did I missed something?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Any =
comments/help/direction/instruction appreciated, thank you very much in =
advance<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>--David<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0082_01D89436.62484D40--


