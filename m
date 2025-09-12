Return-Path: <speakup+bounces-1340-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7CFB2B54218
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 07:36:41 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=V3uW6Zrp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC1CE382C3F; Fri, 12 Sep 2025 01:36:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CA9FB382BC0
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 01:36:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A229E382BB9; Fri, 12 Sep 2025 01:36:32 -0400 (EDT)
Received: from out-177.mta0.migadu.com (out-177.mta0.migadu.com [91.218.175.177])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9BF56382BB2
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 01:36:30 -0400 (EDT)
Date: Fri, 12 Sep 2025 15:31:55 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1757655371;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WMhTgwW0/4Posd/ecCKYd5IDG7iI/+Lo2zOSRDgjaYw=;
	b=V3uW6Zrpgx+hUxSHT9NbTnaOCsjwsuRcDXPxC4/us6VqF8GebDe3DjJ9dk3wJbJcNrn5Wv
	ai1xzUU3PKHu8vOfC6AX5phRpSfeOP+5FivffGdc7g04fp3VvH+Bnz30d2vwaSSwyP/O83
	B7X4P1+pRdNW4/CUnBPnAKXR3uMhLI/jZlyJpjrc5IuNq7D2bV/tEQNE24oN9u4Ua9Nhbl
	xQToadYcGZgeKnCNj/r8P/PKl/2+Qsc+ppUhqGZ+kKNM84ctr5f/chlHw2ZieS3PUIBoH9
	znSCbJKRjGQ4FTyOxeYx+4eNXM4xDH6o3pAA6SUTAr/N94BT52RhskycOSSz7w==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Chime Hart <chime@hubert-humphrey.com>,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Question about blind CLI use (was Re: "your browser is not supported
 anymore" ...)
Message-ID: <aMOwSwrEWTBtFn60@titan>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi everyone,

I don't meant to hijack this thread but I'm a sighted person who's been
struggling to try and make the world a bit better with accessibility
stuff. I haven't really done anything useful yet, but I've spent a lot
of time talking to sighted people who scoff at the idea of people using
'old' technology or being left behind because of their workflows.

I know this is the speakup list and I'm talking to an extremely niche
community here, but I'm genuinely interested to know: Why do you use
computers this way instead of like Windows or macOS? They can do much
more useful tasks.

I've thought for a while that this is simply because Linux has dropped
the ball hard with GUI accessibility, but I'm starting to wonder if it's
really just because GUIs suck for blind people altogether. I know that
screen readers themselves are kind of a nightmare for me to use with
having to remember a ton of buttons, but having to tab through a GUI
just to do things I could type is a headache. Maybe text is just a
better interface if you're blind? It's certainly more precise and
quicker. But I'm also aware there are things like hardware limitations
like systems not supporting hardware synths any more.
So I'm genuinely curious as to why you work the way you do.

---

As a kind of side note, my current project is making an emulated
serial to speech synth API for the DOSBox-X emulator. I aim to implement
just enough of the DECTalk protocol to work with DOS screen readers and
speakup, then pass that to SAPI/NVDA or speech-dispatcher/espeak. I do
have pipe dream plans of turning this in to a USB espeak synth that
could be used to read early boot messages and panics on Linux.

But more widely I've just been thinking about how to make an application
like DOSBox-X accessible that relies on a little fake GUI for its
configuration menu. At first I thought of adding support for AccessKit
and Orca/NVDA. But that only works on some systems, and it's hard to
test and convince developers to test. They won't notice when it breaks.
It also kind of sucks to use as you have to tab through everything.

So I've kind of been more interested in adding a new interface a bit
like a command line or menu-based system, with output by TTS or Braille.
It would live in the application, be usable by sighted people too and be
easy for developers to test and reason about.

So if you have any feedback about any of this please tell me.
Jookia.

