Return-Path: <speakup+bounces-1471-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0F59BCDF4C4
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 07:38:35 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=BdABi6jy;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1B56C381543; Sat, 27 Dec 2025 01:38:34 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EC968380BF9
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 01:38:33 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32F6E381970; Sat, 13 Dec 2025 20:21:36 -0500 (EST)
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F3C02380EB3
	for <speakup@linux-speakup.org>; Sat, 13 Dec 2025 20:21:31 -0500 (EST)
Date: Sun, 14 Dec 2025 12:16:13 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1765675251;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dq+Dzd9hyzFFbH8elBdNOvzA5AYyHCRBQXdyZh5oQTc=;
	b=BdABi6jyX2or5dHoV4foILj8aNqx4PnnxQ789wcp6VYOpmKeLHI5eOeTDMDpNHXLzeyMh6
	gv4ZaWVc8T0c51h5JueKfvO/KPvSu4P6GiNz2puYNyPmgqF6nVggFsy6/XpZrsp8bEhbKZ
	P++TG9u7LLbUeXY5BADiWQLIbp9snwBsRRmh9imygpTbq0k821Wk/PI/7MbsQhUwMcpGaG
	+OSCOzAa9y87b64Lu5XE9lLVhAKcuOhQTNIwPCZ9LtbYEmoNaxkxav8xDyTnOAxTzApYm0
	saw+QXdBa8Q38tD5toPhpVriSo9Bcl9UlpDKAgwdYY7S6BlbjK8RA7+iPlrCwA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Trevor Astrope <astrope@tabbweb.com>
Cc: "John G. Heim" <jheim@math.wisc.edu>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aT4P3d_msq9UYdwb@titan>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <f8b9b65e-3ad3-4af2-968a-2e57cf6c8a01@math.wisc.edu>
 <aNIvVtPL-qzvuGFM@titan>
 <45676b1a-c9ea-8a00-c875-6124cdbfdabc@tabbweb.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <45676b1a-c9ea-8a00-c875-6124cdbfdabc@tabbweb.com>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Trevor,

Thanks for your response! I wish I had more to add but this is mostly just me
listening.

Jookia.

On Sun, Dec 07, 2025 at 12:25:19PM -0500, Trevor Astrope wrote:
> Hi Jookia,
> 
> I'm not sure if the command line is more accessible. For me, it is
> preferable.
> 
> My first computer ran dos and then I used unix at university. I found
> windows 3.1 and windows 95 very frustrating with early windows screen
> readers, so I used linux at home and found I could do mostly everything I
> wanted.
> 
> I am a linux system administrator and I was able to use linux at my job. I
> eventually switched jobs and I can no longer use a linux desktop, so I've
> adapted to windows. I still do most of my work in a linux shell, albeit,
> using jaws which is far from ideal.
> 
> for personal use, I mainly use an iphone. In terms of accessibility, I find
> it to be the most accessible platform.  I hardly used linux at home the past
> 5 years or so as I transitioned to the iphone. I mainly used it for email,
> since it is far easier to type on a keyboard, and connecting a keyboard to
> the iphone is a hassle.
> 
> Lately, as I've been using AI more, I've found myself using linux more and
> more.
> 
> I'm still more comfortable in linux than windows, but I really like the
> touch interface of the iphone. I initially used android, so I could get a
> shell on the phone and play around, but I was given an iphone at work and
> found voiceover to be far superior to talkback.
> 
> I recently upgraded my pc and it was a challenge to get speakup working. I
> first tried a usb serial port and eventually got it working with a pci
> serial card.
> > I'm greatful to Kirk for developing speakup and Samuel for maintaining it
> and all of those who have contributed to it. I loved it from the first time
> I used it, primarily because I used the ASAP dos screen reader before that,
> and speakup is very similar. I change the numpad layout on jaws to be like
> speakup so it is easier to switch back and forth when at work and home, but
> lately I do find myself doing capslock+p and capslock+semicolon a lot using
> speakup. :P
> 
> 
>  On Tue, 23 Sep 2025, Jookia wrote:
> 
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
> > > the     blinux@freelists.org list.
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
> > > Windows or MacOS.  I was lucky Linux is so dominant in the world of high
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
> > > 
> > 
> > 


