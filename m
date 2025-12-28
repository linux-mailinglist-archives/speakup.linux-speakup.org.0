Return-Path: <speakup+bounces-1486-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 79170CE5738
	for <lists+speakup@lfdr.de>; Sun, 28 Dec 2025 21:34:45 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=VoJICjwi;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49FCE381814; Sun, 28 Dec 2025 15:34:44 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2A3FF3817D6
	for <lists+speakup@lfdr.de>; Sun, 28 Dec 2025 15:34:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 42384381812; Sun, 28 Dec 2025 15:34:38 -0500 (EST)
Received: from mail.pcdesk.net (unknown [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A4FB13817D5
	for <speakup@linux-speakup.org>; Sun, 28 Dec 2025 15:34:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1766954071;
	bh=5Z93OiEDKfUBcBSCZidTxX04PVdYgSqTov6A/0PfnD8=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=VoJICjwiqYku8JfFuarxxJcjVMB4qwpRYk6dxRSPGOo+yb78+QgFDe6czU1DNZhd9
	 5kj4rciz8/zlzkNhEbVIaxILWCUDzRA1FrerljoQuiH8nO3Y96V13N1OWUNcLAYIZt
	 6bqBlMHMP4bC/w+TQoXYpn8lYIeMU+osGgdk1I7bnh2joANIJbPDFM/Q0q5LdHv7S1
	 C2JZ5njSRyWgc0w3phDQIkIQePVrCChvbO2cmZuQ7mxbSTob9k467rGi2sS6QYRnhy
	 qBH61gj9jc7iuxJZlmtt7L0W9qYXvnSGJjZvFqamVj664jXJuPphmGy7lppK1vdvjS
	 eJdjgEHkCFcag==
Original-Subject: Re: Building a hardware speech synth with a Raspberry Pi
Author: Tyler Spivey <tspivey@pcdesk.net>
Received: from [192.168.1.75] (d207-6-209-188.bchsia.telus.net [::ffff:207.6.209.188])
  (AUTH: LOGIN tspivey@pcdesk.net, TLS: TLSv1.3,256bits,TLS_AES_256_GCM_SHA384)
  by mail.pcdesk.net with ESMTPSA
  id 0000000000020386.0000000069519457.000113CB; Sun, 28 Dec 2025 15:34:30 -0500
Message-ID: <7dc8be53-2745-4a3b-8ead-28be810a7798@pcdesk.net>
Date: Sun, 28 Dec 2025 12:34:28 -0800
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Building a hardware speech synth with a Raspberry Pi
To: "John G. Heim" <jheim@math.wisc.edu>,
  Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
  speakup@linux-speakup.org
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <01FF57A0-2383-4625-975C-944AE93F762D@speedpost.net>
 <eb7fcb31-4b34-4e31-a2db-67e41cc8a79c@posteo.com.br>
 <6b154ff0-fbfb-4eb7-9ca4-21ded53e7c22@math.wisc.edu>
Content-Language: en-US
From: Tyler Spivey <tspivey@pcdesk.net>
In-Reply-To: <6b154ff0-fbfb-4eb7-9ca4-21ded53e7c22@math.wisc.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Writing a synth emulator is easy. Getting it right is not in some cases.
Here are the ones I know about:
1. https://github.com/tspivey/vbns-ao2
This is a synth emulating enough of a BNS to talk. It has only been 
tested on Windows.
This is a fork of a fork. I wrote the original emulator, someone 
modified it to use accessible_output2, and I fixed a bug in it last year 
for my DOSBox guide.
2. 
https://datajake.braillescreen.net/tts/dectalk%20software%20and%20manual/dtemu.zip
This is a DecTALK emulator for Windows, which sort of works.
It would probably work with Speakup no problem, but the DOS TSR uses a 
completely different protocol which isn't emulated very well.
3. https://emubns.sourceforge.net/
Another BNS emulator, this one for Linux. I don't know anything about it.

On 12/28/2025 8:08 AM, John G. Heim wrote:
> The synth emulation is independent of the speech itself. My python 
> emulation script acts like a LiteTalk (for now) and speaks via espeak-ng 
> (for now). A user will never care about which hardware synth it is 
> emulating. They'll have to know which synth it is emulating but it won't 
> effect their experience. They might care about the speech though. I 
> intend to get the emulation working perfectly first and then add support 
> for other TTS engines like voxim and festival.
> 
> The only reason the choice of which synth to emulate matters is in how 
> difficult it will be to code the emulation. People have said there is 
> already code out there for emulating a DecTalk but I can't find it.
> 
> PS: I was able to log in on my desktop and ping another machine on my 
> network using my Raspberry Pi synth. It was a struggle though. I thought 
> that once I got this far, I would be assured of success. But there's a 
> huge latency problem. I figure that's because I am using a bluetooth 
> speaker for sound. But if it is because of the USB hardware on the RPI 
> that could be a problem. It could also be that my code is inefficient, 
> forking a new espeak process each time it needs to say something.
> 
> 
> On 12/28/25 4:51 AM, Cleverson Casarin Uliana wrote:
>> I think that ESpeak-ng is more than enough as a synth, because it 
>> supports tents of languages, and also because probably most users of 
>> this project won't use it as a permanente synthesiser, but mostly as a 
>> temporary solution for experimenting and installing new systems,
>>  among other sysadmin tasks. AFAIC, Dektalk for example supports a 
>> lesser number of languages than ESpeak.
>>
>> Regards,
>> Cleverson
>>
> 


