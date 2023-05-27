Return-Path: <speakup+bounces-935-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0508871357E
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 17:52:34 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0EE5F38247D; Sat, 27 May 2023 11:52:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EC97138111F
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 11:52:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D4B653823A0; Sat, 27 May 2023 11:52:20 -0400 (EDT)
Received: from relay.b.hostedemail.com (smtprelay0251.b.hostedemail.com [64.98.42.251])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B9E2438111F
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 11:52:20 -0400 (EDT)
Received: from omf10.b.hostedemail.com (omf10 [10.200.6.73])
	by unirelay03.b.hostedemail.com (Postfix) with ESMTP id 57EEF601BB;
	Sat, 27 May 2023 15:52:18 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: glenn@ervin.email) by omf10.b.hostedemail.com (Postfix) with ESMTPA id DCE65C0004;
	Sat, 27 May 2023 15:52:14 +0000 (UTC)
Message-ID: <29b001d990b3$35931e40$01ffa8c0@nucwin10>
Reply-To: "K0LNY" <glenn@ervin.email>
From: "K0LNY" <glenn@ervin.email>
To: "Joseph C. Lininger" <joe@pcdesk.net>,
	"Janina Sajka" <janina@rednote.net>,
	<speakup@linux-speakup.org>
References: <ZHGmQFwqgliD6p3X@rednote.net> <d9409a2a-457a-0427-0535-b5e5c2816ee7@pcdesk.net>
Subject: Re: Beep on Backspace in Console Sessions
Date: Sat, 27 May 2023 10:52:14 -0500
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
	charset="UTF-8";
	reply-type=response
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.2180
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.2180
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: DCE65C0004
X-Stat-Signature: qjje3cizietpj96f5usxqcgc6r6bt5mn
X-Spam-Status: No, score=-2.40
X-Session-Marker: 676C656E6E40657276696E2E656D61696C
X-Session-ID: U2FsdGVkX19X6cGZo+yruCzYnJduvKeJ5WuPaL+8vX8=
X-HE-Tag: 1685202734-174703
X-HE-Meta: U2FsdGVkX1+vbWg7qDniEmdWvvXgfHhY90MD4BGsXl9Qj/qyLfIvfwthEdsACTmCBUGh/KvpRItUjEwjApf2GQ==
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I do know that some systems produce a beep using the soundcard.
I just tried installing an Open Media Vault ISO into a VM, it is a Debian 
rebuild, and although the startup beep was the only hope of accessibility 
there, I was surprised when I heard the beep, because my Intel NUC does not 
have a speaker for that, so it was sent through the soundcard.
I didn't know that this was ever done.
But I hadn't noticed the missing sound when I backspaced to the wall, but I 
sure miss it.
I guess I figured it was the particular system I was using, but that sound 
can tell us a lot, like if we are in an edit field or actually made it to a 
terminal, when we can't tell if we even booted.
Glenn
----- Original Message ----- 
From: "Joseph C. Lininger" <joe@pcdesk.net>
To: "Janina Sajka" <janina@rednote.net>; <speakup@linux-speakup.org>
Sent: Saturday, May 27, 2023 3:59 AM
Subject: Re: Beep on Backspace in Console Sessions


> Hi Janina,
> First, unfortunately, I don't have a definite answer to your question. I 
> wish I did, as this is a question I myself would like answered. I am going 
> to provide some additional information here though, including a possible 
> fix. If you aren't interested, feel free to use the delete key.
>
> That beep on backspace functionality is actually a function of the shell 
> working in conjunction with the kernel code. More specifically, if you 
> press the backspace key and you are at the beginning of the line, the 
> shell sends an alert character to the controlling terminal, in this case 
> your console. That should, if things are working right, result in a beep 
> from the PC speaker or maybe a sound from the sound card speakers 
> depending on your hardware and on what's loaded in the kernel.
>
> The shell (bash specifically) is still doing this. I verified this by 
> connecting remotely to a Linux server using Windows, then purposely 
> backspacing at the beginning of a line. Sure enough, I got an alert. In 
> fact, I got the same one as what I get if I purposely print an alert 
> character to the terminal. I also booted my PC into Linux and verified 
> that if I print an alert character to the terminal, nothing happens. Also 
> nothing if I backspace in the terminal, which was exactly what I expected.
>
> I mentioned all of this for a couple of reasons. First, if this isn't 
> working, it isn't just the beep on backspace functionality that is 
> disabled. The ability for shell scripts to provide audible alerts and such 
> is also less functional; now they have to play an audio file or something 
> like that instead of just sending an alert to the controlling terminal. 
> There are problems with that approach, which I won't go into here. Pretty 
> much any tool that would use the PC speaker for some reason can't do so.
>
> Second, there may be a fix. Some laptop hardware actually can act on PC 
> speaker signals. The sound would come through the regular laptop speakers. 
> I believe to do this you use the regular PC speaker kernel code, I.E. the 
> pcspkr module. You may need to set parameters on the sound card as well; 
> amixer should give you a clue as to what needs changing. You might have to 
> set a control to on, unmute a control, and/or increase a control's volume. 
> Failing that, do you know if the snd_pcsp code has been removed entirely 
> or is it just disabled in your distribution's stock kernel? Could you 
> perhaps recompile your kernel to put the module back?
> Joe
>
> On 5/27/2023 2:42 AM, Janina Sajka wrote:
>> Dear All:
>>
>> I'm wondering whether it's still supported in alsa?
>>
>> Yes, in ancient history, with speakers in the computer case just for a
>> beep on backspace, the old pcskpr module did the trick.
>>
>> Then those speakers disappeared, but alsa-lib gave us an snd-beep module
>> (as I recall). I'm not finding that module these days, and I'm wondering
>> wheter it's just not getting compiled for some reason? Or has it really
>> been dropped.
>>
>> I know most fot the sighted world hates that beep on backspace. That's
>> partly why it's quite hard to google for this question. I don't mind if
>> it's off by default, but it should be something those of us who find it
>> beneficial should be able to turn on, imo.
>>
>> Anyone know.
>>
>> Janina
>>
>
> 


