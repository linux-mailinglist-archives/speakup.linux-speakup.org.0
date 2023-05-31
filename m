Return-Path: <speakup+bounces-951-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1C65B718ED0
	for <lists+speakup@lfdr.de>; Thu,  1 Jun 2023 00:52:24 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=tPWbOXOp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 515FA3824B4; Wed, 31 May 2023 18:52:23 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 30CE938234C
	for <lists+speakup@lfdr.de>; Wed, 31 May 2023 18:52:23 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0DD3138246F; Wed, 31 May 2023 18:52:14 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 68A3038234C
	for <speakup@linux-speakup.org>; Wed, 31 May 2023 18:52:13 -0400 (EDT)
Received: from [IPV6:2a01:cb09:b069:2502:4e22:e17a:54a5:6293] (pop.92-184-106-69.mobile.abo.orange.fr [92.184.106.69])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4A3CEE707C
	for <speakup@linux-speakup.org>; Wed, 31 May 2023 23:49:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1685569762; bh=KEzSzRMbcXWzwa30AS0iXM97vsqXVZ4q8eIR+rwlNDQ=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=tPWbOXOpkOY7gdCnli+aIWFeXSVI9NTBtZx32iprdoe2oTjXDJ6g1syhBburh7hPB
	 QhRXyv7pmYDov6v1zfRu7lANVyecWIyTuJSZEJUzz4aJ55ru/9NhcSkiqL9G8uv4cD
	 sLqU1ri+K4qyjF7lz3o/8s+HrE/DDcjvRAAAgmD8t88457TFPI+5GGt9nFb+1E93Z5
	 RG8kMSrhi0/Jgsa49u+w74VsH8o87mBOhK7i0JqvmJhDCjDymqYYmb8CLnZCd7kRo9
	 LNWxC3bmAPilYvd/M38tbrmSyHedI+9H9GnTKfyy7AOtMphOrM3fKcgCEva6PCbVeG
	 Rb74w0FGYyp+A==
Message-ID: <0026a5cf-ea0b-9b14-c82f-2255b807ed8a@slint.fr>
Date: Thu, 1 Jun 2023 00:52:03 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Would the world end if Linux Sound just worked?
To: speakup@linux-speakup.org
References: <254773239.19.1685571751784@localhost>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <254773239.19.1685571751784@localhost>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Yes we would certainly try to help you on the Slint mailing list, however as you
are running Debian you could probably get more adapted help on the Debian
mailing list, as Debian has specific settings.

Anyway I confirm that in Slint (and I assume that this should also be the case
in Debian) even if a screen reader is started as root (which is mandatory for
espeakup at least), regular users can use it as well.

For your information Slint does not use pipewire so far for speech but alsa or
pulseaudio, but I do not think this matters in this case.

Cheers,

Didier

Le 01/06/2023 à 00:22, Michael Keithley a écrit :
> I'm using a distribution called Slint in console mode. I'm not having the sound issues you're talking about. I still get confused with permission and group issues, so I won't speculate on that.
> 
> But you might try the Slint mailing list. Subscribe using:
> slint-request@freelists.org
> and put
> subscribe
> into the subject line.
> 
> People don't seem to mind talking about accessibility issues in other distributions, and I'm betting you'll find some help there. Good luck!
> 
> ----- Original Message -----
> From: Martin McCormick <martin.m@suddenlink.net>
> Date: 05/31/2023 13:05
> To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>;Martin McCormick <martin.m@suddenlink.net>
> Subject: Would the world end if Linux Sound just worked?
> 
> I am writing this with a bit of a smile but not much of one.  I
> have an orca AMD64 system running Bullseye and it's almost
> perfect except for audio which seems to be a right of passage.
> 	Right this moment, I am getting audio via a
> HDMI-to-analog converter and it works fine but there is this
> perfectly good built-in sound card on the mother board which I
> know functions because the HP Rizen system had Windows10 on the
> SSD hard drive and that audio was just fine.
> 	Here's the issue and it looks like a number of people
> have it if you do a duckduckgo search and these people are not
> trying to get a screen reader to work.  They are just trying to
> make sound work on an otherwise normal setup.
> 	In Linux, one should be a member of the audio group so,
> if it's your system, you need to use pw to add yourself to the
> audio group.
> 	That used to be good enough and your card 0 according to
> aplay -list would work as it should and amixer printed out all
> the "Simple Mixer Control's" that you could use for your
> particular sound system.
> 	This system is a bit over a year old and has 16 GB of RAM
> so it's not a slouch system but it has a case of the problem I am
> describing.
> 	In one sentence, Audio doesn't work on that system unless
> you are logged in as root.
> 	That's not right since the unix philosophy is to do as
> little stuff as root as you have to avoid making big mistakes
> like cd /;rm -r *
> OOPS!
> 	Anyway, if you su to root or do sudo amixer, card 0 is
> right there and all the controls report sensible value settings.
> Do amixer as you and amixer feels compelled to makeup settings
> based on nothing present.  Your adjustable controls all have
> 65536 steps and they don't do anything.
> 	The research I did shows a different fiddly solution for
> everybody who posted and many did get non-root access to their
> sound card but I think nobody has the real answer because so many
> different people had so many solutions that worked for them but
> not others who tried the same things.
> 	Here's what I have noticed so far.  I have some raspberry
> Pi's, 1 23-year old I86 Dell running stretch, I think and one
> 19-year-old I86 system running buster and if you do ls -l
> /dev/snd on any of those systems including the new HP running
> bullseye, they all have exactly the same ALSA ownership:group
> listing which is root:audio so the problem's not there.
> 	The older ones work right and bullseye doesn't yet.
> 	As for the fiddly solutions, some people had timidity
> running which is a midi program.  They weren't using it so, when
> they removed it, they got their proper functionality with user
> level access to audio by audio group members.
> 	On my system, timidity is not even installed and never
> was so what now, Coach?
> 	The othere fiddly solutions were even worse, involving
> permission changes or other things that might end up causing more
> trouble in the long run.
> 	A long time ago, any user of the system could call aplay
> or whatever the audio player was at the time and pranksters would
> telnet in from anywhere and tell the sound application to play
> whatever sound or music they thought would bother the heck out of
> whoever was physically near the system such as people in a college computer
> lab.
> 	On my system, the first sound card supports speakup plus
> mplayer and sox applications that use aplay so everything would
> have to be root to work.
> 	Are there any acceptable solutions to get back user-level
> access to the sound card?
> 	Sorry for the length of this post, but what gives, here?
> Martin
> 

