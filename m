Return-Path: <speakup+bounces-1402-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id F1E8AB94672
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 07:30:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=N6pfkVTS;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A51C73827EB; Tue, 23 Sep 2025 01:30:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 836E0382235
	for <lists+speakup@lfdr.de>; Tue, 23 Sep 2025 01:30:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6AE0E382235; Tue, 23 Sep 2025 01:30:39 -0400 (EDT)
Received: from out-170.mta1.migadu.com (out-170.mta1.migadu.com [95.215.58.170])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 36D1C38221D
	for <speakup@linux-speakup.org>; Tue, 23 Sep 2025 01:30:39 -0400 (EDT)
Date: Tue, 23 Sep 2025 15:27:54 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1758605437;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=136Q0QBWKm+UHkopj2RtwbhM8rFmos7HMj5aRyD7OeM=;
	b=N6pfkVTS/h3TH9lZKFHaCRzExtA+RRQrkFqex1Yhu8cjZlXvBnROBBeGggne1gr2Svc95g
	BdBZxYk+ZWmt+bTdb/V2Cfczhk2P7vC89OU/W2e2Xpqn26Dm3bVCZ7Anys08lfWhWIL6rZ
	A2wJqrF5HqBxP/7o6rmVv6NTs33ZWzddlRM3Yx38RdSS86yHwg4LbTcwplf3S5gOJk7Mg1
	RimzmkUg0qVaZuSWb4hSj0K+TIYU7Je0IWlmvp9Jse1c5hqRVk2R2VUgj8TvdK7An2Ub0Q
	ZXxVJnFxpgIYciTWKdrGCt50gRE1J+a+nyLtmzU2sV/NzUPhJnFrK4ekjypvBw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: Gregory Nowak <greg@gregn.net>,
	Karen Lewellen <klewellen@shellworld.net>,
	Chime Hart <chime@hubert-humphrey.com>,
	Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aNIv2l1tKiR26V-R@titan>
References: <202509111603.58BG3W3p018143@nfbcal.org>
 <7a04c6dd-c761-4445-b53a-3c4525cf2a87@crosslink.net>
 <579c5d9b-5ba1-4029-982a-01295fea3a61@posteo.com.br>
 <Pine.LNX.4.64.2509112223130.3830807@users.shellworld.net>
 <6d3f190e-733a-e5d5-a8f5-cc6eb2c05e65@hubert-humphrey.com>
 <Pine.LNX.4.64.2509120106350.3832376@users.shellworld.net>
 <aMOwSwrEWTBtFn60@titan>
 <aMTOpzhGX72PC_2S@gregn.net>
 <aMVgIfSRDN3Uewj3@titan>
 <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
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
In-Reply-To: <242896ae-8567-4e97-a3e1-de09a8efecaa@math.wisc.edu>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Interesting, thanks for sharing. I never knew about Gnopernicus.

On Sat, Sep 13, 2025 at 10:35:51AM -0500, John G. Heim wrote:
> One of the biggest impediments for a blind person using Windows is the cost.
> It's less true today than it used to be. A Jaws license was over $1000 at
> one time.
> 
> For many years, it wasn't even possible for a blind person to install
> Windows. Well, I used to do  it via Linux, no kidding. I booted into Linux
> and ran the Windows installer in an emulator with an answer file. That
> worked really well until it didn't. At some point, Microsoft changed the
> installer so it had to be run in their pre boot environment (whatever).
> 
> Even after the install, I had to install a dumbed down version of Jaws that
> worked for only 40 minutes.
> 
> Also, there was a period when there was no screen reader for Ma Cos. There
> was some 3rd party screen reader for the Mac. The developer dropped support
> for it and some time later, Apple released VoiceOver. I was lucky, at the
> time my job did not require me to use a Mac. But the libraries at the
> university where I worked had to get rid of their Macs because it is against
> the law to have computers in a student lab that are not accessible to the
> blind. BTW, that's why Apple so suddenly started caring about a screen
> reader.
> 
> IIRC, at the time of the above events, I was using both Speakup and a GUI
> screen reader called Nupernicus. I remember walking out of a meeting with a
> librarian to talk about screen reader options for his lab and thinking how
> lucky I was to be a Linux user. I believe that particular library replaced
> most of their Macs with Windows machines and paid like $1000  each to
> Freedom Scientific for Jaws licenses. They put in one Linux machine just to
> see how it would go.
> 
> The computers in the student labs in the Math department where I worked were
> alwys Linux.
> 
> 
> 
> 
> On 9/13/25 7:14 AM, Jookia wrote:
> > Hi Greg,
> > 
> > Yeah this is unfortunately true. I'm glad FOSS is still appreciated by people.
> > 
> > Jookia.
> > 
> > On Fri, Sep 12, 2025 at 06:53:43PM -0700, Gregory Nowak wrote:
> > > On Fri, Sep 12, 2025 at 03:31:55PM +1000, Jookia wrote:
> > > > I know this is the speakup list and I'm talking to an extremely niche
> > > > community here, but I'm genuinely interested to know: Why do you use
> > > > computers this way instead of like Windows or macOS? They can do much
> > > > more useful tasks.
> > > They're both proprietary operating systems. Windows essentially
> > > hijacks the PC these days, and dictates to the user how they should
> > > use it (E.G. requiring the user to register an account with the
> > > developer to set it up, dictating when and what updates the user
> > > wishes to install, and so on). MacOS is tied to hardware from one company, and only works on
> > > that company's hardware by design.
> > > 
> > > Greg
> > > 
> > > 
> > > -- 
> > > web site: https://urldefense.com/v3/__http://www.gregn.net__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHanR6Yeo$
> > > gpg public key: https://urldefense.com/v3/__http://www.gregn.net/pubkey.asc__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHOOMsI_E$
> > > 
> > > --
> > > Free domains: https://urldefense.com/v3/__http://www.eu.org/__;!!Mak6IKo!PJ5X0c86hX4IZtoBfv1kpLI0rcSQhBtXAThLGAI94dOL6KYPF7-9QJySUhuUeXnUO8FQFZp1QNEHcie2CdA$  or mail dns-manager@EU.org
> > > 

