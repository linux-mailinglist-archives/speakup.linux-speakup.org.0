Return-Path: <speakup+bounces-900-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 846166439A3
	for <lists+speakup@lfdr.de>; Tue,  6 Dec 2022 00:40:12 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=s8HWQabH;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 04FFC382BE0; Mon,  5 Dec 2022 18:40:12 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D7CE7382A41
	for <lists+speakup@lfdr.de>; Mon,  5 Dec 2022 18:40:11 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id BBF90382AD2; Mon,  5 Dec 2022 18:40:02 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 9101A382A41
	for <speakup@linux-speakup.org>; Mon,  5 Dec 2022 18:40:02 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4NR0QT6hBXz44GB;
	Mon,  5 Dec 2022 18:40:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1670283601; bh=KNs1QQS500ks/N5g5HNehGC4HdXhT/VZYIOpvpQrfvY=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=s8HWQabHj43nDuoGIBIKaPe/4xyvcoYtpov/vLGfLqdaHKzxNlo1jMDMP9zlV2Flm
	 aSnEUlvNjvofdb517i5CYQcEk8vcHASUelW/9t5MZTwiA8McGvYd64WM436Yxe5u/+
	 OGaG9NAzPjvxeBORiA1+/ElZ5R46ocHkzDWA3BiA=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4NR0QT5lXyzcbc; Mon,  5 Dec 2022 18:40:01 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4NR0QT5R0HzcbP;
	Mon,  5 Dec 2022 18:40:01 -0500 (EST)
Date: Mon, 5 Dec 2022 18:40:01 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, speakup@linux-speakup.org, 
    Didier Spaier <didier@slint.fr>
Subject: Re: change eSpeak Default Voice
In-Reply-To: <030a01d908fd$4d714fc0$88ffa8c0@Win7VM>
Message-ID: <796a3940-9bf-33a3-f6f-e5b49a85aae@panix.com>
References: <013f01d9074d$551a6650$88ffa8c0@Win7VM> <Y4wZa/0WtgPE3nyH@gregn.net> <017701d90794$4d7619c0$88ffa8c0@Win7VM> <Y4wcSYOKzFn/yIeh@gregn.net> <018001d90797$3bf04b00$88ffa8c0@Win7VM> <Y4woAGJEUf430mTc@gregn.net> <018701d9079f$53126810$88ffa8c0@Win7VM>
 <5ab5197f-f3c3-c7f1-b497-0e702525d2cd@slint.fr> <01a801d907fd$bb39fbc0$88ffa8c0@Win7VM> <3137b9f2-ce47-ce5-955b-36d5d06b7b71@panix.com> <024b01d90849$8e685fa0$88ffa8c0@Win7VM> <d0962b6-b940-1e30-4a76-ca5362b19a6f@panix.com> <02b201d908bc$51231db0$88ffa8c0@Win7VM>
 <b09186d2-5221-478-43dd-3c85b236516@panix.com> <02de01d908e9$bbaf4b90$88ffa8c0@Win7VM> <37169af6-5d45-5bcf-2770-8c23ed37f02e@panix.com> <02e301d908ea$7ef69900$88ffa8c0@Win7VM> <40789e6d-d4d-8250-2f54-ba2d63d52be@panix.com> <02f301d908f4$d6abdc50$88ffa8c0@Win7VM>
 <7a4ffbe-a86-80ac-c2f4-52c753e549fe@panix.com> <030401d908fc$a924ead0$88ffa8c0@Win7VM> <9bc8719d-4677-4fec-d1c6-9d3bc8139cb0@panix.com> <030a01d908fd$4d714fc0$88ffa8c0@Win7VM>
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

My suggestion to you then is if you haven't yet installed mlocate or
slocate or plocate install one of those then as root run updatedb.  Then
run locate mb-us1 and see if that file is anywhere on your drive.  If it
is, where it is maybe will show you the way to all of the other voice
files.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 5 Dec 2022, K0LNY_Glenn wrote:

> The odd thing is, that in Mate, Orca has the voices.
> Glenn
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>; "Didier
> Spaier" <didier@slint.fr>
> Sent: Monday, December 05, 2022 4:58 PM
> Subject: Re: change eSpeak Default Voice
>
>
> Apparently you got no extra voices with debian version of espeak-ng and
> will need to download them and compile them yourself.
>
>
>
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Mon, 5 Dec 2022, K0LNY_Glenn wrote:
>
> > After the 1.5, it also listed the word data, but not a path.
> > Glenn
> > ----- Original Message -----
> > From: "Jude DaShiell" <jdashiel@panix.com>
> > To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>;
> > "Didier
> > Spaier" <didier@slint.fr>
> > Sent: Monday, December 05, 2022 4:53 PM
> > Subject: Re: change eSpeak Default Voice
> >
> >
> > On slint, I got espeak-ng version 1.51 and a pointer to
> > /usr/share/espeak-ng-data/ which has all of the voice stuff in it in
> > subdirectories.  The next directory below that is mb and below mb are
> > other directories.  Voices may have to be compiled in order to use them
> > that is one of the options on espeak-ng.  I do not know how to compile a
> > voice and set it as default though.  The United states has mb-us1 mb-us2
> > and mb-us3 in that mb directory.
> >
> >
> >
> > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty:
> >  soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > On Mon, 5 Dec 2022, K0LNY_Glenn wrote:
> >
> > > Jude,
> > > I just installed espeak-ng and the version is 1.50.
> > > Debian 11.5
> > >
> > > Glenn
> > > ----- Original Message -----
> > > From: "Jude DaShiell" <jdashiel@panix.com>
> > > To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>;
> > > "Didier
> > > Spaier" <didier@slint.fr>
> > > Sent: Monday, December 05, 2022 3:07 PM
> > > Subject: Re: change eSpeak Default Voice
> > >
> > >
> > > No, not really.  It's all dependent on what packages the distribution
> > > builders decide to put in their distributions.  Even today not all linux
> > > distributions use systemd that's a distribution builder choice.
> > > Preferable system for gentoo is openrc which I've never used.
> > >
> > >
> > > Jude <jdashiel at panix dot com>
> > > "There are four boxes to be used in defense of liberty:
> > >  soap, ballot, jury, and ammo. Please use in that order."
> > > -Ed Howdershelt (Author, 1940)
> > >
> > > .
> > >
> > > On Mon, 5 Dec 2022, K0LNY_Glenn wrote:
> > >
> > > > Odd that it came with 11.5 Bullseye.
> > > > Glenn
> > > >
> > > > ----- Original Message -----
> > > > From: "Jude DaShiell" <jdashiel@panix.com>
> > > > To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>;
> > > > "Didier
> > > > Spaier" <didier@slint.fr>
> > > > Sent: Monday, December 05, 2022 2:44 PM
> > > > Subject: Re: change eSpeak Default Voice
> > > >
> > > >
> > > > Hi Glen,
> > > >
> > > > I'm not sure that version of espeak can change voices.  That's an old
> > > > version of espeak.
> > > >
> > > >
> > > >
> > > > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > > defense of liberty:
> > > >  soap, ballot, jury, and ammo. Please use in that order."
> > > > -Ed Howdershelt (Author, 1940)
> > > >
> > > > .
> > > >
> > > > On Mon, 5 Dec 2022, K0LNY_Glenn wrote:
> > > >
> > > > > Hi Jude,
> > > > > espeak-ng --version says something like bad command or filename
> > > > > and just espeak says:
> > > > > 1.48.15
> > > > > Glenn
> > > > > ----- Original Message -----
> > > > > From: "Jude DaShiell" <jdashiel@panix.com>
> > > > > To: "K0LNY_Glenn" <glenn@ervin.email>; <speakup@linux-speakup.org>;
> > > > > "Didier
> > > > > Spaier" <didier@slint.fr>
> > > > > Sent: Monday, December 05, 2022 1:58 PM
> > > > > Subject: Re: change eSpeak Default Voice
> > > > >
> > > > >
> > > > > Try espeak --version and also try espeak-ng --version.  On slint,
> > > > > when
> > > > > you
> > > > > do that espeak-ng comes up both times as the actual software in use.
> > > > >
> > > > >
> > > > >
> > > > > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > > > > defense of liberty:
> > > > >  soap, ballot, jury, and ammo. Please use in that order."
> > > > > -Ed Howdershelt (Author, 1940)
> > > > >
> > > > > .
> > > > >
> > > > >
> > > > >
> > > >
> > > >
> > > >
> > >
> > >
> > >
> >
> >
>
>
>

