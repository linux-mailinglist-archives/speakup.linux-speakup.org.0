Return-Path: <speakup+bounces-987-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5AEBB74C9C2
	for <lists+speakup@lfdr.de>; Mon, 10 Jul 2023 04:00:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=t39smtp-sign002.email header.i=@t39smtp-sign002.email header.a=rsa-sha256 header.s=titan1 header.b=MfKwcxu6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A366238255F; Sun,  9 Jul 2023 22:00:42 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 816A238245E
	for <lists+speakup@lfdr.de>; Sun,  9 Jul 2023 22:00:42 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CD0F9382463; Sun,  9 Jul 2023 22:00:34 -0400 (EDT)
Received: from mail68.out.titan.email (mail68.out.titan.email [3.216.99.50])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1519A382440
	for <speakup@linux-speakup.org>; Sun,  9 Jul 2023 22:00:34 -0400 (EDT)
Received: from smtp-out.flockmail.com (localhost [127.0.0.1])
	by smtp-out.flockmail.com (Postfix) with ESMTP id 08ECB10008E;
	Mon, 10 Jul 2023 02:00:26 +0000 (UTC)
Received: from nucwin10 (unknown [140.228.165.201])
	by smtp-out.flockmail.com (Postfix) with ESMTPA id 8677710000B;
	Mon, 10 Jul 2023 02:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=t39smtp-sign002.email; s=titan1; t=1688954425;
	bh=+n226Is3mZP/1edhxdJnNBV9Hpc6S1FNB30FJONBcmc=;
	h=Message-ID:Reply-To:From:To:Cc:References:Subject:Date:
	 MIME-Version:From:To:Cc:Subject:Message-ID;
	b=MfKwcxu6oZn2dSzKaFnaqqycua9g/9VkGXDsXUH4sNfPktJj2sz2MPGSzisF0d9cL
	 IYjo5hLT2rscSuWnteBxG3G8z/NKPAjR29xPi0eg+etmjTlU7KVVe0Y6Dc28zMIGhG
	 ffwb2YWRLw9/G8alIDEZU1UDMzxeJk7lgJkfkB3U=
Message-ID: <024101d9b2d2$4b343810$01ffa8c0@nucwin10>
Reply-To: "K0LNY" <glenn@ervin.email>
Feedback-ID: :glenn@ervin.email:ervin.email:flockmailId
From: "K0LNY" <glenn@ervin.email>
To: "Karen Lewellen" <klewellen@shellworld.net>
Cc: <speakup@linux-speakup.org>,
	"Jason White" <jason@jasonjgw.net>
References: <022501d9b2ba$f6c7ca10$01ffa8c0@nucwin10> <a9d7f09d-71c6-8e1d-5f90-243a82de497c@jasonjgw.net> <023301d9b2c0$cc014300$01ffa8c0@nucwin10> <Pine.LNX.4.64.2307092001040.1050358@users.shellworld.net>
Subject: Re: configuring a USB/Serial port
Date: Sun, 9 Jul 2023 21:00:24 -0500
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
X-Titan-Src-Out: 1688954425815806731.11573.1591590934464431663@prod-use1-smtp-out1002.
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=F76RNItN c=1 sm=1 tr=0 ts=64ab6639
	a=sfY17wZm961WJQkZ7MXrtw==:117 a=sfY17wZm961WJQkZ7MXrtw==:17
	a=8nJEP1OIZ-IA:10 a=MKtGQD3n3ToA:10 a=P3K-DvM3-jgA:10 a=CEWIc4RMnpUA:10
	a=9_GH9xibAAAA:8 a=qPKtzgQbAAAA:8 a=8Ro6GKBAAAAA:8 a=EIc-SaA3THwW5nHMNRYA:9
	a=wPNLvfGTeEIA:10 a=bC-Knf54HiEA:10 a=dO7qa_Xy17WzffDKgyPM:22
	a=OTAqJWGB1laLS8RTg9aS:22 a=Xhl6o1fcNCG9FGZrHFNY:22
X-Virus-Scanned: ClamAV using ClamSMTP
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Unfortunately, the below command does not work with or without the usb, 
using #0 or 1.
stty -F /dev/tty0 9600 +cs8 -cstopb -parenb
I still get the error
unable to perform all of the requested operations.
I have also tried it with less in the command with the same error, e.g.
stty -F /dev/tty0 9600

Glenn
----- Original Message ----- 
From: "Karen Lewellen" <klewellen@shellworld.net>
To: "K0LNY" <glenn@ervin.email>
Cc: <speakup@linux-speakup.org>; "Jason White" <jason@jasonjgw.net>
Sent: Sunday, July 9, 2023 7:03 PM
Subject: Re: configuring a USB/Serial port


> Hi,
> A quick search of the question,
> how to set a serial port in command line Linux?
> Yielded the suggestion of tty0 or ttyusb0.
> Also that running stty should show you what the settings are currently.
>
>
>
> On Sun, 9 Jul 2023, K0LNY wrote:
>
>> Yes, I should have added, I did lsusb, and the futuretk is on usb2, but I 
>> tried that command I sent with /dev/usb2 and it gave an invalid device or 
>> something like that.
>> Glenn
>>  ----- Original Message -----
>>  From: Jason White
>>  To: speakup@linux-speakup.org
>>  Sent: Sunday, July 9, 2023 6:45 PM
>>  Subject: Re: configuring a USB/Serial port
>>
>>
>>
>>
>>
>>  On 9/7/23 19:13, K0LNY wrote:
>>
>>    I am trying to be able to send anything to the Dectalk express.
>>    I have tried configuring the port with the below command, and I get 
>> the error
>>    unable to  perform all requested actions
>>    I really don't know what I'm doing, so any advice would be 
>> appreciated.
>>    Here's what I'm entering:
>>    stty -F /dev/tty4 9600 cs8 -cstopb -parenb
>>  Check your kernel logs to obtain the name of the device representing the 
>> serial port. It's probably /dev/ttyS0 or /dev/ttyusb0 or similar. 
>> /dev/tty4 is not it, I'm fairly sure.
>> 


