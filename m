Return-Path: <speakup+bounces-1417-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ABDA0B9D74B
	for <lists+speakup@lfdr.de>; Thu, 25 Sep 2025 07:31:09 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=ZtnzGHyv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CED8A381629; Thu, 25 Sep 2025 01:31:05 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AA716381609
	for <lists+speakup@lfdr.de>; Thu, 25 Sep 2025 01:31:05 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9CEE9381607; Thu, 25 Sep 2025 01:30:58 -0400 (EDT)
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5674D3815E3
	for <speakup@linux-speakup.org>; Thu, 25 Sep 2025 01:30:56 -0400 (EDT)
Date: Thu, 25 Sep 2025 15:29:44 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1758778235;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ph5jSS27VRihAgo2gKRxyeSmk64GJp3sJuxj3H29LV8=;
	b=ZtnzGHyvAy85PxWMHsSy5DuMHEsfYe73Ff0MJ5UJi9tyyu0wke0Ob6FSk7s1Oygr3cn3Q4
	jdRfBwVKlyWPZAUI9zPMWSJthHwtR+cK/V585RD/d/eooqS5ZatmKkukz4KogNspI/OZ7b
	hnsGdGoKOAW2Clvsnd8tmkTUnif+iXiEk/yhYvcWJyfFwpBXWOwGfVIpadsUcVkbCjHhF0
	Wh93KqCSmvOkptOhRH4CZdFczaQPT8Sgee0oP6FM5ke9xSVVw4KsUTTZn1bCs/OSAL5g6r
	dDTtT9RVvgJxyqPZ7EVcE3WxXP4d3bsbdWdTzYmZSz5D2Z/8s3du5I7otzrjxA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: K0LNY ?? <glenn@ervin.email>
Cc: covici@ccs.covici.com, "John G. Heim" <jheim@math.wisc.edu>,
	Gregory Nowak <greg@gregn.net>,
	Karen Lewellen <klewellen@shellworld.net>,
	Chime Hart <chime@hubert-humphrey.com>,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aNTTSE8t3qwR4e96@titan>
References: <aMTOpzhGX72PC_2S@gregn.net>
 <aMVgIfSRDN3Uewj3@titan>
 <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
 <aNIv2l1tKiR26V-R@titan>
 <fcf89a57-b683-4590-8d36-3a1a7b613bd1@math.wisc.edu>
 <m3h5wsu4py.wl-covici@ccs.covici.com>
 <01897751-ddc5-4bfe-be6f-0b751079597d@math.wisc.edu>
 <025601dc2d6e$7e89ba00$01ffa8c0@nucwin10>
 <864b13bf-03ab-4e3a-af1a-43ab5e4f87cc@math.wisc.edu>
 <031801dc2d98$2e2c8220$01ffa8c0@nucwin10>
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
In-Reply-To: <031801dc2d98$2e2c8220$01ffa8c0@nucwin10>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Over USB would work.

On Wed, Sep 24, 2025 at 04:14:12PM -0500, K0LNY ?? wrote:
> I don't know if it will have to connect to the GPIO pins that are for 
> serial, or if it can go in through one of its USB ports.
> 
> ----- Original Message ----- 
> From: "John G. Heim" <jheim@math.wisc.edu>
> To: "K0LNY ??" <glenn@ervin.email>; <covici@ccs.covici.com>
> Cc: "Jookia" <contact@jookia.org>; "Gregory Nowak" <greg@gregn.net>; "Karen 
> Lewellen" <klewellen@shellworld.net>; "Chime Hart" 
> <chime@hubert-humphrey.com>; "Cleverson Casarin Uliana" 
> <clul+speakup@posteo.com.br>; <speakup@linux-speakup.org>
> Sent: Wednesday, September 24, 2025 4:06 PM
> Subject: Re: Question about blind CLI use (was Re: "your browser is not 
> supported anymore" ...)
> 
> 
> Well, how are you connecting the RPI and the Linux box?
> 
> Another possibility is to configure your Linux box to send the boot
> messages to the serial port and use something like Kermit on another
> machine to access them. This takes a null-modem cable. One advantage of
> this is that GRUB can be configured to do this too. You get both GRUB
> and Linux kernel boot messages.
> 
> 
> 
> On 9/24/25 11:15 AM, K0LNY ?? wrote:
> > I'm hoping someone can make a hardware synth out of a raspberry PI.
> > So the RPI could possibly double as a little Linux box in itself, and 
> > serve
> > as a hardware synth to another computer.
> > Glenn
> > ----- Original Message -----
> > From: "John G. Heim" <jheim@math.wisc.edu>
> > To: <covici@ccs.covici.com>
> > Cc: "Jookia" <contact@jookia.org>; "Gregory Nowak" <greg@gregn.net>; 
> > "Karen
> > Lewellen" <klewellen@shellworld.net>; "Chime Hart"
> > <chime@hubert-humphrey.com>; "Cleverson Casarin Uliana"
> > <clul+speakup@posteo.com.br>; <speakup@linux-speakup.org>
> > Sent: Wednesday, September 24, 2025 11:01 AM
> > Subject: Re: Question about blind CLI use (was Re: "your browser is not
> > supported anymore" ...)
> >
> >
> > I personally own a DoubleTalk that is probably about 25 years old. My
> > employer gave me a TripleTalk that is probably about 20 years old by now.
> >
> > I don't believe there are any hardware synths being manufactured
> > anywhere in the world any more. So that's a problem. The best
> > alternative for getting access to boot messages might be a braille
> > display. I have the braille display from an old PacMate which is
> > probably 30 years old. It's just the braille display, the PacMate itself
> > gave up the ghost many years ago.
> >
> > On a Debian based distro, getting speech during boot via a hardware
> > synth is as easy as putting the speakup kernel module into the file
> > /etc/initramfs-tools/modules. You then have to regenerate the initrd or
> > you can wait until the next time the kernel is updated and it will do it
> > for you.
> >
> > I do not know how to enable software speech during boot but I'm pretty
> > sure it's possible. In my grml4speakup script, I enable software speech
> > during boot by putting a script into a folder GRML designates for that
> > purpose. The developers of this distro, GRML, specified a folder you
> > can put scripts in if you want them executed during boot. So I wrote a
> > script that puts a script to start speech in that folder. But of course
> > it only works for GRML.
> >
> > More info on my script can be found here:
> >
> > https://people.math.wisc.edu/~jheim/GRML/
> >
> >
> >
> > On 9/23/25 6:30 PM, John Covici wrote:
> >> What synth do you use -- I have been using speakouts, but they are
> >> dying, which one are you using -- I also want to keep using such a
> >> synth particularly during boot.
> >>
> >> On Tue, 23 Sep 2025 13:04:38 -0400,
> >> John G. Heim wrote:
> >>> BTW, the correct spelling for that early screen reader for Linux
> >>> is Gnopernicus. Googling shows me that Gnopernicus was the
> >>> default screen reader for Gnome from 2001 to 2006 when it was
> >>> replaced by Orca.
> >>>
> >>> The screen reader for Apple I was trying to think of was
> >>> OutSpoken by Berkley Systems. Wikipedia says development of
> >>> OutSpoken was dropped after Apple released VoiceOver in
> >>> 2005. While that is probably technically true, as a practical
> >>> matter, OutSpoken was no longer a practical option for some time
> >>> before VoiceOver came out. The libraries at the University Of
> >>> Wisconsin stopped buying Macs and got rid of the ones they had
> >>> because there was no screen reader.
> >>>
> >>> Speakup was released in 1999. So the era I'm talking about is
> >>> from 1999 through 2005. You could use Linux at the command line
> >>> or in the GUI for free. Windows had a good screen reader but it
> >>> cost $1000. There was no realistic alternative for the Mac.
> >>>
> >>> It seems to me that Linux has always been a step ahead when it
> >>> comes to accessibility. Well, at least since 1999. Before 1999, I
> >>> used Jaws For Windows and administered my Linux machines remotely
> >>> with tools like putty.
> >>>
> >>>
> >>>
> >>> On 9/23/25 12:27 AM, Jookia wrote:
> >>>> Interesting, thanks for sharing. I never knew about Gnopernicus.
> >>>>
> >>>> On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. Heim wrote:
> >>>>> One of the biggest impediments for a blind person using Windows is the
> >>>>> cost.
> >>>>> It's less true today than it used to be. A Jaws license was over $1000
> >>>>> at
> >>>>> one time.
> >>>>>
> >>>>> For many years, it wasn't even possible for a blind person to install
> >>>>> Windows. Well, I used to do it via Linux, no kidding. I booted into
> >>>>> Linux
> >>>>> and ran the Windows installer in an emulator with an answer file. That
> >>>>> worked really well until it didn't. At some point, Microsoft changed
> >>>>> the
> >>>>> installer so it had to be run in their pre boot environment 
> >>>>> (whatever).
> >>>>>
> >>>>> Even after the install, I had to install a dumbed down version of Jaws
> >>>>> that
> >>>>> worked for only 40 minutes.
> >>>>>
> >>>>> Also, there was a period when there was no screen reader for Ma Cos.
> >>>>> There
> >>>>> was some 3rd party screen reader for the Mac. The developer dropped
> >>>>> support
> >>>>> for it and some time later, Apple released VoiceOver. I was lucky, at
> >>>>> the
> >>>>> time my job did not require me to use a Mac. But the libraries at the
> >>>>> university where I worked had to get rid of their Macs because it is
> >>>>> against
> >>>>> the law to have computers in a student lab that are not accessible to
> >>>>> the
> >>>>> blind. BTW, that's why Apple so suddenly started caring about a screen
> >>>>> reader.
> >>>>>
> >>>>> IIRC, at the time of the above events, I was using both Speakup and a
> >>>>> GUI
> >>>>> screen reader called Nupernicus. I remember walking out of a meeting
> >>>>> with a
> >>>>> librarian to talk about screen reader options for his lab and thinking
> >>>>> how
> >>>>> lucky I was to be a Linux user. I believe that particular library
> >>>>> replaced
> >>>>> most of their Macs with Windows machines and paid like $1000 each to
> >>>>> Freedom Scientific for Jaws licenses. They put in one Linux machine
> >>>>> just to
> >>>>> see how it would go.
> >>>>>
> >>>>> The computers in the student labs in the Math department where I 
> >>>>> worked
> >>>>> were
> >>>>> alwys Linux.
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>> On 9/13/25 7:14 AM, Jookia wrote:
> >>>>>> Hi Greg,
> >>>>>>
> >>>>>> Yeah this is unfortunately true. I'm glad FOSS is still appreciated 
> >>>>>> by
> >>>>>> people.
> >>>>>>
> >>>>>> Jookia.
> >>>>>>
> >>>>>> On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
> >>>>>>> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
> >>>>>>>> I know this is the speakup list and I'm talking to an extremely
> >>>>>>>> niche
> >>>>>>>> community here, but I'm genuinely interested to know: Why do you 
> >>>>>>>> use
> >>>>>>>> computers this way instead of like Windows or macOS? They can do
> >>>>>>>> much
> >>>>>>>> more useful tasks.
> >>>>>>> They're both proprietary operating systems. Windows essentially
> >>>>>>> hijacks the PC these days, and dictates to the user how they should
> >>>>>>> use it (E.G. requiring the user to register an account with the
> >>>>>>> developer to set it up, dictating when and what updates the user
> >>>>>>> wishes to install, and so on). MacOS is tied to hardware from one
> >>>>>>> company, and only works on
> >>>>>>> that company's hardware by design.
> >>>>>>>
> >>>>>>> Greg
> >>>>>>>
> >>>>>>>
> >>>>>>> -- 
> >>>>>>> web site:
> >>>>>>> https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
> >>>>>>> gpg public key:
> >>>>>>> https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
> >>>>>>>
> >>>>>>> --
> >>>>>>> Free domains:
> >>>>>>> https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$
> >>>>>>> or mail dns-manager@EU.org
> >>>>>>>
> 
> 

