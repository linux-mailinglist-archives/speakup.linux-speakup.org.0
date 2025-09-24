Return-Path: <speakup+bounces-1414-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7FA96B9C3E9
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 23:14:24 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign001.email header.i=@t39smtp-sign001.email header.a=rsa-sha256 header.s=titan1 header.b=KNeib5hl;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C112E381607; Wed, 24 Sep 2025 17:14:22 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9CCA73815C9
	for <lists+speakup@lfdr.de>; Wed, 24 Sep 2025 17:14:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F5A93815C8; Wed, 24 Sep 2025 17:14:15 -0400 (EDT)
Received: from mail69.out.titan.email (mail69.out.titan.email [3.216.99.51])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AF7A63815B5
	for <speakup@linux-speakup.org>; Wed, 24 Sep 2025 17:14:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 1ADB414001F;
	Wed, 24 Sep 2025 21:14:14 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; bh=gjW26lKTiJHZUJ3xFmbY8joK4y1BR6pybrl5u7LWEMw=;
	c=relaxed/relaxed; d=t39smtp-sign001.email;
	h=reply-to:references:from:cc:mime-version:to:subject:date:message-id:from:to:cc:subject:date:message-id:reply-to:references:in-reply-to;
	q=dns/txt; s=titan1; t=1758748454; v=1;
	b=KNeib5hliXZKjgkbZJLcMuqiSSLAOZrSDBNJdzbRuDBLTo9L5eUXqeMwIJyC+DALAEIhW/ER
	ISk5l88we+1sc1udCrzKM9GYbFZSoArmV0FmpdIP6hv11FmHCPRwzMRNoYTdGWZzea8EZXtEqHK
	Si7u0YsYx8y6cmv1Q9Bg+Vwk=
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id BB568140038;
	Wed, 24 Sep 2025 21:14:12 +0000 (UTC)
Message-ID: <031801dc2d98$2e2c8220$01ffa8c0@nucwin10>
Reply-To: "K0LNY ??" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY ??" <glenn@ervin.email>
To: <covici@ccs.covici.com>,
	"John G. Heim" <jheim@math.wisc.edu>
Cc: "Jookia" <contact@jookia.org>,
	"Gregory Nowak" <greg@gregn.net>,
	"Karen Lewellen" <klewellen@shellworld.net>,
	"Chime Hart" <chime@hubert-humphrey.com>,
	"Cleverson Casarin Uliana" <clul+speakup@posteo.com.br>,
	<speakup@linux-speakup.org>
References: <202509111603.58BG3W3p018143@nfbcal.org> <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net> <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br> <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net> <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com> <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net> <aMOwSwrEWTBtFn60@titan> <aMTOpzhGX72PC_2S@gregn.net> <aMVgIfSRDN3Uewj3@titan> <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu> <aNIv2l1tKiR26V-R@titan> <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu> <m3h5wsu4py.wl-covici@ccs.covici.com> <01897751-ddc5-4bfe-be6f-0b751079597d@math.wisc.edu> <025601dc2d6e$7e89ba00$01ffa8c0@nucwin10> <864b13bf-03ab-4e3a-af1a-43ab5e4f87cc@math.wisc.edu>
Subject: Re: Question about blind CLI use (was Re: "your browser is not supported anymore" ...)
Date: Wed, 24 Sep 2025 16:14:12 -0500
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
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1758748453898167216.2350.5924240234734217893@prod-use1-smtp-out1003.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=Sa8NduRu c=1 sm=1 tr=0 ts=68d45f25
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=R3fr6vWxGIgF0CYV:21 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=CEWIc4RMnpUA:10
	a=DyznqomoAAAA:8 a=hEK2XftRAAAA:8 a=LNhb960rAAAA:8 a=uJ_w1ttZAAAA:8
	a=jovt0mFxAAAA:8 a=9_GH9xibAAAA:8 a=EUDjGK3pAAAA:8 a=G1MHl-R2AAAA:8
	a=qPKtzgQbAAAA:8 a=q5txbtUnAAAA:8 a=avTFGqe3gF_NkJ39tz4A:9
	a=QEXdDO2ut3YA:10 a=pvvZm7_9ER1OwvpV3Ftp:22 a=duXMUGqUtLRgrHROm9qa:22
	a=muQ5ErImgoUO71fbljk_:22 a=StMmMNtBgVvPiZYFi0f4:22
	a=dO7qa_Xy17WzffDKgyPM:22 a=7CWdE0Xi03QsYozaNcnV:22
	a=0_cEEhCvB34XW5aA8UtH:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=RsootnAUgZ_jVqzlXDew:22 a=P3K-DvM3-jjlTNsN-mCd:22
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I don't know if it will have to connect to the GPIO pins that are for 
serial, or if it can go in through one of its USB ports.

----- Original Message ----- 
From: "John G. Heim" <jheim@math.wisc.edu>
To: "K0LNY ??" <glenn@ervin.email>; <covici@ccs.covici.com>
Cc: "Jookia" <contact@jookia.org>; "Gregory Nowak" <greg@gregn.net>; "Karen 
Lewellen" <klewellen@shellworld.net>; "Chime Hart" 
<chime@hubert-humphrey.com>; "Cleverson Casarin Uliana" 
<clul+speakup@posteo.com.br>; <speakup@linux-speakup.org>
Sent: Wednesday, September 24, 2025 4:06 PM
Subject: Re: Question about blind CLI use (was Re: "your browser is not 
supported anymore" ...)


Well, how are you connecting the RPI and the Linux box?

Another possibility is to configure your Linux box to send the boot
messages to the serial port and use something like Kermit on another
machine to access them. This takes a null-modem cable. One advantage of
this is that GRUB can be configured to do this too. You get both GRUB
and Linux kernel boot messages.



On 9/24/25 11:15 AM, K0LNY ?? wrote:
> I'm hoping someone can make a hardware synth out of a raspberry PI.
> So the RPI could possibly double as a little Linux box in itself, and 
> serve
> as a hardware synth to another computer.
> Glenn
> ----- Original Message -----
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: <covici@ccs.covici.com>
> Cc: "Jookia" <contact@jookia.org>; "Gregory Nowak" <greg@gregn.net>; 
> "Karen
> Lewellen" <klewellen@shellworld.net>; "Chime Hart"
> <chime@hubert-humphrey.com>; "Cleverson Casarin Uliana"
> <clul+speakup@posteo.com.br>; <speakup@linux-speakup.org>
> Sent: Wednesday, September 24, 2025 11:01 AM
> Subject: Re: Question about blind CLI use (was Re: "your browser is not
> supported anymore" ...)
>
>
> I personally own a DoubleTalk that is probably about 25 years old. My
> employer gave me a TripleTalk that is probably about 20 years old by now.
>
> I don't believe there are any hardware synths being manufactured
> anywhere in the world any more. So that's a problem. The best
> alternative for getting access to boot messages might be a braille
> display. I have the braille display from an old PacMate which is
> probably 30 years old. It's just the braille display, the PacMate itself
> gave up the ghost many years ago.
>
> On a Debian based distro, getting speech during boot via a hardware
> synth is as easy as putting the speakup kernel module into the file
> /etc/initramfs-tools/modules. You then have to regenerate the initrd or
> you can wait until the next time the kernel is updated and it will do it
> for you.
>
> I do not know how to enable software speech during boot but I'm pretty
> sure it's possible. In my grml4speakup script, I enable software speech
> during boot by putting a script into a folder GRML designates for that
> purpose. The developers of this distro, GRML, specified a folder you
> can put scripts in if you want them executed during boot. So I wrote a
> script that puts a script to start speech in that folder. But of course
> it only works for GRML.
>
> More info on my script can be found here:
>
> https://people.math.wisc.edu/~jheim/GRML/
>
>
>
> On 9/23/25 6:30 PM, John Covici wrote:
>> What synth do you use -- I have been using speakouts, but they are
>> dying, which one are you using -- I also want to keep using such a
>> synth particularly during boot.
>>
>> On Tue, 23 Sep 2025 13:04:38 -0400,
>> John G. Heim wrote:
>>> BTW, the correct spelling for that early screen reader for Linux
>>> is Gnopernicus. Googling shows me that Gnopernicus was the
>>> default screen reader for Gnome from 2001 to 2006 when it was
>>> replaced by Orca.
>>>
>>> The screen reader for Apple I was trying to think of was
>>> OutSpoken by Berkley Systems. Wikipedia says development of
>>> OutSpoken was dropped after Apple released VoiceOver in
>>> 2005. While that is probably technically true, as a practical
>>> matter, OutSpoken was no longer a practical option for some time
>>> before VoiceOver came out. The libraries at the University Of
>>> Wisconsin stopped buying Macs and got rid of the ones they had
>>> because there was no screen reader.
>>>
>>> Speakup was released in 1999. So the era I'm talking about is
>>> from 1999 through 2005. You could use Linux at the command line
>>> or in the GUI for free. Windows had a good screen reader but it
>>> cost $1000. There was no realistic alternative for the Mac.
>>>
>>> It seems to me that Linux has always been a step ahead when it
>>> comes to accessibility. Well, at least since 1999. Before 1999, I
>>> used Jaws For Windows and administered my Linux machines remotely
>>> with tools like putty.
>>>
>>>
>>>
>>> On 9/23/25 12:27 AM, Jookia wrote:
>>>> Interesting, thanks for sharing. I never knew about Gnopernicus.
>>>>
>>>> On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. Heim wrote:
>>>>> One of the biggest impediments for a blind person using Windows is the
>>>>> cost.
>>>>> It's less true today than it used to be. A Jaws license was over $1000
>>>>> at
>>>>> one time.
>>>>>
>>>>> For many years, it wasn't even possible for a blind person to install
>>>>> Windows. Well, I used to do it via Linux, no kidding. I booted into
>>>>> Linux
>>>>> and ran the Windows installer in an emulator with an answer file. That
>>>>> worked really well until it didn't. At some point, Microsoft changed
>>>>> the
>>>>> installer so it had to be run in their pre boot environment 
>>>>> (whatever).
>>>>>
>>>>> Even after the install, I had to install a dumbed down version of Jaws
>>>>> that
>>>>> worked for only 40 minutes.
>>>>>
>>>>> Also, there was a period when there was no screen reader for Ma Cos.
>>>>> There
>>>>> was some 3rd party screen reader for the Mac. The developer dropped
>>>>> support
>>>>> for it and some time later, Apple released VoiceOver. I was lucky, at
>>>>> the
>>>>> time my job did not require me to use a Mac. But the libraries at the
>>>>> university where I worked had to get rid of their Macs because it is
>>>>> against
>>>>> the law to have computers in a student lab that are not accessible to
>>>>> the
>>>>> blind. BTW, that's why Apple so suddenly started caring about a screen
>>>>> reader.
>>>>>
>>>>> IIRC, at the time of the above events, I was using both Speakup and a
>>>>> GUI
>>>>> screen reader called Nupernicus. I remember walking out of a meeting
>>>>> with a
>>>>> librarian to talk about screen reader options for his lab and thinking
>>>>> how
>>>>> lucky I was to be a Linux user. I believe that particular library
>>>>> replaced
>>>>> most of their Macs with Windows machines and paid like $1000 each to
>>>>> Freedom Scientific for Jaws licenses. They put in one Linux machine
>>>>> just to
>>>>> see how it would go.
>>>>>
>>>>> The computers in the student labs in the Math department where I 
>>>>> worked
>>>>> were
>>>>> alwys Linux.
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> On 9/13/25 7:14 AM, Jookia wrote:
>>>>>> Hi Greg,
>>>>>>
>>>>>> Yeah this is unfortunately true. I'm glad FOSS is still appreciated 
>>>>>> by
>>>>>> people.
>>>>>>
>>>>>> Jookia.
>>>>>>
>>>>>> On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
>>>>>>> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
>>>>>>>> I know this is the speakup list and I'm talking to an extremely
>>>>>>>> niche
>>>>>>>> community here, but I'm genuinely interested to know: Why do you 
>>>>>>>> use
>>>>>>>> computers this way instead of like Windows or macOS? They can do
>>>>>>>> much
>>>>>>>> more useful tasks.
>>>>>>> They're both proprietary operating systems. Windows essentially
>>>>>>> hijacks the PC these days, and dictates to the user how they should
>>>>>>> use it (E.G. requiring the user to register an account with the
>>>>>>> developer to set it up, dictating when and what updates the user
>>>>>>> wishes to install, and so on). MacOS is tied to hardware from one
>>>>>>> company, and only works on
>>>>>>> that company's hardware by design.
>>>>>>>
>>>>>>> Greg
>>>>>>>
>>>>>>>
>>>>>>> -- 
>>>>>>> web site:
>>>>>>> https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
>>>>>>> gpg public key:
>>>>>>> https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
>>>>>>>
>>>>>>> --
>>>>>>> Free domains:
>>>>>>> https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$
>>>>>>> or mail dns-manager@EU.org
>>>>>>>


