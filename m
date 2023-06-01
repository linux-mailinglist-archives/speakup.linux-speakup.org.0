Return-Path: <speakup+bounces-954-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8C1D2718FFD
	for <lists+speakup@lfdr.de>; Thu,  1 Jun 2023 03:26:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=v+Y7eFWY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DDCC53824B5; Wed, 31 May 2023 21:26:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BC7E338236A
	for <lists+speakup@lfdr.de>; Wed, 31 May 2023 21:26:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A2EF93823A9; Wed, 31 May 2023 21:26:04 -0400 (EDT)
Received: from out-4.mta1.migadu.com (out-4.mta1.migadu.com [95.215.58.4])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B9F8538236A
	for <speakup@linux-speakup.org>; Wed, 31 May 2023 21:26:02 -0400 (EDT)
Date: Thu, 1 Jun 2023 11:21:49 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1685582730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4S7psH4mYLmgt8nmGHTk+J5vq0yzdiE3eZ5P9WIgsgs=;
	b=v+Y7eFWYXPb9sn0cq6lv7YFNoX5b8vVSgKp6JL2KLTYmnxiXuP5lGzgfzuyWVQnTv/AYKu
	RIIPw2XSAbWcHjRNM0Gp1cyEvtx3mPhUhQGyuVmuqEJc9KbHZ4lQd649hcWjBy/xTE+unU
	HNsAXYLi6TUhOIqZx26gAZE7Ahu2iCsjYU4fBqPOmdO3HrX86PDI0ubX91PJeDd/7Gevfa
	Dngqt9i++yBxHLEwOk/2piPTUQsmfaGdDOK7zN4h7OCYYVJkxfOHYaZMGfK8vEgAGGz/mn
	rczxioIHkKLlmOZyqoMRM/Nav4fCt6ayRRdTqj8Yr6g96EQHfiW3G4Z9Zn9phg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Martin McCormick <martin.m@suddenlink.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Would the world end if Linux Sound just worked?
Message-ID: <ZHfyrRc6sc1k_5me@titan>
References: <018f01d99337$13e15880$01ffa8c0@nucwin10>
 <01a201d99346$d40918a0$01ffa8c0@nucwin10>
 <E1q4S4G-0003O3-Hc@wb5agz.lan>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1q4S4G-0003O3-Hc@wb5agz.lan>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Try this:

https://www.jookia.org/wiki/System-wide_speakup#Running_espeakup_as_your_user

On Wed, May 31, 2023 at 03:05:12PM -0500, Martin McCormick wrote:
> I am writing this with a bit of a smile but not much of one.  I
> have an orca AMD64 system running Bullseye and it's almost
> perfect except for audio which seems to be a right of passage.
> 
> 	Right this moment, I am getting audio via a
> HDMI-to-analog converter and it works fine but there is this
> perfectly good built-in sound card on the mother board which I
> know functions because the HP Rizen system had Windows10 on the
> SSD hard drive and that audio was just fine.
> 
> 	Here's the issue and it looks like a number of people
> have it if you do a duckduckgo search and these people are not
> trying to get a screen reader to work.  They are just trying to
> make sound work on an otherwise normal setup.
> 
> 	In Linux, one should be a member of the audio group so,
> if it's your system, you need to use pw to add yourself to the
> audio group.
> 
> 	That used to be good enough and your card 0 according to
> aplay -list would work as it should and amixer printed out all
> the "Simple Mixer Control's" that you could use for your
> particular sound system.
> 
> 	This system is a bit over a year old and has 16 GB of RAM
> so it's not a slouch system but it has a case of the problem I am
> describing.
> 
> 	In one sentence, Audio doesn't work on that system unless
> you are logged in as root.
> 
> 	That's not right since the unix philosophy is to do as
> little stuff as root as you have to avoid making big mistakes
> like cd /;rm -r *
> OOPS!
> 
> 	Anyway, if you su to root or do sudo amixer, card 0 is
> right there and all the controls report sensible value settings.
> Do amixer as you and amixer feels compelled to makeup settings
> based on nothing present.  Your adjustable controls all have
> 65536 steps and they don't do anything.
> 
> 	The research I did shows a different fiddly solution for
> everybody who posted and many did get non-root access to their
> sound card but I think nobody has the real answer because so many
> different people had so many solutions that worked for them but
> not others who tried the same things.
> 
> 	Here's what I have noticed so far.  I have some raspberry
> Pi's, 1 23-year old I86 Dell running stretch, I think and one
> 19-year-old I86 system running buster and if you do ls -l
> /dev/snd on any of those systems including the new HP running
> bullseye, they all have exactly the same ALSA ownership:group
> listing which is root:audio so the problem's not there.
> 
> 	The older ones work right and bullseye doesn't yet.
> 
> 	As for the fiddly solutions, some people had timidity
> running which is a midi program.  They weren't using it so, when
> they removed it, they got their proper functionality with user
> level access to audio by audio group members.
> 
> 	On my system, timidity is not even installed and never
> was so what now, Coach?
> 
> 	The othere fiddly solutions were even worse, involving
> permission changes or other things that might end up causing more
> trouble in the long run.
> 
> 	A long time ago, any user of the system could call aplay
> or whatever the audio player was at the time and pranksters would
> telnet in from anywhere and tell the sound application to play
> whatever sound or music they thought would bother the heck out of
> whoever was physically near the system such as people in a college computer
> lab.
> 
> 	On my system, the first sound card supports speakup plus
> mplayer and sox applications that use aplay so everything would
> have to be root to work.
> 
> 	Are there any acceptable solutions to get back user-level
> access to the sound card?
> 
> 	Sorry for the length of this post, but what gives, here?
> 
> Martin
> 

