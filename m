Return-Path: <speakup+bounces-1126-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 42D4D8B9348
	for <lists+speakup@lfdr.de>; Thu,  2 May 2024 04:08:29 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=mTzYcZm2;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6916EC81CEF; Wed, 01 May 2024 22:08:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4742DC81C7A
	for <lists+speakup@lfdr.de>; Wed, 01 May 2024 22:08:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0AED0C81C81; Wed, 01 May 2024 22:08:20 -0400 (EDT)
Received: from altprdrgo06.altice.prod.cloud.openwave.ai (altprdrgo06.altice.prod.cloud.openwave.ai [65.20.63.40])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C5F42C81C71
	for <speakup@linux-speakup.org>; Wed, 01 May 2024 22:08:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1714615699; 
        bh=s93cPBL2sB5Hhb7Nw6Q8SDxfInl7hNsjlR/Fl+nXVck=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=mTzYcZm2J29rSGa/NhG39qcUKL9wXjrLyMjPL4s/z2etzB/UUDkaug1sN+GnWJ256OmKpE7qv2dZjCqDecej9+TGw4r8IzgYB5eMSPQt+NR6AnAQbjDaoPvRlzHrz2r3kQ2viTYKNbLbZTusuglBAMPkPV75LzmaBAKTjFT2OqUS7v+dXjqEOFvLY9aFQIrZDlX6XTZg8nMU+7CYsDeG3zy5DxtCrHqnNvC4+0qY/tAA8c0bJ1oNq54jrB6i6CuVWtbOOzbwApWNrbRj77bzPtme+ncR1sx0lZ+Q1U0vnBPwXURpo22KhT/SCM5aAInQYOmrQSAj54iFU0A+AdtfYQ==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 661FD66C0256CF3B
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrvddujedgheeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdei
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo06.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 661FD66C0256CF3B for speakup@linux-speakup.org; Wed, 1 May 2024 22:08:18 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1s2Lro-0007I7-1s
	for speakup@linux-speakup.org;
	Wed, 01 May 2024 21:08:12 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: No more 8-bit Chaos
In-reply-to: <20240501175825.xjrldybqyx6rcyek@begin>
References: <E1s2Dv6-0005vb-2W@wb5agz> <20240501175825.xjrldybqyx6rcyek@begin>
Comments: In-reply-to Samuel Thibault <samuel.thibault@aquilenet.fr>
   message dated "Wed, 01 May 2024 19:58:25 +0200."
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <28029.1714615692.1@wb5agz.lan>
Date: Wed, 01 May 2024 21:08:12 -0500
Message-Id: <E1s2Lro-0007I7-1s@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

As I suspected, there is absolutely nothing wrong with speakup.
	What I did was to build this particular Raspberry Pi
image using their imager so I ended up with bullseye which is
debian 11.  I upgraded that to bookworm in the normal manner for
such things.

I used apt install to install espeakup which worked
fine after I uninstalled some speakup software that is not needed when
using espeakup.  If I don't do anything that generates 8-bit
output on the console, speakup never misses a beat and speaks
like it should.  The trouble comes when I read an email message,
for example, that was written in richtext or go to a web page
with certain visual features that cause 8-bit characters to show
up in the output stream.

Samuel Thibault <samuel.thibault@aquilenet.fr> writes:
> If you send random >= 0x80 values to the console, it's not valid
> utf-8, and thus a "replacement character" U+FFFD is produced by
> Linux. Apparently espeak pronounces this character that way. If you want
> something else to be said, report this to espeak-ng, not to espeakup :)

Great information for future use.  Thank you.  Please keep
reading.

Tyler Spivey <tspivey@pcdesk.net> writes:
> Are you running under screen? That sounds like UTF-8 being sent to
> something that doesn't understand it. 

	I agree.  I usually run under screen but I also have
tried sessions without screen and the strangeness just morphs in
to a different form of dysfunction but only when 8-bit chars get
sent through standard output.  Continuing your quote:
>Take everything out of the stack
> except for the shell. Paste the output of locale. Also make sure you've 
> got
> the UTF-8 locales generated (though things will complain if you don't, and
> your distro should do that).

	I believe you are on to something.  The Pi that is
having these issues does show a different locale output than the
older i86 machine that has a more normal output.  Both systems
should have the same locale but the listings are different.

	The troubled system's output for locale is:
$ locale
LANG=C
LANGUAGE=
LC_CTYPE="C"
LC_NUMERIC="C"
LC_TIME="C"
LC_COLLATE="C"
LC_MONETARY="C"
LC_MESSAGES="C"
LC_PAPER="C"
LC_NAME="C"
LC_ADDRESS="C"
LC_TELEPHONE="C"
LC_MEASUREMENT="C"
LC_IDENTIFICATION="C"
LC_ALL=
martin@rpi1

	It's all C's instead of en_US.UTF-8 which is what should
be there except for the time which is  based on LC_TIME=en_GB.UTF-8
which is one way to get your machine to give you 24-hour time in
the latest en carnation of the time formatting rules.

	So here's what I needed to do after a small amount of
searching which wasn't too painful:

	The image one gets from using the Raspberry Pi imager is
fine with a gotcha that you had better pay attention to.

	Since the hope is to be useful all over the Earth, the
image one gets only comes with about 3 locales setup, none of
which are en_US.UTF-8. The locales I had were C, C.utf8 and POSIX.

	Oddly, the keyboard is set to the US-style keyboard but
you have to generate your country's locale in most cases.

	I remember that the time zone came set to Europe/London
so I changed it to my time zone in the United States but I forgot
to check the locale.  Fortunately, the utility that generates
locales for anywhere on Earth comes with all the rule sets for
most places so once you know what to do, it's not difficult.

	After generating LANG=en_US.UTF-8, I used the utility
which lets you change your locale.  You must reboot after that.
I did and low and behold, root now showed correct values of en_US.UTF-8
when running locale.

	I rebooted and logged in as me and darn if it still
didn't show the old C settings.  I started looking at
.bash_profile and .bashrc and found that I had set the $LANG
variable to C a long time ago and then copied .bash_profile on to
this present Raspberry Pi.

	After fixing that issue, the system booted up and all the
weirdness is simply gone.  I can run screen or not and I re-read
some email messages that had junk in them and the output is now
perfect.

	I had even had trouble running the lynx as in lynx, the
cat browser with my screen virtually useless at times.  It now
looks like it should so the locale misconfiguration caused a
world of trouble that looked like lots of other problems that
weren't what was really wrong.

	I apologize for the length of this post but if somebody
else finds it useful, I feel less guilty.

	Thanks for the information and suggestions.  It sure is
nice when stuff works.

Martin

