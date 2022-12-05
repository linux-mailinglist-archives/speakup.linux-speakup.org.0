Return-Path: <speakup+bounces-887-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 835AE642141
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 02:54:21 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=c8ULV7IK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 93F59382AAC; Sun,  4 Dec 2022 20:54:20 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 733F9382A1E
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 20:54:20 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 797CC382A45; Sun,  4 Dec 2022 20:54:11 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 56628382A1E
	for <speakup@linux-speakup.org>; Sun,  4 Dec 2022 20:54:11 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4NQRRk52xGz3lL5;
	Sun,  4 Dec 2022 20:54:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1670205250; bh=qPNKUfGkGMnxtMECMqXYTkyHjKPS2I0t6I2b04YZdVU=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=c8ULV7IKkTWi3KmpCRA+0+i+NKY33biIJpWiEBkyeNUgtmefpDdttMY+Qq17iBxaZ
	 9QefQl8SZUgAlwuczAxfue04j6t3plwN3Cg1iPu1MrBZhAsjh3H5o4gqvsD/XGykc0
	 30Fict4+ReyqLZneN3NilRupXaBlFrw8c/z1rU7o=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4NQRRk4Fbkzcbc; Sun,  4 Dec 2022 20:54:10 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4NQRRk3sdGzcbC;
	Sun,  4 Dec 2022 20:54:10 -0500 (EST)
Date: Sun, 4 Dec 2022 20:54:10 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, speakup@linux-speakup.org, 
    Didier Spaier <didier@slint.fr>
Subject: Re: change eSpeak Default Voice
In-Reply-To: <024b01d90849$8e685fa0$88ffa8c0@Win7VM>
Message-ID: <d0962b6-b940-1e30-4a76-ca5362b19a6f@panix.com>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM> <Y4wZa/0WtgPE3nyH@gregn.net> <017701d90794$4d7619c0$88ffa8c0@Win7VM> <Y4wcSYOKzFn/yIeh@gregn.net> <018001d90797$3bf04b00$88ffa8c0@Win7VM> <Y4woAGJEUf430mTc@gregn.net> <018701d9079f$53126810$88ffa8c0@Win7VM>
 <5ab5197f-f3c3-c7f1-b497-0e702525d2cd@slint.fr> <01a801d907fd$bb39fbc0$88ffa8c0@Win7VM> <3137b9f2-ce47-ce5-955b-36d5d06b7b71@panix.com> <024b01d90849$8e685fa0$88ffa8c0@Win7VM>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

One way to find out.  Get it changed on either graphical environment or
console then test the other environment to see if the change done in the
first environment took in the second.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sun, 4 Dec 2022, K0LNY_Glenn wrote:

> I have wondered if screenreaders are using the NG one or not, such as Orca.
> Orca just calls it eSpeak.
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; "Didier
> Spaier" <didier@slint.fr>
> Sent: Sunday, December 04, 2022 7:31 PM
> Subject: Re: change eSpeak Default Voice
>
>
> espeak-ng is a fork off espeak and intended to be a more modern
> replacement for espeak.
> So which one is run is important.
>
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Sun, 4 Dec 2022, K0LNY_Glenn wrote:
>
> > Well espeak is espeak, no matter what flavor of Linux it's on, Linux is
> > Linux.
> > I imagined the only differences between distros would be it's location.
> > And I do appreciate it when people give a real answer, rather than just
> > directing me where to look it up.
> > Or is help only reserved for those who strive to make Linux their main
> > source of computing?
> > Glenn
> > ----- Original Message -----
> > From: "Didier Spaier" <didier@slint.fr>
> > To: <speakup@linux-speakup.org>
> > Sent: Sunday, December 04, 2022 3:23 AM
> > Subject: Re: change eSpeak Default Voice
> >
> >
> > Hello,
> >
> > answer in line.
> >
> > Le 04/12/2022 ? 06:14, K0LNY_Glenn a ?crit :
> > > Well Linux is not my main operating system, and I think it's a fair
> > > question
> > > to an email  list.
> >
> > It would have been a fair question if asked in the right list, BUT this
> > one
> > if
> > primarily about the speakup kernel driver, rather than software that make
> > use of
> > it, like speakup or speechd-up.
> >
> > Further you should have stated which distribution you are using and if you
> > were
> > using espeakup or speechd-up, which would have allowed to give you an
> > adapted
> > answer.
> >
> > You can learn how to ask questions the smart way reading this:
> > http://www.catb.org/~esr/faqs/smart-questions.html
> >
> > > That is the biggest problem with Linux users, they think they are above
> > > helping people who aren't into that operating system as much as they
> > > are.
> >
> > Is that how grateful you are for people who spend their time, of which
> > they
> > have
> > already not enough to do all they need to, to try to help you?
> >
> > > In my opinion, the only question that shouldn't be asked about on a list
> > > like this, is one that is repeatedly asked, as folks should save useful
> > > information that comes in through these lists, like I do, for later
> > > looking
> > > up the information already saved.
> >
> > Again, only if the question is properly asked and in the right channel,
> > see
> > above.
> >
> > > But there is so little traffic on these Linux lists, that I can only
> > > imagine
> > > that people have given up asking for guidance.
> >
> > > And the suggestion to a list member to google something, rather than
> > > helping,  is ludicrous, because the information you get from Google
> > > searches, is provided by lists like this, where people have asked the
> > > question before, and therefore, if questions don't get answered on these
> > > lists, then Google won't find answers for people searching on-line.
> >
> > What? Nobody suggested you google anything, just to read the documentation
> > provided with your software, in this case at least using the "man" utility
> > installed in your system.
> >
> > > I have gotten some help here, but I don't understand why people bother
> > > to
> > > reply, or even be on a list if they don't want to help others.
> >
> > This very unfair statement convince me that we were wrong wasting our time
> > trying to help you. I won't do this mistake again.
> >
> > Good luck,
> > Didier
> >
> >
> >
>
>
>

