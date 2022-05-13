Return-Path: <speakup+bounces-426-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7F6BB525951
	for <lists+speakup@lfdr.de>; Fri, 13 May 2022 03:20:15 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1E9F5381639; Thu, 12 May 2022 21:20:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0CDFE380E02
	for <lists+speakup@lfdr.de>; Thu, 12 May 2022 21:20:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D56BA380DF7; Thu, 12 May 2022 21:20:12 -0400 (EDT)
Received: from smtprelay.b.hostedemail.com (smtprelay0044.b.hostedemail.com [64.98.42.44])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BFC61380DEF
	for <speakup@linux-speakup.org>; Thu, 12 May 2022 21:20:12 -0400 (EDT)
Received: from omf10.b.hostedemail.com (10.5.19.248.rfc1918.com [10.5.19.248])
	by smtprelay03.b.hostedemail.com (Postfix) with ESMTP id E20E785251D6;
	Fri, 13 May 2022 01:20:11 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf10.b.hostedemail.com (Postfix) with ESMTPA id A29F94C95;
	Fri, 13 May 2022 01:20:10 +0000 (UTC)
Message-ID: <003b01d86667$97082e30$82ffa8c0@WIN40RPKAT965G>
Reply-To: "K0LNY_Glenn" <glenn@ervin.email>
From: "K0LNY_Glenn" <glenn@ervin.email>
To: "Karen Lewellen" <klewellen@shellworld.net>,
	"Linux A11y" <chrys@linux-a11y.org>
Cc: <jdashiel@panix.com>,
	"Monica Ayhens-Madon" <monica.ayhens.madon@canonical.com>,
	"John G. Heim" <jheim@wisc.edu>,
	"Adrian Orjales" <adriorjalesvidal31@gmail.com>,
	"John G. Heim" <jheim@math.wisc.edu>,
	<speakup@linux-speakup.org>
References: <180ba1d15f0.2923.7f5f0e00eb39c74e480406aa7dcc21f8@panix.com> <3AE1FA2A-DDF1-4038-B78A-B154DDBD08FB@linux-a11y.org> <Pine.LNX.4.64.2205122115430.256688@server2.shellworld.net>
Subject: Re: Speakup Left Out of Ubuntu kernel (again)
Date: Thu, 12 May 2022 20:20:08 -0500
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
	charset="iso-8859-1"
Content-Transfer-Encoding: 8bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Spam-Status: No, score=-2.60
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: A29F94C95
X-Stat-Signature: 4nj5zoruuxg1ietwg3baf9xixs7khc7h
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19EErTtjnugxAODHH4yDwAEkcFuJTz43a0=
X-HE-Tag: 1652404810-750738
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Fenrir is CLI.
Glenn
----- Original Message ----- 
From: "Karen Lewellen" <klewellen@shellworld.net>
To: "Linux A11y" <chrys@linux-a11y.org>
Cc: <jdashiel@panix.com>; "Monica Ayhens-Madon" 
<monica.ayhens.madon@canonical.com>; "John G. Heim" <jheim@wisc.edu>; 
"Adrian Orjales" <adriorjalesvidal31@gmail.com>; "John G. Heim" 
<jheim@math.wisc.edu>; <speakup@linux-speakup.org>
Sent: Thursday, May 12, 2022 8:17 PM
Subject: Re: Speakup Left Out of Ubuntu kernel (again)


And if one prefers the command line?
Should not all aspects of Linux be equally accessible so end users have
choices?
command line and graphical?
Kare


On Fri, 13 May 2022, Linux A11y wrote:

> Howdy,
>
> Not sure if this helps, but you can also use fenrir, what does not require 
> any kind of kernel involved. In fact there is no need for installing at 
> all (as it could used from git tree).
>
> https://github.com/chrys87/fenrir
>
> Cheers chrys
>> Am 12.05.2022 um 23:11 schrieb jdashiel@panix.com:
>>
>> ﻿
>> On the ubuntu-accessibility list I asked if a sound message at 
>> substantial volume could be played to let installers know speakup can't 
>> yet work with an existing kernel bug.  Now that brings me to a couple 
>> other questions that may be useful.  For the current case if fenrir were 
>> installed, could it run as a stop gap until speakup can be made to run? 
>> Also, if fenrir can run, could a script run after a sound message got 
>> played to install and activate fenrir for the console?  Once speakup 
>> became available the workaround code to handle this bug could be removed. 
>> It would be helpful to installers if a notification about speakup and the 
>> kernel having been fixed would come up on their machines.  I realize this 
>> is a big ask, and in my case I have no linux support local to me blind or 
>> sighted that could sort things out with the possible exception of be my 
>> eyes and their support while useful can at best be partial.
>>
>> On May 12, 2022 2:37:44 PM Monica Ayhens-Madon 
>> <monica.ayhens.madon@canonical.com> wrote:
>>
>>> One of the things the Accessibility Guild is working on is to make our 
>>> processes around accessibility stronger. When we had a devoted person 
>>> for this, we just took the process for granted, and when they left, the 
>>> process did too. And obviously, this has to be frustrating and 
>>> disheartening for Speakup users. So, long answer short - I hope this is 
>>> the last time we have to go through this, and I'll do what I can to help 
>>> make that happen.
>>>
>>> On Thu, May 12, 2022 at 5:18 PM John G. Heim <jheim@wisc.edu> wrote:
>>>> Well, that's great but are we going to have to go through this again 
>>>> for Kinetic Kudu, 22.10? The same thing happened now for Hirsute, 
>>>> Impish, and Jammy.
>>>>
>>>>
>>>>
>>>> On 5/11/22 11:50, Monica Ayhens-Madon wrote:
>>>>> Adrian,
>>>>>
>>>>> According to my colleague, if the output of uname -r ends with 
>>>>> 'generic' on the ubuntu server 22.04 LTS you're running, it will be 
>>>>> fixed soon.
>>>>>
>>>>> (Sorry I can't test it myself - I am stuck abroad with a really 
>>>>> minimal setup and this is my first day back at work after being ill. 
>>>>> It's almost 7 PM here so I'll be winding down soon.)
>>>>>
>>>>> Thank you for offering to share your insight and feedback - it's very 
>>>>> appreciated!
>>>>>
>>>>> Monica
>>>>>
>>>>> On Wed, May 11, 2022 at 6:05 PM Adrian Orjales 
>>>>> <adriorjalesvidal31@gmail.com> wrote:
>>>>>> Sure, I'd be happy to help. Feel free to share my email address with 
>>>>>> your colleagues.
>>>>>> The version was ubuntu server 22.04 lts. I will install it again and 
>>>>>> test it more, and also the desktop version to try to give my best 
>>>>>> feedback possible.
>>>>>> Thanks
>>>>>>
>>>>>> El El mié, 11 may 2022 a las 17:15, Monica Ayhens-Madon 
>>>>>> <monica.ayhens.madon@canonical.com> escribió:
>>>>>>> Adrian, could you let me know more about which specific version of 
>>>>>>> server? I'm talking to one of my colleagues on the kernel team and 
>>>>>>> he needs more information.
>>>>>>>
>>>>>>> And I'm only one of a group of people at Canonical working on 
>>>>>>> accessibility. My main job is to be a bridge between them and the 
>>>>>>> community. Can I give the Accessibility Guild your address (and 
>>>>>>> anyone else's e-mail address, if you'd like to talk to us about how 
>>>>>>> we can improve accessibility), we would like to know your feedback 
>>>>>>> and suggestions!
>>>>>>>
>>>>>>> On Wed, May 11, 2022 at 3:59 PM Adrian Orjales 
>>>>>>> <adriorjalesvidal31@gmail.com> wrote:
>>>>>>>> Hello  Monica
>>>>>>>> Does this affect also ubuntu server? I've installed Ubuntu server 
>>>>>>>> and no speakup module was found when i tried to load it.
>>>>>>>>
>>>>>>>> I'm very happy to know about you, because i think there are a lot 
>>>>>>>> of things in ubuntu to talk about accessibility. If you are open to 
>>>>>>>> listen, i will be happy to help with feedback.
>>>>>>>> Thanks
>>>>>>>>
>>>>>>>> El El mié, 11 may 2022 a las 15:38, Monica Ayhens-Madon 
>>>>>>>> <monica.ayhens.madon@canonical.com> escribió:
>>>>>>>>> Hello!
>>>>>>>>>
>>>>>>>>> I'm Monica Ayhens-Madon from the Community Team at Canonical, and 
>>>>>>>>> I'm part of our Accessibility Guild. I've had a chat with people 
>>>>>>>>> on our kernel team and there is an existing bug being fixed, and 
>>>>>>>>> Speakup should be available in updates soon. Please feel free to 
>>>>>>>>> reach out to me with any questions or any other accessibility 
>>>>>>>>> issues I can raise internally.
>>>>>>>>>
>>>>>>>>> Cheers,
>>>>>>>>>
>>>>>>>>> Monica
>>>>>>>>>
>>>>>>>>> On Tue, May 10, 2022 at 3:19 AM John G. Heim <jheim@math.wisc.edu> 
>>>>>>>>> wrote:
>>>>>>>>>> Arrgh! Speakup seems not to have been compiled into the Ubuntu
>>>>>>>>>> Jammy/22.04 kernel. Same thing as in 21.04 and 21.10. Man! Well, 
>>>>>>>>>> I guess
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


