Return-Path: <speakup+bounces-1251-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5486AA9D755
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 05:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745636464;
	bh=+CQhon5FeKlTUfczaNlWTpjc2sFOpgaJMF2FVk8MgT4=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=YpbZp5GGE6N67tun241SerblSUdOL/226BDz66lHBGEPeQIP6k8NZxjFLKsm5GXEJ
	 nOv1j+s8w1ky/Dg83ABcypEKW1YQu3/hyR4St/HeAdDyCjtgzNXO232Ye32YrwOBu0
	 brdbV9SCtDEhN9u+5bUFlhH9qxXcm9fjTdj4wxIw=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C872E38291B; Fri, 25 Apr 2025 23:01:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745636464;
	bh=+CQhon5FeKlTUfczaNlWTpjc2sFOpgaJMF2FVk8MgT4=;
	h=Date:From:To:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=YpbZp5GGE6N67tun241SerblSUdOL/226BDz66lHBGEPeQIP6k8NZxjFLKsm5GXEJ
	 nOv1j+s8w1ky/Dg83ABcypEKW1YQu3/hyR4St/HeAdDyCjtgzNXO232Ye32YrwOBu0
	 brdbV9SCtDEhN9u+5bUFlhH9qxXcm9fjTdj4wxIw=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A950F3818C6
	for <lists+speakup@lfdr.de>; Fri, 25 Apr 2025 23:01:04 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745636457;
	bh=+CQhon5FeKlTUfczaNlWTpjc2sFOpgaJMF2FVk8MgT4=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=Td4ptrXRbhEtLFGSoDCo4QI75aN+gfO4sR1jDzAURZMRnlP/RN7FSAhWetOHvjOLN
	 1A1aqa47sM2WtwkxfYhhExZfOyQIam1U5KxebadQNENFK2JdfYJFWQKORxwnnt4QsO
	 9KflucmdilOwSHqExUvCUNyyGQ6qKKzDCYW9yPAw=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B2C473820D6; Fri, 25 Apr 2025 23:00:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745636457;
	bh=+CQhon5FeKlTUfczaNlWTpjc2sFOpgaJMF2FVk8MgT4=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=Td4ptrXRbhEtLFGSoDCo4QI75aN+gfO4sR1jDzAURZMRnlP/RN7FSAhWetOHvjOLN
	 1A1aqa47sM2WtwkxfYhhExZfOyQIam1U5KxebadQNENFK2JdfYJFWQKORxwnnt4QsO
	 9KflucmdilOwSHqExUvCUNyyGQ6qKKzDCYW9yPAw=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9195A380B06
	for <speakup@linux-speakup.org>; Fri, 25 Apr 2025 23:00:57 -0400 (EDT)
Date: Fri, 25 Apr 2025 23:00:57 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: Re: I break everything!
In-Reply-To: <ac1beeb6-7d05-47cd-8f4e-a10d8f627093@math.wisc.edu>
Message-ID: <21a643e6-4407-c9c4-876d-6acc87f71804@reisers.ca>
References: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca> <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu> <ca8ce1b0-dbd1-5fa7-8887-53522e29e8d4@reisers.ca> <8f3f523a-8621-4a55-bdcd-5072e5cb024c@posteo.com.br>
 <ac1beeb6-7d05-47cd-8f4e-a10d8f627093@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2095354986-1745636457=:89120"
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2095354986-1745636457=:89120
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

For the record, I'm using debian sid. I've been using it for well over
25 years though. I do have it running on desktops and two Raspberry
Pis. I'm only running void on one machine. I'm only having trouble on
one machine but it continuously screws up. I'm not sure why it's just
one flakey distro but it happens to be my main machine so it's more
iritating I guess. If I could easily switch distros without having to
reinstall everything I certainly would.

   me

On Fri, 25 Apr 2025, John G. Heim wrote:

> I use Debian testing like a rolling release.  If you use Debian testing, you 
> avoid the problems kirk had because you never have to do a full upgrade. You 
> just do incremental upgrades daily or weekly, whatever you choose. Although 
> they call it "testing", problems are rare and when they do arise, they are 
> almost always fixed w/i a day. I'd say Debian testing is less buggy than 
> Ubuntu STS.
>
> When i was the Manager of high Performance Computing at the Math Department 
> at the University Of Wisconsin, I pushed hard to put Debian testing on our 
> beowulf cluster. The cluster was made up of 6 to 8 super computers and about 
> 100 desktops. They all have to run the same operating system. But i couldn't 
> get my boss to go with something called "testing". We went with Ubuntu STS, 
> the version that is updated every 6 months, and it was way more trouble than 
> Debian testing.
>
> I think Debian testing should be called stable and stable should be called 
> something like "stodgy".
>
>
>
>
> On 4/25/25 7:46 PM, Cleverson Casarin Uliana wrote:
>> Hi, so Debian is quitting to be a good option? I was about to install it 
>> for a try. Has your trouble happened on Debian stable, testing or unstable? 
>> In any case, Void seems interesting too.
>> 
>> Cheers,
>> Cleverson
>> 
>> 
>
--8323329-2095354986-1745636457=:89120--

