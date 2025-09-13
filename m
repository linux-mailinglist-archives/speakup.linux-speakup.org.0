Return-Path: <speakup+bounces-1355-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 77FC0B560D7
	for <lists+speakup@lfdr.de>; Sat, 13 Sep 2025 14:31:13 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=i+EtIwP4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C34583830AA; Sat, 13 Sep 2025 08:31:10 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 9ACC9382C44
	for <lists+speakup@lfdr.de>; Sat, 13 Sep 2025 08:31:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 603CD382BFD; Sat, 13 Sep 2025 08:31:03 -0400 (EDT)
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9D6D4382BE9
	for <speakup@linux-speakup.org>; Sat, 13 Sep 2025 08:31:01 -0400 (EDT)
Date: Sat, 13 Sep 2025 22:29:34 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1757766657;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4ij1HOz0rgSDOTkqEJUxQMfrffqGc7aXBG7gbtKgBcM=;
	b=i+EtIwP4BtOijGe28NF8cAAGw5FgjzSOy9flRD6bw6OyDnaHAsdHH6cyj4iFmlPujVyOXv
	OZA3waHqTXICZmVsF4aPPUxFvlBaGjz7d6H56jnp27k/3o72TO/zVrVkpMibAK4gNOLLRC
	++t1c7DGwBWr7e/v+5VnpzMnK6xuaWnrWOeItdkvG8hYsSHsOhyzp8LkrDJlpXCfUlPIJy
	F10hw4SX4j95TrDYA0WrXA2iG8H0ciRTe17nwTWCBOhKugWcfl9mRcfXrkOjfDu7kGvNkV
	QdyjW72YIWI+MPO/U7b7d13k2U2OnQ9DnudT3nzPCHsijSJ0kLJbSptG6PuYvQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Chime Hart <chime@hubert-humphrey.com>,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMVjrmhyaQIoRu6C@titan>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <Pine.LNX.4.64.2509130007500.3861565@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2509130007500.3861565@users.shellworld.net>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Karen,

Thanks for your reply! It's certainly eye opening. I'm sorry I don't
have too much to add for the general response, I've gotten a lot of good
responses here and I'm still going through them. I don't really have
many follow-up questions for people, but you did ask me some so I'll try
and get through them.

On Sat, Sep 13, 2025 at 12:13:46AM -0400, Karen Lewellen wrote:
> KL:   I am being philosophical here a bit.  Is it really old
> technology if the person using it is being productive as they
> define the term?

I'm not sure. I know that DOS is quite an old system.

> Progressive enhancement web design remains the most inclusive. It
> lets you build a floor, say concrete, in Basic Html, then put all
> the JavaScript on top you want.

Yes, this is a good design philosophy I think. I've been a little
shocked at how many people are using text browsers here though.
I'm glad I make my websites work with them.

> KL: I am personally curious just what and where you have tried
> these tools?
> Again, training is the key here.  Apple incorporates keystrokes,
> not so much for accessibility, but for speed and efficiency. Practice using
> the keystrokes just like practice playing the
> piano makes you Billy Joel smiles.
> I still use keystrokes but I have been using a computer for
> several decades.  One thing I personally dislike about other
> screen reader tools is having to take my hands off the main
> keyboard for information. One does not necessarily need to do
> this with the mac either.

I've tried NVDA, Orca, and Speakup on my computer. They all have a lot
of different keybinds and I have trouble tracking them in y head.

> KL: May I ask why you are using Dosbox instead of freedos?
> 
> Www.freedos.org
> 
> Not only is the system developed regularly to harmonize DOS
> simplicity with graphical tools, you would find partners in your
> efforts.
> In addition to the avenue you are trying, there is some effort
> involving using raspberry pi kits as the hardware.  For those who
> do not have synths.  Further, more than a few members globally
> who still have existing hardware feel a few coding elements will
> allow them better, more understandable speech than that provided
> by the software elements.

The short answer is that these are two different systems. DOSBox-X runs
on a host computer and exposes DOS APIs and emulates DOS programs in
terms of the host computer, while FreeDOS runs on real hardware or in a
virtual machine. My code would be useful for the case of running FreeDOS
in a virtual machine.

>  KL: Again I encourage connecting with freedos instead.  Linux is
> not the only foundation for this effort.

Actually I'm writing this to run on Windows first, surprisingly.

> KL:   There is an existing USB synth the dEctalk USB that at
> least, as I understand it, can provide good speech quality. Additionally,
> some Raspberry PI hardware kits might help here.
> Has been under discussion on the freedos development list..might
> not be that hard of a pipe dream.

Wow, that's expensive. I'm not too sure why people would pay that much
money if you could set up a similar project with a Pi or something?

> KL: really?   I am still wondering what makes Dosbox a better
> choice than freedos?

It integrates with a host like Linux.

> KL: perhaps it is how they get asked?  Although, speaking
> personally, Orca has its own problems..as you say only works on
> some systems.

Sighted developers don't test using a screen reader, and screen readers
tend to be poor targets to test against as each works differently and
has their own set of bugs. Implementing an interface that doesn't rely
on a screen reader seems like a better idea to me.

> It also kind of sucks to use as you have to tab through
> everything.
> 
> KL: instead of using the arrow keys?
> No search command that lets you jump to where you are needed?  No items are
> numbered possibilities?

Not really no.

> KL: Once more I focus you on the numbers.  Tools that intended to
> support those experiencing learning disabilities still
> incorporate speech.  Do not confuse tts with screen reader
> functions.  A good screen reader provides more than just reading
> the text on the screen.
> This is not a tangent, but may I ask where you are in the world?
> In Toronto, there is a venture capital firm specializing in
> supporting development of tools that benefit all populations. They
> understand that it is not a two sides of a coin reality.
> Instead combining many ways to manage screen content helps
> everyone, regardless of how they use their screens.  Does that
> resonate?

Yes it does resonate.

Jookia.

