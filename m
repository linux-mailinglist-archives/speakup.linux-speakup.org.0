Return-Path: <speakup+bounces-238-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5D52F3C3DEA
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 18:18:44 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C70AD381051; Sun, 11 Jul 2021 12:18:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id B1E2C381047
	for <lists+speakup@lfdr.de>; Sun, 11 Jul 2021 12:18:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B06F1380F5C; Sun, 11 Jul 2021 12:18:42 -0400 (EDT)
Received: from wmauth2.doit.wisc.edu (wmauth2.doit.wisc.edu [144.92.197.222])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9BBEE380F56
	for <speakup@linux-speakup.org>; Sun, 11 Jul 2021 12:18:42 -0400 (EDT)
Received: from [192.168.0.14]
 (108-85-191-186.lightspeed.mdsnwi.sbcglobal.net [108.85.191.186])
 by smtpauth2.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPSA id <0QW3001IM9B35I30@smtpauth2.wiscmail.wisc.edu> for
 speakup@linux-speakup.org; Sun, 11 Jul 2021 11:18:40 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[108.85.191.186]
X-Wisc-Env-From-B64: amhlaW1AbWF0aC53aXNjLmVkdQ==
X-Spam-PmxInfo: Server=avs-2, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.7.11.160915,
 AntiVirus-Engine: 5.83.0, AntiVirus-Data: 2021.6.22.5830000,
 SenderIP=[108.85.191.186]
Reply-to: jheim@math.wisc.edu
Subject: Re: Installing OS on rackmount server
To: Rob Hudson <rob_hudson3182@opopanax.net>, speakup@linux-speakup.org
References: <20210711.104927.121.1@[192.168.1.100]>
 <5ff69fe5-fb5b-5233-0c71-1165b9111eed@raspberryvi.org>
 <20210711.110142.703.2@[192.168.1.100]>
From: John G Heim <jheim@math.wisc.edu>
Message-id: <f1b14b24-487c-ade9-6a6e-7638f7fd3e5f@math.wisc.edu>
Date: Sun, 11 Jul 2021 11:18:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-version: 1.0
In-reply-to: <20210711.110142.703.2@[192.168.1.100]>
Content-type: text/plain; charset=utf-8; format=flowed
Content-language: en-US
Content-transfer-encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I've run into this problem many times when I couldn't get to the back of 
a rack mounted server. Usually on a server class machine, there are 2 
USB ports on the front but several more on the back. When i had to use 
just the 2 USB ports on the front, I borrow an Apple keyboard from a 
Mac. Those things have a USB port on either side. If you happen to have 
an Apple keyboard around, you might be able to use a USB headset plugged 
into the keyboard. I have not been able to get my braille display to 
work that way, insufficient power. But a USB headset usually works. Then 
you have to remember that the control and super keys are switched around.


On 7/11/21 6:01 AM, Rob Hudson wrote:
> I was given to understand that a lot of bioses have trouble seeing USB hubs. But I can try that, good thought.
> No sound on this puppy. So it's going to be braille or, once I get the installer going, ssh.
> ----- Original Message -----
> From: Mike Ray <mike@raspberryvi.org>
> To: speakup@linux-speakup.org
> Date: Sun, 11 Jul 2021 11:54:56 +0100
> Subject: Re: Installing OS on rackmount server
> 
>>
>>
>> Passive USB hub?
>>
>> Does the rack server have sound? If so you could install Debian from the
>> net install CD image written to a flash drive.
>>
>> Or, even if the server does not have sound, you could insert a USB sound
>> dongle. Again, by using a USB hub to expand the number of USB ports.
>>
>> You could install something else as well, such as Ubuntu. But if it is a
>> server only, there is no reason to install a desktop. The Debian net
>> install allows you to install only the cli, and no GUI.
>>
>> I would not try installing Linux on another machine and then moving it
>> across, unless it's an identical machine. I assume lots of drivers will
>> be selected during the install which would not be appropriate for the
>> eventual host.
>>
>>
>>
>>
>> On 11/07/2021 11:49, Rob Hudson wrote:
>>> Tried this on another list, got no answer, so trying here. I've got a Cisco rackmount that needs an OS. It's only got 2 usb ports, so I can't hook up a keyboard, a braille display and a linux flash drive. I'm given to understand the CIMC interface is inaccessible, and I have no idea how to set up a PXE server. Is my only option for installing an OS to connect a hard drive to another computer, install linux on there and then put it in the server?
>>>
>>
>>
>> -- 
>> Michael A. Ray
>> Analyst/Programmer
>> Witley, Surrey, South-east UK
>>
>> "Perfection is achieved, not when there is nothing more to add, but when
>> there is nothing left to take away." -- A. de Saint-Exupery
>>
>>
> 

