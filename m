Return-Path: <speakup+bounces-1213-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E05F296CA3E
	for <lists+speakup@lfdr.de>; Thu,  5 Sep 2024 00:24:25 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=f5zy44SI;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7DDFF3823DB; Wed, 04 Sep 2024 18:24:25 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5C7EB381FE5
	for <lists+speakup@lfdr.de>; Wed, 04 Sep 2024 18:24:25 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8C5E738205C; Wed, 04 Sep 2024 18:24:18 -0400 (EDT)
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 378F4381FE5
	for <speakup@linux-speakup.org>; Wed, 04 Sep 2024 18:24:16 -0400 (EDT)
Date: Thu, 5 Sep 2024 08:23:15 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1725488621;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Xi51+6F/r48a7Mt0EVQ0HcuuPv+bl1RG4sBlrMn2I4A=;
	b=f5zy44SInw1h3+UEiTcu6nEMeGG4328xYTVOLG6liQ47e3FL4vfZvM7sEFNk522rkUI0ii
	tGMA9X+vpm8DfW2eKOfSAjc7j/ki5YfV6+kDSttwQrZOsiAxFOnWwt1uGkqEe9LtH+cVX4
	Ot4JjivJ+HtRQriIvI/1OOHtb8+6H804tQZVNeyjS6RcPQxBlcVhbrs1oMfVBaNbZw+bdg
	lVynTcY+O15zYWDtCLTDtJJPExt2oJxz/6kwB5M3CwmJK2lyU5RAuZ7bU2BQ+kHRI2bjic
	cAitzIjQWrRcIYhlWTEAMnC8/4XTG04LTnZfwY6ImuEwzFweB5hrxlzcl81K0w==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Martin McCormick <martin.m@suddenlink.net>
Cc: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
Message-ID: <Ztjd01MJ4P4u7Zuz@titan>
References: <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
 <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
 <E1slBYr-0003js-0w@wb5agz>
 <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
 <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net>
 <E1slFDa-0001Hb-0R@wb5agz>
 <Zta33F80vCUd8tBU@titan>
 <E1slZoq-0004cu-22@wb5agz>
 <ZtduSMS0hyMMjZQZ@titan>
 <E1slxjW-0001nZ-2d@wb5agz>
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
In-Reply-To: <E1slxjW-0001nZ-2d@wb5agz>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi there,

Did the non-GUI consoles work when you followed my instructions?
If so then it's probably that you needed to blindly login as espeakup was
running as your user but you didn't have Orca running as your user, it
was instead running as the system user.

The short answer is that you're not going to be able to have speakup and
Orca read login prompts. You have to pick one and blindly type in the
other. There's no easy way to fix this on a modern Linux desktop.

Jookia.

On Wed, Sep 04, 2024 at 04:40:10PM -0500, Martin McCormick wrote:
> 	So, I followed your very linear straight-forward
> instructions, Steps 1, 2, 3 and 4 and ended up with the only
> difference being that I could not log in to orca.  Normally, I
> 	faintly heare the prompt to press the pushbutton to log
> in.  I do and the same faint speakup voice prompts for password.
> Everytime I press a key, I hear the faint confirmation of "black
> circle" and then it gets much louder and the pitch changes,
> saying "Screen reader on" when I sent the correct password.
> 
> 	I see no evidence of problems with gnome and want to keep
> it that way.
> 
> 	After following the instructions and rebooting, the
> commands in step 4 of
> 
> systemctl --user enable espeakup
> loginctl enable-linger
> sudo gpasswd -a $USER audio
> 
> 
> seemed to be what kept me from hearing that faint login prompt
> any longer.  As soon as I ran
> 
> systemctl --user enable espeakup
> loginctl disable-linger
> 
> 
> the faint login messages were restored.  I also, for now, removed
> the lines added in Steps 2 and 3 in case they also had some
> effect.  I am also already a member of group audio so that part
> was not an issue.
> 
> 	The 3 non-GUI consoles never talked but I knew I had
> opened them by logging in and running a script I wrote called
> siggen which tells sox to send a steady sine-wave tone or
> generate pink noise which is similar to the sound you hear when
> an FM radio is between channels or one is running a noise
> generator which is handy in audio testing situations.
> 
> 	Basically, orca is running espeakup and the distribution
> doesn't let you install speakup along with that.  Speakup is not
> there.
> 

