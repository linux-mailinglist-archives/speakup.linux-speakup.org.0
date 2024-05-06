Return-Path: <speakup+bounces-1130-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C16CC8BCEE1
	for <lists+speakup@lfdr.de>; Mon,  6 May 2024 15:22:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=temperror header.d=ccs.covici.com header.i=@ccs.covici.com header.a=rsa-sha256 header.s=default header.b=OV+A19UF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 28B86C81CAE; Mon, 06 May 2024 09:22:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 04CF3C81040
	for <lists+speakup@lfdr.de>; Mon, 06 May 2024 09:22:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id AA58BC81049; Mon, 06 May 2024 09:22:41 -0400 (EDT)
Received: from covici.com (debian-2.covici.com [166.84.7.93])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3E98CC80FF1
	for <speakup@linux-speakup.org>; Mon, 06 May 2024 09:22:41 -0400 (EDT)
Received: from ccs.covici.com (ccs.covici.com [70.109.51.194])
	(authenticated bits=0)
	by covici.com (8.15.2/8.15.2/Debian-22) with ESMTPSA id 446DMqiG541953
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 6 May 2024 09:22:58 -0400
Received: from ccs.covici.com (localhost [127.0.0.1])
	by ccs.covici.com (8.17.1.9/8.17.1.9) with ESMTPS id 446DMKXE4038686
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 6 May 2024 09:22:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ccs.covici.com;
	s=default; t=1715001740;
	bh=zAi4p3euSX4ihSODezTkwg7z8SFCDKk9MbbHBef65Es=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:Reply-To;
	b=OV+A19UFREWFPfK3JGnRmpdTZG7fM93b0m09EYTBsRW2w0vHNqy1t861CLtbs/zLc
	 IBXzedSBKZdfDoRnLZeMdXO/m3EAdXn0MBsG+o+Mk4HEbVmM1HfZDiN81NTKmWl/JA
	 zcmgJE3czEUNZjjK74wA0l4or301aCA3XQaBNLkk=
Received: (from covici@localhost)
	by ccs.covici.com (8.17.1.9/8.17.1/Submit) id 446DMKTk4038685;
	Mon, 6 May 2024 09:22:20 -0400
Date: Mon, 06 May 2024 09:22:20 -0400
Message-ID: <m3bk5jyt0z.wl-covici@ccs.covici.com>
From: John Covici <covici@ccs.covici.com>
To: Janina Sajka <janina@rednote.net>
Cc: speakup@linux-speakup.org
Subject: Re: Can We `Please Enjoy Single Digit Numbering in Speakup?
In-Reply-To: <ZjjPiNYlatNpb7tK@rednote.net>
References: <af4eb9cb-7a49-f290-7fbe-d77cb5e39982@hubert-humphrey.com>
	<ZjjPiNYlatNpb7tK@rednote.net>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/29.3 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
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

I wrote a small perl program to put spaces between the digits because
the vocalizer voice of speech dispatcher does this crazy million
... thing.  So, when I have a program that is going to output phone
numbers, I put the number through this program.

On Mon, 06 May 2024 08:39:36 -0400,
Janina Sajka wrote:
> 
> Providing text to speech readback of a string of numeric digits as
> individual digits rather than as a number would indeed be useful.
> However, I'm not so sure that's a Speakup problem, meaning that I
> suspect this is a bug with the TTS itself.
> 
> Historically, TTS engines have assumed responsibility for similar
> content interpretations. This has always been problematic and
> inappropriate, imo, but getting them to understand that has proven
> problematic in my experience. My favorite example is the way Eloquence
> (and it's Linux versions) insisted on rendering cd as "cendelas," not
> change directory, not compact disc, not even certificate of deposit, but
> candelas as if we blind folks were exclusively fixated on measuring
> luminosity in some arbitrary direction!
> 
> Rendering strings of numeric digits as digits would actually satisfy the
> more common use case, imo. I find it annoyingly difficult to translate a
> phone number from a speech rendering that starts with so many billion,
> followed by so many million, and then so many thousands. And why? Just
> because some developer saw an opportunity to show off how clever they were?
> 
> But to go back to my original point, I don't believe Speakup is
> processing any semantic understanding of the text it feeds to the speech
> engine. And, that's what it would take to solve this problem in Speakup.
> I could be wrong, of course.
> 
> Best,
> Janina
> 
> Chime Hart writes:
> > Hi All: I think Speakup is an only screen-reader in almost any platform
> > without an option to switch to hear single digits while reading. Maybe
> > Chromevox may not have this, but just about all others from DOS up through
> > Fenrir have offered this in some form. While it may seem like a small thing,
> > while reading an Alpine mail index, hearing the word "hundred" feels as if
> > it wastes alot of time. If it would be more official I can file a wish-list
> > bug against speakup-tools? When I run reportbug, that seems an only package
> > to file against. And speaking of outstanding bugs, back on February 20 I
> > filed
> > #1062507
> > about the DecTalk drivers. Funny thing was, even while reading over what I
> > had submitted, settings dropped. I looked around the Speakup drivers
> > directory in a newest 6.9 kernel, where a specific change which Samuel had
> > helped me with reguarding flush time. 10 is wonderful but in dectlk.c it
> > still says 4000.
> > In basicly nearly 21years of useing Speakup, an only other wish list item
> > would be an exception dictionary. Again, an item in most other
> > screen-readers. Thanks so much in advance for listing-and-considering these.
> > Chime
> 
> -- 
> 
> Janina Sajka (she/her/hers)
> Accessibility Consultant https://linkedin.com/in/jsajka
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> Linux Foundation Fellow
> https://www.linuxfoundation.org/board-of-directors-2/
> 
> 

-- 
Your life is like a penny.  You're going to lose it.  The question is:
How do
you spend it?

         John Covici wb2una
         covici@ccs.covici.com

