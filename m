Return-Path: <speakup+bounces-1204-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B38DF969505
	for <lists+speakup@lfdr.de>; Tue,  3 Sep 2024 09:17:22 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=bmKeMKON;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 158A63841C1; Tue, 03 Sep 2024 03:17:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E844C383CAF
	for <lists+speakup@lfdr.de>; Tue, 03 Sep 2024 03:17:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 02223383CB2; Tue, 03 Sep 2024 03:17:13 -0400 (EDT)
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com [95.215.58.180])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B2B8E383CA9
	for <speakup@linux-speakup.org>; Tue, 03 Sep 2024 03:17:10 -0400 (EDT)
Date: Tue, 3 Sep 2024 17:16:44 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1725347826;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=O4xIMfdvZ8LNjauTUVFuA7LcXoiMLxXJq+UKQf16oGs=;
	b=bmKeMKONkZOePG3ObqAYdGDy4cVooABKYAaPr7w6yCTr7Qbtk3O6jZP3f5Ww6PEJqFJmnu
	lJ8+c4w9JPaDw5uYoX42FN08FJEhKuQPQLRVYIJJR3ktYcVJBjvd+GwOEF6MEXPdZMgjrL
	9xxE5MoHpTp0k3HTariDKhYTc45wUP569+dSMz35gFoZzvYjnhXwRiIP9f7YUMOq41SvF9
	vl5+vQODU7P+f61dKQwkgw8twckmFQ4NSrqr0obSgreMAk+kEKLQ4xNO2oCDEAjXJ/U29n
	/o25pgJSaG48IifPsSeGRFZLMNsODYOrl7UM2ENIQFdBAEqm84Ff4cCHxqQYEw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Martin McCormick <martin.m@suddenlink.net>
Cc: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
Message-ID: <Zta33F80vCUd8tBU@titan>
References: <ZoieyBFD0TXlL_bd@cudneys.ca>
 <ZojtZ3RQxdiZaMN1@gregn.net>
 <E1sl62C-0002oX-0Y@wb5agz>
 <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
 <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
 <E1slBYr-0003js-0w@wb5agz>
 <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
 <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net>
 <E1slFDa-0001Hb-0R@wb5agz>
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
In-Reply-To: <E1slFDa-0001Hb-0R@wb5agz>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Did you try my guide?

https://www.jookia.org/wiki/System-wide_speakup

On Mon, Sep 02, 2024 at 05:08:14PM -0500, Martin McCormick wrote:
> Thanks for the clarification about pipewire and why it is here.
> 
> 	I didn't realize that pulseaudio is fading into the
> sunset as it has been around and served well for quite a few
> years.
> 
> 	To remind those who have followed this thread today, the
> only real problem I am talking about is minor compared with stuff
> that is supposed to work but doesn't.
> 
> 	It looks like one should be able to get speakup to work
> older world of pure text-based command-line consoles since there
> are things that runa little more smoothly there than when GUI
> tools are needed.
> 
> 	By the same token, the present implimentation of speakup
> with gnome also does well and all I was hoping to do was have
> both functionalities on the same system.
> 
> 	Thanks for the information that has been provided as it
> is useful and I am still interested if there is a way to do this
> but at least things are about 95% working.
> 
> Martin
> 	
> "Jason J.G. White" <jason@jasonjgw.net> writes:
> > While we're discussing clarifications, note that Pulseaudio is effectively
> > deprecated now. Pipewire has superseded it. Also, Pipewire includes an
> > implementation of the Pulseaudio client API, so that client applications
> > designed for Pulseaudio still work normally under Pipewire.
> 

