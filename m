Return-Path: <speakup+bounces-712-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DD1455A393A
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 19:35:51 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6C4B38575A; Sat, 27 Aug 2022 13:35:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C07CA385751
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 13:35:49 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CBBCB385752; Sat, 27 Aug 2022 13:35:44 -0400 (EDT)
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de [80.67.31.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A4F9038574D
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 13:35:44 -0400 (EDT)
Received: from [31.18.253.204] (helo=smtpclient.apple)
	by smtprelay04.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>)
	id 1oRzjY-0006UU-LH; Sat, 27 Aug 2022 19:36:36 +0200
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Date: Sat, 27 Aug 2022 19:35:40 +0200
Message-Id: <3EB4BBCC-95D6-4112-87DC-DB41C8C6BC7F@linux-a11y.org>
References: <015b01d8ba38$fd13ae50$80ffa8c0@Win7VM>
Cc: Jude DaShiell <jdashiel@panix.com>, Gregory Nowak <greg@gregn.net>,
 speakup@linux-speakup.org
In-Reply-To: <015b01d8ba38$fd13ae50$80ffa8c0@Win7VM>
To: K0LNY_Glenn <glenn@ervin.email>
X-Mailer: iPhone Mail (19G82)
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Howdy,

Well i didnt follow the thread very close and already deleted most parts of i=
t, but an idea could be booting an accessible live system and chmod or simil=
ar into it to configure it.

Just for my own interes: whats the reason to use it if there is no basic way=
 by default for you to interact with that system? Any specific stuff it prov=
ides? Or any functionality?

Cheers chrys

Von meinem iPhone gesendet

> Am 27.08.2022 um 19:18 schrieb K0LNY_Glenn <glenn@ervin.email>:
>=20
> =EF=BB=BFHere's the files in the folder, when I ran
> sudo dpkg -i espeak-ng
> It came back that it cannot find the package espeak-ng
> Here are the files in the folder where I ran the command:
> graphic 835  patches 14 603 17 920 2021-09-09 18:34 drwxr-xr-x
> graphic 835  source 36 1 024 2019-12-02 19:42 drwxr-xr-x
> graphic 835  tests 58 766 59 392 2019-12-02 19:42 drwxr-xr-x
> graphic 540  changelog 17 992 18 432 2021-09-09 18:34 -rw-r--r--
> graphic 540  compat 2 512 2021-09-09 18:32 -rw-r--r--
> graphic 540  control 4 968 5 120 2021-09-09 18:32 -rw-r--r--
> graphic 540  copyright 3 877 4 096 2019-12-02 19:42 -rw-r--r--
> graphic 540  docs 27 512 2019-12-02 19:42 -rw-r--r--
> graphic 540  espeak-ng-data.install 41 512 2019-12-02 19:42 -rw-r--r--
> graphic 540  espeak-ng-espeak.install 16 512 2019-12-02 19:42 -rw-r--r--
> graphic 540  espeak-ng.doc-base 353 512 2019-12-02 19:42 -rw-r--r--
> graphic 540  espeak-ng.install 34 512 2019-12-02 19:42 -rw-r--r--
> graphic 540  libespeak-ng-dev.install 97 512 2019-12-02 19:42 -rw-r--r--
> graphic 540  libespeak-ng-libespeak-... 20 512 2019-12-02 19:42 -rw-r--r--=

> graphic 540  libespeak-ng-libespeak-... 200 512 2019-12-02 19:42 -rwxr-xr-=
x
> graphic 540  libespeak-ng-libespeak... 115 512 2019-12-02 19:42 -rwxr-xr-x=

> graphic 540  libespeak-ng1.install 29 512 2019-12-02 19:42 -rw-r--r--
> graphic 540  rules 840 1 024 2021-09-09 18:32 -rwxr-xr-x
> graphic 564  watch 113 512 2021-09-09 18:32 -rw-r--r--
> graphic 257  graphic 756
> 1 / 20 object(s) selected 113 113 2021-09-09 18:32:40
> ----- Original Message -----=20
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>;=20=

> <speakup@linux-speakup.org>
> Sent: Saturday, August 27, 2022 10:09 AM
> Subject: Re: hopefully some help with AntiX
>=20
>=20
> sudo dpkg -i espeak-ng
> then hit tab if in the same directory as the archive.
> Once done, try sysctl enable espeak then reboot.
>=20
>=20
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
> soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>=20
> .
>=20
>> On Sat, 27 Aug 2022, K0LNY_Glenn wrote:
>>=20
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
>> ----- Original Message -----
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
>> ----- Original Message -----
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
>>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak"=20
>>>> <greg@gregn.net>;
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
>>>>> I've considered that, and if I can get any port to open, I will=20
>>>>> gladly
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
>>>>> side, you should see it typed on the antiX machine, and the other=20
>>>>> way
>>>>> round. This will however not give you a login terminal. To do that,
>>>>> you need something that handles logins to listen on your netcat.=20
>>>>> This
>>>>> isn't something I've done, so can't give you more directions here.=20
>>>>> If
>>>>> you don't care about the connection being secure, which you don't=20
>>>>> seem
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
>>>>>> If I reboot, if the long iptables command worked, will it stick if=20=

>>>>>> I
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
>>>>> You need to save the firewall configuration once you changed it for=20=

>>>>> it
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
>>=20
>=20
>=20


