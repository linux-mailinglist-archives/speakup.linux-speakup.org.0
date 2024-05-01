Return-Path: <speakup+bounces-1125-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C14988B8F79
	for <lists+speakup@lfdr.de>; Wed,  1 May 2024 20:19:35 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49192C81CD2; Wed, 01 May 2024 14:19:34 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 336BDC81C60
	for <lists+speakup@lfdr.de>; Wed, 01 May 2024 14:19:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C4192C81C63; Wed, 01 May 2024 14:19:29 -0400 (EDT)
Received: from fgw22-4.mail.saunalahti.fi (fgw22-4.mail.saunalahti.fi [62.142.5.109])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 99AE7C81C5F
	for <speakup@linux-speakup.org>; Wed, 01 May 2024 14:19:29 -0400 (EDT)
Received: from nkl.local (91-157-198-110.elisa-laajakaista.fi [91.157.198.110])
	by fgw21.mail.saunalahti.fi (Halon) with SMTP
	id 555e1a18-07e7-11ef-abf4-005056bdd08f;
	Wed, 01 May 2024 21:19:22 +0300 (EEST)
Received: (qmail 2467259 invoked from network); 1 May 2024 18:19:21 -0000
Received: from localhost (127.0.0.1)
  by nkl.local with SMTP; 1 May 2024 18:19:21 -0000
Date: Wed, 1 May 2024 21:19:21 +0300 (EEST)
From: Ari Moisio <arimo@iki.fi>
To: speakup@linux-speakup.org
Subject: Re: 8-bit Chaos
In-Reply-To: <E1s2Dv6-0005vb-2W@wb5agz>
Message-ID: <7de73dd6-90ab-2388-6d72-758d499e1510@iki.fi>
References: <E1s2Dv6-0005vb-2W@wb5agz>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 8BIT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello

In utf-8 encoding every character whose value is over 127 decimal (they 
call those values as codepoints) is presented with at least two bytes 
witch have their most significant bit set to  one to mark they are part of 
utf-8 sequence. There might be some accented characters or punctuation 
symbols  witch are out of ASCII character set, 0- 127 decimal and all 
these are presented with utf-8 sequences.

For english you can probably ignore any character with high bit set.



Mielipiteet ovat omiani eivätkä yleensä vastaa muiden  näkemyksiä.
-- 
mr. M01510 & guide Loadstone-GPS  Lat: 62.38718, lon: 25.64672
hkp://wwwkeys.pgp.net B784D020 fp:0C1F6A76 DC9DDD58 33838B5D 0E769600 B7840D02
http://sokkona.arimo.info


  Martin McCormick kirjoitti
> Subject: 8-bit Chaos
> Date: Wed, 1 May 2024 20:39:04
> From: Martin McCormick <martin.m@suddenlink.net>
> To: speakup@linux-speakup.org
> 
> I am using espeakup on a Raspberry Pi running debian bookworm and
> couldn't be more pleased, for the most part, with the way it is
> working but I wouldn't be posting this message if there wasn't a
> problem and here it is to the best of my ability to describe it.
>
> 	A long time ago, I wrote some shell and even a perl
> script to mask off the most significant bit of data, what we
> might also call the eighth bit or bit 7, hex 80.
>
> 	I placed it in the output stream of an email reader and
> it worked but it also had side effects such as when one piped the
> output of a message to a file so I couldn't leave things that
> way.
>
> 	With espeakup, any character starting at hex 80 or
> decimal 128 causes espeakup to utter something that sounds like
> "I umlaut ahalf inverted question."
>
> 	I ran a perl script that sends hex 80 through hex FF to
> standard output and every single character in that range causes
> the same "i umlaut ahalf inverted question" response so there is no
> reason to send anything but 7-bit characters there.
>
> 	Interestingly, when I send a hex 90 out, espeakup stops
> talking for several seconds until I've reached well past hex 92
> or so and then it starts the same 8-bit "i umlaut ahalf" message. as
> before.
>
> 	On an older debian system, also running a speakup kernel
> and debian 12 or bookworm, this behavior does not happen as often.
>
> 	My $LANG variable is set to
> en_US.UTF-8.
>
> 	When I read email or other text that has 8-bit characters
> in it, the message gets garbled with these characters and
> strange things happen that I am not sure as to why or even if
> they are related to the 8-bit characters.
>
> 	Basically, I want to read text that is free of chaos and
> random weirdness.  Most of the time it is slightly annoying, but
> sometimes there is enough of this stuff to obscure the sense of
> what one is reading.
>
> 	The Raspberry Pi is being used as a small talking ASCII
> terminal that can ssh in to other unix systems and give them
> speech when I am logged in so I probably would be okay if I could
> keep the 8-bit stuff out of speakup on the Raspberry Pi.
>
> 	Finally, here is the character generator test perl script
> which has a 2-second delay between characters and which I am
> starting a few characters below hex 80.  All the 7-bit ASCII
> characters make it to speakup just fine so the only real problem
> happens when any 8-bit junk makes it to speakup.  Also, the
> silencing that happens at hex 90 does not shut off reception of
> characters, only the speaking of them.  When I hit hex 92 or so,
> it picks up speaking where it left off.
>
> #!/usr/bin/perl -w
> use strict;
> #use warnings::unused;
>
> my $char;
> for ($char = 125; $char < 256;$char++)
> {
> $_ = sprintf("%x %c",$char, $char);
> print("$_\n");
> sleep(2);
> }
> exit(0);
>

