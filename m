Return-Path: <speakup+bounces-714-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1DE2C5A3942
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 19:42:12 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D08BE385768; Sat, 27 Aug 2022 13:42:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B955438575A
	for <lists+speakup@lfdr.de>; Sat, 27 Aug 2022 13:42:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D2395385754; Sat, 27 Aug 2022 13:42:06 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0195.b.hostedemail.com [64.98.42.195])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BF89E38574E
	for <speakup@linux-speakup.org>; Sat, 27 Aug 2022 13:42:06 -0400 (EDT)
Received: from omf01.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay01.b.hostedemail.com (Postfix) with ESMTP id 40A5B188D323F;
	Sat, 27 Aug 2022 17:42:06 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf01.b.hostedemail.com (Postfix) with ESMTPA id 9E48B1068D324;
	Sat, 27 Aug 2022 17:42:05 +0000 (UTC)
Message-ID: <016e01d8ba3c$5394bb90$80ffa8c0@Win7VM>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Linux A11y" <chrys@linux-a11y.org>
Cc: "Jude DaShiell" <jdashiel@panix.com>,
	"Gregory Nowak" <greg@gregn.net>,
	<speakup@linux-speakup.org>
References: <015b01d8ba38$fd13ae50$80ffa8c0@Win7VM> <3EB4BBCC-95D6-4112-87DC-DB41C8C6BC7F@linux-a11y.org>
Subject: Re: hopefully some help with AntiX
Date: Sat, 27 Aug 2022 12:42:05 -0500
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
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: 9E48B1068D324
X-Spam-Status: No, score=-2.60
X-Stat-Signature: fuu8cnbzodx6bcptahdzwz87bg5dgk4e
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX1+TXtpqM5VuOruWFc+WVmfLW0syiQ5iqZw=
X-HE-Tag: 1661622125-875191
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I want to get my old Asus Epc 701 with 2 GB of RAM going, hopefully to put 
some Ham software on it.
It used to use XP.
I wanted to try the talking Arch I downloaded, but it cannot boot that 
kernel, and I didn't know where an older one is.
I tried Puppy Linux, but that had problems too, so I found AntiX.
It seems to work well, and if it were talking, I could see how I like it.
I don't know if the limited repository would eventually be a turn off.
Glenn

----- Original Message ----- 
From: "Linux A11y" <chrys@linux-a11y.org>
To: "K0LNY_Glenn" <glenn@ervin.email>
Cc: "Jude DaShiell" <jdashiel@panix.com>; "Gregory Nowak" <greg@gregn.net>; 
<speakup@linux-speakup.org>
Sent: Saturday, August 27, 2022 12:35 PM
Subject: Re: hopefully some help with AntiX


Howdy,

Well i didnt follow the thread very close and already deleted most parts of 
it, but an idea could be booting an accessible live system and chmod or 
similar into it to configure it.

Just for my own interes: whats the reason to use it if there is no basic way 
by default for you to interact with that system? Any specific stuff it 
provides? Or any functionality?

Cheers chrys

Von meinem iPhone gesendet

> Am 27.08.2022 um 19:18 schrieb K0LNY_Glenn <glenn@ervin.email>:
>
> ﻿Here's the files in the folder, when I ran
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
> graphic 540  libespeak-ng-libespeak-... 20 512 2019-12-02 19:42 -rw-r--r--
> graphic 540  libespeak-ng-libespeak-... 200 512 2019-12-02 
> 19:42 -rwxr-xr-x
> graphic 540  libespeak-ng-libespeak... 115 512 2019-12-02 19:42 -rwxr-xr-x
> graphic 540  libespeak-ng1.install 29 512 2019-12-02 19:42 -rw-r--r--
> graphic 540  rules 840 1 024 2021-09-09 18:32 -rwxr-xr-x
> graphic 564  watch 113 512 2021-09-09 18:32 -rw-r--r--
> graphic 257  graphic 756
> 1 / 20 object(s) selected 113 113 2021-09-09 18:32:40
> ----- Original Message ----- 
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>;
> <speakup@linux-speakup.org>
> Sent: Saturday, August 27, 2022 10:09 AM
> Subject: Re: hopefully some help with AntiX
>
>
> sudo dpkg -i espeak-ng
> then hit tab if in the same directory as the archive.
> Once done, try sysctl enable espeak then reboot.
>
>
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
> soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
>> On Sat, 27 Aug 2022, K0LNY_Glenn wrote:
>>
>> Well I found espeak-ng for Debian Buster here:
>> https://packages.debian.org/buster/espeak-ng
>> The file I downloaded was:
>> espeak-ng_1.49.2+dfsg-8+deb10u1.debian.tar.xz
>> Looking in the archive, there are some .install files, but I didn't find
>> any
>> .sh files, so I don't know which file to use to get espeak installed on
>> this
>> system.
>> Or if there is a .deb for RhVoice, that would work too, but did I 
>> download
>> the wrong espeak-ng file for installing it?
>> Thanks.
>>
>> Glenn
>>
>> ----- Original Message -----
>> From: "K0LNY_Glenn" <glenn@ervin.email>
>> To: "Jude DaShiell" <jdashiel@panix.com>; "Gregory Nowak"
>> <greg@gregn.net>;
>> <speakup@linux-speakup.org>
>> Sent: Saturday, August 27, 2022 9:46 AM
>> Subject: Re: hopefully some help with AntiX
>>
>>
>> Well I ran check-dependencies.py and it gave a couple mysterious errors,
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
>>
>>
>> Also sysctl enable fenrir.service or is it fenrirscreenreader.service 
>> then
>> sysctl start fenrir.service or sysctl start fenrirscreenreader.service.
>> If a service is missing systemd will let you know about it.
>>
>>
>> Jude <jdashiel at panix dot com>
>> "There are four boxes to be used in defense of liberty:
>> soap, ballot, jury, and ammo. Please use in that order."
>> -Ed Howdershelt (Author, 1940)
>>
>> .
>>
>>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>>>
>>> Well I ran install.sh on the system, and pressed enter where it said to
>>> proceed, and it said was finished, and it said to type
>>> sudo fenrir
>>> to test it, and all I can get is the two-tone sound when fenrir starts,
>>> but
>>> no TTS.
>>> Should have that installed espeak or espeak-ng?
>>> Thanks.
>>>
>>> ----- Original Message -----
>>> From: "Jude DaShiell" <jdashiel@panix.com>
>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak" <greg@gregn.net>;
>>> <speakup@linux-speakup.org>
>>> Sent: Friday, August 26, 2022 8:27 PM
>>> Subject: Re: hopefully some help with AntiX
>>>
>>>
>>> For now and not forever, why not do apt purge ufw?
>>>
>>>
>>> Jude <jdashiel at panix dot com>
>>> "There are four boxes to be used in defense of liberty:
>>> soap, ballot, jury, and ammo. Please use in that order."
>>> -Ed Howdershelt (Author, 1940)
>>>
>>> .
>>>
>>>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>>>
>>>> Then all 1000 ports show up in nmap as closed.
>>>> So it seems if I allow a port in ufw, it shows up as closed, but not
>>>> filtered.
>>>> So filtered means ufw is running, and if 22 gets allowed, it is not
>>>> filtered, but still closed.
>>>> Glenn
>>>>
>>>>
>>>> ----- Original Message -----
>>>> From: "Jude DaShiell" <jdashiel@panix.com>
>>>> To: "K0LNY_Glenn" <glenn@ervin.email>; "Gregory Nowak"
>>>> <greg@gregn.net>;
>>>> <speakup@linux-speakup.org>
>>>> Sent: Friday, August 26, 2022 7:12 PM
>>>> Subject: Re: hopefully some help with AntiX
>>>>
>>>>
>>>> What happens if ufw --disable is run then the offending computer gets
>>>> rebooted?
>>>>
>>>> Jude <jdashiel at panix dot com>
>>>> "There are four boxes to be used in defense of liberty:
>>>> soap, ballot, jury, and ammo. Please use in that order."
>>>> -Ed Howdershelt (Author, 1940)
>>>>
>>>> .
>>>>
>>>> On Fri, 26 Aug 2022, K0LNY_Glenn wrote:
>>>>
>>>>> I've considered that, and if I can get any port to open, I will
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
>>>>>
>>>>>
>>>>> On Fri, Aug 26, 2022 at 02:06:13PM -0500, K0LNY_Glenn wrote:
>>>>>> On the antiX I did
>>>>>> sudo netcat -l 22
>>>>>> and then on the pine 64, I did sudo nc 10.248.1.143 22
>>>>>> and it does not seem to connect.
>>>>>> I wonder if it is because I am using 22 to get from my windows to
>>>>>> the
>>>>>> Pine64, in order to go linux to linux.
>>>>>
>>>>> Port 22 is a privileged port. You should consider using 1024 or
>>>>> higher. If the listening port is open on the firewall, the commands
>>>>> you gave above should connect. If you type something on the client
>>>>> side, you should see it typed on the antiX machine, and the other
>>>>> way
>>>>> round. This will however not give you a login terminal. To do that,
>>>>> you need something that handles logins to listen on your netcat.
>>>>> This
>>>>> isn't something I've done, so can't give you more directions here.
>>>>> If
>>>>> you don't care about the connection being secure, which you don't
>>>>> seem
>>>>> to, you might as well try:
>>>>>
>>>>> apt install telnetd
>>>>>
>>>>> and open tcp 23 on your firewall.
>>>>>
>>>>>
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
>>>>>
>>>>> This is to be expected, iptables is not a system service.
>>>>>
>>>>>> So I tried
>>>>>> sudo systemctl restart iptables
>>>>>> and the system cannot find systemctl
>>>>>
>>>>> Is antiX running sysvinit, openrc, or something else? This is
>>>>> something the antiX documentation should tell you. What does it use
>>>>> for PID1 or init?
>>>>>
>>>>>> question:
>>>>>> If I reboot, if the long iptables command worked, will it stick if
>>>>>> I
>>>>>> reboot?
>>>>>
>>>>> No.
>>>>>
>>>>>
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
>>>>>
>>>>> You need to save the firewall configuration once you changed it for
>>>>> it
>>>>> to persist across reboots. I haven't used ufw, so you will need to
>>>>> read up on how to do that.
>>>>>
>>>>> If port tcp 22 shows up as not filtered but closed, then the port is
>>>>> open, but there is no ssh service running.
>>>>>
>>>>> Greg
>>>>>
>>>>>
>>>>>
>>>>
>>>>
>>>>
>>>
>>>
>>>
>>
>>
>>
>>
>
>



