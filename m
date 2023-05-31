Return-Path: <speakup+bounces-950-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 76E1D718E60
	for <lists+speakup@lfdr.de>; Thu,  1 Jun 2023 00:24:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=comcast.net header.i=@comcast.net header.a=rsa-sha256 header.s=20190202a header.b=IjwhlokY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 61D03382483; Wed, 31 May 2023 18:24:41 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3E8CD38241E
	for <lists+speakup@lfdr.de>; Wed, 31 May 2023 18:24:41 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1325338241E; Wed, 31 May 2023 18:24:32 -0400 (EDT)
Received: from resdmta-h1p-028482.sys.comcast.net (resdmta-h1p-028482.sys.comcast.net [96.102.200.12])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7CAD03823A9
	for <speakup@linux-speakup.org>; Wed, 31 May 2023 18:24:31 -0400 (EDT)
Received: from resomta-h1p-027910.sys.comcast.net ([96.102.179.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by resdmta-h1p-028482.sys.comcast.net with ESMTP
	id 4LrbqNTpTj6eM4UD5qx0VC; Wed, 31 May 2023 22:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1685571747;
	bh=utjTNsj7h/AwYP0hsndUpa4XzwD8ncg0Y7NL1IZrxL0=;
	h=Received:Received:Date:From:To:Message-ID:Subject:MIME-Version:
	 Content-Type:Xfinity-Spam-Result;
	b=IjwhlokYQohv7FbCJ/EYrim3SXJwk0g++wA3VJMJz4tsL9I7VMTz+P3lKRFnMHy82
	 x1dUN+kecQYS8g0cum7TFO0wQtM62AdB/4r1EUGiKvp1A1gCg51ZA/cdOOXCuONgMw
	 l1AUSJURzcUebVJLK3fN5+D0SW+gXLdocTrQYFOYhXpCH0dEEOZTtcJ4XC0RRhfIif
	 JXSfyjCYggFExSAQf+6OuIecYvOSs5xN1MOXxBhdk53mTrMyTPnaaSdperqaysshu0
	 C0KIXr/MdYkiToU/oIOryaqR/My39JtLyxmrsxCKOxXg6/DXiWWg0bc0GRVgj/Ch33
	 M6CP5+yRTXO2w==
Received: from localhost ([IPv6:2601:647:4b00:a420:f826:8455:9f83:164f])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 256/256 bits)
	(Client did not present a certificate)
	by resomta-h1p-027910.sys.comcast.net with ESMTPSA
	id 4UD1qVVxtIizU4UD3q8RST; Wed, 31 May 2023 22:22:26 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
Date: Wed, 31 May 2023 15:22:33 -0700 (PDT)
From: Michael Keithley <mlkeithley@comcast.net>
To: martin.m@suddenlink.net, speakup@linux-speakup.org
Message-ID: <254773239.19.1685571751784@localhost>
Subject: RE: Would the world end if Linux Sound just worked?
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I'm using a distribution called Slint in console mode. I'm not having the sound issues you're talking about. I still get confused with permission and group issues, so I won't speculate on that.

But you might try the Slint mailing list. Subscribe using:
slint-request@freelists.org
and put
subscribe
into the subject line.

People don't seem to mind talking about accessibility issues in other distributions, and I'm betting you'll find some help there. Good luck!

----- Original Message -----
From: Martin McCormick <martin.m@suddenlink.net>
Date: 05/31/2023 13:05
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>;Martin McCormick <martin.m@suddenlink.net>
Subject: Would the world end if Linux Sound just worked?

I am writing this with a bit of a smile but not much of one.  I
have an orca AMD64 system running Bullseye and it's almost
perfect except for audio which seems to be a right of passage.
	Right this moment, I am getting audio via a
HDMI-to-analog converter and it works fine but there is this
perfectly good built-in sound card on the mother board which I
know functions because the HP Rizen system had Windows10 on the
SSD hard drive and that audio was just fine.
	Here's the issue and it looks like a number of people
have it if you do a duckduckgo search and these people are not
trying to get a screen reader to work.  They are just trying to
make sound work on an otherwise normal setup.
	In Linux, one should be a member of the audio group so,
if it's your system, you need to use pw to add yourself to the
audio group.
	That used to be good enough and your card 0 according to
aplay -list would work as it should and amixer printed out all
the "Simple Mixer Control's" that you could use for your
particular sound system.
	This system is a bit over a year old and has 16 GB of RAM
so it's not a slouch system but it has a case of the problem I am
describing.
	In one sentence, Audio doesn't work on that system unless
you are logged in as root.
	That's not right since the unix philosophy is to do as
little stuff as root as you have to avoid making big mistakes
like cd /;rm -r *
OOPS!
	Anyway, if you su to root or do sudo amixer, card 0 is
right there and all the controls report sensible value settings.
Do amixer as you and amixer feels compelled to makeup settings
based on nothing present.  Your adjustable controls all have
65536 steps and they don't do anything.
	The research I did shows a different fiddly solution for
everybody who posted and many did get non-root access to their
sound card but I think nobody has the real answer because so many
different people had so many solutions that worked for them but
not others who tried the same things.
	Here's what I have noticed so far.  I have some raspberry
Pi's, 1 23-year old I86 Dell running stretch, I think and one
19-year-old I86 system running buster and if you do ls -l
/dev/snd on any of those systems including the new HP running
bullseye, they all have exactly the same ALSA ownership:group
listing which is root:audio so the problem's not there.
	The older ones work right and bullseye doesn't yet.
	As for the fiddly solutions, some people had timidity
running which is a midi program.  They weren't using it so, when
they removed it, they got their proper functionality with user
level access to audio by audio group members.
	On my system, timidity is not even installed and never
was so what now, Coach?
	The othere fiddly solutions were even worse, involving
permission changes or other things that might end up causing more
trouble in the long run.
	A long time ago, any user of the system could call aplay
or whatever the audio player was at the time and pranksters would
telnet in from anywhere and tell the sound application to play
whatever sound or music they thought would bother the heck out of
whoever was physically near the system such as people in a college computer
lab.
	On my system, the first sound card supports speakup plus
mplayer and sox applications that use aplay so everything would
have to be root to work.
	Are there any acceptable solutions to get back user-level
access to the sound card?
	Sorry for the length of this post, but what gives, here?
Martin

