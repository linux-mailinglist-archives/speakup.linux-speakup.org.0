Return-Path: <speakup+bounces-706-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4DA275A387D
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 17:50:59 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A30538576D; Sat, 27 Aug 2022 11:50:51 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2E98138574C
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 11:50:51 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 428E938574D; Sat, 27 Aug 2022 11:50:46 -0400 (EDT)
Received: from smtprelay03.ispgateway.de (smtprelay03.ispgateway.de [80.67.18.15])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 87D1938574A
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 11:50:45 -0400 (EDT)
Received: from [31.18.253.204] (helo=smtpclient.apple)
	by smtprelay03.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>)
	id 1oRy6C-00029a-71; Sat, 27 Aug 2022 17:51:52 +0200
Content-Type: multipart/alternative; boundary=Apple-Mail-D753A2C9-0164-47D4-BB2E-D0B867E0516E
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
Date: Sat, 27 Aug 2022 17:50:37 +0200
Message-Id: <ACFC197F-8B51-467A-AEE5-31BB7BEA90A0@linux-a11y.org>
References: <013201d8ba2a$d97bed80$80ffa8c0@Win7VM>
Cc: speakup@linux-speakup.org, Didier Spaier <didier@slint.fr>
In-Reply-To: <013201d8ba2a$d97bed80$80ffa8c0@Win7VM>
To: K0LNY_Glenn <glenn@ervin.email>
X-Mailer: iPhone Mail (19G82)
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5


--Apple-Mail-D753A2C9-0164-47D4-BB2E-D0B867E0516E
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Howdy,

>> Well I ran check-dependencies.py and it gave a couple mysterious errors,=20=

What errors you get? Fenrir starts for testing also just from git folder wit=
hout any need to install. But it requires the needed dependencys and the cor=
rect pulse setup.
See readme section pulseaudio.
https://github.com/chrys87/fenrir#configure-pulseaudio

Also this is the speakup list and people tend to flame if someone is =E2=80=9E=
advertising=E2=80=9C different software. To prevent this you can register to=
 fenrirs mailing list to get useful help. We will get it run for sure.

Cheers chrys

> Am 27.08.2022 um 17:37 schrieb K0LNY_Glenn <glenn@ervin.email>:
>=20
> =EF=BB=BFHi Didier,
> I did try to join that forum about a week ago, and never got a confirmatio=
n=20
> for the forum.
> I also contacted someone associated with it and asked why accessibility=20=

> wasn't built in.
> Thanks.
>=20
>=20
> ----- Original Message -----=20
> From: "Didier Spaier" <didier@slint.fr>
> To: <speakup@linux-speakup.org>
> Sent: Saturday, August 27, 2022 12:22 PM
> Subject: Re: hopefully some help with AntiX
>=20
>=20
> Hi,
>=20
> Installing a package intended for another distribution can work... But
> oftentimes does not.
>=20
> If not yet done, I suggest that you post your issue in this forum:
> https://www.antixforum.com/
> Caveat: I do not know if it is accessible with a screen reader.
>=20
> Cheers,
> Dider
>=20
>=20
>=20
>> Le 27/08/2022 =C3=A0 15:06, K0LNY_Glenn a =C3=A9crit :
>> Well I found espeak-ng for Debian Buster here:
>> https://packages.debian.org/buster/espeak-ng
>> The file I downloaded was:
>> espeak-ng_1.49.2+dfsg-8+deb10u1.debian.tar.xz
>> Looking in the archive, there are some .install files, but I didn't find=20=

>> any
>> .sh files, so I don't know which file to use to get espeak installed on=20=

>> this
>> system.
>> Or if there is a .deb for RhVoice, that would work too, but did I downloa=
d
>> the wrong espeak-ng file for installing it?
>> Thanks.
>>=20
>> Glenn
>>=20
>> ----- Original Message -----=20
>> From: "K0LNY_Glenn" <glenn@ervin.email>
>> To: "Jude DaShiell" <jdashiel@panix.com>; "Gregory Nowak"=20
>> <greg@gregn.net>;
>> <speakup@linux-speakup.org>
>> Sent: Saturday, August 27, 2022 9:46 AM
>> Subject: Re: hopefully some help with AntiX
>>=20
>>=20
>> Well I ran check-dependencies.py and it gave a couple mysterious errors,=20=

>> but
>> it didn't help.
>> I ran install.sh again.
>> I ran sudo fenrir and again it only gave me the startup tone.
>> It acts like there is no TTS for it to use.
>> Glenn
>> ----- Original Message -----=20
>> From: "Jude DaShiell" <jdashiel@panix.com>
>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>;
>> <speakup@linux-speakup.org>
>> Sent: Friday, August 26, 2022 9:55 PM
>> Subject: Re: hopefully some help with AntiX
>>=20
>>=20
>> Also sysctl enable fenrir.service or is it fenrirscreenreader.service the=
n
>> sysctl start fenrir.service or sysctl start fenrirscreenreader.service.
>> If a service is missing systemd will let you know about it.
>>=20
>>=20
>> Jude <jdashiel at panix dot com>
>> "There are four boxes to be used in defense of liberty:
>> soap, ballot, jury, and ammo. Please use in that order."
>> -Ed Howdershelt (Author, 1940)
>>=20
>> .
>>=20
>>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>>>=20
>>> Well I ran install.sh on the system, and pressed enter where it said to
>>> proceed, and it said was finished, and it said to type
>>> sudo fenrir
>>> to test it, and all I can get is the two-tone sound when fenrir starts,
>>> but
>>> no TTS.
>>> Should have that installed espeak or espeak-ng?
>>> Thanks.
>>>=20
>>> ----- Original Message -----
>>> From: "Jude DaShiell" <jdashiel@panix.com>
>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>;=

>>> <speakup@linux-speakup.org>
>>> Sent: Friday, August 26, 2022 8:27 PM
>>> Subject: Re: hopefully some help with AntiX
>>>=20
>>>=20
>>> For now and not forever, why not do apt purge ufw?
>>>=20
>>>=20
>>> Jude <jdashiel at panix dot com>
>>> "There are four boxes to be used in defense of liberty:
>>> soap, ballot, jury, and ammo. Please use in that order."
>>> -Ed Howdershelt (Author, 1940)
>>>=20
>>> .
>>>=20
>>>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>>>=20
>>>> Then all 1000 ports show up in nmap as closed.
>>>> So it seems if I allow a port in ufw, it shows up as closed, but not
>>>> filtered.
>>>> So filtered means ufw is running, and if 22 gets allowed, it is not
>>>> filtered, but still closed.
>>>> Glenn
>>>>=20
>>>>=20
>>>> ----- Original Message -----
>>>> From: "Jude DaShiell" <jdashiel@panix.com>
>>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>=
;
>>>> <speakup@linux-speakup.org>
>>>> Sent: Friday, August 26, 2022 7:12 PM
>>>> Subject: Re: hopefully some help with AntiX
>>>>=20
>>>>=20
>>>> What happens if ufw --disable is run then the offending computer gets
>>>> rebooted?
>>>>=20
>>>> Jude <jdashiel at panix dot com>
>>>> "There are four boxes to be used in defense of liberty:
>>>> soap, ballot, jury, and ammo. Please use in that order."
>>>> -Ed Howdershelt (Author, 1940)
>>>>=20
>>>> .
>>>>=20
>>>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>>>>=20
>>>>> I've considered that, and if I can get any port to open, I will gladly=

>>>>> use
>>>>> telnet.
>>>>> Hell, if I could open all 1000 ports now, I would!
>>>>> Glenn
>>>>> ----- Original Message -----
>>>>> From: "Gregory Nowak" <greg@gregn.net>
>>>>> To: <speakup@linux-speakup.org>
>>>>> Sent: Friday, August 26, 2022 7:01 PM
>>>>> Subject: Re: hopefully some help with AntiX
>>>>>=20
>>>>>=20
>>>>> On Fri, Aug 26, 2022 at 02:06:13PM -0500, K0LNY_Glenn wrote:
>>>>>> On the antiX I did
>>>>>> sudo netcat -l 22
>>>>>> and then on the pine 64, I did sudo nc 10.248.1.143 22
>>>>>> and it does not seem to connect.
>>>>>> I wonder if it is because I am using 22 to get from my windows to
>>>>>> the
>>>>>> Pine64, in order to go linux to linux.
>>>>>=20
>>>>> Port 22 is a privileged port. You should consider using 1024 or
>>>>> higher. If the listening port is open on the firewall, the commands
>>>>> you gave above should connect. If you type something on the client
>>>>> side, you should see it typed on the antiX machine, and the other way
>>>>> round. This will however not give you a login terminal. To do that,
>>>>> you need something that handles logins to listen on your netcat. This
>>>>> isn't something I've done, so can't give you more directions here. If
>>>>> you don't care about the connection being secure, which you don't seem=

>>>>> to, you might as well try:
>>>>>=20
>>>>> apt install telnetd
>>>>>=20
>>>>> and open tcp 23 on your firewall.
>>>>>=20
>>>>>=20
>>>>> On Fri, Aug 26, 2022 at 04:12:28PM -0500, K0LNY_Glenn wrote:
>>>>>> Well I thought I'd try iptables again.
>>>>>> I finally got it to run without any errors, that long iptables
>>>>>> command
>>>>>> I
>>>>>> got
>>>>>> earlier.
>>>>>> But nmap still sees no ports open on that host.
>>>>>> Prior to running iptables, I tried to apt install it, and the
>>>>>> message
>>>>>> was
>>>>>> that I'm already running the latest.
>>>>>> So I needed to restart iptables with
>>>>>> sudo service iptables restart
>>>>>> and it can find no service iptables.
>>>>>> I retyped it several times to be sure there was no typos.
>>>>>=20
>>>>> This is to be expected, iptables is not a system service.
>>>>>=20
>>>>>> So I tried
>>>>>> sudo systemctl restart iptables
>>>>>> and the system cannot find systemctl
>>>>>=20
>>>>> Is antiX running sysvinit, openrc, or something else? This is
>>>>> something the antiX documentation should tell you. What does it use
>>>>> for PID1 or init?
>>>>>=20
>>>>>> question:
>>>>>> If I reboot, if the long iptables command worked, will it stick if I
>>>>>> reboot?
>>>>>=20
>>>>> No.
>>>>>=20
>>>>>=20
>>>>> On Fri, Aug 26, 2022 at 05:57:37PM -0500, K0LNY_Glenn wrote:
>>>>>> Well it seems ufw is there, but it must not be running
>>>>>> automatically,
>>>>>> but
>>>>>> it
>>>>>> does not fix the port problem.
>>>>>> I did
>>>>>> sudo ufw allow ssh
>>>>>> it said tcp port allowed
>>>>>> or something like that
>>>>>> so I checked on the other computer with nmap
>>>>>> 100 ports closed
>>>>>> So I did sudo ufw restart
>>>>>> and the other computer said 999 ports filtered tcp port 22 closed.
>>>>>> I've done iptables too, but that does not stay after a reboot.
>>>>>> if I do sudo ufw status
>>>>>> it shows tcp port 22 allow
>>>>>> but it does not stay from a reboot.
>>>>>=20
>>>>> You need to save the firewall configuration once you changed it for it=

>>>>> to persist across reboots. I haven't used ufw, so you will need to
>>>>> read up on how to do that.
>>>>>=20
>>>>> If port tcp 22 shows up as not filtered but closed, then the port is
>>>>> open, but there is no ssh service running.
>>>>>=20
>>>>> Greg
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
>>=20
>=20
>=20

--Apple-Mail-D753A2C9-0164-47D4-BB2E-D0B867E0516E
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Howdy,<div><br></div><div><blockquote type=3D=
"cite"><div dir=3D"ltr"><blockquote type=3D"cite">Well I ran check-dependenc=
ies.py and it gave a couple mysterious errors,&nbsp;</blockquote></div></blo=
ckquote>What errors you get? Fenrir starts for testing also just from git fo=
lder without any need to install. But it requires the needed dependencys and=
 the correct pulse setup.</div><div>See readme section pulseaudio.</div><div=
><a href=3D"https://github.com/chrys87/fenrir#configure-pulseaudio">https://=
github.com/chrys87/fenrir#configure-pulseaudio</a></div><div><br></div><div>=
Also this is the speakup list and people tend to flame if someone is =E2=80=9E=
advertising=E2=80=9C different software. To prevent this you can register to=
 fenrirs mailing list to get useful help. We will get it run for sure.</div>=
<div><br></div><div>Cheers chrys</div><div><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">Am 27.08.2022 um 17:37 schrieb K0LNY_Glenn &lt;glenn@ervin.emai=
l&gt;:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=
=EF=BB=BF<span>Hi Didier,</span><br><span>I did try to join that forum about=
 a week ago, and never got a confirmation </span><br><span>for the forum.</s=
pan><br><span>I also contacted someone associated with it and asked why acce=
ssibility </span><br><span>wasn't built in.</span><br><span>Thanks.</span><b=
r><span></span><br><span></span><br><span>----- Original Message ----- </spa=
n><br><span>From: "Didier Spaier" &lt;didier@slint.fr&gt;</span><br><span>To=
: &lt;speakup@linux-speakup.org&gt;</span><br><span>Sent: Saturday, August 2=
7, 2022 12:22 PM</span><br><span>Subject: Re: hopefully some help with AntiX=
</span><br><span></span><br><span></span><br><span>Hi,</span><br><span></spa=
n><br><span>Installing a package intended for another distribution can work.=
.. But</span><br><span>oftentimes does not.</span><br><span></span><br><span=
>If not yet done, I suggest that you post your issue in this forum:</span><b=
r><span>https://www.antixforum.com/</span><br><span>Caveat: I do not know if=
 it is accessible with a screen reader.</span><br><span></span><br><span>Che=
ers,</span><br><span>Dider</span><br><span></span><br><span></span><br><span=
></span><br><span>Le 27/08/2022 =C3=A0 15:06, K0LNY_Glenn a =C3=A9crit :</sp=
an><br><blockquote type=3D"cite"><span>Well I found espeak-ng for Debian Bus=
ter here:</span><br></blockquote><blockquote type=3D"cite"><span>https://pac=
kages.debian.org/buster/espeak-ng</span><br></blockquote><blockquote type=3D=
"cite"><span>The file I downloaded was:</span><br></blockquote><blockquote t=
ype=3D"cite"><span>espeak-ng_1.49.2+dfsg-8+deb10u1.debian.tar.xz</span><br><=
/blockquote><blockquote type=3D"cite"><span>Looking in the archive, there ar=
e some .install files, but I didn't find </span><br></blockquote><blockquote=
 type=3D"cite"><span>any</span><br></blockquote><blockquote type=3D"cite"><s=
pan>.sh files, so I don't know which file to use to get espeak installed on <=
/span><br></blockquote><blockquote type=3D"cite"><span>this</span><br></bloc=
kquote><blockquote type=3D"cite"><span>system.</span><br></blockquote><block=
quote type=3D"cite"><span>Or if there is a .deb for RhVoice, that would work=
 too, but did I download</span><br></blockquote><blockquote type=3D"cite"><s=
pan>the wrong espeak-ng file for installing it?</span><br></blockquote><bloc=
kquote type=3D"cite"><span>Thanks.</span><br></blockquote><blockquote type=3D=
"cite"><span></span><br></blockquote><blockquote type=3D"cite"><span>Glenn</=
span><br></blockquote><blockquote type=3D"cite"><span></span><br></blockquot=
e><blockquote type=3D"cite"><span>----- Original Message ----- </span><br></=
blockquote><blockquote type=3D"cite"><span>From: "K0LNY_Glenn" &lt;glenn@erv=
in.email&gt;</span><br></blockquote><blockquote type=3D"cite"><span>To: "Jud=
e DaShiell" &lt;jdashiel@panix.com&gt;; "Gregory Nowak" </span><br></blockqu=
ote><blockquote type=3D"cite"><span>&lt;greg@gregn.net&gt;;</span><br></bloc=
kquote><blockquote type=3D"cite"><span>&lt;speakup@linux-speakup.org&gt;</sp=
an><br></blockquote><blockquote type=3D"cite"><span>Sent: Saturday, August 2=
7, 2022 9:46 AM</span><br></blockquote><blockquote type=3D"cite"><span>Subje=
ct: Re: hopefully some help with AntiX</span><br></blockquote><blockquote ty=
pe=3D"cite"><span></span><br></blockquote><blockquote type=3D"cite"><span></=
span><br></blockquote><blockquote type=3D"cite"><span>Well I ran check-depen=
dencies.py and it gave a couple mysterious errors, </span><br></blockquote><=
blockquote type=3D"cite"><span>but</span><br></blockquote><blockquote type=3D=
"cite"><span>it didn't help.</span><br></blockquote><blockquote type=3D"cite=
"><span>I ran install.sh again.</span><br></blockquote><blockquote type=3D"c=
ite"><span>I ran sudo fenrir and again it only gave me the startup tone.</sp=
an><br></blockquote><blockquote type=3D"cite"><span>It acts like there is no=
 TTS for it to use.</span><br></blockquote><blockquote type=3D"cite"><span>G=
lenn</span><br></blockquote><blockquote type=3D"cite"><span>----- Original M=
essage ----- </span><br></blockquote><blockquote type=3D"cite"><span>From: "=
Jude DaShiell" &lt;jdashiel@panix.com&gt;</span><br></blockquote><blockquote=
 type=3D"cite"><span>To: "K0LNY_Glenn" &lt;glenn@ervin.email&gt;; "Gregory N=
owak" &lt;greg@gregn.net&gt;;</span><br></blockquote><blockquote type=3D"cit=
e"><span>&lt;speakup@linux-speakup.org&gt;</span><br></blockquote><blockquot=
e type=3D"cite"><span>Sent: Friday, August 26, 2022 9:55 PM</span><br></bloc=
kquote><blockquote type=3D"cite"><span>Subject: Re: hopefully some help with=
 AntiX</span><br></blockquote><blockquote type=3D"cite"><span></span><br></b=
lockquote><blockquote type=3D"cite"><span></span><br></blockquote><blockquot=
e type=3D"cite"><span>Also sysctl enable fenrir.service or is it fenrirscree=
nreader.service then</span><br></blockquote><blockquote type=3D"cite"><span>=
sysctl start fenrir.service or sysctl start fenrirscreenreader.service.</spa=
n><br></blockquote><blockquote type=3D"cite"><span>If a service is missing s=
ystemd will let you know about it.</span><br></blockquote><blockquote type=3D=
"cite"><span></span><br></blockquote><blockquote type=3D"cite"><span></span>=
<br></blockquote><blockquote type=3D"cite"><span>Jude &lt;jdashiel at panix d=
ot com&gt;</span><br></blockquote><blockquote type=3D"cite"><span>"There are=
 four boxes to be used in defense of liberty:</span><br></blockquote><blockq=
uote type=3D"cite"><span> soap, ballot, jury, and ammo. Please use in that o=
rder."</span><br></blockquote><blockquote type=3D"cite"><span>-Ed Howdershel=
t (Author, 1940)</span><br></blockquote><blockquote type=3D"cite"><span></sp=
an><br></blockquote><blockquote type=3D"cite"><span>.</span><br></blockquote=
><blockquote type=3D"cite"><span></span><br></blockquote><blockquote type=3D=
"cite"><span>On Fri, 26 Aug 2022, K0LNY_Glenn wrote:</span><br></blockquote>=
<blockquote type=3D"cite"><span></span><br></blockquote><blockquote type=3D"=
cite"><blockquote type=3D"cite"><span>Well I ran install.sh on the system, a=
nd pressed enter where it said to</span><br></blockquote></blockquote><block=
quote type=3D"cite"><blockquote type=3D"cite"><span>proceed, and it said was=
 finished, and it said to type</span><br></blockquote></blockquote><blockquo=
te type=3D"cite"><blockquote type=3D"cite"><span>sudo fenrir</span><br></blo=
ckquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><sp=
an>to test it, and all I can get is the two-tone sound when fenrir starts,</=
span><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote typ=
e=3D"cite"><span>but</span><br></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span>no TTS.</span><br></blockquote></bloc=
kquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Should have=
 that installed espeak or espeak-ng?</span><br></blockquote></blockquote><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><span>Thanks.</span><br></b=
lockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><=
span></span><br></blockquote></blockquote><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><span>----- Original Message -----</span><br></blockquote>=
</blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>From:=
 "Jude DaShiell" &lt;jdashiel@panix.com&gt;</span><br></blockquote></blockqu=
ote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>To: "K0LNY_Gle=
nn" &lt;glenn@ervin.email&gt;; "Gregory Nowak" &lt;greg@gregn.net&gt;;</span=
><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>&lt;speakup@linux-speakup.org&gt;</span><br></blockquote></bloc=
kquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Sent: Frida=
y, August 26, 2022 8:27 PM</span><br></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><span>Subject: Re: hopefully some hel=
p with AntiX</span><br></blockquote></blockquote><blockquote type=3D"cite"><=
blockquote type=3D"cite"><span></span><br></blockquote></blockquote><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquote></=
blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>For now=
 and not forever, why not do apt purge ufw?</span><br></blockquote></blockqu=
ote><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></b=
lockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><=
span></span><br></blockquote></blockquote><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><span>Jude &lt;jdashiel at panix dot com&gt;</span><br></b=
lockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><=
span>"There are four boxes to be used in defense of liberty:</span><br></blo=
ckquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><sp=
an> soap, ballot, jury, and ammo. Please use in that order."</span><br></blo=
ckquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><sp=
an>-Ed Howdershelt (Author, 1940)</span><br></blockquote></blockquote><block=
quote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquote>=
</blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span>.</sp=
an><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span></span><br></blockquote></blockquote><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>On Fri, 26 Aug 2022, K0LNY_Glenn wrote:</spa=
n><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span></span><br></blockquote></blockquote><blockquote type=3D"cite">=
<blockquote type=3D"cite"><blockquote type=3D"cite"><span>Then all 1000 port=
s show up in nmap as closed.</span><br></blockquote></blockquote></blockquot=
e><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span>So it seems if I allow a port in ufw, it shows up as closed, but n=
ot</span><br></blockquote></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>filtered.</span>=
<br></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><span>So filtered means ufw is r=
unning, and if 22 gets allowed, it is not</span><br></blockquote></blockquot=
e></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><span>filtered, but still closed.</span><br></blockquote></=
blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>Glenn</span><br></blockquote></blockquote></=
blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><span></span><br></blockquote></blockquote></blockquote><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span=
></span><br></blockquote></blockquote></blockquote><blockquote type=3D"cite"=
><blockquote type=3D"cite"><blockquote type=3D"cite"><span>----- Original Me=
ssage -----</span><br></blockquote></blockquote></blockquote><blockquote typ=
e=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>From: "=
Jude DaShiell" &lt;jdashiel@panix.com&gt;</span><br></blockquote></blockquot=
e></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><span>To: "K0LNY_Glenn" &lt;glenn@ervin.email&gt;; "Gregory=
 Nowak" &lt;greg@gregn.net&gt;;</span><br></blockquote></blockquote></blockq=
uote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>&lt;speakup@linux-speakup.org&gt;</span><br></blockquote></bloc=
kquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><span>Sent: Friday, August 26, 2022 7:12 PM</span><br>=
</blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><blockquote type=3D"cite"><span>Subject: Re: hopefully some h=
elp with AntiX</span><br></blockquote></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span></spa=
n><br></blockquote></blockquote></blockquote><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquote=
></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><span>What happens if ufw --disable is run then=
 the offending computer gets</span><br></blockquote></blockquote></blockquot=
e><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span>rebooted?</span><br></blockquote></blockquote></blockquote><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span=
></span><br></blockquote></blockquote></blockquote><blockquote type=3D"cite"=
><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Jude &lt;jdashiel=
 at panix dot com&gt;</span><br></blockquote></blockquote></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><sp=
an>"There are four boxes to be used in defense of liberty:</span><br></block=
quote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span> soap, ballot, jury, and ammo. Please=
 use in that order."</span><br></blockquote></blockquote></blockquote><block=
quote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><spa=
n>-Ed Howdershelt (Author, 1940)</span><br></blockquote></blockquote></block=
quote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span></span><br></blockquote></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>.</sp=
an><br></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquot=
e></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><span>On Fri, 26 Aug 2022, K0LNY_Glenn wrote:<=
/span><br></blockquote></blockquote></blockquote><blockquote type=3D"cite"><=
blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockq=
uote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>I've consid=
ered that, and if I can get any port to open, I will gladly</span><br></bloc=
kquote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><s=
pan>use</span><br></blockquote></blockquote></blockquote></blockquote><block=
quote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><span>telnet.</span><br></blockquote></blockquote></bl=
ockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><span>Hell, if I could ope=
n all 1000 ports now, I would!</span><br></blockquote></blockquote></blockqu=
ote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><span>Glenn</span><br></blockqu=
ote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span=
>----- Original Message -----</span><br></blockquote></blockquote></blockquo=
te></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><span>From: "Gregory Nowak" &lt;=
greg@gregn.net&gt;</span><br></blockquote></blockquote></blockquote></blockq=
uote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span>To: &lt;speakup@linux-speakup.org&gt;=
</span><br></blockquote></blockquote></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><span>Sent: Friday, August 26, 2022 7:01 PM</span><br></block=
quote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><sp=
an>Subject: Re: hopefully some help with AntiX</span><br></blockquote></bloc=
kquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br>=
</blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span></span><br></blockquote></blockquote></blockquote></blockquote><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><=
blockquote type=3D"cite"><span>On Fri, Aug 26, 2022 at 02:06:13PM -0500, K0L=
NY_Glenn wrote:</span><br></blockquote></blockquote></blockquote></blockquot=
e><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>On the antiX I=
 did</span><br></blockquote></blockquote></blockquote></blockquote></blockqu=
ote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"=
cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>sudo netcat -=
l 22</span><br></blockquote></blockquote></blockquote></blockquote></blockqu=
ote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"=
cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>and then on t=
he pine 64, I did sudo nc 10.248.1.143 22</span><br></blockquote></blockquot=
e></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><span>and it does not seem to connect.</span><br></blockq=
uote></blockquote></blockquote></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span>I wonder if it is because I am using 2=
2 to get from my windows to</span><br></blockquote></blockquote></blockquote=
></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><span>the</span><br></blockquote></blockquote></blockquote></blockquote=
></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Pi=
ne64, in order to go linux to linux.</span><br></blockquote></blockquote></b=
lockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span=
><br></blockquote></blockquote></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>Port 22 is a privileged port. You should consider using 1024 or=
</span><br></blockquote></blockquote></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><span>higher. If the listening port is open on the firewall, t=
he commands</span><br></blockquote></blockquote></blockquote></blockquote><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>you gave above should connect. If you type s=
omething on the client</span><br></blockquote></blockquote></blockquote></bl=
ockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote typ=
e=3D"cite"><blockquote type=3D"cite"><span>side, you should see it typed on t=
he antiX machine, and the other way</span><br></blockquote></blockquote></bl=
ockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><span>round. This will how=
ever not give you a login terminal. To do that,</span><br></blockquote></blo=
ckquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=
=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>you need=
 something that handles logins to listen on your netcat. This</span><br></bl=
ockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">=
<span>isn't something I've done, so can't give you more directions here. If<=
/span><br></blockquote></blockquote></blockquote></blockquote><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><span>you don't care about the connection being secure, which y=
ou don't seem</span><br></blockquote></blockquote></blockquote></blockquote>=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><span>to, you might as well try:</span><br></blo=
ckquote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><=
span></span><br></blockquote></blockquote></blockquote></blockquote><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><block=
quote type=3D"cite"><span>apt install telnetd</span><br></blockquote></block=
quote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br>=
</blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span>and open tcp 23 on your firewall.</span><br></blockquote></blockqu=
ote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"=
cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br><=
/blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite"=
><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><span></span><br></blockquote></blockquote></blockquote></blockquote><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><span>On Fri, Aug 26, 2022 at 04:12:28PM -0500, K0LN=
Y_Glenn wrote:</span><br></blockquote></blockquote></blockquote></blockquote=
><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Well I thought I=
'd try iptables again.</span><br></blockquote></blockquote></blockquote></bl=
ockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">=
<span>I finally got it to run without any errors, that long iptables</span><=
br></blockquote></blockquote></blockquote></blockquote></blockquote><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><block=
quote type=3D"cite"><blockquote type=3D"cite"><span>command</span><br></bloc=
kquote></blockquote></blockquote></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span>I</span><br></blockquote></blockquote=
></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><span>got</span><br></blockquote></blockquote></blockquote=
></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><span>earlier.</span><br></blockquote></blockquote></blockquote></block=
quote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><sp=
an>But nmap still sees no ports open on that host.</span><br></blockquote></=
blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite">=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><span>Prior to running iptables, I tried to apt i=
nstall it, and the</span><br></blockquote></blockquote></blockquote></blockq=
uote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><block=
quote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><spa=
n>message</span><br></blockquote></blockquote></blockquote></blockquote></bl=
ockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote typ=
e=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>was</sp=
an><br></blockquote></blockquote></blockquote></blockquote></blockquote><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><span>that I'm already run=
ning the latest.</span><br></blockquote></blockquote></blockquote></blockquo=
te></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>=
So I needed to restart iptables with</span><br></blockquote></blockquote></b=
lockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><span>sudo service iptables restart</span><br></blockquote></bl=
ockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">=
<blockquote type=3D"cite"><span>and it can find no service iptables.</span><=
br></blockquote></blockquote></blockquote></blockquote></blockquote><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><block=
quote type=3D"cite"><blockquote type=3D"cite"><span>I retyped it several tim=
es to be sure there was no typos.</span><br></blockquote></blockquote></bloc=
kquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br>=
</blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span>This is to be expected, iptables is not a system service.</span><b=
r></blockquote></blockquote></blockquote></blockquote><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"=
cite"><span></span><br></blockquote></blockquote></blockquote></blockquote><=
blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"=
><blockquote type=3D"cite"><blockquote type=3D"cite"><span>So I tried</span>=
<br></blockquote></blockquote></blockquote></blockquote></blockquote><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><span>sudo systemctl restart i=
ptables</span><br></blockquote></blockquote></blockquote></blockquote></bloc=
kquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>and the sys=
tem cannot find systemctl</span><br></blockquote></blockquote></blockquote><=
/blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"=
><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></bloc=
kquote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><s=
pan>Is antiX running sysvinit, openrc, or something else? This is</span><br>=
</blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span>something the antiX documentation should tell you. What does it us=
e</span><br></blockquote></blockquote></blockquote></blockquote><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><span>for PID1 or init?</span><br></blockquote></blockquote><=
/blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"=
><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></bloc=
kquote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><span>question:</span><br></blockquote></blockquote>=
</blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><span>If I reboot, if the long iptables command worked, wil=
l it stick if I</span><br></blockquote></blockquote></blockquote></blockquot=
e></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>r=
eboot?</span><br></blockquote></blockquote></blockquote></blockquote></block=
quote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span></span><br></blockquote></blockquote>=
</blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>No.</span><br></=
blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cite">=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><span></span><br></blockquote></blockquote></blockquote></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><span></span><br></blockquote></blockquote></blockquo=
te></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><span>On Fri, Aug 26, 2022 at 05=
:57:37PM -0500, K0LNY_Glenn wrote:</span><br></blockquote></blockquote></blo=
ckquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><=
span>Well it seems ufw is there, but it must not be running</span><br></bloc=
kquote></blockquote></blockquote></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span>automatically,</span><br></blockquote=
></blockquote></blockquote></blockquote></blockquote><blockquote type=3D"cit=
e"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><blockquote type=3D"cite"><span>but</span><br></blockquote></blockquote=
></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><span>it</span><br></blockquote></blockquote></blockquote>=
</blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"ci=
te"><span>does not fix the port problem.</span><br></blockquote></blockquote=
></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquot=
e type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockqu=
ote type=3D"cite"><span>I did</span><br></blockquote></blockquote></blockquo=
te></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>sudo ufw allow ssh</span><br></blockquote></blockquote></blockq=
uote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>it said tcp port allowed</span><br></blockquote></blockquote></=
blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><span>or something like that</span><br></blockquote></blockqu=
ote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bloc=
kquote type=3D"cite"><span>so I checked on the other computer with nmap</spa=
n><br></blockquote></blockquote></blockquote></blockquote></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><span>100 ports closed</spa=
n><br></blockquote></blockquote></blockquote></blockquote></blockquote><bloc=
kquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><span>So I did sudo ufw res=
tart</span><br></blockquote></blockquote></blockquote></blockquote></blockqu=
ote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"=
cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>and the othe=
r computer said 999 ports filtered tcp port 22 closed.</span><br></blockquot=
e></blockquote></blockquote></blockquote></blockquote><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"=
cite"><blockquote type=3D"cite"><span>I've done iptables too, but that does n=
ot stay after a reboot.</span><br></blockquote></blockquote></blockquote></b=
lockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><=
blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"=
><span>if I do sudo ufw status</span><br></blockquote></blockquote></blockqu=
ote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"=
cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span>it shows tcp port 22 allow</span><br></blockquote></blockquote>=
</blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote=
 type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><span>but it does not stay from a reboot.</span><br></block=
quote></blockquote></blockquote></blockquote></blockquote><blockquote type=3D=
"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span></span><br></blockquote></blockquote></blockquote></blockquote>=
<blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><span>You need to save the firewall configuratio=
n once you changed it for it</span><br></blockquote></blockquote></blockquot=
e></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquo=
te type=3D"cite"><blockquote type=3D"cite"><span>to persist across reboots. I=
 haven't used ufw, so you will need to</span><br></blockquote></blockquote><=
/blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"=
><blockquote type=3D"cite"><blockquote type=3D"cite"><span>read up on how to=
 do that.</span><br></blockquote></blockquote></blockquote></blockquote><blo=
ckquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><b=
lockquote type=3D"cite"><span></span><br></blockquote></blockquote></blockqu=
ote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><span>If port tcp 22 shows up a=
s not filtered but closed, then the port is</span><br></blockquote></blockqu=
ote></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"=
cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>open, but th=
ere is no ssh service running.</span><br></blockquote></blockquote></blockqu=
ote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquote><=
/blockquote></blockquote></blockquote><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><span>Greg<=
/span><br></blockquote></blockquote></blockquote></blockquote><blockquote ty=
pe=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><span></span><br></blockquote></blockquote></blockquote></block=
quote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D=
"cite"><blockquote type=3D"cite"><span></span><br></blockquote></blockquote>=
</blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"cite=
"><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blo=
ckquote></blockquote></blockquote></blockquote><blockquote type=3D"cite"><bl=
ockquote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquo=
te></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D"c=
ite"><blockquote type=3D"cite"><span></span><br></blockquote></blockquote></=
blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><blockquote t=
ype=3D"cite"><span></span><br></blockquote></blockquote></blockquote><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><span></span><br></blockquote><=
/blockquote><blockquote type=3D"cite"><blockquote type=3D"cite"><span></span=
><br></blockquote></blockquote><blockquote type=3D"cite"><blockquote type=3D=
"cite"><span></span><br></blockquote></blockquote><blockquote type=3D"cite">=
<span></span><br></blockquote><blockquote type=3D"cite"><span></span><br></b=
lockquote><blockquote type=3D"cite"><span></span><br></blockquote><span></sp=
an><br><span></span><br></div></blockquote></div></body></html>=

--Apple-Mail-D753A2C9-0164-47D4-BB2E-D0B867E0516E--

