Return-Path: <speakup+bounces-425-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6B1DA52594F
	for <lists+speakup@lfdr.de>; Fri, 13 May 2022 03:17:46 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DED9C380E49; Thu, 12 May 2022 21:17:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ECB6738163E
	for <lists+speakup@lfdr.de>; Thu, 12 May 2022 21:17:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 05670380DEF; Thu, 12 May 2022 21:17:41 -0400 (EDT)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CA3EA380DDD
	for <speakup@linux-speakup.org>; Thu, 12 May 2022 21:17:40 -0400 (EDT)
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 907326202E5; Fri, 13 May 2022 01:17:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 8B0C26201AA;
	Thu, 12 May 2022 21:17:05 -0400 (EDT)
Date: Thu, 12 May 2022 21:17:05 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux A11y <chrys@linux-a11y.org>
cc: jdashiel@panix.com, 
    Monica Ayhens-Madon <monica.ayhens.madon@canonical.com>, 
    "John G. Heim" <jheim@wisc.edu>, 
    Adrian Orjales <adriorjalesvidal31@gmail.com>, 
    "John G. Heim" <jheim@math.wisc.edu>, speakup@linux-speakup.org
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
In-Reply-To: <3AE1FA2A-DDF1-4038-B78A-B154DDBD08FB@linux-a11y.org>
Message-ID: <Pine.LNX.4.64.2205122115430.256688@server2.shellworld.net>
References: <180ba1d15f0.2923.7f5f0e00eb39c74e480406aa7dcc21f8@panix.com>
 <3AE1FA2A-DDF1-4038-B78A-B154DDBD08FB@linux-a11y.org>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="-1404930036-1287773978-1652404625=:256688"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1404930036-1287773978-1652404625=:256688
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

And if one prefers the command line?
Should not all aspects of Linux be equally accessible so end users have=20
choices?
command line and graphical?
Kare


On Fri, 13 May 2022, Linux A11y wrote:

> Howdy,
>
> Not sure if this helps, but you can also use fenrir, what does not requir=
e any kind of kernel involved. In fact there is no need for installing at a=
ll (as it could used from git tree).
>
> https://github.com/chrys87/fenrir
>
> Cheers chrys
>> Am 12.05.2022 um 23:11 schrieb jdashiel@panix.com:
>>
>> =EF=BB=BF
>> On the ubuntu-accessibility list I asked if a sound message at substanti=
al volume could be played to let installers know speakup can't yet work wit=
h an existing kernel bug.  Now that brings me to a couple other questions t=
hat may be useful.  For the current case if fenrir were installed, could it=
 run as a stop gap until speakup can be made to run?  Also, if fenrir can r=
un, could a script run after a sound message got played to install and acti=
vate fenrir for the console?  Once speakup became available the workaround =
code to handle this bug could be removed.  It would be helpful to installer=
s if a notification about speakup and the kernel having been fixed would co=
me up on their machines.  I realize this is a big ask, and in my case I hav=
e no linux support local to me blind or sighted that could sort things out =
with the possible exception of be my eyes and their support while useful ca=
n at best be partial.
>>
>> On May 12, 2022 2:37:44 PM Monica Ayhens-Madon <monica.ayhens.madon@cano=
nical.com> wrote:
>>
>>> One of the things the Accessibility Guild is working on is to make our =
processes around accessibility stronger. When we had a devoted person for t=
his, we just took the process for granted, and when they left, the process =
did too. And obviously, this has to be frustrating and disheartening for Sp=
eakup users. So, long answer short - I hope this is the last time we have t=
o go through this, and I'll do what I can to help make that happen.
>>>
>>> On Thu, May 12, 2022 at 5:18 PM John G. Heim <jheim@wisc.edu> wrote:
>>>> Well, that's great but are we going to have to go through this again f=
or Kinetic Kudu, 22.10? The same thing happened now for Hirsute, Impish, an=
d Jammy.
>>>>
>>>>
>>>>
>>>> On 5/11/22 11:50, Monica Ayhens-Madon wrote:
>>>>> Adrian,
>>>>>
>>>>> According to my colleague, if the output of uname -r ends with 'gener=
ic' on the ubuntu server 22.04 LTS you're running, it will be fixed soon.
>>>>>
>>>>> (Sorry I can't test it myself - I am stuck abroad with a really minim=
al setup and this is my first day back at work after being ill. It's almost=
 7 PM here so I'll be winding down soon.)
>>>>>
>>>>> Thank you for offering to share your insight and feedback - it's very=
 appreciated!
>>>>>
>>>>> Monica
>>>>>
>>>>> On Wed, May 11, 2022 at 6:05 PM Adrian Orjales <adriorjalesvidal31@gm=
ail.com> wrote:
>>>>>> Sure, I'd be happy to help. Feel free to share my email address with=
 your colleagues.
>>>>>> The version was ubuntu server 22.04 lts. I will install it again and=
 test it more, and also the desktop version to try to give my best feedback=
 possible.
>>>>>> Thanks
>>>>>>
>>>>>> El El mi=C3=A9, 11 may 2022 a las 17:15, Monica Ayhens-Madon <monica=
=2Eayhens.madon@canonical.com> escribi=C3=B3:
>>>>>>> Adrian, could you let me know more about which specific version of =
server? I'm talking to one of my colleagues on the kernel team and he needs=
 more information.
>>>>>>>
>>>>>>> And I'm only one of a group of people at Canonical working on acces=
sibility. My main job is to be a bridge between them and the community. Can=
 I give the Accessibility Guild your address (and anyone else's e-mail addr=
ess, if you'd like to talk to us about how we can improve accessibility), w=
e would like to know your feedback and suggestions!
>>>>>>>
>>>>>>> On Wed, May 11, 2022 at 3:59 PM Adrian Orjales <adriorjalesvidal31@=
gmail.com> wrote:
>>>>>>>> Hello  Monica
>>>>>>>> Does this affect also ubuntu server? I've installed Ubuntu server =
 and no speakup module was found when i tried to load it.
>>>>>>>>
>>>>>>>> I'm very happy to know about you, because i think there are a lot =
of things in ubuntu to talk about accessibility. If you are open to listen,=
 i will be happy to help with feedback.
>>>>>>>> Thanks
>>>>>>>>
>>>>>>>> El El mi=C3=A9, 11 may 2022 a las 15:38, Monica Ayhens-Madon <moni=
ca.ayhens.madon@canonical.com> escribi=C3=B3:
>>>>>>>>> Hello!
>>>>>>>>>
>>>>>>>>> I'm Monica Ayhens-Madon from the Community Team at Canonical, and=
 I'm part of our Accessibility Guild. I've had a chat with people on our ke=
rnel team and there is an existing bug being fixed, and Speakup should be a=
vailable in updates soon. Please feel free to reach out to me with any ques=
tions or any other accessibility issues I can raise internally.
>>>>>>>>>
>>>>>>>>> Cheers,
>>>>>>>>>
>>>>>>>>> Monica
>>>>>>>>>
>>>>>>>>> On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu=
> wrote:
>>>>>>>>>> Arrgh! Speakup seems not to have been compiled into the Ubuntu
>>>>>>>>>> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well,=
 I guess
>>>>>>>>>> I'll have to file a bug report ... again.
>>>>>>>>>>
>>>>>>>>>> --
>>>>>>>>>> ###
>>>>>>>>>> John G. Heim, 608-263-4189, jheim@math.wisc.edu
>>>>>>>>>>
>>>>>>>>
>>
>>
>
---1404930036-1287773978-1652404625=:256688--

