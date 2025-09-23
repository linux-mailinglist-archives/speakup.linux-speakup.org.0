Return-Path: <speakup+bounces-1401-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7F148B94660
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 07:26:56 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=k4MwPylC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 691483827E7; Tue, 23 Sep 2025 01:26:54 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 45F14382219
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 01:26:54 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2EE793821A5; Tue, 23 Sep 2025 01:26:47 -0400 (EDT)
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 775A9382169
	for <speakup@linux-speakup.org>; Tue, 23 Sep 2025 01:26:46 -0400 (EDT)
Date: Tue, 23 Sep 2025 15:25:42 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1758605183;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=w7BsRxSbHIfNH15Sz4WaooB/xPExBnQB2KhU1+C9iJo=;
	b=k4MwPylClbEJzEO+c4Gtmqc9xGAXmvF6lninNHugotB9EHhs370s1ooGobt6EX0kuKJdNg
	CeciTwK5+lDXqa8Wv/rXiH8/RAP0wBK31HUY0CRVAEl/dBxeMmhpY9creS2b/6yrodGfNE
	4TZtK4X3TOHtY9iPmm4soRJcbTXS22U2Uqx3OlpzApSHXTFTUVDC1fg3x2eWTvw2hHm1Vh
	cta8TeMI4JKNjuYXEgAuODHXVcV1Dlzd4u0QORsqIXBPKUcH7hfgB04g2FxgT0IZ73tQEV
	Dl8tC1gOjpMxdsNKXth+BpLTs85jr+9eCe8LFuAUH2PwvLtT4f9ZsSwX11mZCQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aNIvVtPL-qzvuGFM@titan>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <f8b9b65e-3ad3-4af2-968a-2e57cf6c8a01@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f8b9b65e-3ad3-4af2-968a-2e57cf6c8a01@math.wisc.edu>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi John,

I subscribed to blinux@freelists.org to see what's going on over there, thanks
for the recommendation. I'm well aware of Orca but I've been interested in the
specific set of people that use command line Linux blind with Speakup.

How do you find the character interface more accessible? I'd be interested to
know how you think of it, do you think of it in terms of lines, cells,
characters, something else?

Thanks for sharing your experience!

Jookia.

On Fri, Sep 12, 2025 at 11:25:50AM -0500, John G. Heim wrote:
> IMO, you are asking in the wrong place. You should ask these questions on
> the     blinux@freelists.org list.
> 
> On this list, you are going to get a lot of answers from people who are not
> typical blind Linux users. There is a very good screen reader called Orca
> for the Linux GUI. The vast majority of blind Linux users use Orca, not
> Speakup.
> 
> The main reason I use Linux is that until I retired recently, I managed the
> supercomputer cluster for the Math Department at the University Of
> Wisconsin. As you may know, every supercomputer in the world runs Linux.
> Often, to manage a large group of computers, you have to rely on the
> character interface. In fact, because the character interface is so
> accessible, for a blind systems administrator, Linux is far friendlier than
> Windows or MacOS.  I was lucky Linux is so dominant in the world of high
> performance computing, it kept me employed in a fascinating job for my whole
> life. I always said I'd work for nothing if that was possible. Like in Star
> Trek, nobody ever talks about getting paid, everything they need just seems
> to be supplied. That's how much I loved my job.
> 
> I liked my job so much I am still sort of doing it. I recently published a
> script that allows a blind systems admin to set up a thumb drive so that if
> you boot from it, your machine will come up talking in the character
> interface. Then you can fix whatever problem the operating system has.
> 
> 
> 
> 
> 
> 
> On 9/12/25 12:31 AM, Jookia wrote:
> > Hi everyone,
> > 
> > I don't meant to hijack this thread but I'm a sighted person who's been
> > struggling to try and make the world a bit better with accessibility
> > stuff. I haven't really done anything useful yet, but I've spent a lot
> > of time talking to sighted people who scoff at the idea of people using
> > 'old' technology or being left behind because of their workflows.
> > 
> > I know this is the speakup list and I'm talking to an extremely niche
> > community here, but I'm genuinely interested to know: Why do you use
> > computers this way instead of like Windows or macOS? They can do much
> > more useful tasks.
> > 
> > I've thought for a while that this is simply because Linux has dropped
> > the ball hard with GUI accessibility, but I'm starting to wonder if it's
> > really just because GUIs suck for blind people altogether. I know that
> > screen readers themselves are kind of a nightmare for me to use with
> > having to remember a ton of buttons, but having to tab through a GUI
> > just to do things I could type is a headache. Maybe text is just a
> > better interface if you're blind? It's certainly more precise and
> > quicker. But I'm also aware there are things like hardware limitations
> > like systems not supporting hardware synths any more.
> > So I'm genuinely curious as to why you work the way you do.
> > 
> > ---
> > 
> > As a kind of side note, my current project is making an emulated
> > serial to speech synth API for the DOSBox-X emulator. I aim to implement
> > just enough of the DECTalk protocol to work with DOS screen readers and
> > speakup, then pass that to SAPI/NVDA or speech-dispatcher/espeak. I do
> > have pipe dream plans of turning this in to a USB espeak synth that
> > could be used to read early boot messages and panics on Linux.
> > 
> > But more widely I've just been thinking about how to make an application
> > like DOSBox-X accessible that relies on a little fake GUI for its
> > configuration menu. At first I thought of adding support for AccessKit
> > and Orca/NVDA. But that only works on some systems, and it's hard to
> > test and convince developers to test. They won't notice when it breaks.
> > It also kind of sucks to use as you have to tab through everything.
> > 
> > So I've kind of been more interested in adding a new interface a bit
> > like a command line or menu-based system, with output by TTS or Braille.
> > It would live in the application, be usable by sighted people too and be
> > easy for developers to test and reason about.
> > 
> > So if you have any feedback about any of this please tell me.
> > Jookia.
> > 
> 

