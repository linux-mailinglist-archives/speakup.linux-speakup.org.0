Return-Path: <speakup+bounces-1072-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9BDEE83EFCF
	for <lists+speakup@lfdr.de>; Sat, 27 Jan 2024 20:44:58 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=ccs.covici.com header.i=@ccs.covici.com header.a=rsa-sha256 header.s=default header.b=kPMglwm8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3F9B9382784; Sat, 27 Jan 2024 14:44:56 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1CB6A38206A
	for <lists+speakup@lfdr.de>; Sat, 27 Jan 2024 14:44:56 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7D214382088; Sat, 27 Jan 2024 14:44:48 -0500 (EST)
Received: from covici.com (debian-2.covici.com [166.84.7.93])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3D64138205C
	for <speakup@linux-speakup.org>; Sat, 27 Jan 2024 14:44:48 -0500 (EST)
Received: from ccs.covici.com (ccs.covici.com [70.109.51.194])
	(authenticated bits=0)
	by covici.com (8.15.2/8.15.2/Debian-22) with ESMTPSA id 40RJimsI075874
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Sat, 27 Jan 2024 14:44:50 -0500
Received: from ccs.covici.com (localhost [127.0.0.1])
	by ccs.covici.com (8.17.1.9/8.17.1.9) with ESMTPS id 40RJiguV2335930
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Sat, 27 Jan 2024 14:44:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ccs.covici.com;
	s=default; t=1706384683;
	bh=Wmg95nJt2ZNTXpPXsPbs7z06itRaavo1rmFgPpNdMGU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Reply-To;
	b=kPMglwm8BK5W98eOGWyItItOs8JJVX+fCiBfAfr2rLYLnT2uLM7Q5/04dBSQJ7hoF
	 H3xoK7l+MXOQ+oV/lQoQAK87HHZYcVRkeZilnMK1H1mGhgO34g6ny0wzSm69KAvE7r
	 VWRBT/44wMoKOT51b/nbC6FI0NiDPTN+/E0RJtQM=
Received: (from covici@localhost)
	by ccs.covici.com (8.17.1.9/8.17.1/Submit) id 40RJibru2335928;
	Sat, 27 Jan 2024 14:44:37 -0500
Date: Sat, 27 Jan 2024 14:44:37 -0500
Message-ID: <m38r4ad0ii.wl-covici@ccs.covici.com>
From: John Covici <covici@ccs.covici.com>
To: Kirk Reiser <kirk@reisers.ca>
Cc: Chris Brannon <chris@the-brannons.com>, speakup@linux-speakup.org
Subject: Re: Thoughts on the website and domain?
In-Reply-To: <6f101a67-18b1-0d4b-131a-7070312a1972@reisers.ca>
References: <7b6c8aad-7ff9-e768-cc91-fd31b8c886d7@reisers.ca>
	<87jznwhtx6.fsf@the-brannons.com>
	<6f101a67-18b1-0d4b-131a-7070312a1972@reisers.ca>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/29.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Reply-To: covici@ccs.covici.com
Organization: Covici Computer Systems
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I think you should keep it!

On Fri, 26 Jan 2024 14:41:21 -0500,
Kirk Reiser wrote:
> 
> Heh! A null vote. One for one against. Well, maybe it's worth $52 to keep it for a while.
> 
>   Kirk
> 
> On Fri, 26 Jan 2024, Chris Brannon wrote:
> 
> > Kirk Reiser <kirk@reisers.ca> writes:
> > 
> >> Hello everybody: The linux-speakup.org domain needs to be renewed in
> >> the next few weeks and so I figured I should ask for peoples opinions
> >> on what to do.
> > 
> > We've talked about this off-list, but it's worth repeating in public.
> > Most of the site is basically of historical relevance at this point, and
> > little else.  Kernel docs may need to be updated to remove dangling
> > references to linux-speakup.org if it goes away.  Personally, I don't
> > see any strong reason to keep it, but I don't care much either way.
> > 
> > Deedra just yelled at me from the other room to say that she'd vote for
> > keeping it.
> > 
> > -- Chris
> > 
> 

-- 
Your life is like a penny.  You're going to lose it.  The question is:
How do
you spend it?

         John Covici wb2una
         covici@ccs.covici.com

