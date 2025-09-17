Return-Path: <speakup+bounces-1366-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A2A7BB82313
	for <lists+speakup@lfdr.de>; Thu, 18 Sep 2025 00:51:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=rQ/QHqZE;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F8A938272E; Wed, 17 Sep 2025 18:51:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7D90C38218D
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 18:51:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3A4FE38229A; Wed, 17 Sep 2025 18:51:09 -0400 (EDT)
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com [95.215.58.171])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9F5E638218D
	for <speakup@linux-speakup.org>; Wed, 17 Sep 2025 18:51:06 -0400 (EDT)
Date: Thu, 18 Sep 2025 08:46:37 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1758149460;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=irCvQ0afi0QRoIy8orln8e6fR1HVovLX63sEbv8cIao=;
	b=rQ/QHqZEo90tZcT3ktV9guWYwttb+VjscO6S3pBC9Nf1egbFpbVWCBwUGZus4Whg3yPEkM
	1ZHDpYsiYCaT96U0LWuAy/GcfOISdLNlw/s/s1mZqT0Cl0wmOiOqG93cbetjDpnY1UyYup
	0YJglYEy8W+0zSAPZUKKS7rJXaDMSKt1P6qO8zRzpz+muMxM8H32Xg9+DZmOjyJIGSCiQW
	eY+W2XPC18uSoCvrFwsDo+3o/uXaVeBlVfWmT2hba+fU0CVzwya0fqonTxjgl5fTo1EPPv
	+nNDFN2RvQsYWFxgegBXvCnZSTNmAigheOX8E+AWJHV6qB7JcKw6yQdw+RA+8w==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Rudy Vener <salt@panix.com>, speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMs6TdEMXhkXkkJP@titan>
References: <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com>
 <aMsF4T_1FAbaFEHz@titan>
 <aMsboMhBL4klsYZD@panix.com>
 <Pine.LNX.4.64.2509171823280.3962820@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2509171823280.3962820@users.shellworld.net>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Karen,

I know this email wasn't addressed to me so please ignore it if you're not
interested. No offense intended.

Has there been any work to crack/reverse engineer business vision?

Doesn't the DECTalk USB already have a RS232 PC serial port connector? If it
supports the same DECTalk serial protocol (it probably should) then it should
just be a matter of connecting it to serial and using the screen reader.

If you mean connecting by a USB serial port adapter, that would require some
kind of USB serial to PC serial emulation done in the DOS kernel, or some setup
in a DOS emulator or VM.

Jookia.

On Wed, Sep 17, 2025 at 06:32:16PM -0400, Karen Lewellen wrote:
> Hi Rudy,
> You are confusing vocal eyes with business vision,  the latter has a
> physical  hardware key that fits into the parallel port.  without it, one
> cannot run business vision..which remains my main screen reader of choice.
> Would you like a copy of vocal eyes?
> I have one.
> Granted I imagine it starts with knowing such is possible, but I have never
> encountered issues finding, or having custom built, computers for my DOS
> use.
> Finding knowledgeable Linux folks or machines is another matter though.
> 
> 
>  Personally, I would love to discover if  connecting a dectalk USB via
> serial  port adapter would allow it to use DOS screen readers with dectalk
> drivers.
> For me personally, no driver exists for the reading edge in Linux..so no
> speakup.
> Wonder what is required to code a dectalk driver for a screen reading
> program allowing it to recognize a USB external synthesizer?
> 
> Karen
> 
> 
> 
> On Wed, 17 Sep 2025, Rudy Vener wrote:
> 
> > I used to love my DOS PC running Smart Term terminal emulator
> > and Vocal Eyes as my interface into  my Linux machine at home, Sun workstation at
> > work  or any Unix/Linux machine that had an RS-232 serial port.
> > 
> > Eventually the technical issues and maintenance overhead to operate DOS just became too cumbersome and I
> > migrated to  speakup on my Linux machine.
> > I still have a working Dectalk Express speech synthesizer or two around, but unfortunately any copy of Vocal Eyes I may
> > have had is long gone. Also, I seem to recall that Vocal Eyes needed
> > a  licensing key sequence to operate, so just getting the software is only the beginning of the battle.
> > 
> > -- 
> > Rudy Vener
> > 
> > An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
> > Serious Limerick - Charlie The Brave https://limerickdude.substack.com/p/charlie-the-brave
> > Website: http://www.rudyvener.com
> > 
> > 
> > 
> > On Thu, Sep 18, 2025 at 05:02:57AM +1000, Jookia wrote:
> > > Hi Chime,
> > > 
> > > Thanks for your input, I'm curious what windows explorer did wrong UI wise?
> > > 
> > > DOSBox is nice because it runs on a host computer and can access host files, so
> > > you get the benefit of a DOS interface, DOS programs, but a 'real' computer
> > > that can handle multiple programs at once, filesystem safety, Internet access,
> > > modern devices. It also runs on ARM devices like Pis.
> > > 
> > > I've had requests by people to add a way to have speech output from DOS to
> > > Windows and so my current project is to emulate a minimal DECTalk-like synth
> > > device that calls the host APIs or some other API. So on Windows or Wine this
> > > can be SAPI or NVDA, on Linux it could be speech-dispatcher or espeak.
> > > 
> > > My plan is to have this compatible with any screen reader that supports an
> > > external TTS. This includes JAWS, Provox, ASAP, Speakup, and whatever else
> > > people can get running. If you have a hardware DECTalk none of this is
> > > necessary and you can connect it directly to DOSBox already. If you have a
> > > software DECTalk it may be usable in a similar way.
> > > 
> > > It would be a lot of fun to try and get a Linux-compatible terminal emulator
> > > running in DOSBox too so you can use a DOS screenreader and Linux programs.
> > > 
> > > Do you have a copy of Vocal-Eyes? I haven't been able to find one and would
> > > enjoy adding it to my testing situation.
> > > 
> > > Jookia.
> > > 
> > > On Fri, Sep 12, 2025 at 08:21:37AM -0700, Chime Hart wrote:
> > > > Well, Jookia, to adequately keep track of your questions, I cut-and-pasted them
> > > > in nano in a separate console.
> > > > I think to a larger extent, especially in my case, as I began a  computer
> > > > journey in 1994, I became used to a text interface, although I appreciated
> > > > menus which guided me. I was practicly forced in to windows95 as I needed a
> > > > more powerful machine to begin enjoying mp3s in late 1997. To some extent I
> > > > could manage with a simple windows desktop until they ruined it by switching to
> > > > windows explorer. By 2006 with windows media player locking up my machine, we
> > > > completely got rid of windows. All along the way I would launch a DOS prompt or
> > > > telnet to read-and-write mail in Pine. I've tried ORCA but am not familliar or
> > > > comfortable with its interface.
> > > > Jookia, I think DOS emu works much better with a screen-reader. What do you
> > > > like better about DosBox? Please, Kirk, cover your ears, but I would love to
> > > > resume useing Vocal-Eyes with a DecTalk. With its exception dictionary-and-its
> > > > ability to enjoy single-digit numbering, I was `extremely comfortable in that
> > > > envirenment. In some ways I find a Chromebook easier than ORCA, but Chromevox
> > > > doesn't support a numpad like Speakup-and-NVDA do. Anyway, I hope I've answered
> > > > all of your items, but please understand, I am only a user-and-not a
> > > > programmer.
> > > > Chime
> > > > 
> > > 
> > 
> > 
> 

