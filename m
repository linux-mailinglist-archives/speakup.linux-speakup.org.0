Return-Path: <speakup+bounces-1003-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0FDE37518BB
	for <lists+speakup@lfdr.de>; Thu, 13 Jul 2023 08:23:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=LtwrJzM3;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A0A25382596; Thu, 13 Jul 2023 02:23:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 8066E38246F
	for <lists+speakup@lfdr.de>; Thu, 13 Jul 2023 02:23:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EFA2F3823EE; Thu, 13 Jul 2023 02:23:38 -0400 (EDT)
Received: from out-19.mta0.migadu.com (out-19.mta0.migadu.com [91.218.175.19])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0C314382392
	for <speakup@linux-speakup.org>; Thu, 13 Jul 2023 02:23:37 -0400 (EDT)
Date: Thu, 13 Jul 2023 16:23:05 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1689229414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kuFTRAA1Uoi1+14dI9baAmdaNpS6OSe77pPQzppv/Mc=;
	b=LtwrJzM340pHH5zah6+5OadwDfv74+ajUgqfDfok77//htiNzd63VpNBOaKvVeg3rn+jQO
	P8W9xQKY2FAa7DfRT4bPywJdJ8qpdrSDt3gAavvzt0ckpEch1r6PQRSU3s5EBm+va9wxv7
	ttN4X/l4Crgs7PvQV8lU9MNYx/naSVkcmo8RdTwO1NNaHTv+SbkpSkIzAdR709WAJ3xuzG
	HT18pgwEVewNycM396qtx7Tl/n+rvAhFnHyu+CLnuEZj/oXazy5NijdkPt9ZdoLOWWoGlg
	Ezb9WVNgHng+2igDMUK/rN88mE1dvSN8R3XU1xG8dZRL/RjH+Tp3P5uceUhPbQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Didier Spaier <didier@slint.fr>
Cc: speakup@linux-speakup.org
Subject: Re: Announcing pod-kast with a k
Message-ID: <ZK-YSWJQLIBTcJgu@titan>
References: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com>
 <m31qhczy5s.wl-covici@ccs.covici.com>
 <b0e002e0-265c-109e-66a9-3e346efccb17@slint.fr>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b0e002e0-265c-109e-66a9-3e346efccb17@slint.fr>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Here is the source code:

https://github.com/mlytle4218/pod-kast-rust

On Thu, Jul 13, 2023 at 07:55:12AM +0200, Didier Spaier wrote:
> I second what John said.
> 
> Moreover I would try only a new software if/when the source is publicly
> available and I can build/compile it myself.
> 
> Cheers,
> Didier
> 
> Le 12/07/2023 à 22:13, John Covici a écrit :
> > Since I use gentoo, a .deb would not do me much good.  Can I compile
> > your app somehow?  Also, how do I search for a particular podcast in
> > your client and do you have a facility where I can use a username and
> > password if the feed requires it?
> > 
> > Thanks, sounds interesting.
> > 
> > On Wed, 12 Jul 2023 13:57:32 -0400,
> > Chime Hart wrote:
> >>
> >> Hi All: I have been waiting a long time to offer a newer much
> >> more intuative podcast client for those of us who like
> >> menus-and-simplicity. I am and will be announcing here-and-in the
> >> Blinux list, but since this works especially well in Speakup,
> >> this list will enjoy it first.
> >> DESCRIPTION
> >>        Welcome to Pod-kast 0.8.0 written by Marc Lytle and
> >> conceived by myself, Chime Hart.
> >>
> >>        Over  many  years almost all podcast clients seemed to be
> >> lacking an interface which made sense, as well as features I was
> >> hoping for.  The only one I understood was hpodder, but it is no
> >> longer available.  In Pod-kast, since I
> >>        am totally blind and listen with Speakup, a Linux
> >> screen-reader, we took great care to make all functions really
> >> obvious by having numbered menus and yes having the word "number"
> >> before each digit removing any ambiguity.
> >> Back again live, while you may be able to grab from a github
> >> page, which seems really messy in L Y N X an easier option would
> >> be a direct url from my web-site, but not linked from my site.
> >> https://hubert-humphrey.com/pod-kast_0.8.0_amd64.deb
> >> This is beta software-and-there still may be inconsistancies in
> >> the man-page. Rather than clutterup the list, if you have
> >> opperational issues, please write myself directly, or write an
> >> author Marc at an address listed in the man-page. I `sincerely
> >> hope all of you enjoy-and-find alot of success with this new
> >> client, which I named with an alternative spelling, as there are
> >> several podcast clients with the regular spelling.
> >> Thanks so much in advance
> >> Chime
> >>
> > 
> 

