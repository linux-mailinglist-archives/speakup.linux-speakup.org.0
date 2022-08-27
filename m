Return-Path: <speakup+bounces-709-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D56B35A38C2
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 18:26:10 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E59AA385792; Sat, 27 Aug 2022 12:26:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CE9BC385751
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 12:26:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DEB68385752; Sat, 27 Aug 2022 12:26:04 -0400 (EDT)
Received: from smtprelay07.ispgateway.de (smtprelay07.ispgateway.de [134.119.228.97])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 017B038574D
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 12:26:03 -0400 (EDT)
Received: from [31.18.253.204] (helo=smtpclient.apple)
	by smtprelay07.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>)
	id 1oRycw-0005Zr-MD; Sat, 27 Aug 2022 18:25:42 +0200
Content-Type: multipart/alternative; boundary=Apple-Mail-BB31A84D-92AB-42A3-BE67-AE187A1AC06C
Content-Transfer-Encoding: 7bit
From: Linux A11y <chrys@linux-a11y.org>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
Mime-Version: 1.0 (1.0)
Subject: Re: hopefully some help with AntiX
Date: Sat, 27 Aug 2022 18:25:57 +0200
Message-Id: <DF76B91D-4AAA-47C0-A42E-21A47C70872A@linux-a11y.org>
References: <014401d8ba2e$2c769320$80ffa8c0@Win7VM>
Cc: speakup@linux-speakup.org, Didier Spaier <didier@slint.fr>
In-Reply-To: <014401d8ba2e$2c769320$80ffa8c0@Win7VM>
To: K0LNY_Glenn <glenn@ervin.email>
X-Mailer: iPhone Mail (19G82)
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


--Apple-Mail-BB31A84D-92AB-42A3-BE67-AE187A1AC06C
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Howdy glenn,

Nah, you can download the source from github just as zip or tar. Specialy th=
e releases i did. See here:

https://github.com/chrys87/fenrir/archive/refs/tags/1.9.7.1.tar.gz

You can just unpack and run it.

You are using the system just with OCR? Respect.

Cheers chrys


Von meinem iPhone gesendet

> Am 27.08.2022 um 18:00 schrieb K0LNY_Glenn <glenn@ervin.email>:
>=20
> =EF=BB=BF
> If Fenrir requires git, that is a problem, because git is not on AntiX, an=
d I tried to apt install it, and it cannot find it.
> I am wondering if the errors are related to git.
> I'm using OCR on the screen, so it isn't easy to obtain the messages, and i=
mpossible to save them.
> =20
> Glenn
> ----- Original Message -----
> From: Linux A11y
> To: K0LNY_Glenn
> Cc: speakup@linux-speakup.org ; Didier Spaier
> Sent: Saturday, August 27, 2022 10:50 AM
> Subject: Re: hopefully some help with AntiX
>=20
> Howdy,
>=20
>>> Well I ran check-dependencies.py and it gave a couple mysterious errors,=
=20
> What errors you get? Fenrir starts for testing also just from git folder w=
ithout any need to install. But it requires the needed dependencys and the c=
orrect pulse setup.
> See readme section pulseaudio.
> https://github.com/chrys87/fenrir#configure-pulseaudio
>=20
> Also this is the speakup list and people tend to flame if someone is =E2=80=
=9Eadvertising=E2=80=9C different software. To prevent this you can register=
 to fenrirs mailing list to get useful help. We will get it run for sure.
>=20
> Cheers chrys
>=20
>> Am 27.08.2022 um 17:37 schrieb K0LNY_Glenn <glenn@ervin.email>:
>>=20
>> =EF=BB=BFHi Didier,
>> I did try to join that forum about a week ago, and never got a confirmati=
on=20
>> for the forum.
>> I also contacted someone associated with it and asked why accessibility=20=

>> wasn't built in.
>> Thanks.
>>=20
>>=20
>> ----- Original Message -----=20
>> From: "Didier Spaier" <didier@slint.fr>
>> To: <speakup@linux-speakup.org>
>> Sent: Saturday, August 27, 2022 12:22 PM
>> Subject: Re: hopefully some help with AntiX
>>=20
>>=20
>> Hi,
>>=20
>> Installing a package intended for another distribution can work... But
>> oftentimes does not.
>>=20
>> If not yet done, I suggest that you post your issue in this forum:
>> https://www.antixforum.com/
>> Caveat: I do not know if it is accessible with a screen reader.
>>=20
>> Cheers,
>> Dider
>>=20
>>=20
>>=20
>> Le 27/08/2022 =C3=A0 15:06, K0LNY_Glenn a =C3=A9crit :
>>> Well I found espeak-ng for Debian Buster here:
>>> https://packages.debian.org/buster/espeak-ng
>>> The file I downloaded was:
>>> espeak-ng_1.49.2+dfsg-8+deb10u1.debian.tar.xz
>>> Looking in the archive, there are some .install files, but I didn't find=
=20
>>> any
>>> .sh files, so I don't know which file to use to get espeak installed on=20=

>>> this
>>> system.
>>> Or if there is a .deb for RhVoice, that would work too, but did I downlo=
ad
>>> the wrong espeak-ng file for installing it?
>>> Thanks.
>>>=20
>>> Glenn
>>>=20
>>> ----- Original Message -----=20
>>> From: "K0LNY_Glenn" <glenn@ervin.email>
>>> To: "Jude DaShiell" <jdashiel@panix.com>; "Gregory Nowak"=20
>>> <greg@gregn.net>;
>>> <speakup@linux-speakup.org>
>>> Sent: Saturday, August 27, 2022 9:46 AM
>>> Subject: Re: hopefully some help with AntiX
>>>=20
>>>=20
>>> Well I ran check-dependencies.py and it gave a couple mysterious errors,=
=20
>>> but
>>> it didn't help.
>>> I ran install.sh again.
>>> I ran sudo fenrir and again it only gave me the startup tone.
>>> It acts like there is no TTS for it to use.
>>> Glenn
>>> ----- Original Message -----=20
>>> From: "Jude DaShiell" <jdashiel@panix.com>
>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>;=

>>> <speakup@linux-speakup.org>
>>> Sent: Friday, August 26, 2022 9:55 PM
>>> Subject: Re: hopefully some help with AntiX
>>>=20
>>>=20
>>> Also sysctl enable fenrir.service or is it fenrirscreenreader.service th=
en
>>> sysctl start fenrir.service or sysctl start fenrirscreenreader.service.
>>> If a service is missing systemd will let you know about it.
>>>=20
>>>=20
>>> Jude <jdashiel at panix dot com>
>>> "There are four boxes to be used in defense of liberty:
>>> soap, ballot, jury, and ammo. Please use in that order."
>>> -Ed Howdershelt (Author, 1940)
>>>=20
>>> .
>>>=20
>>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>>>=20
>>>> Well I ran install.sh on the system, and pressed enter where it said to=

>>>> proceed, and it said was finished, and it said to type
>>>> sudo fenrir
>>>> to test it, and all I can get is the two-tone sound when fenrir starts,=

>>>> but
>>>> no TTS.
>>>> Should have that installed espeak or espeak-ng?
>>>> Thanks.
>>>>=20
>>>> ----- Original Message -----
>>>> From: "Jude DaShiell" <jdashiel@panix.com>
>>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>=
;
>>>> <speakup@linux-speakup.org>
>>>> Sent: Friday, August 26, 2022 8:27 PM
>>>> Subject: Re: hopefully some help with AntiX
>>>>=20
>>>>=20
>>>> For now and not forever, why not do apt purge ufw?
>>>>=20
>>>>=20
>>>> Jude <jdashiel at panix dot com>
>>>> "There are four boxes to be used in defense of liberty:
>>>> soap, ballot, jury, and ammo. Please use in that order."
>>>> -Ed Howdershelt (Author, 1940)
>>>>=20
>>>> .
>>>>=20
>>>>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>>>>=20
>>>>> Then all 1000 ports show up in nmap as closed.
>>>>> So it seems if I allow a port in ufw, it shows up as closed, but not
>>>>> filtered.
>>>>> So filtered means ufw is running, and if 22 gets allowed, it is not
>>>>> filtered, but still closed.
>>>>> Glenn
>>>>>=20
>>>>>=20
>>>>> ----- Original Message -----
>>>>> From: "Jude DaShiell" <jdashiel@panix.com>
>>>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net=
>;
>>>>> <speakup@linux-speakup.org>
>>>>> Sent: Friday, August 26, 2022 7:12 PM
>>>>> Subject: Re: hopefully some help with AntiX
>>>>>=20
>>>>>=20
>>>>> What happens if ufw --disable is run then the offending computer gets
>>>>> rebooted?
>>>>>=20
>>>>> Jude <jdashiel at panix dot com>
>>>>> "There are four boxes to be used in defense of liberty:
>>>>> soap, ballot, jury, and ammo. Please use in that order."
>>>>> -Ed Howdershelt (Author, 1940)
>>>>>=20
>>>>> .
>>>>>=20
>>>>>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>>>>>=20
>>>>>> I've considered that, and if I can get any port to open, I will gladl=
y
>>>>>> use
>>>>>> telnet.
>>>>>> Hell, if I could open all 1000 ports now, I would!
>>>>>> Glenn
>>>>>> ----- Original Message -----
>>>>>> From: "Gregory Nowak" <greg@gregn.net>
>>>>>> To: <speakup@linux-speakup.org>
>>>>>> Sent: Friday, August 26, 2022 7:01 PM
>>>>>> Subject: Re: hopefully some help with AntiX
>>>>>>=20
>>>>>>=20
>>>>>>> On Fri, Aug 26, 2022 at 02:06:13PM -0500, K0LNY_Glenn wrote:
>>>>>>> On the antiX I did
>>>>>>> sudo netcat -l 22
>>>>>>> and then on the pine 64, I did sudo nc 10.248.1.143 22
>>>>>>> and it does not seem to connect.
>>>>>>> I wonder if it is because I am using 22 to get from my windows to
>>>>>>> the
>>>>>>> Pine64, in order to go linux to linux.
>>>>>>=20
>>>>>> Port 22 is a privileged port. You should consider using 1024 or
>>>>>> higher. If the listening port is open on the firewall, the commands
>>>>>> you gave above should connect. If you type something on the client
>>>>>> side, you should see it typed on the antiX machine, and the other way=

>>>>>> round. This will however not give you a login terminal. To do that,
>>>>>> you need something that handles logins to listen on your netcat. This=

>>>>>> isn't something I've done, so can't give you more directions here. If=

>>>>>> you don't care about the connection being secure, which you don't see=
m
>>>>>> to, you might as well try:
>>>>>>=20
>>>>>> apt install telnetd
>>>>>>=20
>>>>>> and open tcp 23 on your firewall.
>>>>>>=20
>>>>>>=20
>>>>>>> On Fri, Aug 26, 2022 at 04:12:28PM -0500, K0LNY_Glenn wrote:
>>>>>>> Well I thought I'd try iptables again.
>>>>>>> I finally got it to run without any errors, that long iptables
>>>>>>> command
>>>>>>> I
>>>>>>> got
>>>>>>> earlier.
>>>>>>> But nmap still sees no ports open on that host.
>>>>>>> Prior to running iptables, I tried to apt install it, and the
>>>>>>> message
>>>>>>> was
>>>>>>> that I'm already running the latest.
>>>>>>> So I needed to restart iptables with
>>>>>>> sudo service iptables restart
>>>>>>> and it can find no service iptables.
>>>>>>> I retyped it several times to be sure there was no typos.
>>>>>>=20
>>>>>> This is to be expected, iptables is not a system service.
>>>>>>=20
>>>>>>> So I tried
>>>>>>> sudo systemctl restart iptables
>>>>>>> and the system cannot find systemctl
>>>>>>=20
>>>>>> Is antiX running sysvinit, openrc, or something else? This is
>>>>>> something the antiX documentation should tell you. What does it use
>>>>>> for PID1 or init?
>>>>>>=20
>>>>>>> question:
>>>>>>> If I reboot, if the long iptables command worked, will it stick if I=

>>>>>>> reboot?
>>>>>>=20
>>>>>> No.
>>>>>>=20
>>>>>>=20
>>>>>>> On Fri, Aug 26, 2022 at 05:57:37PM -0500, K0LNY_Glenn wrote:
>>>>>>> Well it seems ufw is there, but it must not be running
>>>>>>> automatically,
>>>>>>> but
>>>>>>> it
>>>>>>> does not fix the port problem.
>>>>>>> I did
>>>>>>> sudo ufw allow ssh
>>>>>>> it said tcp port allowed
>>>>>>> or something like that
>>>>>>> so I checked on the other computer with nmap
>>>>>>> 100 ports closed
>>>>>>> So I did sudo ufw restart
>>>>>>> and the other computer said 999 ports filtered tcp port 22 closed.
>>>>>>> I've done iptables too, but that does not stay after a reboot.
>>>>>>> if I do sudo ufw status
>>>>>>> it shows tcp port 22 allow
>>>>>>> but it does not stay from a reboot.
>>>>>>=20
>>>>>> You need to save the firewall configuration once you changed it for i=
t
>>>>>> to persist across reboots. I haven't used ufw, so you will need to
>>>>>> read up on how to do that.
>>>>>>=20
>>>>>> If port tcp 22 shows up as not filtered but closed, then the port is
>>>>>> open, but there is no ssh service running.
>>>>>>=20
>>>>>> Greg
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>=20
>>=20

--Apple-Mail-BB31A84D-92AB-42A3-BE67-AE187A1AC06C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Howdy glenn,<div><br></div><div>Nah, you ca=
n download the source from github just as zip or tar. Specialy the releases i=
 did. See here:</div><div><br></div><div><a href=3D"https://github.com/chrys=
87/fenrir/archive/refs/tags/1.9.7.1.tar.gz">https://github.com/chrys87/fenri=
r/archive/refs/tags/1.9.7.1.tar.gz</a></div><div><br></div><div>You can just=
 unpack and run it.</div><div><br></div><div>You are using the system just w=
ith OCR? Respect.</div><div><br></div><div>Cheers chrys</div><div><br><br><d=
iv dir=3D"ltr">Von meinem iPhone gesendet</div><div dir=3D"ltr"><br><blockqu=
ote type=3D"cite">Am 27.08.2022 um 18:00 schrieb K0LNY_Glenn &lt;glenn@ervin=
.email&gt;:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"=
ltr">=EF=BB=BF

<meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"content-type">
<meta name=3D"GENERATOR" content=3D"MSHTML 11.00.9600.19597">
<style></style>


<div><font size=3D"2" face=3D"Arial">If Fenrir requires git, that is a probl=
em, because=20
git is not on AntiX, and I tried to apt install it, and it cannot find=20
it.</font></div>
<div><font size=3D"2" face=3D"Arial">I am wondering if the errors are relate=
d to=20
git.</font></div>
<div><font size=3D"2" face=3D"Arial">I'm using OCR on the screen, so it isn'=
t easy to=20
obtain the messages, and impossible to save them.</font></div>
<div>&nbsp;</div>
<div><font size=3D"2" face=3D"Arial">Glenn</font></div>
<div style=3D"FONT: 10pt arial">----- Original Message -----=20
<div style=3D"BACKGROUND: #e4e4e4; font-color: black"><b>From:</b> <a title=3D=
"chrys@linux-a11y.org" href=3D"mailto:chrys@linux-a11y.org">Linux A11y</a>=20=

</div>
<div><b>To:</b> <a title=3D"glenn@ervin.email" href=3D"mailto:glenn@ervin.em=
ail">K0LNY_Glenn</a> </div>
<div><b>Cc:</b> <a title=3D"speakup@linux-speakup.org" href=3D"mailto:speaku=
p@linux-speakup.org">speakup@linux-speakup.org</a> ; <a title=3D"didier@slin=
t.fr" href=3D"mailto:didier@slint.fr">Didier Spaier</a> </div>
<div><b>Sent:</b> Saturday, August 27, 2022 10:50 AM</div>
<div><b>Subject:</b> Re: hopefully some help with AntiX</div></div>
<div><br></div>Howdy,
<div><br></div>
<div>
<blockquote type=3D"cite">
  <div dir=3D"ltr">
  <blockquote type=3D"cite">Well I ran check-dependencies.py and it gave a=20=

    couple mysterious errors,&nbsp;</blockquote></div></blockquote>What erro=
rs you=20
get? Fenrir starts for testing also just from git folder without any need to=
=20
install. But it requires the needed dependencys and the correct pulse=20
setup.</div>
<div>See readme section pulseaudio.</div>
<div><a href=3D"https://github.com/chrys87/fenrir#configure-pulseaudio">http=
s://github.com/chrys87/fenrir#configure-pulseaudio</a></div>
<div><br></div>
<div>Also this is the speakup list and people tend to flame if someone is=20=

=E2=80=9Eadvertising=E2=80=9C different software. To prevent this you can re=
gister to fenrirs=20
mailing list to get useful help. We will get it run for sure.</div>
<div><br></div>
<div>Cheers chrys</div>
<div>
<div dir=3D"ltr"><br>
<blockquote type=3D"cite">Am 27.08.2022 um 17:37 schrieb K0LNY_Glenn=20
  &lt;glenn@ervin.email&gt;:<br><br></blockquote></div>
<blockquote type=3D"cite">
  <div dir=3D"ltr">=EF=BB=BF<span>Hi Didier,</span><br><span>I did try to jo=
in that forum=20
  about a week ago, and never got a confirmation </span><br><span>for the=20=

  forum.</span><br><span>I also contacted someone associated with it and ask=
ed=20
  why accessibility </span><br><span>wasn't built=20
  in.</span><br><span>Thanks.</span><br><span></span><br><span></span><br><s=
pan>-----=20
  Original Message ----- </span><br><span>From: "Didier Spaier"=20
  &lt;didier@slint.fr&gt;</span><br><span>To:=20
  &lt;speakup@linux-speakup.org&gt;</span><br><span>Sent: Saturday, August 2=
7,=20
  2022 12:22 PM</span><br><span>Subject: Re: hopefully some help with=20
  AntiX</span><br><span></span><br><span></span><br><span>Hi,</span><br><spa=
n></span><br><span>Installing=20
  a package intended for another distribution can work...=20
  But</span><br><span>oftentimes does not.</span><br><span></span><br><span>=
If=20
  not yet done, I suggest that you post your issue in this=20
  forum:</span><br><span>https://www.antixforum.com/</span><br><span>Caveat:=
 I=20
  do not know if it is accessible with a screen=20
  reader.</span><br><span></span><br><span>Cheers,</span><br><span>Dider</sp=
an><br><span></span><br><span></span><br><span></span><br><span>Le=20
  27/08/2022 =C3=A0 15:06, K0LNY_Glenn a =C3=A9crit :</span><br>
  <blockquote type=3D"cite"><span>Well I found espeak-ng for Debian Buster=20=

    here:</span><br></blockquote>
  <blockquote type=3D"cite"><span>https://packages.debian.org/buster/espeak-=
ng</span><br></blockquote>
  <blockquote type=3D"cite"><span>The file I downloaded=20
  was:</span><br></blockquote>
  <blockquote type=3D"cite"><span>espeak-ng_1.49.2+dfsg-8+deb10u1.debian.tar=
.xz</span><br></blockquote>
  <blockquote type=3D"cite"><span>Looking in the archive, there are some=20
    .install files, but I didn't find </span><br></blockquote>
  <blockquote type=3D"cite"><span>any</span><br></blockquote>
  <blockquote type=3D"cite"><span>.sh files, so I don't know which file to u=
se=20
    to get espeak installed on </span><br></blockquote>
  <blockquote type=3D"cite"><span>this</span><br></blockquote>
  <blockquote type=3D"cite"><span>system.</span><br></blockquote>
  <blockquote type=3D"cite"><span>Or if there is a .deb for RhVoice, that wo=
uld=20
    work too, but did I download</span><br></blockquote>
  <blockquote type=3D"cite"><span>the wrong espeak-ng file for installing=20=

    it?</span><br></blockquote>
  <blockquote type=3D"cite"><span>Thanks.</span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span>Glenn</span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span>----- Original Message -----=20
  </span><br></blockquote>
  <blockquote type=3D"cite"><span>From: "K0LNY_Glenn"=20
    &lt;glenn@ervin.email&gt;</span><br></blockquote>
  <blockquote type=3D"cite"><span>To: "Jude DaShiell"=20
    &lt;jdashiel@panix.com&gt;; "Gregory Nowak" </span><br></blockquote>
  <blockquote type=3D"cite"><span>&lt;greg@gregn.net&gt;;</span><br></blockq=
uote>
  <blockquote type=3D"cite"><span>&lt;speakup@linux-speakup.org&gt;</span><b=
r></blockquote>
  <blockquote type=3D"cite"><span>Sent: Saturday, August 27, 2022 9:46=20
    AM</span><br></blockquote>
  <blockquote type=3D"cite"><span>Subject: Re: hopefully some help with=20
    AntiX</span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span>Well I ran check-dependencies.py and it ga=
ve a=20
    couple mysterious errors, </span><br></blockquote>
  <blockquote type=3D"cite"><span>but</span><br></blockquote>
  <blockquote type=3D"cite"><span>it didn't help.</span><br></blockquote>
  <blockquote type=3D"cite"><span>I ran install.sh again.</span><br></blockq=
uote>
  <blockquote type=3D"cite"><span>I ran sudo fenrir and again it only gave m=
e=20
    the startup tone.</span><br></blockquote>
  <blockquote type=3D"cite"><span>It acts like there is no TTS for it to=20
    use.</span><br></blockquote>
  <blockquote type=3D"cite"><span>Glenn</span><br></blockquote>
  <blockquote type=3D"cite"><span>----- Original Message -----=20
  </span><br></blockquote>
  <blockquote type=3D"cite"><span>From: "Jude DaShiell"=20
    &lt;jdashiel@panix.com&gt;</span><br></blockquote>
  <blockquote type=3D"cite"><span>To: "K0LNY_Glenn" &lt;glenn@ervin.email&gt=
;;=20
    "Gregory Nowak" &lt;greg@gregn.net&gt;;</span><br></blockquote>
  <blockquote type=3D"cite"><span>&lt;speakup@linux-speakup.org&gt;</span><b=
r></blockquote>
  <blockquote type=3D"cite"><span>Sent: Friday, August 26, 2022 9:55=20
    PM</span><br></blockquote>
  <blockquote type=3D"cite"><span>Subject: Re: hopefully some help with=20
    AntiX</span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span>Also sysctl enable fenrir.service or is it=
=20
    fenrirscreenreader.service then</span><br></blockquote>
  <blockquote type=3D"cite"><span>sysctl start fenrir.service or sysctl star=
t=20
    fenrirscreenreader.service.</span><br></blockquote>
  <blockquote type=3D"cite"><span>If a service is missing systemd will let y=
ou=20
    know about it.</span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span>Jude &lt;jdashiel at panix dot=20
    com&gt;</span><br></blockquote>
  <blockquote type=3D"cite"><span>"There are four boxes to be used in defens=
e of=20
    liberty:</span><br></blockquote>
  <blockquote type=3D"cite"><span>soap, ballot, jury, and ammo. Please use i=
n=20
    that order."</span><br></blockquote>
  <blockquote type=3D"cite"><span>-Ed Howdershelt (Author,=20
  1940)</span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span>.</span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span>On Fri, 26 Aug 2022, K0LNY_Glenn=20
    wrote:</span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>Well I ran install.sh on the system, and=
=20
      pressed enter where it said to</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>proceed, and it said was finished, and i=
t=20
      said to type</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>sudo fenrir</span><br></blockquote></blo=
ckquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>to test it, and all I can get is the=20
      two-tone sound when fenrir starts,</span><br></blockquote></blockquote=
>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>but</span><br></blockquote></blockquote>=

  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>no TTS.</span><br></blockquote></blockqu=
ote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>Should have that installed espeak or=20
      espeak-ng?</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>Thanks.</span><br></blockquote></blockqu=
ote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>----- Original Message=20
    -----</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>From: "Jude DaShiell"=20
      &lt;jdashiel@panix.com&gt;</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>To: "K0LNY_Glenn" &lt;glenn@ervin.email&=
gt;;=20
      "Gregory Nowak" &lt;greg@gregn.net&gt;;</span><br></blockquote></block=
quote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>&lt;speakup@linux-speakup.org&gt;</span>=
<br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>Sent: Friday, August 26, 2022 8:27=20
      PM</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>Subject: Re: hopefully some help with=20=

      AntiX</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>For now and not forever, why not do apt=20=

      purge ufw?</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>Jude &lt;jdashiel at panix dot=20
      com&gt;</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>"There are four boxes to be used in defe=
nse=20
      of liberty:</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>soap, ballot, jury, and ammo. Please use=
 in=20
      that order."</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>-Ed Howdershelt (Author,=20
    1940)</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>.</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span>On Fri, 26 Aug 2022, K0LNY_Glenn=20
      wrote:</span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>Then all 1000 ports show up in nmap as=
=20
        closed.</span><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>So it seems if I allow a port in ufw, i=
t=20
        shows up as closed, but not</span><br></blockquote></blockquote></bl=
ockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>filtered.</span><br></blockquote></blo=
ckquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>So filtered means ufw is running, and i=
f=20
        22 gets allowed, it is not</span><br></blockquote></blockquote></blo=
ckquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>filtered, but still=20
      closed.</span><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>Glenn</span><br></blockquote></blockqu=
ote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>----- Original Message=20
      -----</span><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>From: "Jude DaShiell"=20
        &lt;jdashiel@panix.com&gt;</span><br></blockquote></blockquote></blo=
ckquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>To: "K0LNY_Glenn"=20
        &lt;glenn@ervin.email&gt;; "Gregory Nowak"=20
        &lt;greg@gregn.net&gt;;</span><br></blockquote></blockquote></blockq=
uote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>&lt;speakup@linux-speakup.org&gt;</spa=
n><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>Sent: Friday, August 26, 2022 7:12=20
        PM</span><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>Subject: Re: hopefully some help with=20=

        AntiX</span><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>What happens if ufw --disable is run t=
hen=20
        the offending computer gets</span><br></blockquote></blockquote></bl=
ockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>rebooted?</span><br></blockquote></blo=
ckquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>Jude &lt;jdashiel at panix dot=20
        com&gt;</span><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>"There are four boxes to be used in=20=

        defense of liberty:</span><br></blockquote></blockquote></blockquote=
>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>soap, ballot, jury, and ammo. Please u=
se=20
        in that order."</span><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>-Ed Howdershelt (Author,=20
      1940)</span><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>.</span><br></blockquote></blockquote>=
</blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span>On Fri, 26 Aug 2022, K0LNY_Glenn=20
        wrote:</span><br></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>I've considered that, and if I can g=
et=20
          any port to open, I will=20
    gladly</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>use</span><br></blockquote></blockqu=
ote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>telnet.</span><br></blockquote></blo=
ckquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>Hell, if I could open all 1000 ports=
=20
          now, I would!</span><br></blockquote></blockquote></blockquote></b=
lockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>Glenn</span><br></blockquote></block=
quote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>----- Original Message=20
        -----</span><br></blockquote></blockquote></blockquote></blockquote>=

  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>From: "Gregory Nowak"=20
          &lt;greg@gregn.net&gt;</span><br></blockquote></blockquote></block=
quote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>To:=20
          &lt;speakup@linux-speakup.org&gt;</span><br></blockquote></blockqu=
ote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>Sent: Friday, August 26, 2022 7:01=20=

          PM</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>Subject: Re: hopefully some help wit=
h=20
          AntiX</span><br></blockquote></blockquote></blockquote></blockquot=
e>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>On Fri, Aug 26, 2022 at 02:06:13PM=20=

          -0500, K0LNY_Glenn=20
  wrote:</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>On the antiX I=20
          did</span><br></blockquote></blockquote></blockquote></blockquote>=
</blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>sudo netcat -l=20
        22</span><br></blockquote></blockquote></blockquote></blockquote></b=
lockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>and then on the pine 64, I did sud=
o nc=20
            10.248.1.143=20
    22</span><br></blockquote></blockquote></blockquote></blockquote></block=
quote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>and it does not seem to=20
            connect.</span><br></blockquote></blockquote></blockquote></bloc=
kquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>I wonder if it is because I am usi=
ng=20
            22 to get from my windows=20
      to</span><br></blockquote></blockquote></blockquote></blockquote></blo=
ckquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>the</span><br></blockquote></block=
quote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>Pine64, in order to go linux to=20=

            linux.</span><br></blockquote></blockquote></blockquote></blockq=
uote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>Port 22 is a privileged port. You sh=
ould=20
          consider using 1024=20
  or</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>higher. If the listening port is ope=
n on=20
          the firewall, the=20
  commands</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>you gave above should connect. If yo=
u=20
          type something on the=20
    client</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>side, you should see it typed on the=
=20
          antiX machine, and the other=20
    way</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>round. This will however not give yo=
u a=20
          login terminal. To do=20
  that,</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>you need something that handles logi=
ns=20
          to listen on your netcat.=20
    This</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>isn't something I've done, so can't g=
ive=20
          you more directions here.=20
    If</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>you don't care about the connection=20=

          being secure, which you don't=20
    seem</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>to, you might as well=20
        try:</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>apt install=20
      telnetd</span><br></blockquote></blockquote></blockquote></blockquote>=

  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>and open tcp 23 on your=20
          firewall.</span><br></blockquote></blockquote></blockquote></block=
quote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>On Fri, Aug 26, 2022 at 04:12:28PM=20=

          -0500, K0LNY_Glenn=20
  wrote:</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>Well I thought I'd try iptables=20=

            again.</span><br></blockquote></blockquote></blockquote></blockq=
uote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>I finally got it to run without an=
y=20
            errors, that long=20
      iptables</span><br></blockquote></blockquote></blockquote></blockquote=
></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>command</span><br></blockquote></b=
lockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>I</span><br></blockquote></blockqu=
ote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>got</span><br></blockquote></block=
quote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>earlier.</span><br></blockquote></=
blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>But nmap still sees no ports open o=
n=20
            that=20
  host.</span><br></blockquote></blockquote></blockquote></blockquote></bloc=
kquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>Prior to running iptables, I tried=
 to=20
            apt install it, and=20
    the</span><br></blockquote></blockquote></blockquote></blockquote></bloc=
kquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>message</span><br></blockquote></b=
lockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>was</span><br></blockquote></block=
quote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>that I'm already running the=20
            latest.</span><br></blockquote></blockquote></blockquote></block=
quote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>So I needed to restart iptables=20=

            with</span><br></blockquote></blockquote></blockquote></blockquo=
te></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>sudo service iptables=20
            restart</span><br></blockquote></blockquote></blockquote></block=
quote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>and it can find no service=20
            iptables.</span><br></blockquote></blockquote></blockquote></blo=
ckquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>I retyped it several times to be s=
ure=20
            there was no=20
    typos.</span><br></blockquote></blockquote></blockquote></blockquote></b=
lockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>This is to be expected, iptables is n=
ot=20
          a system=20
  service.</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>So I=20
        tried</span><br></blockquote></blockquote></blockquote></blockquote>=
</blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>sudo systemctl restart=20
            iptables</span><br></blockquote></blockquote></blockquote></bloc=
kquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>and the system cannot find=20
            systemctl</span><br></blockquote></blockquote></blockquote></blo=
ckquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>Is antiX running sysvinit, openrc, o=
r=20
          something else? This=20
  is</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>something the antiX documentation sh=
ould=20
          tell you. What does it=20
  use</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>for PID1 or=20
      init?</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>question:</span><br></blockquote><=
/blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>If I reboot, if the long iptables=20=

            command worked, will it stick if=20
      I</span><br></blockquote></blockquote></blockquote></blockquote></bloc=
kquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>reboot?</span><br></blockquote></b=
lockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>No.</span><br></blockquote></blockqu=
ote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>On Fri, Aug 26, 2022 at 05:57:37PM=20=

          -0500, K0LNY_Glenn=20
  wrote:</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>Well it seems ufw is there, but it=
=20
            must not be=20
    running</span><br></blockquote></blockquote></blockquote></blockquote></=
blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>automatically,</span><br></blockqu=
ote></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>but</span><br></blockquote></block=
quote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>it</span><br></blockquote></blockq=
uote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>does not fix the port=20
            problem.</span><br></blockquote></blockquote></blockquote></bloc=
kquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>I=20
      did</span><br></blockquote></blockquote></blockquote></blockquote></bl=
ockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>sudo ufw allow=20
          ssh</span><br></blockquote></blockquote></blockquote></blockquote>=
</blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>it said tcp port=20
          allowed</span><br></blockquote></blockquote></blockquote></blockqu=
ote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>or something like=20
          that</span><br></blockquote></blockquote></blockquote></blockquote=
></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>so I checked on the other computer=
=20
            with=20
  nmap</span><br></blockquote></blockquote></blockquote></blockquote></block=
quote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>100 ports=20
        closed</span><br></blockquote></blockquote></blockquote></blockquote=
></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>So I did sudo ufw=20
          restart</span><br></blockquote></blockquote></blockquote></blockqu=
ote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>and the other computer said 999 po=
rts=20
            filtered tcp port 22=20
      closed.</span><br></blockquote></blockquote></blockquote></blockquote>=
</blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>I've done iptables too, but that d=
oes=20
            not stay after a=20
    reboot.</span><br></blockquote></blockquote></blockquote></blockquote></=
blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>if I do sudo ufw=20
          status</span><br></blockquote></blockquote></blockquote></blockquo=
te></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>it shows tcp port 22=20
          allow</span><br></blockquote></blockquote></blockquote></blockquot=
e></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <blockquote type=3D"cite"><span>but it does not stay from a=20
            reboot.</span><br></blockquote></blockquote></blockquote></block=
quote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>You need to save the firewall=20
          configuration once you changed it for=20
      it</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>to persist across reboots. I haven't=
=20
          used ufw, so you will need=20
    to</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>read up on how to do=20
        that.</span><br></blockquote></blockquote></blockquote></blockquote>=

  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>If port tcp 22 shows up as not filte=
red=20
          but closed, then the port=20
    is</span><br></blockquote></blockquote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>open, but there is no ssh service=20=

          running.</span><br></blockquote></blockquote></blockquote></blockq=
uote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span>Greg</span><br></blockquote></blockq=
uote></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite">
        <blockquote type=3D"cite"><span></span><br></blockquote></blockquote=
></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite">
      <blockquote type=3D"cite"><span></span><br></blockquote></blockquote><=
/blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite">
    <blockquote type=3D"cite"><span></span><br></blockquote></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote>
  <blockquote type=3D"cite"><span></span><br></blockquote><span></span><br><=
span></span><br></div></blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-BB31A84D-92AB-42A3-BE67-AE187A1AC06C--

