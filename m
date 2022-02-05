Return-Path: <speakup+bounces-359-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 207F44AA62F
	for <lists+speakup@lfdr.de>; Sat,  5 Feb 2022 04:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1644031475;
	bh=dDIJgUXValNi0lMvQbRwh/mZ/7VJ0I34tRTOLiSooTo=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=qFnolc/AIdnkSbjz9hwcUiCgjCCX8VGzntst89InGrp9YILEpqqGvQ46r61cUpn4q
	 284oMaOWIP/ECVzZ+gA1LgmbDcCT5W8vPrUsu7O6V4BqjCmBp5by0oM2jXnal3nrJX
	 LEc3PtNDwMkZQWrl8bqoHI41NLbKmNLBGiX/tBbI=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A1F9938172C; Fri,  4 Feb 2022 22:24:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1644031475;
	bh=dDIJgUXValNi0lMvQbRwh/mZ/7VJ0I34tRTOLiSooTo=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=qFnolc/AIdnkSbjz9hwcUiCgjCCX8VGzntst89InGrp9YILEpqqGvQ46r61cUpn4q
	 284oMaOWIP/ECVzZ+gA1LgmbDcCT5W8vPrUsu7O6V4BqjCmBp5by0oM2jXnal3nrJX
	 LEc3PtNDwMkZQWrl8bqoHI41NLbKmNLBGiX/tBbI=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8D80D381948
	for <lists+speakup@lfdr.de>; Fri,  4 Feb 2022 22:24:35 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1644031472;
	bh=dDIJgUXValNi0lMvQbRwh/mZ/7VJ0I34tRTOLiSooTo=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=mgwm7koBCT7FdcLFdpdwmqrpiIk5PyadckYTkrh3KkdOOLRyqMgMu2drz3HzX5MGR
	 JvG0/T/1ACjROOqogQKT34qseTfT8NQ+NBJ15IfmG9std05anoO3E0yG6mfZjdtL3b
	 RhHGh7np15Iangdz7usiepdGij6d5CXwGyurtRbQ=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CED7138112F; Fri,  4 Feb 2022 22:24:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1644031471;
	bh=dDIJgUXValNi0lMvQbRwh/mZ/7VJ0I34tRTOLiSooTo=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=flSDiZb6xcpTg4RbRGsQOX3lPATB3AfvQRjit7aHWeoEthvgCYBAV/lRovsezHW5I
	 5MhHNlnGbSWqmM2c/H9ekGLAQsXOkW+1/BidXY4aqoqU3rrMkitzLes4zrF/rcbVgi
	 zHGcsPCz2yZWb3VcOGiTufI47/W5SS46/NtjrUVc=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A59DE380BC0;
	Fri,  4 Feb 2022 22:24:31 -0500 (EST)
Date: Fri, 4 Feb 2022 22:24:31 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Gregory Nowak <greg@gregn.net>, speakup@linux-speakup.org
Subject: Re: Raspberry Pi Upgrade from Stretch to Buster killed speakup.
In-Reply-To: <Pine.LNX.4.64.2202042219450.3620070@server2.shellworld.net>
Message-ID: <a4b51ede-103d-d465-b637-d8e2dff5cdb@reisers.ca>
References: <E1nFhuz-0001NG-AS@wb5agz.lan> <Yf3Dui+P69Jg19kQ@gregn.net> <5624673a-91d-e5ab-d838-6662a481ac3c@reisers.ca> <Pine.LNX.4.64.2202042219450.3620070@server2.shellworld.net>
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

Hehehe It should sound so nice!

On Fri, 4 Feb 2022, Karen Lewellen wrote:

> Wait, you have a computer that sounds like louis Armstrong?
> ahem, sorry could not resist that description.
> Karen
>
>
>
> On Fri, 4 Feb 2022, Kirk Reiser wrote:
>
>> I can't really answer the question directly. I will say I am running a
>> couple of raspbery pi 4bs with debian sid with speakup but I had to
>> compile espeak, espeak-ng and espeakup from source because the distro
>> built apps are fucked. The voice on the default is very granular or
>> gravelly but the old espeak works fine if compiled from source. Now
>> that's using the 32-bit OS. I have the 64-bit distro but haven't
>> installed it yet.
>> 
>> 
>> On Fri, 4 Feb 2022, Gregory Nowak wrote:
>>
>>>  On Thu, Feb 03, 2022 at 01:37:21PM -0600, Martin McCormick wrote:
>>> >  I have two Raspberry Pi's that I upgraded from Debian 9 (stretch)
>>> >  to 10 which is Buster.  Both seem to have survived the upgrade
>>> >  except for speakup which is now mute.
>>>
>>>  You don't mention the model of the rpi you have. Do you have audio in
>>>  general? if not, this might help you, specifically the sound section:
>>>
>>>  <https://wiki.debian.org/RaspberryPi3>
>>>
>>>  I don't have speakup setup right now on either of my rpi units, so
>>>  can't test this for you.
>>> 
>>> >  	It's been 2 or 3 years since I installed speakup on a
>>> >  Raspberry Pi and I seem to remember a certain download of speakup
>>> >  that works especially well but I don't remember exactly how I got
>>> >  it which is why I am asking the list.
>>>
>>>  The only thing that comes to mind is a tutorial written way back by
>>>  Mike Ray which describes on how to get speech from the rpi sound
>>>  hardware in both the text console and the GUI. My understanding is
>>>  that this isn't an issue anymore, but I could be wrong. I did a quick
>>>  search to see if I could find that, but had no luck.
>>> 
>>> > >  	When I was running stretch on these Pi's, I got pretty
>>> >  much the same performance one gets from a full-sized desktop
>>> >  system so I want to not lose that capability now.  Thanks.
>>>
>>>  Again, you don't mention the model of rpi you're using. However, I'm
>>>  curious what you do for web browsing on the rpi? I wanted to find out
>>>  when I first got my rpi3b unit a few years ago now if it could replace
>>>  my laptop. I found that it mostly could, but that firefox was laggy
>>>  enough and the software speech unresponsive enough when loading a
>>>  particularly resource heavy page that serious web browsing couldn't be
>>>  done. The rpi4 units with 8G of ram could probably handle it now
>>>  though. I also recall Chris Brannon mentioned using an rpi on this
>>>  list as a thin client. However, what you said above seems to imply use
>>>  as a stand alone unit.
>>>
>>>  Greg
>>> 
>>> 
>>> 
>> 
>> 
>> 
>

