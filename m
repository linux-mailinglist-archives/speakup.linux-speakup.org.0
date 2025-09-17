Return-Path: <speakup+bounces-1364-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7F1CBB81C9E
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 22:35:58 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=QZzI0cXg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C5B50382359; Wed, 17 Sep 2025 16:35:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A2B173820DD
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 16:35:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6F8D23820DD; Wed, 17 Sep 2025 16:35:48 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1FBA93820CC
	for <speakup@linux-speakup.org>; Wed, 17 Sep 2025 16:35:46 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4cRrBS5Kfhz4BK1
	for <speakup@linux-speakup.org>; Wed, 17 Sep 2025 16:35:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1758141344; bh=FXdQKD7Np9u8/4+Qnivp9IE+P3HIDyF43R4FqtN+Lfc=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=QZzI0cXgfkfgqho2O2SGUxGsIkkK7IN33BwKlvIObE9/8qdiZQe2lW8iYx9e/S26V
	 E2Ov1hXpRKD8BS0Jyg50MWWFK7y9UPsoZO1iZPUtzUa2P37FfkmsnrLrellpJyLCAC
	 4mtfq45MxQQyhIw1QJrDA53d5tYmv6PjU8/zv1PA=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4cRrBS4FdQz1QXM; Wed, 17 Sep 2025 16:35:44 -0400 (EDT)
Date: Wed, 17 Sep 2025 16:35:44 -0400
From: Rudy Vener <salt@panix.com>
To: speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMsboMhBL4klsYZD@panix.com>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com>
 <aMsF4T_1FAbaFEHz@titan>
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
In-Reply-To: <aMsF4T_1FAbaFEHz@titan>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I used to love my DOS PC running Smart Term terminal emulator 
and Vocal Eyes as my interface into  my Linux machine at home, Sun workstation at
work  or any Unix/Linux machine that had an RS-232 serial port.

Eventually the technical issues and maintenance overhead to operate DOS just became too cumbersome and I
migrated to  speakup on my Linux machine.
I still have a working Dectalk Express speech synthesizer or two around, but unfortunately any copy of Vocal Eyes I may
have had is long gone. Also, I seem to recall that Vocal Eyes needed
a  licensing key sequence to operate, so just getting the software is only the beginning of the battle.

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Serious Limerick - Charlie The Brave https://limerickdude.substack.com/p/charlie-the-brave
Website: http://www.rudyvener.com



On Thu, Sep 18, 2025 at 05:02:57AM +1000, Jookia wrote:
> Hi Chime,
> 
> Thanks for your input, I'm curious what windows explorer did wrong UI wise?
> 
> DOSBox is nice because it runs on a host computer and can access host files, so
> you get the benefit of a DOS interface, DOS programs, but a 'real' computer
> that can handle multiple programs at once, filesystem safety, Internet access,
> modern devices. It also runs on ARM devices like Pis.
> 
> I've had requests by people to add a way to have speech output from DOS to
> Windows and so my current project is to emulate a minimal DECTalk-like synth
> device that calls the host APIs or some other API. So on Windows or Wine this
> can be SAPI or NVDA, on Linux it could be speech-dispatcher or espeak.
> 
> My plan is to have this compatible with any screen reader that supports an
> external TTS. This includes JAWS, Provox, ASAP, Speakup, and whatever else
> people can get running. If you have a hardware DECTalk none of this is
> necessary and you can connect it directly to DOSBox already. If you have a
> software DECTalk it may be usable in a similar way.
> 
> It would be a lot of fun to try and get a Linux-compatible terminal emulator
> running in DOSBox too so you can use a DOS screenreader and Linux programs.
> 
> Do you have a copy of Vocal-Eyes? I haven't been able to find one and would
> enjoy adding it to my testing situation.
> 
> Jookia.
> 
> On Fri, Sep 12, 2025 at 08:21:37AM -0700, Chime Hart wrote:
> > Well, Jookia, to adequately keep track of your questions, I cut-and-pasted them 
> > in nano in a separate console. 
> > I think to a larger extent, especially in my case, as I began a  computer 
> > journey in 1994, I became used to a text interface, although I appreciated 
> > menus which guided me. I was practicly forced in to windows95 as I needed a 
> > more powerful machine to begin enjoying mp3s in late 1997. To some extent I 
> > could manage with a simple windows desktop until they ruined it by switching to 
> > windows explorer. By 2006 with windows media player locking up my machine, we 
> > completely got rid of windows. All along the way I would launch a DOS prompt or 
> > telnet to read-and-write mail in Pine. I've tried ORCA but am not familliar or 
> > comfortable with its interface. 
> > Jookia, I think DOS emu works much better with a screen-reader. What do you 
> > like better about DosBox? Please, Kirk, cover your ears, but I would love to 
> > resume useing Vocal-Eyes with a DecTalk. With its exception dictionary-and-its 
> > ability to enjoy single-digit numbering, I was `extremely comfortable in that 
> > envirenment. In some ways I find a Chromebook easier than ORCA, but Chromevox 
> > doesn't support a numpad like Speakup-and-NVDA do. Anyway, I hope I've answered 
> > all of your items, but please understand, I am only a user-and-not a 
> > programmer.
> > Chime
> > 
> 

