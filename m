Return-Path: <speakup+bounces-1234-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7E1DBA1A6D7
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 16:15:20 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=kRE2rqni;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AAB8038212C; Thu, 23 Jan 2025 10:15:19 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8763C3818E5
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 10:15:19 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9F46E3818E9; Thu, 23 Jan 2025 10:15:12 -0500 (EST)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 390F53818E3
	for <speakup@linux-speakup.org>; Thu, 23 Jan 2025 10:15:12 -0500 (EST)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 8FB06FA01E
	for <speakup@linux-speakup.org>; Thu, 23 Jan 2025 10:14:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1737645276;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=G+UXziAE9+JCTgyAYo9WB4BJR/tyhtTP9SisARYYo2E=;
	b=kRE2rqniDdVwVTkvl2jBvFebCBMltbWor7tIzCclCCTqaORaFnzNSmOpVn/sAO65ZvV8jQ
	IjNivL8QxTHyOGtAPTAJlnDspOTXv+JfSurOCsaP9UMlV+LBKxTAScNpTas8aJ8tsVbaA3
	pPF02SgDr0BYnYuU7S3fvp0ArIURDjs=
DMARC-Filter: OpenDMARC Filter v1.4.2 mail.rednote.net 8FB06FA01E
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.18.1/8.16.1/Submit) id 50NFEas6439427
	for speakup@linux-speakup.org; Thu, 23 Jan 2025 10:14:36 -0500
Date: Thu, 23 Jan 2025 10:14:36 -0500
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Re: Good old Speakup
Message-ID: <Z5Jc3NeLe6zmNVkf@rednote.net>
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
X-Operating-System: Linux opera.rednote.net 6.12.9-200.fc41.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Martin, All:

Fwiw, I also played around with fenrir some years ago. I quickly came
home to Speakup. I do use Orca with Speech Dispatcher as well. My
solution is to have two different audio devices, one for Speakup on the
23 consoles I open, and one for Orca/SD.

I never succeeded trying to get either Speakup or Orca happy with
pulseaudio, though. I haven't yet mucked around with what pipewire might
offer as I'm waiting for it to settle down before doing that. Maybe it's
pretty settled most recently. I just don't like software making
decisions about what audio stream plays on what device. That's where I
failed with pa.

These days I run Arch as my Linux distro of choice and I tend to do a
full system update about once a week.  I do have one issue on boot that
I solve by a very hokey work around. My process is as follows:

Boot and log into the default console.

Launch my vtconsole script that opens the remaining 23 consoles. As root
(not sudo) run a loadkeys to get consoles 13-24 accessible.

At that point I can start my orca environment with startx. But I don't
auto start Orca, just the gui environment, because I need
speech-dispatcher to take the correct device for output, and sd ignores
my config setting for that.

So the hokey work around is to start a wav playing on the device I want
SD to stay away from and then start Orca. Works like a charm!

Yes, yes. Amen to the sentiment of good old Speakup! Amen, and amen.

Best,
Janina

Martin McCormick writes:
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

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


