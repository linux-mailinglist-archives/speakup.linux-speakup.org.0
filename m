Return-Path: <speakup+bounces-360-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 70A564AA931
	for <lists+speakup@lfdr.de>; Sat,  5 Feb 2022 14:41:32 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DED92381407; Sat,  5 Feb 2022 08:41:31 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 518DD38258E
	for <lists+speakup@lfdr.de>; Sat,  5 Feb 2022 08:41:29 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2546E380BC0; Sat,  5 Feb 2022 08:41:28 -0500 (EST)
Received: from omta02.suddenlink.net (omta02.suddenlink.net [208.180.40.72])
	by befuddled.reisers.ca (Postfix) with ESMTP id E4AB5380994
	for <speakup@linux-speakup.org>; Sat,  5 Feb 2022 08:41:27 -0500 (EST)
Received: from wb5agz.lan ([47.217.109.16]) by dalofep02.suddenlink.net
          (InterMail vM.8.04.03.22.02 201-2389-100-169-20190213) with ESMTP
          id <20220205134126.HSQJ11010.dalofep02.suddenlink.net@wb5agz.lan>
          for <speakup@linux-speakup.org>; Sat, 5 Feb 2022 07:41:26 -0600
Received: from martin by wb5agz.lan with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>)
	id 1nGLJe-000621-EQ
	for speakup@linux-speakup.org; Sat, 05 Feb 2022 07:41:26 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: Raspberry Pi Upgrade from Stretch to Buster killed speakup.
In-reply-to: <a4b51ede-103d-d465-b637-d8e2dff5cdb@reisers.ca>
References: <E1nFhuz-0001NG-AS@wb5agz.lan> <Yf3Dui+P69Jg19kQ@gregn.net> <5624673a-91d-e5ab-d838-6662a481ac3c@reisers.ca> <Pine.LNX.4.64.2202042219450.3620070@server2.shellworld.net> <a4b51ede-103d-d465-b637-d8e2dff5cdb@reisers.ca>
Comments: In-reply-to Kirk Reiser <kirk@reisers.ca>
   message dated "Fri, 04 Feb 2022 22:24:31 -0500."
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
Content-ID: <23187.1644068486.1@localhost>
Date: Sat, 05 Feb 2022 07:41:26 -0600
Message-Id: <E1nGLJe-000621-EQ@wb5agz.lan>
X-Authentication-Info: Submitted using SMTP AUTH PLAIN at dalofep02.suddenlink.net from [47.217.109.16] using ID martin.m@suddenlink.net at Sat, 5 Feb 2022 07:41:26 -0600
X-CM-Analysis: v=2.4 cv=T83v89GQ c=1 sm=1 tr=0 ts=61fe7e86 cx=a_idp_d a=vgFQBM89cIsqvvZDmBSopQ==:117 a=vgFQBM89cIsqvvZDmBSopQ==:17 a=kj9zAlcOel0A:10 a=oGFeUVbbRNcA:10 a=wC5lZz0xddkA:10 a=rhghyxR7AAAA:8 a=xNf9USuDAAAA:8 a=VynWIf-lsvCNnWVx7FwA:9 a=CjuIK1q_8ugA:10 a=3POYzjO64X90oOl-TX4z:22 a=SEwjQc04WA-l_NiBhQ7s:22
X-CM-Envelope: MS4xfKLEOB2YiO64LO2oFb+6Gd8aGgdGffPn9Zlo6oMbqoj4MoB1fVaAOBdicskQ86qjzmuJ0FTd/lJ3y50hudbkgHpxh0oU4E7QTHO/GP+rEQYRkk71IRrk OD6iw5gSkZ+Rackeo10+QTmQopLItRBnc6OmUvCnoMdaUCnseHB7MrJ8i+nKEGw3+c3xtpqpH3wX3QwlorTav4azICaVWhaLiis=
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

	One of them is a Model B or maybe B+ and has bluetooth and WiFi built
in to the mother board and the other is extremely similar except
the only built-in network interface is the RJ45 port.  That one I
got in 2016 or so.

	The B+ is also used to sniff our WiFi network so I have
tshark on both Pi's.

	When speakup was working in Debian Stretch, it was kind
of rough but basically worked with a little patience.

	Both essentially run SSD cards that are copies of each
other except for stuff I added after the basic system got up and
running.  Except for speakup, they both work fine.  One is set to
British time so I can record programs off of the BBC if desired
plus there is a cron job that uses a usb-to-serial converter to set the
real-time clock on a short wave radio to UTC AKA GMT.

	In reality, all of our modern computers keep UTC and use
rule sets to calculate what local time should be.  

	As for sounding like Louis Armstrong, speakup is more
like intermittent larenjitus  Listening to it makes me want to
put my covid mask on.

	I also suspect that there may be an easier way these days
to install speakup but searches for how-to's are bringing up
articles from 2012 which are Dead-Sea scrolls in today's world.

	Thanks for the responses as I have posted messages to the
RVI group also and the silence is deafening.

Martin McCormick     WB5AGZ

Kirk Reiser <kirk@reisers.ca> writes:
> Hehehe It should sound so nice!
> 
> On Fri, 4 Feb 2022, Karen Lewellen wrote:
> 
> 
>     Wait, you have a computer that sounds like louis Armstrong?
>     ahem, sorry could not resist that description.
>     Karen
> 
> 
> 
>     On Fri, 4 Feb 2022, Kirk Reiser wrote:
> 
> 
>         I can't really answer the question directly. I will say I am 
> running a
>         couple of raspbery pi 4bs with debian sid with speakup but I had 
> to
>         compile espeak, espeak-ng and espeakup from source because the 
> distro
>         built apps are fucked. The voice on the default is very granular 
> or
>         gravelly but the old espeak works fine if compiled from source. 
> Now
>         that's using the 32-bit OS. I have the 64-bit distro but haven't
>         installed it yet.
> 
> 
>         On Fri, 4 Feb 2022, Gregory Nowak wrote:
> 
> 
>              On Thu, Feb 03, 2022 at 01:37:21PM -0600, Martin McCormick 
> wrote:
>             >  I have two Raspberry Pi's that I upgraded from Debian 9 
> (stretch)
>             >  to 10 which is Buster.  Both seem to have survived the 
> upgrade
>             >  except for speakup which is now mute.
> 
>              You don't mention the model of the rpi you have. Do you have 
> audio in
>              general? if not, this might help you, specifically the sound 
> section:
> 
>              <https://wiki.debian.org/RaspberryPi3>
> 
>              I don't have speakup setup right now on either of my rpi 
> units, so
>              can't test this for you.
> 
>             >       It's been 2 or 3 years since I installed speakup on a
>             >  Raspberry Pi and I seem to remember a certain download of 
> speakup
>             >  that works especially well but I don't remember exactly 
> how I got
>             >  it which is why I am asking the list.
> 
>              The only thing that comes to mind is a tutorial written way 
> back by
>              Mike Ray which describes on how to get speech from the rpi 
> sound
>              hardware in both the text console and the GUI. My 
> understanding is
>              that this isn't an issue anymore, but I could be wrong. I 
> did a quick
>              search to see if I could find that, but had no luck.
> 
>             > >     When I was running stretch on these Pi's, I got pretty
>             >  much the same performance one gets from a full-sized 
> desktop
>             >  system so I want to not lose that capability now.  Thanks.
> 
>              Again, you don't mention the model of rpi you're using. 
> However, I'm
>              curious what you do for web browsing on the rpi? I wanted to 
> find out
>              when I first got my rpi3b unit a few years ago now if it 
> could replace
>              my laptop. I found that it mostly could, but that firefox 
> was laggy
>              enough and the software speech unresponsive enough when 
> loading a
>              particularly resource heavy page that serious web browsing 
> couldn't be
>              done. The rpi4 units with 8G of ram could probably handle it 
> now
>              though. I also recall Chris Brannon mentioned using an rpi 
> on this
>              list as a thin client. However, what you said above seems to 
> imply use
>              as a stand alone unit.
> 
>              Greg
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 

