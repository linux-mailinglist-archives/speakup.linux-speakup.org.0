Return-Path: <speakup+bounces-1083-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 001D6859E1E
	for <lists+speakup@lfdr.de>; Mon, 19 Feb 2024 09:22:58 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=temperror header.d=ccs.covici.com header.i=@ccs.covici.com header.a=rsa-sha256 header.s=default header.b=IQEz5Na0;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 04046382782; Mon, 19 Feb 2024 03:22:57 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D461238228D
	for <lists+speakup@lfdr.de>; Mon, 19 Feb 2024 03:22:56 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 361E538228F; Mon, 19 Feb 2024 03:22:49 -0500 (EST)
Received: from covici.com (debian-2.covici.com [166.84.7.93])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7CE9438223C
	for <speakup@linux-speakup.org>; Mon, 19 Feb 2024 03:22:48 -0500 (EST)
Received: from ccs.covici.com (ccs.covici.com [70.109.51.194])
	(authenticated bits=0)
	by covici.com (8.15.2/8.15.2/Debian-22) with ESMTPSA id 41J8NEeC463758
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 19 Feb 2024 03:23:15 -0500
Received: from ccs.covici.com (localhost [127.0.0.1])
	by ccs.covici.com (8.17.1.9/8.17.1.9) with ESMTPS id 41J8MdTo425957
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 19 Feb 2024 03:22:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ccs.covici.com;
	s=default; t=1708330963;
	bh=YHKkv1GGtwZsnPuLVJYGpJxMYa9Xq+peBXzE/uwwUNg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Reply-To;
	b=IQEz5Na0E/z4GCDX2dY+8/pzoz9m0/kDeJ26Z44ydZuklO+a+tlKRZn/kIKn86p4p
	 qhMSKe4mESWsWOrTeFGipf2AzM2OfMugrHHvYZBr091s4iBidBskqk3iqtfzjVFc/G
	 d7hAui5j+2DLb12KqOeQnSiAf7VJtlQ2G7KqA3Is=
Received: (from covici@localhost)
	by ccs.covici.com (8.17.1.9/8.17.1/Submit) id 41J8Mbt1425956;
	Mon, 19 Feb 2024 03:22:37 -0500
Date: Mon, 19 Feb 2024 03:22:37 -0500
Message-ID: <m3sf1ox3qq.wl-covici@ccs.covici.com>
From: John Covici <covici@ccs.covici.com>
To: Kirk Reiser <kirk@reisers.ca>
Cc: Karen Lewellen <klewellen@shellworld.net>, speakup@linux-speakup.org
Subject: Re: Domain expiration
In-Reply-To: <4a5a865f-dbf8-a13a-3aa0-118a854ad022@reisers.ca>
References: <76018e2b-1c58-9a09-2e24-bc2c91697d88@reisers.ca>
	<Pine.LNX.4.64.2402181537270.775092@users.shellworld.net>
	<4a5a865f-dbf8-a13a-3aa0-118a854ad022@reisers.ca>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/29.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
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

I would checkout nearlyfreespeech.net  very privacy focussed and
pretty cheap and very accessible website.

On Sun, 18 Feb 2024 22:35:26 -0500,
Kirk Reiser wrote:
> 
> Hi Karen: The registrar I have linux-speakup.org with is
> internic.com. They gave me some bull shit about because it was a .org
> domain they had to charge $46 a year plus tax etc. My other registrar
> told me they wanted $25 for a single year but discounts for multi-year
> contracts. It would probably be significantly cheaper if I were to
> take it out for ten years or so.
> 
> Internic has always been much more expensive than other registrars but
> when I started with them over twenty years ago there were very few
> domain name providers around at all.
> 
>   Kirk
> 
> On Sun, 18 Feb 2024, Karen Lewellen wrote:
> 
> > Hi there,
> > Just wondering, how much were they going to charge you?
> > All of my domain, save the one here in Canada are with gkg.net
> > www.gkg.net.
> > I spend on average $12 a year,  with the amazing ability to
> > update with them on the phone.
> > Even my Canadian domain with bare medal
> > www.baremedal.ca  I hope lol, is little more than $14.
> > why is yours so expensive?
> > just wondering,
> > Kare
> > 
> > 
> > 
> > On Sun, 18 Feb 2024, Kirk Reiser wrote:
> > 
> >> Hello everybody: I have decided after poking around with my domain
> >> registrar that I'm going to allow the domain linux-speakup.org to
> >> expire. My current registrar wants to much money yearly to continue
> >> with them and transferring the domain to my other registrar is more
> >> work than I wish to put in. I am almost 72 years old and so
> >> registering for any length of time really isn't worth it to me.
> >> 
> >> I will keep this list going as speakup@reisers.ca and Chris Brannon
> >> will continue to archive the list. I will also put a link on the
> >> reisers.ca webpage to point to the old sites directory so at least for
> >> quite a while that will also remain.
> >> 
> >> I will make the switch over on March 1st although it'd be more amusing
> >> to do it on the day of the command March 4th! I'll send out a note
> >> once the switch is complete and hopefully you won't have to do
> >> anything except move from speakup@linux-speakup.org to
> >> speakup@reisers.ca when posting a message.
> >> 
> >>  Kirk
> >> 
> >> 
> >> 
> > 
> 

-- 
Your life is like a penny.  You're going to lose it.  The question is:
How do
you spend it?

         John Covici wb2una
         covici@ccs.covici.com

