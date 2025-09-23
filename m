Return-Path: <speakup+bounces-1400-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B0B29B9465D
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 07:26:05 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=ZfuDmyce;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C7A8238280F; Tue, 23 Sep 2025 01:25:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A78D2382169
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 01:25:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9563238216B; Tue, 23 Sep 2025 01:25:46 -0400 (EDT)
Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 45CC338213F
	for <speakup@linux-speakup.org>; Tue, 23 Sep 2025 01:25:44 -0400 (EDT)
Date: Tue, 23 Sep 2025 15:24:02 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1758605139;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QIToTuDdhWGPD64pCrHh9YOeoKDoFoYixj7yEz/ZHh8=;
	b=ZfuDmycei0rLIxnRCGT2oWl+j5ztefafyHSBVCXCEd3v9qP/AXKvbsRVrT2OxsONa/WsSp
	sT4bgeP7cHpmGK4+dqo7MkvuNysW7+b8/kRpoQDzmXJxC13Nr4HG2uKLLpR66ZY6dOQjuD
	ji3hvcB3A48AsG7jtXeG5SAG4uHF391cgR49KFtkMLtBaeQwA6WmhpyBfhO99JoWEl8rS6
	FKht/FIm6Wjak9E7gn4sOCc0nVSo7mjxaCOdTIfMoXZqRcGJvPsssyBo5BwUWlF6jy5+6V
	MqiccUrh6FJsa/GeIaBio5m3xZhT5rISSHlunzg0lYbGgRSj4y9pXdQUo+ewXw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Rudy Vener <salt@panix.com>
Cc: speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aNIu8lpkSEQz7jJP@titan>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <aMQb_2EHO0HYypga@panix.com>
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
In-Reply-To: <aMQb_2EHO0HYypga@panix.com>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Rudy,

Thanks for the interesting perspective. What programming languages and
environments do you use to make your own tools?

Jookia.

On Fri, Sep 12, 2025 at 09:11:27AM -0400, Rudy Vener wrote:
> When I use CLI with speakup I can focus on the job at hand.
> When I am forced to use GUI, I spend ten times the time for a tenth the result while
> fighting with the GUI interface all the way.
> In cli linux I execute a command, interact with the command using
> a vi text editor type interface and know exactly where I am and what I need to do to effect changes.
> With GUI I am flailing around wondering why my GUI screen reader is spouting nonsense at me.
> 
> Example: I use lynx browser with ddg search engine and can hit ./search_term string to get to the results, or close to them.
> Once on the results I hit th j key to skip to the next result and the 
> screen reader keys to read the text or hit the enter key to follow the link.a When I'm finished 
> with the page or pages at that link the h key or series of h keys brings
> me right back to the result link on the ddg page.
> This is simple, well known and needs no more thinking on my part.
>   There may be people who use the GUI interface just as intuitively as I use the
> cli and speakup interface, but I am not one of them.
> 
>   Also, with cli I can create my own applications. For example I listen to podcasts with
> applications that present me with the podcast menu in a vi buffer and let me select
> the item I want by  executing the same command with a line number.
> e.g. fnc lets me see today's fox news channel offerings. fnc 2 lets me hear the second item on the channel.
> 
> Another command, fncl, which stands for fox news channel loop, puts me in a continuous loop of viewing the menu buffer in vi,
> entering a line number upon exiting vi to hear the item, and entering a blank line to exit the loop.
> 
> Simple, easy. No fuss, no bother.
> 
>   The tradeoff for this simplicity is either a learning curve (e.g. vi, lynx) or a design curve (e.g. fncl)
> 
> Hope this helps.
> 
> -- 
> Rudy Vener
> 
> An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
> Ludicrous Limerick - News Of Trump's Death Were Greatly Exaggerated.  https://limerickdude.substack.com/p/news-of-trumps-death-were-greatly
> Website: http://www.rudyvener.com
> 
> 
> 
> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
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

