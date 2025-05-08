Return-Path: <speakup+bounces-1292-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DA03BAAF9FB
	for <lists+speakup@lfdr.de>; Thu,  8 May 2025 14:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746707430;
	bh=Wcz6QXok3VUgRG+wX/EwSx9cy0j8Rmykk38Rahvs2hQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=y107xLXPuObFzXkaqPmeFrYrlaVE0JAc4+CEisazyGYsn7txzAQ+koFXd5kSRr8Vy
	 5bX/nRi1QiqXj9F+1mTWDJTeI4QtAowC8164w6AhJ4M6Wy79dRaFprW+YkHDyKa5B+
	 wcmmpQ1didSALsjDQVGiwGXJ135Yb+2R5j1CLBuQ=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E9DBF382A0D; Thu, 08 May 2025 08:30:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746707430;
	bh=Wcz6QXok3VUgRG+wX/EwSx9cy0j8Rmykk38Rahvs2hQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=y107xLXPuObFzXkaqPmeFrYrlaVE0JAc4+CEisazyGYsn7txzAQ+koFXd5kSRr8Vy
	 5bX/nRi1QiqXj9F+1mTWDJTeI4QtAowC8164w6AhJ4M6Wy79dRaFprW+YkHDyKa5B+
	 wcmmpQ1didSALsjDQVGiwGXJ135Yb+2R5j1CLBuQ=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C7B9E38223C
	for <lists+speakup@lfdr.de>; Thu, 08 May 2025 08:30:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746707423;
	bh=Wcz6QXok3VUgRG+wX/EwSx9cy0j8Rmykk38Rahvs2hQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=LOuTMElSDNZrr5Z/WmQt8MY5lplF9blfPlMicMeOVGJD88Ye5WTjE7gei3EdvM+ua
	 XYr5t68Ugqqe/W9LU/JjnTEdvZN2aKmOdFMa0syrW0WwLK92hbJvwN77eXcgyO8eQU
	 M4TGatQsVh2aMb1ZBibv4ju0Ym2sXxwA9W4knvn8=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0059238298A; Thu, 08 May 2025 08:30:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1746707421;
	bh=Wcz6QXok3VUgRG+wX/EwSx9cy0j8Rmykk38Rahvs2hQ=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=Av8GKjNjb8M9vlenhIbUjH4Iu4vUbBlNF9koq3kUaByKW5qSoeOpOAV9pFt4XwKIb
	 ob8Df5/WioSygqX7MZwvr3ELCUW/oaGecp0z8dv4JROT+/NvKZyVITBa8hjzdt2Y0N
	 t9M+nY/ZhXuTFj58eH9MCnp9vwm1N66FnhcwOReg=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D21D8382165;
	Thu, 08 May 2025 08:30:21 -0400 (EDT)
Date: Thu, 8 May 2025 08:30:21 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Karen Lewellen <klewellen@shellworld.net>
cc: K0LNY ?? <glenn@ervin.email>, Jude DaShiell <jdashiel@panix.com>, 
    speakup@linux-speakup.org
Subject: Re: pipe-viewer for youtube
In-Reply-To: <Pine.LNX.4.64.2505071842380.1256448@users.shellworld.net>
Message-ID: <f155b0a4-14e4-11d0-711e-15e7d394952c@reisers.ca>
References: <aBvBerA_sTfcYFKX@panix.com> <02af01dbbf8f$ac227710$01ffa8c0@nucwin10> <9fc18622-7982-1bbb-108e-ebd5ebd4edfd@reisers.ca> <Pine.LNX.4.64.2505071842380.1256448@users.shellworld.net>
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

Hey Karen: Yes, the programs command structure is fairly indepth. You the slash '/' character to search; that also takes flags such as -a for after date etc. You can download the audio only, with video and in different formats such as mp4, webm, and so forth.

Install it and play. It is quite nice.

   Kirk

On Wed, 7 May 2025, Karen Lewellen wrote:

> Hi Kirk,
> That name still has me giggling.
> Can you convert files to audio only, and download?
> If the content is provided by more than user, would you search the one you 
> prefer?
> For example Let say i want a performance from one year of the grammy awards. 
> My user becomes gramy.com I suppose?
>
> Thanks,
> Karen
>
>
>
> On Wed, 7 May 2025, Kirk Reiser wrote:
>
>> I don't know about pipe for the command line but there is a good
>> youtube playing package that goes by the name yewtube, a play on words
>> there. You invoke it with just yt. Still, I have not seen any mention
>> of subscriptions in the help menus I just use the 'user' command
>> regularly like 'user adam levy' to see everything he's posted and of
>> course the top of the list changes when he has put out a new vid. I'm
>> pretty sure yewtube is in the debian archive but I'm sure it's in the
>> pipx system, 'pipx yewtube.'
>>
>>  Kirk
>> 
>> On Wed, 7 May 2025, K0LNY ?? wrote:
>>
>>>  Where do we get pipe-viewer?
>>>  It is not in the Raspberry PI's repository.
>>>  Thanks.
>>>
>>>  Glenn
>>>  ----- Original Message -----
>>>  From: "Jude DaShiell" <jdashiel@panix.com>
>>>  To: <speakup@linux-speakup.org>
>>>  Sent: Wednesday, May 7, 2025 3:24 PM
>>>  Subject: pipe-viewer for youtube
>>> 
>>>
>>>  In the configuration file for pipe-viewer subscription files are
>>>  specified.
>>>  The man page and pipe-viewer --tricks makes no mention of this and fails
>>>  to
>>>  describe how to subscribe in pipe-viewer to a playing channel.  For those
>>>  that
>>>  have no clue what I'm writing about, pipe-viewer once installed is a
>>>  youtube
>>>  video player and other video services player that can be run from the
>>>  command
>>>  line and it doesn't show youtube ads when playing either.
>>>  I don't have the developer's email address or I'd ask him how to do this
>>>  and
>>>  perhaps would have posted his technique for doing this using pipe-viewer
>>>  here.
>>> 
>>> 
>>> 
>> 
>> 
>> 
>

