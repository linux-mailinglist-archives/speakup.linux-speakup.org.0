Return-Path: <speakup+bounces-1124-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E204E8B8F32
	for <lists+speakup@lfdr.de>; Wed,  1 May 2024 19:49:15 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; secure) header.d=pcdesk.net header.i=@pcdesk.net header.a=rsa-sha256 header.s=pcdesk20210713 header.b=LA6wOR76;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7DFEDC81CDC; Wed, 01 May 2024 13:49:15 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5EB40C81C60
	for <lists+speakup@lfdr.de>; Wed, 01 May 2024 13:49:15 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2FD05C81C63; Wed, 01 May 2024 13:49:07 -0400 (EDT)
Received: from mail.pcdesk.net (mail.pcdesk.net [69.28.94.151])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DA2F5C81C5F
	for <speakup@linux-speakup.org>; Wed, 01 May 2024 13:49:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pcdesk.net;
	s=pcdesk20210713; t=1714585725;
	bh=AipEwyZ38PCZpX2OaqiKUFdSGOD2RSfoTtCpgenxc2Y=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=LA6wOR76YjGcnTE9gAgYh9fMQaqNNA5X3iGljN8nTx19OFTmLNTQc+vlz4W2h77G6
	 l3OxP4BQlzSeRkukaRyeH2jUv0VDbeoYar9JyJFiY0wk78Op4JbHyUZqiTfM/8+Mrv
	 Vbow5VHAZd7A3PpHLX9p/pUZOYh5idgGYB/PRANZw7vAchWD+Jnr9bO4DZu3CO/Z7+
	 SqEWiBxOdah3hZSoenV982Yyd/yEOr+wqz9tZkgy7OPvptY7jwzLBtdf9aNejSwKmb
	 LvTdOkvjlgS2RVN/CmCcnUdkGptyy5loxEN8sc3oaDFJ6ie+PqkGCGejivmKN4z/l9
	 U7rSHw2qz5+2Q==
Original-Subject: Re: 8-bit Chaos
Author: Tyler Spivey <tspivey@pcdesk.net>
Message-ID: <efd1fba1-069f-2ebb-78c5-2d81cddc8ada@pcdesk.net>
Date: Wed, 1 May 2024 10:48:42 -0700
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: 8-bit Chaos
Content-Language: en-US
To: speakup@linux-speakup.org
References: <E1s2Dv6-0005vb-2W@wb5agz>
From: Tyler Spivey <tspivey@pcdesk.net>
In-Reply-To: <E1s2Dv6-0005vb-2W@wb5agz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Are you running under screen? That sounds like UTF-8 being sent to 
something that doesn't understand it.
Take everything out of the stack except for the shell. Paste the output 
of locale. Also make sure you've got the UTF-8 locales generated (though 
things will complain if you don't, and your distro should do that).

How did you install espeakup?


On 5/1/2024 10:39 AM, Martin McCormick wrote:
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

