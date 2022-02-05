Return-Path: <speakup+bounces-358-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 54B444AA62C
	for <lists+speakup@lfdr.de>; Sat,  5 Feb 2022 04:21:19 +0100 (CET)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E7E89382584; Fri,  4 Feb 2022 22:21:18 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DC0C4382318
	for <lists+speakup@lfdr.de>; Fri,  4 Feb 2022 22:21:18 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 88D7C380BC0; Fri,  4 Feb 2022 22:21:17 -0500 (EST)
Received: from server2.shellworld.net (server2.shellworld.net [66.172.12.120])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6B349380994
	for <speakup@linux-speakup.org>; Fri,  4 Feb 2022 22:21:17 -0500 (EST)
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 5DC2B6201AA; Sat,  5 Feb 2022 03:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 5943B62017C;
	Fri,  4 Feb 2022 22:21:14 -0500 (EST)
Date: Fri, 4 Feb 2022 22:21:14 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Kirk Reiser <kirk@reisers.ca>
cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org
Subject: Re: Raspberry Pi Upgrade from Stretch to Buster killed speakup.
In-Reply-To: <5624673a-91d-e5ab-d838-6662a481ac3c@reisers.ca>
Message-ID: <Pine.LNX.4.64.2202042219450.3620070@server2.shellworld.net>
References: <E1nFhuz-0001NG-AS@wb5agz.lan> <Yf3Dui+P69Jg19kQ@gregn.net>
 <5624673a-91d-e5ab-d838-6662a481ac3c@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Wait, you have a computer that sounds like louis Armstrong?
ahem, sorry could not resist that description.
Karen



On Fri, 4 Feb 2022, Kirk Reiser wrote:

> I can't really answer the question directly. I will say I am running a
> couple of raspbery pi 4bs with debian sid with speakup but I had to
> compile espeak, espeak-ng and espeakup from source because the distro
> built apps are fucked. The voice on the default is very granular or
> gravelly but the old espeak works fine if compiled from source. Now
> that's using the 32-bit OS. I have the 64-bit distro but haven't
> installed it yet.
>
>
> On Fri, 4 Feb 2022, Gregory Nowak wrote:
>
>>  On Thu, Feb 03, 2022 at 01:37:21PM -0600, Martin McCormick wrote:
>> >  I have two Raspberry Pi's that I upgraded from Debian 9 (stretch)
>> >  to 10 which is Buster.  Both seem to have survived the upgrade
>> >  except for speakup which is now mute.
>>
>>  You don't mention the model of the rpi you have. Do you have audio in
>>  general? if not, this might help you, specifically the sound section:
>>
>>  <https://wiki.debian.org/RaspberryPi3>
>>
>>  I don't have speakup setup right now on either of my rpi units, so
>>  can't test this for you.
>> 
>> >  	It's been 2 or 3 years since I installed speakup on a
>> >  Raspberry Pi and I seem to remember a certain download of speakup
>> >  that works especially well but I don't remember exactly how I got
>> >  it which is why I am asking the list.
>>
>>  The only thing that comes to mind is a tutorial written way back by
>>  Mike Ray which describes on how to get speech from the rpi sound
>>  hardware in both the text console and the GUI. My understanding is
>>  that this isn't an issue anymore, but I could be wrong. I did a quick
>>  search to see if I could find that, but had no luck.
>> 
>> > 
>> >  	When I was running stretch on these Pi's, I got pretty
>> >  much the same performance one gets from a full-sized desktop
>> >  system so I want to not lose that capability now.  Thanks.
>>
>>  Again, you don't mention the model of rpi you're using. However, I'm
>>  curious what you do for web browsing on the rpi? I wanted to find out
>>  when I first got my rpi3b unit a few years ago now if it could replace
>>  my laptop. I found that it mostly could, but that firefox was laggy
>>  enough and the software speech unresponsive enough when loading a
>>  particularly resource heavy page that serious web browsing couldn't be
>>  done. The rpi4 units with 8G of ram could probably handle it now
>>  though. I also recall Chris Brannon mentioned using an rpi on this
>>  list as a thin client. However, what you said above seems to imply use
>>  as a stand alone unit.
>>
>>  Greg
>> 
>> 
>> 
>
>
>

