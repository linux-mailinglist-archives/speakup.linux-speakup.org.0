Return-Path: <speakup+bounces-1407-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3A8D9B972FA
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 20:25:14 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=AMJX9jUv;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EA22F3815E8; Tue, 23 Sep 2025 14:25:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C2E4D3815AB
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 14:25:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B423B3815AD; Tue, 23 Sep 2025 14:25:03 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3FF653815A7
	for <speakup@linux-speakup.org>; Tue, 23 Sep 2025 14:25:00 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4cWT0p574Jz4L1H;
	Tue, 23 Sep 2025 14:24:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1758651898; bh=X49T/xyTSgiTFYC1Zx7K84evuCHwUmbjm6gwVk9dJ8c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AMJX9jUvATZ47Dy3EtzvWGgaClix05ocKS1ESppdhzTUfED4poN7owM1FV6twd1H9
	 JdwCyGrgec2rcp+rn6iY4lpIJBKmmXALXpJggTspnpk+MfPBztoY5zmXmDZEnbTMPL
	 X+TyOTaHvQFVQN+tzWJKt5qC1ubLxmw8EkuVmiDc=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4cWT0p4M5gz1QXM; Tue, 23 Sep 2025 14:24:58 -0400 (EDT)
Date: Tue, 23 Sep 2025 14:24:58 -0400
From: Rudy Vener <salt@panix.com>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: Jookia <contact@jookia.org>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aNLl-mnV9PWPE3AU@panix.com>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <f8b9b65e-3ad3-4af2-968a-2e57cf6c8a01@math.wisc.edu>
 <aNIvVtPL-qzvuGFM@titan>
 <7a4fb9af-6b1e-4ff2-a996-ae2780aa8b6d@math.wisc.edu>
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
In-Reply-To: <7a4fb9af-6b1e-4ff2-a996-ae2780aa8b6d@math.wisc.edu>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I find the cli interface much easier to use. I use the mutt mail client and procmail to pre-sort incoming
mail into appropriate inbound folders.
  Browsers are another story. Lynx and w3m work fine for text based sites, but
when I have to contend with javascript I'll fire up Orca and a gui browser.
  Since I came to gui late in life, I am far from comfortable with it and not yet an intuitive gui user.
-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
alarmming Limerick - AI Hallucinations Are Here To Stay https://limerickdude.substack.com/p/ai-hallucinations-are-here-to-stay
Website: http://www.rudyvener.com



On Tue, Sep 23, 2025 at 12:23:15PM -0500, John G. Heim wrote:
> The only time the character interface is more accessible than the graphical
> is during boot. IMO, it is inefficient to use a character interface to do
> things like read mail and browse the web. I don't do that.
> 
> But being a systems admin, I find access to the boot process to be
> indispensable.?? Speakup modules can be compiled into the kernel or added to
> the initrd to get speech as soon as the kernel is loaded. Speakup works with
> a variety of hardware speech synthesizers and does not even require a sound
> card to work. Speakup is an absolutely essential tool for a blind systems
> admin like myself.
> 
> 
> 
> 
> On 9/23/25 12:25 AM, Jookia wrote:
> > Hi John,
> > 
> > I subscribed to blinux@freelists.org to see what's going on over there, thanks
> > for the recommendation. I'm well aware of Orca but I've been interested in the
> > specific set of people that use command line Linux blind with Speakup.
> > 
> > How do you find the character interface more accessible? I'd be interested to
> > know how you think of it, do you think of it in terms of lines, cells,
> > characters, something else?
> > 
> > Thanks for sharing your experience!
> > 
> > Jookia.
> > 
> > On Fri, Sep 12, 2025 at 11:25:50AM -0500, John G. Heim wrote:
> > > IMO, you are asking in the wrong place. You should ask these questions on
> > > the ?????? blinux@freelists.org list.
> > > 
> > > On this list, you are going to get a lot of answers from people who are not
> > > typical blind Linux users. There is a very good screen reader called Orca
> > > for the Linux GUI. The vast majority of blind Linux users use Orca, not
> > > Speakup.
> > > 
> > > The main reason I use Linux is that until I retired recently, I managed the
> > > supercomputer cluster for the Math Department at the University Of
> > > Wisconsin. As you may know, every supercomputer in the world runs Linux.
> > > Often, to manage a large group of computers, you have to rely on the
> > > character interface. In fact, because the character interface is so
> > > accessible, for a blind systems administrator, Linux is far friendlier than
> > > Windows or MacOS.?? I was lucky Linux is so dominant in the world of high
> > > performance computing, it kept me employed in a fascinating job for my whole
> > > life. I always said I'd work for nothing if that was possible. Like in Star
> > > Trek, nobody ever talks about getting paid, everything they need just seems
> > > to be supplied. That's how much I loved my job.
> > > 
> > > I liked my job so much I am still sort of doing it. I recently published a
> > > script that allows a blind systems admin to set up a thumb drive so that if
> > > you boot from it, your machine will come up talking in the character
> > > interface. Then you can fix whatever problem the operating system has.
> > > 
> > > 
> > > 
> > > 
> > > 
> > > 
> > > On 9/12/25 12:31 AM, Jookia wrote:
> > > > Hi everyone,
> > > > 
> > > > I don't meant to hijack this thread but I'm a sighted person who's been
> > > > struggling to try and make the world a bit better with accessibility
> > > > stuff. I haven't really done anything useful yet, but I've spent a lot
> > > > of time talking to sighted people who scoff at the idea of people using
> > > > 'old' technology or being left behind because of their workflows.
> > > > 
> > > > I know this is the speakup list and I'm talking to an extremely niche
> > > > community here, but I'm genuinely interested to know: Why do you use
> > > > computers this way instead of like Windows or macOS? They can do much
> > > > more useful tasks.
> > > > 
> > > > I've thought for a while that this is simply because Linux has dropped
> > > > the ball hard with GUI accessibility, but I'm starting to wonder if it's
> > > > really just because GUIs suck for blind people altogether. I know that
> > > > screen readers themselves are kind of a nightmare for me to use with
> > > > having to remember a ton of buttons, but having to tab through a GUI
> > > > just to do things I could type is a headache. Maybe text is just a
> > > > better interface if you're blind? It's certainly more precise and
> > > > quicker. But I'm also aware there are things like hardware limitations
> > > > like systems not supporting hardware synths any more.
> > > > So I'm genuinely curious as to why you work the way you do.
> > > > 
> > > > ---
> > > > 
> > > > As a kind of side note, my current project is making an emulated
> > > > serial to speech synth API for the DOSBox-X emulator. I aim to implement
> > > > just enough of the DECTalk protocol to work with DOS screen readers and
> > > > speakup, then pass that to SAPI/NVDA or speech-dispatcher/espeak. I do
> > > > have pipe dream plans of turning this in to a USB espeak synth that
> > > > could be used to read early boot messages and panics on Linux.
> > > > 
> > > > But more widely I've just been thinking about how to make an application
> > > > like DOSBox-X accessible that relies on a little fake GUI for its
> > > > configuration menu. At first I thought of adding support for AccessKit
> > > > and Orca/NVDA. But that only works on some systems, and it's hard to
> > > > test and convince developers to test. They won't notice when it breaks.
> > > > It also kind of sucks to use as you have to tab through everything.
> > > > 
> > > > So I've kind of been more interested in adding a new interface a bit
> > > > like a command line or menu-based system, with output by TTS or Braille.
> > > > It would live in the application, be usable by sighted people too and be
> > > > easy for developers to test and reason about.
> > > > 
> > > > So if you have any feedback about any of this please tell me.
> > > > Jookia.
> > > > 
> 

