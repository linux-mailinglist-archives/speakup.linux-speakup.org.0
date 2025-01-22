Return-Path: <speakup+bounces-1227-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 899BEA198E2
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 19:57:21 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=VSMvrLaf;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 35E0F38261A; Wed, 22 Jan 2025 13:57:20 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1516B3820F4
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 13:57:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 42A593820ED; Wed, 22 Jan 2025 13:57:13 -0500 (EST)
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0B2223818EC
	for <speakup@linux-speakup.org>; Wed, 22 Jan 2025 13:57:11 -0500 (EST)
Date: Thu, 23 Jan 2025 05:55:51 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1737572186;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rwFa/83zMz10yrS0eQ0B8hsx1fob4CE01eLYy2tKUQA=;
	b=VSMvrLafrEYSX89IxyYVEdiI+dIuxpVvc30nDhpMB3wjPWYXHKWKWs+zKimeOxtau/UlPM
	iRQrMtRYmwrA5s1c9UKhW0svWnADBOsxkigOgJ4nImZtkSnaCOvIib02mJXwnuKZaK0u+Y
	GOpuK8cI4Xum9/DONmNPeRlLQ6iX5m+Ipz2HmaIZjujQb0WcDZlB1iB7xmsyU29NlXSOda
	g9EF57mQmT/ZzCjDHBXcLm4X+K+L+iTqxXS2P/MXL9K2GYNqig9VM4kiUC6S6h7PJE3zrN
	EeBmELClAZQYKrvaqiNTJKhXzx0/NzhQsnZ5L00EAYmXN81ZdGi8+qqNGWCEUA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Martin McCormick <martin.m@suddenlink.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Good old Speakup
Message-ID: <Z5E_N9tz2YgWRsLz@titan>
References: <E1tafn8-000EhT-0P@wb5agz>
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
In-Reply-To: <E1tafn8-000EhT-0P@wb5agz>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Martin,

speakup and espeakup don't conflict with orca, you can use them both at
the same time. :) Maybe try removing fenrir and seeing if things just
work?

Jookia.

On Wed, Jan 22, 2025 at 12:49:30PM -0600, Martin McCormick wrote:
> Those of us who use screen readers have things we particularly
> like about them and stuff we dislike and a lot of that is
> totally subjective which makes the job of programming them even
> harder than simply coding.  I have used speakup or espeakup
> depending on the time period we are talking about since 2009 or
> thereabouts when I first got vinux to work and no longer had to
> use a MSDOS PC running kermit and feeding a hardware speech
> synthesizer so I know of what I speak.
> 
> 	I have a good and fast PC running debian bookworm with
> orca and the speech is good under orca but I always have wanted
> to have a pure command-line instance of old-school speakup for
> use in command-line stuff such as programming in c++, perl and
> shell scripts, PIC assembler and system administrative tasks.
> 
> 	There are at least 2 command line consoles that open text
> terminal windows on Control-Alt-F3 and Control-Alt-F4.  They
> don't talk so I installed fenrir and now, they talk but it's not
> what I was hoping for.
> 
> 	By pure accident/stupidity on my part, I once installed
> espeakup on here before finding out that that is not a good idea
> because espeakup is not a user-space application and uses kernel
> modules that might conflict with orca.
> 
> 	I forgot about the installation and have used orca a lot
> with no trouble but when i installed fenrir and got pipewire
> reconfigured to work with it, I was rudely reminded of espeakup
> which was a sleeping giant and awoke.  Both espeakup and fenrir
> would simultaneously speak screen output in the command consoles,
> each one at a different pitch and rate.  It was kind of amusing
> for about 15 seconds and then frustrating because the babble of
> the 2 voices, both e-speak but at different settings, tended to
> obscure what each was saying.
> 
> 	I worked on that issue on and off for a couple of days
> before another happy accident which clued me in on what happened.
> 
> 	I pressed the PrintScreen button and one of the voices
> said, "You killed speakup."  Pressing it again brought it back
> like normal.
> 
> 	So now I knew it was espeakup and fenrir having the
> babble battle.
> 
> 	I de-installed espeakup and fenrir now talks but it's not
> the same thing.  If you set punctuations to some, one must do
> that in the configuration file, then restart the service.  When
> you do that, the = sign is not one of the punctuation marks that
> is spoken, so much for programming.
> 
> 	Also, for some odd reason, Control-J (newline) and
> Control-K cause the screenreader to say "," as in the comma
> punctuation even there are no commas on the screen as near as i
> can tell.
> 
> 	That, alone drives me batty since it is confusing to say
> the least.
> 
> 	I am not trying to talk trash about fenrir because it's a
> good idea and there are things I like about the interface but oh,
> how I would like to just experience speakup in those command
> consoles.  It's easy to go through different punctuation levels
> and change speech rates on the fly plus, if one sets the
> punctuation to most, you do hear what one  needs to hear and that
> is important when programming and doing administrative tasks.
> 
> 	Any constructive ideas are appreciated.
> 
> 	Since espeakup did try to run, I have thought about
> putting it back as it never bothered orca while it was installed
> and then removing fenrir since both were trying to work at the
> same time.
> 
> Martin
> 

