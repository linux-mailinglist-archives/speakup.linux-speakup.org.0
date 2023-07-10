Return-Path: <speakup+bounces-993-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B829A74CB1E
	for <lists+speakup@lfdr.de>; Mon, 10 Jul 2023 06:15:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=RWDRlAgd;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2E52A38257F; Mon, 10 Jul 2023 00:15:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0C2A33823E8
	for <lists+speakup@lfdr.de>; Mon, 10 Jul 2023 00:15:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4A5F038245A; Mon, 10 Jul 2023 00:15:31 -0400 (EDT)
Received: from mail59.out.titan.email (mail59.out.titan.email [209.209.25.192])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1A93D3823DC
	for <speakup@linux-speakup.org>; Mon, 10 Jul 2023 00:15:31 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 81F0A10000D;
	Mon, 10 Jul 2023 04:15:30 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 07E4910008E;
	Mon, 10 Jul 2023 04:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1688962530;
	bh=83LQ3rqfWs0ICSTQrvMLcHfxYce6rITvOou5HJH/KYM=;
	h=Message-ID:Reply-To:From:To:Cc:References:Subject:Date:
	 MIME-Version:From:To:Cc:Subject:Message-ID;
	b=RWDRlAgd2E0MduHM7rrtBluEz/1Qo14r7fl8Ko5GAdZvgQY7MeCDvMnJUpbP+7joC
	 2IQhOIusQR568JIOQufnScdFENOSCIvg6Fuyol6HTVNxqGuBWfTGeVdWXG2Zer/3R7
	 EAzF35h3Y6tfRJYOfJQclOYymuHQJ8Fnhkm9pqGc=
Message-ID: <028001d9b2e5$29dca040$01ffa8c0@nucwin10>
Reply-To: "K0LNY" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY" <glenn@ervin.email>
To: "Karen Lewellen" <klewellen@shellworld.net>
Cc: <speakup@linux-speakup.org>,
	"Jason White" <jason@jasonjgw.net>
References: <022501d9b2ba$f6c7ca10$01ffa8c0@nucwin10> <a9d7f09d-71c6-8e1d-5f90-243a82de497c@jasonjgw.net> <023301d9b2c0$cc014300$01ffa8c0@nucwin10> <Pine.LNX.4.64.2307092001040.1050358@users.shellworld.net> <024101d9b2d2$4b343810$01ffa8c0@nucwin10> <Pine.LNX.4.64.2307092213150.1051958@users.shellworld.net> <025701d9b2d5$4d69ae50$01ffa8c0@nucwin10> <Pine.LNX.4.64.2307092354350.1053139@users.shellworld.net> <027c01d9b2e3$9befbac0$01ffa8c0@nucwin10> <Pine.LNX.4.64.2307100010130.1053312@users.shellworld.net>
Subject: Re: configuring a USB/Serial port
Date: Sun, 9 Jul 2023 23:15:29 -0500
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
	format=flowed;
	charset="iso-8859-1";
	reply-type=response
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-F-Verdict: SPFVALID
X-Titan-Src-Out: 1688962530283319138.11573.7348415587282552274@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=RbBWSXhv c=1 sm=1 tr=0 ts=64ab85e2
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=9_GH9xibAAAA:8 a=qPKtzgQbAAAA:8 a=8Ro6GKBAAAAA:8 a=RRwLo7N0KHQHvLIAGGYA:9
	a=wPNLvfGTeEIA:10 a=bC-Knf54HiEA:10 a=JUdPgEYdC8UA:10
	a=dO7qa_Xy17WzffDKgyPM:22 a=OTAqJWGB1laLS8RTg9aS:22
	a=Xhl6o1fcNCG9FGZrHFNY:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I'm assuming that is the TTY settings, so serial, even though this computer 
has no real serial ports.
Some things in Linux I don't grasp well.
Glenn
----- Original Message ----- 
From: "Karen Lewellen" <klewellen@shellworld.net>
To: "K0LNY" <glenn@ervin.email>
Cc: <speakup@linux-speakup.org>; "Jason White" <jason@jasonjgw.net>
Sent: Sunday, July 9, 2023 11:11 PM
Subject: Re: configuring a USB/Serial port


> Meaning that tty 0 equals or that ttyUSB0 equals those settings?
> Just tossing out things to consider, as expressed this is not how I manage 
> computer hardware.
>
>
>
> On Sun, 9 Jul 2023, K0LNY wrote:
>
>> Hi Karen,
>> It says:
>> speed 38400 baud;
>> line = 0;
>> -brkint iutf8
>>
>>
>> Glenn
>> ----- Original Message ----- From: "Karen Lewellen" 
>> <klewellen@shellworld.net>
>> To: "K0LNY" <glenn@ervin.email>
>> Cc: <speakup@linux-speakup.org>; "Jason White" <jason@jasonjgw.net>
>> Sent: Sunday, July 9, 2023 10:55 PM
>> Subject: Re: configuring a USB/Serial port
>>
>>
>>>  Glen,
>>>  That is not what I mean.
>>>  What happens if you run the command without setting the baud rate at 
>>> all?
>>>
>>>
>>>  On Sun, 9 Jul 2023, K0LNY wrote:
>>>
>>> >  Hi Karen,
>>> >  I got the command I sent out to the list from on-line searches.
>>> >  I have just tried the 9600, and I get the same thing.
>>> >  The baud rate now is 38000.
>>> >  I have tried different things, and I just get errors.
>>> >
>>> >  Glenn
>>> >  ----- Original Message ----- From: "Karen Lewellen" 
>>> > <klewellen@shellworld.net>
>>> >  To: "K0LNY" <glenn@ervin.email>
>>> >  Cc: <speakup@linux-speakup.org>; "Jason White" <jason@jasonjgw.net>
>>> >  Sent: Sunday, July 9, 2023 9:16 PM
>>> >  Subject: Re: configuring a USB/Serial port
>>> >
>>> >
>>> > >   Glen,
>>> > >   Why not do this one at a time?
>>> > >   Why are you setting the 9600 speed for example?
>>> > >   and, if you run the STTY command what are you confirming as the 
>>> > > tty
>>> > >   settings?
>>> > >   Clearly if the error says unable to run all of the options, one of 
>>> > > them
>>> > >   may be the problem?
>>> > >   As expressed, I simply  ran a search with your question.
>>> > >   speaking personally, very much so, I avoid this by getting 
>>> > > hardware with
>>> > >   actual serial and USB ports saves the mayhem lol.
>>> > >   Kare
>>> > >
>>> > >
>>> > >   On Sun, 9 Jul 2023, K0LNY wrote:
>>> > >
>>> > > >  Unfortunately, the below command does not work with or without 
>>> > > > the usb, using #0 or 1.
>>> > > >   stty -F /dev/tty0 9600 +cs8 -cstopb -parenb
>>> > > >   I still get the error
>>> > > >   unable to perform all of the requested operations.
>>> > > >   I have also tried it with less in the command with the same 
>>> > > > error, e.g.
>>> > > >   stty -F /dev/tty0 9600
>>> > > >
>>> > > >   Glenn
>>> > > >   ----- Original Message ----- From: "Karen Lewellen" 
>>> > > > <klewellen@shellworld.net>
>>> > > >   To: "K0LNY" <glenn@ervin.email>
>>> > > >   Cc: <speakup@linux-speakup.org>; "Jason White" 
>>> > > > <jason@jasonjgw.net>
>>> > > >   Sent: Sunday, July 9, 2023 7:03 PM
>>> > > >   Subject: Re: configuring a USB/Serial port
>>> > > >
>>> > > >
>>> > > > >    Hi,
>>> > > > >    A quick search of the question,
>>> > > > >    how to set a serial port in command line Linux?
>>> > > > >    Yielded the suggestion of tty0 or ttyusb0.
>>> > > > >    Also that running stty should show you what the settings are 
>>> > > > > currently.
>>> > > > >
>>> > > > >
>>> > > > >    On Sun, 9 Jul 2023, K0LNY wrote:
>>> > > > >
>>> > > > > >  Yes, I should have added, I did lsusb, and the futuretk is on 
>>> > > > > > usb2, but I tried that command I sent with /dev/usb2 and it 
>>> > > > > > gave an invalid device or something like that.
>>> > > > > >    Glenn
>>> > > > > >     ----- Original Message -----
>>> > > > > >     From: Jason White
>>> > > > > >     To: speakup@linux-speakup.org
>>> > > > > >     Sent: Sunday, July 9, 2023 6:45 PM
>>> > > > > >     Subject: Re: configuring a USB/Serial port
>>> > > > > >
>>> > > > > >
>>> > > > > >
>>> > > > > >
>>> > > > > >
>>> > > > > >     On 9/7/23 19:13, K0LNY wrote:
>>> > > > > >
>>> > > > > >       I am trying to be able to send anything to the Dectalk 
>>> > > > > > express.
>>> > > > > >       I have tried configuring the port with the below 
>>> > > > > > command, and I get the error
>>> > > > > >       unable to  perform all requested actions
>>> > > > > >       I really don't know what I'm doing, so any advice would 
>>> > > > > > be appreciated.
>>> > > > > >       Here's what I'm entering:
>>> > > > > >       stty -F /dev/tty4 9600 cs8 -cstopb -parenb
>>> > > > > >  Check your kernel logs to obtain the name of the device 
>>> > > > > > representing the serial port. It's probably /dev/ttyS0 or 
>>> > > > > > /dev/ttyusb0 or similar. /dev/tty4 is not it, I'm fairly sure.
>>> > > > > >
>>> > > >
>>> > > >
>>> > >
>>> >
>>> >
>>> >
>>
>>
>>
>> 


