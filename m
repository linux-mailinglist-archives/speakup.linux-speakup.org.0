Return-Path: <speakup+bounces-931-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EB23E71338E
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 10:59:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=w5PIUWap;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 163CF382495; Sat, 27 May 2023 04:59:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EA701382421
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 04:59:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B1E82382419; Sat, 27 May 2023 04:59:18 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 43DC038238C
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 04:59:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1685177955;
	bh=K2xvcQyTs/70K23Lw5/FnaVWvq4HuJy3GPy0Om25gT8=;
	h=From:Subject:To:References:Date:In-Reply-To;
	b=w5PIUWapLmtMZXN7SrqBXGOsNSeMFjwEzFWvczbw4Hs8FC3sio3vIMeYEm+btgCkP
	 2pLB58Xt0ji6Edh4fOu9rBiiRxp8O7cPlVQmEuzHOkA6ycA67LmmHPhETcDy8B58Tu
	 iRAif2wMuC63HMthLtOOztYmesY8P8mKBPTFf4erx6WIps6JDoY73lgebCmAQOrNWT
	 jmllCXmDseL0PjWfSVrbDqWfr5IwxJiCL3ghZhTZPXpZ6682LK4Ez0x4GH1zw15KS0
	 Xy1W1ByLwbECC0tt/RfxHNHPLX74M/iRR0Sy1Kua08JRNs24QapyF5pDJ1DkPMkLIa
	 IzI6BskUVGj/A==
Original-Subject: Re: Beep on Backspace in Console Sessions
Author: "Joseph C. Lininger" <joe@pcdesk.net>
Received: from [192.168.0.20] ([::ffff:74.103.20.49])
  (AUTH: LOGIN joe@pcdesk.net, TLS: TLSv1.3,256bits,TLS_AES_256_GCM_SHA384)
  by mail.pcdesk.net with ESMTPSA
  id 0000000000021289.000000006471C663.0004DF46; Sat, 27 May 2023 04:59:15 -0400
From: "Joseph C. Lininger" <joe@pcdesk.net>
Subject: Re: Beep on Backspace in Console Sessions
To: Janina Sajka <janina@rednote.net>, speakup@linux-speakup.org
References: <ZHGmQFwqgliD6p3X@rednote.net>
Message-ID: <d9409a2a-457a-0427-0535-b5e5c2816ee7@pcdesk.net>
Date: Sat, 27 May 2023 04:59:11 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.6.0
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
In-Reply-To: <ZHGmQFwqgliD6p3X@rednote.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Janina,
First, unfortunately, I don't have a definite answer to your question. I 
wish I did, as this is a question I myself would like answered. I am 
going to provide some additional information here though, including a 
possible fix. If you aren't interested, feel free to use the delete key.

That beep on backspace functionality is actually a function of the shell 
working in conjunction with the kernel code. More specifically, if you 
press the backspace key and you are at the beginning of the line, the 
shell sends an alert character to the controlling terminal, in this case 
your console. That should, if things are working right, result in a beep 
from the PC speaker or maybe a sound from the sound card speakers 
depending on your hardware and on what's loaded in the kernel.

The shell (bash specifically) is still doing this. I verified this by 
connecting remotely to a Linux server using Windows, then purposely 
backspacing at the beginning of a line. Sure enough, I got an alert. In 
fact, I got the same one as what I get if I purposely print an alert 
character to the terminal. I also booted my PC into Linux and verified 
that if I print an alert character to the terminal, nothing happens. 
Also nothing if I backspace in the terminal, which was exactly what I 
expected.

I mentioned all of this for a couple of reasons. First, if this isn't 
working, it isn't just the beep on backspace functionality that is 
disabled. The ability for shell scripts to provide audible alerts and 
such is also less functional; now they have to play an audio file or 
something like that instead of just sending an alert to the controlling 
terminal. There are problems with that approach, which I won't go into 
here. Pretty much any tool that would use the PC speaker for some reason 
can't do so.

Second, there may be a fix. Some laptop hardware actually can act on PC 
speaker signals. The sound would come through the regular laptop 
speakers. I believe to do this you use the regular PC speaker kernel 
code, I.E. the pcspkr module. You may need to set parameters on the 
sound card as well; amixer should give you a clue as to what needs 
changing. You might have to set a control to on, unmute a control, 
and/or increase a control's volume. Failing that, do you know if the 
snd_pcsp code has been removed entirely or is it just disabled in your 
distribution's stock kernel? Could you perhaps recompile your kernel to 
put the module back?
Joe

On 5/27/2023 2:42 AM, Janina Sajka wrote:
> Dear All:
>
> I'm wondering whether it's still supported in alsa?
>
> Yes, in ancient history, with speakers in the computer case just for a
> beep on backspace, the old pcskpr module did the trick.
>
> Then those speakers disappeared, but alsa-lib gave us an snd-beep module
> (as I recall). I'm not finding that module these days, and I'm wondering
> wheter it's just not getting compiled for some reason? Or has it really
> been dropped.
>
> I know most fot the sighted world hates that beep on backspace. That's
> partly why it's quite hard to google for this question. I don't mind if
> it's off by default, but it should be something those of us who find it
> beneficial should be able to turn on, imo.
>
> Anyone know.
>
> Janina
>


