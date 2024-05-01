Return-Path: <speakup+bounces-1123-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0A31E8B8F22
	for <lists+speakup@lfdr.de>; Wed,  1 May 2024 19:40:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=WK4Mq7ME;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9AAA7C81C77; Wed, 01 May 2024 13:40:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7CEE8C81C5A
	for <lists+speakup@lfdr.de>; Wed, 01 May 2024 13:40:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2F889C81C5F; Wed, 01 May 2024 13:40:19 -0400 (EDT)
Received: from altprdrgo02.altice.prod.cloud.openwave.ai (altprdrgo02.altice.prod.cloud.openwave.ai [65.20.63.242])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E361DC8104F
	for <speakup@linux-speakup.org>; Wed, 01 May 2024 13:40:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1714585218; 
        bh=T62r+Y/me09qafAAD/T973p3ZK+0JxOORlQW+UXiRYI=;
        h=From:To:Subject:MIME-Version:Content-Type:Date:Message-Id;
        b=WK4Mq7MEAye4pfl6ebY4qXKccPxTXHOolNZqtclI9ef/jgExdr1qij5R/Qv3rhTWn3WkYDicVPebzZh/f6E8/DhjqLWmKbmZOvVEJcpNn06L6nJOgfouEOvxeJWPHhLOB7/HHT0hPyKnp8i06g/fxlD56wl5EQf8Ip1nIGLtW6Ct7XQj68qXdEFYW99C+L9RwOMlnmwEYcdeQEwiw7ajRrQeu7r+Tl4g3OxRYrsyPtwui/7CKGt6XzmEmbr3PSKPrmY8Qa1XCfuajDYCCQABkpVt4mG6gmWl680MtfWihyfCgp2J0E5LeyVY5v6LTWXM13IN0gsstJrDGGs5/01PRQ==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 6616C1B3036BA7B4
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrvdduiedgvdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfektdektdeljedtvefhgfeuleeiveevffduieelieffueejteelledukeekhfeunecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotddv
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo02.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 6616C1B3036BA7B4 for speakup@linux-speakup.org; Wed, 1 May 2024 13:39:10 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1s2Dv6-0005vb-2W
	for speakup@linux-speakup.org;
	Wed, 01 May 2024 12:39:04 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: 8-bit Chaos
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
Content-ID: <22789.1714585144.1@wb5agz.lan>
Date: Wed, 01 May 2024 12:39:04 -0500
Message-Id: <E1s2Dv6-0005vb-2W@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I am using espeakup on a Raspberry Pi running debian bookworm and
couldn't be more pleased, for the most part, with the way it is
working but I wouldn't be posting this message if there wasn't a
problem and here it is to the best of my ability to describe it.

	A long time ago, I wrote some shell and even a perl
script to mask off the most significant bit of data, what we
might also call the eighth bit or bit 7, hex 80.

	I placed it in the output stream of an email reader and
it worked but it also had side effects such as when one piped the
output of a message to a file so I couldn't leave things that
way.

	With espeakup, any character starting at hex 80 or
decimal 128 causes espeakup to utter something that sounds like
"I umlaut ahalf inverted question."

	I ran a perl script that sends hex 80 through hex FF to
standard output and every single character in that range causes
the same "i umlaut ahalf inverted question" response so there is no
reason to send anything but 7-bit characters there.

	Interestingly, when I send a hex 90 out, espeakup stops
talking for several seconds until I've reached well past hex 92
or so and then it starts the same 8-bit "i umlaut ahalf" message. as
before.

	On an older debian system, also running a speakup kernel
and debian 12 or bookworm, this behavior does not happen as often.

	My $LANG variable is set to
en_US.UTF-8.

	When I read email or other text that has 8-bit characters
in it, the message gets garbled with these characters and
strange things happen that I am not sure as to why or even if
they are related to the 8-bit characters.

	Basically, I want to read text that is free of chaos and
random weirdness.  Most of the time it is slightly annoying, but
sometimes there is enough of this stuff to obscure the sense of
what one is reading.

	The Raspberry Pi is being used as a small talking ASCII
terminal that can ssh in to other unix systems and give them
speech when I am logged in so I probably would be okay if I could
keep the 8-bit stuff out of speakup on the Raspberry Pi.

	Finally, here is the character generator test perl script
which has a 2-second delay between characters and which I am
starting a few characters below hex 80.  All the 7-bit ASCII
characters make it to speakup just fine so the only real problem
happens when any 8-bit junk makes it to speakup.  Also, the
silencing that happens at hex 90 does not shut off reception of
characters, only the speaking of them.  When I hit hex 92 or so,
it picks up speaking where it left off.

#!/usr/bin/perl -w
use strict;
#use warnings::unused;

my $char;
for ($char = 125; $char < 256;$char++)
{
$_ = sprintf("%x %c",$char, $char);
print("$_\n");
sleep(2);
}
exit(0);

