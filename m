Return-Path: <speakup+bounces-637-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D6C5D5A1AF7
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 23:23:26 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=YTaBFl6C;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6058B380CEE; Thu, 25 Aug 2022 17:23:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 56B5F38110D
	for <lists+speakup@lfdr.de>; Thu, 25 Aug 2022 17:23:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2A5BA380C5F; Thu, 25 Aug 2022 17:23:21 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 18224380986
	for <speakup@linux-speakup.org>; Thu, 25 Aug 2022 17:23:21 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MDGCn2GmCz44gx;
	Thu, 25 Aug 2022 17:23:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1661462597; bh=Nl8EY6GB3MoaR8o4t9PRiqhMRMH7FKnIrJLZQeiiCV8=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=YTaBFl6CVfDcFJ7mUM67IIFcE84Sednm9aoCpy55ScRr1h7zXgh7qWbtslMa59SA5
	 TaSP26+OTX0hE8j4MgIQCMhjCCeMkiLpb6NGytLghou10QVhTtpMr18/6oB0TLq2B9
	 l/WpN8ENS6L1JRvMWZFivYpc7t45lZdDSdUDq6dw=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MDGCn23Vhzcbc; Thu, 25 Aug 2022 17:23:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MDGCn20yYzcbP;
	Thu, 25 Aug 2022 17:23:17 -0400 (EDT)
Date: Thu, 25 Aug 2022 17:23:17 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: hopefully some help with AntiX
In-Reply-To: <022d01d8b8c8$57f2a780$80ffa8c0@Win7VM>
Message-ID: <90ba215a-3c3f-4328-2e1a-892922c1f019@panix.com>
References: <005b01d8b764$65f690e0$80ffa8c0@Win7VM> <f1e0bff4-cbdc-1766-293-dc2558869c6b@panix.com> <022401d8b8c1$9a2c40e0$80ffa8c0@Win7VM> <022901d8b8c6$2c5c46f0$80ffa8c0@Win7VM> <363bcd12-5bd3-5749-2d6e-348ebfa9b461@panix.com>
 <022d01d8b8c8$57f2a780$80ffa8c0@Win7VM>
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

I have debpackages as a search elvi with surfraw on my system and that
tells me python3-pip-whl and fenrir are both available in different
versions of debian.  Not all versions of debian either.  You probably
haven't got bullseye or buster installed on debian as search repositories
and that may be part of your problem.  It's been a while since I've done
much with debian and I don't always remember all package names exactly.
Lots of other life happening over here every so often.


Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Thu, 25 Aug 2022, K0LNY_Glenn wrote:

> well it could not find python-pip3 and when I did
> sudo apt search finrir
> it just said full text search
> sorting
>
> Then back to the prompt.
>
> ----- Original Message -----
> From: "Jude DaShiell" <jdashiel@panix.com>
> To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system
> for Linux." <speakup@linux-speakup.org>
> Sent: Thursday, August 25, 2022 4:06 PM
> Subject: Re: hopefully some help with AntiX
>
>
> python-pip3 may be the name of the package by now.  In any case, try apt
> search fenrir* and see what comes up then.
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Thu, 25 Aug 2022, K0LNY_Glenn wrote:
>
> > Well looking into antix repositories, it seems it uses a cli tool called
> > cli-antiX
> > but the trouble is, I can't tell what the choices are, for searching, and
> > for installing, it reads
> > enter on the highlighted choice.
> > Glenn
> > ----- Original Message -----
> > From: "K0LNY_Glenn" <glenn@ervin.email>
> > To: "Jude DaShiell" <jdashiel@panix.com>; "Speakup is a screen review
> > system
> > for Linux." <speakup@linux-speakup.org>
> > Sent: Thursday, August 25, 2022 3:31 PM
> > Subject: Re: hopefully some help with AntiX
> >
> >
> > So I tried
> > sudo pip install fenrir-screenreader -y
> > and it didn't know pip
> > So I tried
> > sudo apt install pip -y
> > and it couldn't find it.
> > And I tried the same with git and it couldn't find the package.
> >
> > Frustrating.
> >
> > ----- Original Message -----
> > From: "Jude DaShiell" <jdashiel@panix.com>
> > To: "K0LNY_Glenn" <glenn@ervin.email>; "Speakup is a screen review system
> > for Linux." <speakup@linux-speakup.org>
> > Sent: Tuesday, August 23, 2022 10:50 PM
> > Subject: Re: hopefully some help with AntiX
> >
> >
> > You could try fenrir with git or pipi whichever is available.
> >
> >
> > Jude <jdashiel at panix dot com> "There are four boxes to be used in
> > defense of liberty:
> >  soap, ballot, jury, and ammo. Please use in that order."
> > -Ed Howdershelt (Author, 1940)
> >
> > .
> >
> > On Tue, 23 Aug 2022, K0LNY_Glenn wrote:
> >
> > > Hello,
> > > So I successfully got a live version of AntiX 19.5 base 386 on my
> > > Asus701
> > > I am having trouble getting in with SSH.
> > > When I do speaker test on the actual netbook, it works, so I know the
> > > audio
> > > works.
> > > Neither espeak test, or espeak-ng test, worked.
> > > It is Debian based, so I did apt update and most of the following
> > > things,
> > > I
> > > tried both with sudo and without.
> > > On the computer trying to get in, it tells me connection refused.
> > > It is on the network as antix1
> > > Everything I read on-line suggest it should have openssh installed, but
> > > I
> > > ran the apt install for openssh-server -y just in case.
> > > I tried systemctl start openssh
> > > and I tried system restart openssh
> > > I guess it is possible espeak-NG may not be in its repository.
> > > Then espeeakup wouldn't be there either.
> > > If I had speakup going on the AntiX, or an SSH connection, I could start
> > > getting it going.
> > >
> > > Anyone have any ideas for this?
> > > This would be good on the Asus 701, it's using Buster, which isn't that
> > > old.Thanks for any assistance.
> > >
> > > Glenn
> > >
> > >
> > >
> >
> >
> >
> >
>
>
>

