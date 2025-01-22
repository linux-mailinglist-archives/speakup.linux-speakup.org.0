Return-Path: <speakup+bounces-1228-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 11A33A19989
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 21:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1737576828;
	bh=JWkgggrClmODXyP7DorVA0EnxagVmdN5NUu+yEUiH20=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=BnlIxr5bORi1NdbA6WojnJl/tbqb3eg61sDMJeebl2uwMNnvalANEcjAUOV8s1uwv
	 S8EVVj9VrRhRQrNU5+bywR+KEvszN3yDZTZdVY/46PSJcwkrF0Wk1lRvz1RrJzLyCy
	 4uu6e94f67dWSwnvqrcrRu0RBdSlsaQUd2BufTyo=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DCF64381905; Wed, 22 Jan 2025 15:13:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1737576828;
	bh=JWkgggrClmODXyP7DorVA0EnxagVmdN5NUu+yEUiH20=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=BnlIxr5bORi1NdbA6WojnJl/tbqb3eg61sDMJeebl2uwMNnvalANEcjAUOV8s1uwv
	 S8EVVj9VrRhRQrNU5+bywR+KEvszN3yDZTZdVY/46PSJcwkrF0Wk1lRvz1RrJzLyCy
	 4uu6e94f67dWSwnvqrcrRu0RBdSlsaQUd2BufTyo=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BDFAA3818EC
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 15:13:48 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1737576821;
	bh=JWkgggrClmODXyP7DorVA0EnxagVmdN5NUu+yEUiH20=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=XtA+8aq4D07s44hCQqdw/vndDUuiuN+ACWySpfSO2I0uXWBCj/GDX9+VqMgkO6O0J
	 WhGOu7J7sB/qFqRh903NvIJj5UKhIAghdAme3npq3FL+ofDCLNHOZmqUnjANoCujfN
	 U5nQuidGViBx7vMbKKnW62RfQ3U08onED1q+KTl4=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EFDB53818FD; Wed, 22 Jan 2025 15:13:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1737576820;
	bh=JWkgggrClmODXyP7DorVA0EnxagVmdN5NUu+yEUiH20=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=FbZD3OcCZAw8+CUyp3mNfdYp7Sq1io74LndgrV0GEdOuM/5Pr6WrqT36g9USjmKsH
	 hRRBaM/TM0PnpaE2WsyQFJiioyqnfdgOXsTWxk/zwhYC2h4dTutuQ9Smi2Gb7n5YJ6
	 3X6NjsW/nRjNUWJxnrySnY3uPBFJDrMWyCRYP0As=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C01B438189E;
	Wed, 22 Jan 2025 15:13:40 -0500 (EST)
Date: Wed, 22 Jan 2025 15:13:40 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Jookia <contact@jookia.org>
cc: Martin McCormick <martin.m@suddenlink.net>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Good old Speakup
In-Reply-To: <Z5E_N9tz2YgWRsLz@titan>
Message-ID: <1f0cb61b-9235-a9cc-f9b5-b30e82ca5198@reisers.ca>
References: <E1tafn8-000EhT-0P@wb5agz> <Z5E_N9tz2YgWRsLz@titan>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I agree with Jookia, espeakup with speakup works just fine with orca
here. I have to say that orca is more of an after-thought here because
I use speakup on 11 of the twelve consoles that come with debian.

I ran into an iritating situation last evening trying to get espeakup
working on a RPI-5 with some sort of sound board stuck on it to
provide a 3.5mm jack option. Never did figure out why espeakup
couldn't open the softsynth device even set to 666 mode. That however
is a totally different situation.

   Kirk

On Thu, 23 Jan 2025, Jookia wrote:

> Hi Martin,
>
> speakup and espeakup don't conflict with orca, you can use them both at
> the same time. :) Maybe try removing fenrir and seeing if things just
> work?
>
> Jookia.
>
> On Wed, Jan 22, 2025 at 12:49:30PM -0600, Martin McCormick wrote:
>> Those of us who use screen readers have things we particularly
>> like about them and stuff we dislike and a lot of that is
>> totally subjective which makes the job of programming them even
>> harder than simply coding.  I have used speakup or espeakup
>> depending on the time period we are talking about since 2009 or
>> thereabouts when I first got vinux to work and no longer had to
>> use a MSDOS PC running kermit and feeding a hardware speech
>> synthesizer so I know of what I speak.
>>
>> 	I have a good and fast PC running debian bookworm with
>> orca and the speech is good under orca but I always have wanted
>> to have a pure command-line instance of old-school speakup for
>> use in command-line stuff such as programming in c++, perl and
>> shell scripts, PIC assembler and system administrative tasks.
>>
>> 	There are at least 2 command line consoles that open text
>> terminal windows on Control-Alt-F3 and Control-Alt-F4.  They
>> don't talk so I installed fenrir and now, they talk but it's not
>> what I was hoping for.
>>
>> 	By pure accident/stupidity on my part, I once installed
>> espeakup on here before finding out that that is not a good idea
>> because espeakup is not a user-space application and uses kernel
>> modules that might conflict with orca.
>>
>> 	I forgot about the installation and have used orca a lot
>> with no trouble but when i installed fenrir and got pipewire
>> reconfigured to work with it, I was rudely reminded of espeakup
>> which was a sleeping giant and awoke.  Both espeakup and fenrir
>> would simultaneously speak screen output in the command consoles,
>> each one at a different pitch and rate.  It was kind of amusing
>> for about 15 seconds and then frustrating because the babble of
>> the 2 voices, both e-speak but at different settings, tended to
>> obscure what each was saying.
>>
>> 	I worked on that issue on and off for a couple of days
>> before another happy accident which clued me in on what happened.
>>
>> 	I pressed the PrintScreen button and one of the voices
>> said, "You killed speakup."  Pressing it again brought it back
>> like normal.
>>
>> 	So now I knew it was espeakup and fenrir having the
>> babble battle.
>>
>> 	I de-installed espeakup and fenrir now talks but it's not
>> the same thing.  If you set punctuations to some, one must do
>> that in the configuration file, then restart the service.  When
>> you do that, the = sign is not one of the punctuation marks that
>> is spoken, so much for programming.
>>
>> 	Also, for some odd reason, Control-J (newline) and
>> Control-K cause the screenreader to say "," as in the comma
>> punctuation even there are no commas on the screen as near as i
>> can tell.
>>
>> 	That, alone drives me batty since it is confusing to say
>> the least.
>>
>> 	I am not trying to talk trash about fenrir because it's a
>> good idea and there are things I like about the interface but oh,
>> how I would like to just experience speakup in those command
>> consoles.  It's easy to go through different punctuation levels
>> and change speech rates on the fly plus, if one sets the
>> punctuation to most, you do hear what one  needs to hear and that
>> is important when programming and doing administrative tasks.
>>
>> 	Any constructive ideas are appreciated.
>>
>> 	Since espeakup did try to run, I have thought about
>> putting it back as it never bothered orca while it was installed
>> and then removing fenrir since both were trying to work at the
>> same time.
>>
>> Martin
>>
>

