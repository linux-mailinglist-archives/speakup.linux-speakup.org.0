Return-Path: <speakup+bounces-885-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6E3A064210F
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 02:32:07 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=jXRXW8ly;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 92452382ADA; Sun,  4 Dec 2022 20:32:06 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 723E7380A94
	for <lists+speakup@lfdr.de>; Sun,  4 Dec 2022 20:32:06 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6FF71382A3F; Sun,  4 Dec 2022 20:31:57 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 31194380A94
	for <speakup@linux-speakup.org>; Sun,  4 Dec 2022 20:31:57 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4NQQy35K6jz3kmL;
	Sun,  4 Dec 2022 20:31:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1670203915; bh=np1IvoURD57On/HwgrIBu2u1R/mZOH6oiR5TsVz+WD0=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=jXRXW8lyeCW8C5klufmJS3oU62GMdAMXCPDOJuOIvfvyJgOCmmRCq5CVIJBNN5PN8
	 jLaJWmJ5O87nCVejdY9fx4YSHE0wOzuVquZ1IF3262/ED6YfU0MXUVmunyZaZWI8wl
	 gnp8YYfiAH85kgBkBEyEUrvr5u/OcRTVbCGZz6kg=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4NQQy35Rznzcbc; Sun,  4 Dec 2022 20:31:55 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4NQQy35PwwzcbC;
	Sun,  4 Dec 2022 20:31:55 -0500 (EST)
Date: Sun, 4 Dec 2022 20:31:55 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, speakup@linux-speakup.org, 
    Didier Spaier <didier@slint.fr>
Subject: Re: change eSpeak Default Voice
In-Reply-To: <01a801d907fd$bb39fbc0$88ffa8c0@Win7VM>
Message-ID: <3137b9f2-ce47-ce5-955b-36d5d06b7b71@panix.com>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM> <Y4wZa/0WtgPE3nyH@gregn.net> <017701d90794$4d7619c0$88ffa8c0@Win7VM> <Y4wcSYOKzFn/yIeh@gregn.net> <018001d90797$3bf04b00$88ffa8c0@Win7VM> <Y4woAGJEUf430mTc@gregn.net> <018701d9079f$53126810$88ffa8c0@Win7VM>
 <5ab5197f-f3c3-c7f1-b497-0e702525d2cd@slint.fr> <01a801d907fd$bb39fbc0$88ffa8c0@Win7VM>
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

espeak-ng is a fork off espeak and intended to be a more modern
replacement for espeak.
So which one is run is important.



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sun, 4 Dec 2022, K0LNY_Glenn wrote:

> Well espeak is espeak, no matter what flavor of Linux it's on, Linux is
> Linux.
> I imagined the only differences between distros would be it's location.
> And I do appreciate it when people give a real answer, rather than just
> directing me where to look it up.
> Or is help only reserved for those who strive to make Linux their main
> source of computing?
> Glenn
> ----- Original Message -----
> From: "Didier Spaier" <didier@slint.fr>
> To: <speakup@linux-speakup.org>
> Sent: Sunday, December 04, 2022 3:23 AM
> Subject: Re: change eSpeak Default Voice
>
>
> Hello,
>
> answer in line.
>
> Le 04/12/2022 ? 06:14, K0LNY_Glenn a ?crit :
> > Well Linux is not my main operating system, and I think it's a fair
> > question
> > to an email  list.
>
> It would have been a fair question if asked in the right list, BUT this one
> if
> primarily about the speakup kernel driver, rather than software that make
> use of
> it, like speakup or speechd-up.
>
> Further you should have stated which distribution you are using and if you
> were
> using espeakup or speechd-up, which would have allowed to give you an
> adapted
> answer.
>
> You can learn how to ask questions the smart way reading this:
> http://www.catb.org/~esr/faqs/smart-questions.html
>
> > That is the biggest problem with Linux users, they think they are above
> > helping people who aren't into that operating system as much as they are.
>
> Is that how grateful you are for people who spend their time, of which they
> have
> already not enough to do all they need to, to try to help you?
>
> > In my opinion, the only question that shouldn't be asked about on a list
> > like this, is one that is repeatedly asked, as folks should save useful
> > information that comes in through these lists, like I do, for later
> > looking
> > up the information already saved.
>
> Again, only if the question is properly asked and in the right channel, see
> above.
>
> > But there is so little traffic on these Linux lists, that I can only
> > imagine
> > that people have given up asking for guidance.
>
> > And the suggestion to a list member to google something, rather than
> > helping,  is ludicrous, because the information you get from Google
> > searches, is provided by lists like this, where people have asked the
> > question before, and therefore, if questions don't get answered on these
> > lists, then Google won't find answers for people searching on-line.
>
> What? Nobody suggested you google anything, just to read the documentation
> provided with your software, in this case at least using the "man" utility
> installed in your system.
>
> > I have gotten some help here, but I don't understand why people bother to
> > reply, or even be on a list if they don't want to help others.
>
> This very unfair statement convince me that we were wrong wasting our time
> trying to help you. I won't do this mistake again.
>
> Good luck,
> Didier
>
>
>

