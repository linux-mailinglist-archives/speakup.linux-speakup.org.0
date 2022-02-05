Return-Path: <speakup+bounces-357-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 14FD94AA61A
	for <lists+speakup@lfdr.de>; Sat,  5 Feb 2022 04:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1644030095;
	bh=jws/ANCKSsRNBEifeDZgMtirarYKsNvzVDpE7JAVhcg=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=YinG8O5nGPrWXMV4aUhx3Kwz+wgA0Akx6JIiIuuCA3D90sLJbJId70m4c+bBABZi1
	 aTUXOJ0tSMdoUt+XCKWkV8cM5vLOtHOPp4RdCupHk6lS5PuIsUuB6NiiWvDW3DT8Ld
	 npiPpj5yiWNObMRqyFaKajyCY0tezHSoG7P7hCZw=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3A00A3819E1; Fri,  4 Feb 2022 22:01:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1644030095;
	bh=jws/ANCKSsRNBEifeDZgMtirarYKsNvzVDpE7JAVhcg=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=YinG8O5nGPrWXMV4aUhx3Kwz+wgA0Akx6JIiIuuCA3D90sLJbJId70m4c+bBABZi1
	 aTUXOJ0tSMdoUt+XCKWkV8cM5vLOtHOPp4RdCupHk6lS5PuIsUuB6NiiWvDW3DT8Ld
	 npiPpj5yiWNObMRqyFaKajyCY0tezHSoG7P7hCZw=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 25E2A3819A2
	for <lists+speakup@lfdr.de>; Fri,  4 Feb 2022 22:01:35 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1644030092;
	bh=jws/ANCKSsRNBEifeDZgMtirarYKsNvzVDpE7JAVhcg=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=UGjr3f4YuPQyjx2MwclnSDrM5PX81vKlACPLLTBM+cIYsSKjSDYdNVnzu+n/8Lhbs
	 rkAPEDl8EhPoQtW6X+PVpd5Bg0X5UKQegojMbY6v/b1Hy/9rerXRU9HSeEMlPsRl2g
	 RWdrA0ew3W5e+XtFS2AVMF97VK95SSABjfgrF9bY=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 20C46380BBB; Fri,  4 Feb 2022 22:01:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1644030090;
	bh=jws/ANCKSsRNBEifeDZgMtirarYKsNvzVDpE7JAVhcg=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=LVHNp/XZbOjUeGIzGTIDDDew3eq7lX+vGHODIjyvWstb4M0pWScyr1S+leKmCp04c
	 H8P+ci++EP2SQWpy3Fd0A526mmmUJxLA9AjEOgG2J1+5UKTyV0dNo8gpE69wx20VEA
	 SGzC2En+9xPZOWBGkETLfLPktA76Yex9Akerq4eo=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9AEF13805C2;
	Fri,  4 Feb 2022 22:01:30 -0500 (EST)
Date: Fri, 4 Feb 2022 22:01:30 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Gregory Nowak <greg@gregn.net>
cc: speakup@linux-speakup.org
Subject: Re: Raspberry Pi Upgrade from Stretch to Buster killed speakup.
In-Reply-To: <Yf3Dui+P69Jg19kQ@gregn.net>
Message-ID: <5624673a-91d-e5ab-d838-6662a481ac3c@reisers.ca>
References: <E1nFhuz-0001NG-AS@wb5agz.lan> <Yf3Dui+P69Jg19kQ@gregn.net>
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

I can't really answer the question directly. I will say I am running a
couple of raspbery pi 4bs with debian sid with speakup but I had to
compile espeak, espeak-ng and espeakup from source because the distro
built apps are fucked. The voice on the default is very granular or
gravelly but the old espeak works fine if compiled from source. Now
that's using the 32-bit OS. I have the 64-bit distro but haven't
installed it yet.


On Fri, 4 Feb 2022, Gregory Nowak wrote:

> On Thu, Feb 03, 2022 at 01:37:21PM -0600, Martin McCormick wrote:
>> I have two Raspberry Pi's that I upgraded from Debian 9 (stretch)
>> to 10 which is Buster.  Both seem to have survived the upgrade
>> except for speakup which is now mute.
>
> You don't mention the model of the rpi you have. Do you have audio in
> general? if not, this might help you, specifically the sound section:
>
> <https://wiki.debian.org/RaspberryPi3>
>
> I don't have speakup setup right now on either of my rpi units, so
> can't test this for you.
>
>> 	It's been 2 or 3 years since I installed speakup on a
>> Raspberry Pi and I seem to remember a certain download of speakup
>> that works especially well but I don't remember exactly how I got
>> it which is why I am asking the list.
>
> The only thing that comes to mind is a tutorial written way back by
> Mike Ray which describes on how to get speech from the rpi sound
> hardware in both the text console and the GUI. My understanding is
> that this isn't an issue anymore, but I could be wrong. I did a quick
> search to see if I could find that, but had no luck.
>
>>
>> 	When I was running stretch on these Pi's, I got pretty
>> much the same performance one gets from a full-sized desktop
>> system so I want to not lose that capability now.  Thanks.
>
> Again, you don't mention the model of rpi you're using. However, I'm
> curious what you do for web browsing on the rpi? I wanted to find out
> when I first got my rpi3b unit a few years ago now if it could replace
> my laptop. I found that it mostly could, but that firefox was laggy
> enough and the software speech unresponsive enough when loading a
> particularly resource heavy page that serious web browsing couldn't be
> done. The rpi4 units with 8G of ram could probably handle it now
> though. I also recall Chris Brannon mentioned using an rpi on this
> list as a thin client. However, what you said above seems to imply use
> as a stand alone unit.
>
> Greg
>
>
>

