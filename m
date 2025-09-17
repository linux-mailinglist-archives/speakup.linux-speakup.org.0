Return-Path: <speakup+bounces-1361-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id EF7A2B816C9
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 21:06:42 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=ZVH6hol0;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 56B3C3827E5; Wed, 17 Sep 2025 15:06:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3269C381951
	for <lists+speakup@lfdr.de>; Wed, 17 Sep 2025 15:06:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E7E72381969; Wed, 17 Sep 2025 15:06:24 -0400 (EDT)
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7B2D538187A
	for <speakup@linux-speakup.org>; Wed, 17 Sep 2025 15:06:23 -0400 (EDT)
Date: Thu, 18 Sep 2025 05:02:57 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1758135961;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gA+6LXpsGBnE13IT6AtKzJbudNYKXc5rXeHRILB8zQI=;
	b=ZVH6hol0RUf4oEd2xm2+kvXL7cIviwhlry6inU0vVYo+WSw5wBDdWNcsuM6fug9tqCstEf
	cjrgHNDQFA8vpEkXsv1x0XE7qh7lgZnkGRheHuC9Q5siQ1tSBcTtqvFX/FCZtNYvIOkv/j
	kISYcxqKsEA6H61zkC19BNoloYZENfO4Jrb/jKr5R3mueJJtcRGSjTjRY+5Pf2QMHsbUNL
	lR/Od2wIvqNYEWEJiI9yI8osdDJhWseb66y5tJx9Q+hEnffUtG+6y3NQinToaPPlmLdutF
	NHU5FYbVabVmj8wvXKmVXx971zaz7BeyqJlC01hKoGdv9gT5a/SfEMhR5833tQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: Karen Lewellen <klewellen@shellworld.net>,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMsF4T_1FAbaFEHz@titan>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com>
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
In-Reply-To: <45100fe1-7400-688a-c7fc-7eae1f81ef2b@hubert-humphrey.com>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chime,

Thanks for your input, I'm curious what windows explorer did wrong UI wise?

DOSBox is nice because it runs on a host computer and can access host files, so
you get the benefit of a DOS interface, DOS programs, but a 'real' computer
that can handle multiple programs at once, filesystem safety, Internet access,
modern devices. It also runs on ARM devices like Pis.

I've had requests by people to add a way to have speech output from DOS to
Windows and so my current project is to emulate a minimal DECTalk-like synth
device that calls the host APIs or some other API. So on Windows or Wine this
can be SAPI or NVDA, on Linux it could be speech-dispatcher or espeak.

My plan is to have this compatible with any screen reader that supports an
external TTS. This includes JAWS, Provox, ASAP, Speakup, and whatever else
people can get running. If you have a hardware DECTalk none of this is
necessary and you can connect it directly to DOSBox already. If you have a
software DECTalk it may be usable in a similar way.

It would be a lot of fun to try and get a Linux-compatible terminal emulator
running in DOSBox too so you can use a DOS screenreader and Linux programs.

Do you have a copy of Vocal-Eyes? I haven't been able to find one and would
enjoy adding it to my testing situation.

Jookia.

On Fri, Sep 12, 2025 at 08:21:37AM -0700, Chime Hart wrote:
> Well, Jookia, to adequately keep track of your questions, I cut-and-pasted them 
> in nano in a separate console. 
> I think to a larger extent, especially in my case, as I began a  computer 
> journey in 1994, I became used to a text interface, although I appreciated 
> menus which guided me. I was practicly forced in to windows95 as I needed a 
> more powerful machine to begin enjoying mp3s in late 1997. To some extent I 
> could manage with a simple windows desktop until they ruined it by switching to 
> windows explorer. By 2006 with windows media player locking up my machine, we 
> completely got rid of windows. All along the way I would launch a DOS prompt or 
> telnet to read-and-write mail in Pine. I've tried ORCA but am not familliar or 
> comfortable with its interface. 
> Jookia, I think DOS emu works much better with a screen-reader. What do you 
> like better about DosBox? Please, Kirk, cover your ears, but I would love to 
> resume useing Vocal-Eyes with a DecTalk. With its exception dictionary-and-its 
> ability to enjoy single-digit numbering, I was `extremely comfortable in that 
> envirenment. In some ways I find a Chromebook easier than ORCA, but Chromevox 
> doesn't support a numpad like Speakup-and-NVDA do. Anyway, I hope I've answered 
> all of your items, but please understand, I am only a user-and-not a 
> programmer.
> Chime
> 

