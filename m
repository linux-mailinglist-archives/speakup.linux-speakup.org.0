Return-Path: <speakup+bounces-1354-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 39B19B56098
	for <lists+speakup@lfdr.de>; Sat, 13 Sep 2025 14:16:30 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=lk71oZ8L;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3C432382C51; Sat, 13 Sep 2025 08:16:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1AEB4382BFD
	for <lists+speakup@lfdr.de>; Sat, 13 Sep 2025 08:16:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C148E382BE6; Sat, 13 Sep 2025 08:16:21 -0400 (EDT)
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 639BF382BDF
	for <speakup@linux-speakup.org>; Sat, 13 Sep 2025 08:16:19 -0400 (EDT)
Date: Sat, 13 Sep 2025 22:14:25 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1757765772;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JO21C4dmDSOH+f+gCiHhOSHttP4CyTpWj0gDFYaEjjk=;
	b=lk71oZ8LNI1tMKTX37m9A4lxjZFxR4Pk/wkXOjhdiTKfLSGlBjNVBn6WV9zr0OBQ8vlhMd
	0EQofEblr5G/xhOdfMe0HHlt9E1g2H6faTE+k5cemZxFv5zXxr/SKl03SZAptpim0oM4dM
	XcN8s4eQSNJWuFMOMHbwmHY+dUlnrAFt7tKUkvmysriQc/IsPvojiCnHSY0Yf1LpaxOQOP
	f3glqxtbPbIqyPxZNKbkKxxCsJd+GJEbkBPe2yDqw/Tl1JDSGRVyLqdMWDZ0UMd6cvYXlM
	F1Bd1ZPn2r/8g+cRBA1GDYnIDLXXDKJk8E256HfEuCxWBsNCDQCJ3PQqQMmAmA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Gregory Nowak <greg@gregn.net>
Cc: Karen Lewellen <klewellen@shellworld.net>,
	Chime Hart <chime@hubert-humphrey.com>,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMVgIfSRDN3Uewj3@titan>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <aMTOpzhGX72PC_2S@gregn.net>
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
In-Reply-To: <aMTOpzhGX72PC_2S@gregn.net>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Greg,

Yeah this is unfortunately true. I'm glad FOSS is still appreciated by people.

Jookia.

On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
> On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
> > I know this is the speakup list and I'm talking to an extremely niche
> > community here, but I'm genuinely interested to know: Why do you use
> > computers this way instead of like Windows or macOS? They can do much
> > more useful tasks.
> 
> They're both proprietary operating systems. Windows essentially
> hijacks the PC these days, and dictates to the user how they should
> use it (E.G. requiring the user to register an account with the
> developer to set it up, dictating when and what updates the user
> wishes to install, and so on). MacOS is tied to hardware from one company, and only works on
> that company's hardware by design.
> 
> Greg
> 
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org
> 

