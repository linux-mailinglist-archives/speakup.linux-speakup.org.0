Return-Path: <speakup+bounces-1122-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E48FE8B8F04
	for <lists+speakup@lfdr.de>; Wed,  1 May 2024 19:27:24 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=utgIvVvy;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41232C81C5F; Wed, 01 May 2024 13:27:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1E3C6C81C82
	for <lists+speakup@lfdr.de>; Wed, 01 May 2024 13:27:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DDB0CC81030; Wed, 01 May 2024 13:27:15 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C1AD2C81015
	for <speakup@linux-speakup.org>; Wed, 01 May 2024 13:27:15 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VV3sV2hRWzHqL;
	Wed,  1 May 2024 13:27:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714584430; bh=uBeQesDfYpfLuItrcIuc5XrUe+oMVEuomJJ1T1PC/gI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=utgIvVvyPZszsB26gFOZYAQNXf1xnSAi8xXtnsKegwE0knwoBWlq1zMkC3J/LxHQ5
	 9SggEnRcvQde+IMLWFOO1g8SroQ17VNxLTmyFV7aFRPdC3cS6T3n1V1fKob54ffaM7
	 gvezV8Xhq0d4VkQZvl/6pFZ5+bEwP5K6spZYpjTk=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VV3sV2VRCzcbc; Wed,  1 May 2024 13:27:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VV3sV2QlzzcbV;
	Wed,  1 May 2024 13:27:10 -0400 (EDT)
Date: Wed, 1 May 2024 13:27:10 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: speakup@linux-speakup.org
Subject: Re: thinking about gentoo install
In-Reply-To: <0bc8374d-8339-19b5-87f1-cf342c8df6d4@panix.com>
Message-ID: <4507012e-70ed-1ee3-20ad-09b4666e5b22@panix.com>
References: <feebe4f0-79a4-9ef2-ee0a-a201ed637a03@panix.com> <Pine.LNX.4.64.2405011214580.1999345@users.shellworld.net> <0bc8374d-8339-19b5-87f1-cf342c8df6d4@panix.com>
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

There is another reason for this.  Let's say for hypothetical purposes
that a particular form of Linux used becomes the favorite of state actors
and those actors do lots of damage with it.  At that point it would be a
reasonable security precaution to clean a system down to bare iron and
install another form of linux.  If you have the next linux to install and
already know how to do that installation in the event that becomes
necessary you will be able to do the job.  Not having other forms and/or
ignorance on how to do this puts you behind one or more 8 balls.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 1 May 2024, Jude DaShiell wrote:

> Nothing wrong at all Karen.  I am doing what I am doing for how shall I
> put this experimental purposes only.  If you don't test these things you
> don't know.
>
>
> --
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
>
> On Wed, 1 May 2024, Karen Lewellen wrote:
>
> > Jude,
> > I have an odd question?
> > Is there something wrong with your current  preferred Linux distribution?
> > A problem that you feel this one can  provide better?
> > Karen
> >
> >
> >
> > On Wed, 1 May 2024, Jude DaShiell wrote:
> >
> > > Burning gentoo onto a flash drive probably burns the image with all
> > > permissions intact.
> > > If those permissions are read-only and if the installer does not change
> > > any of those permissions it will be impossible to edit anything and have
> > > the edits saved.
> > > This may explain why espeakup cannot be started after booting the
> > > installer.  If that is the case, the accessibility project in order to
> > > promote screen reader accessibility use in gentoo will need to do a little
> > > more writing which will expand the espeakup start up process after boot.
> > > If I could run slint and actually reach into gentoo on a hard drive in its
> > > own mount point I might be able to inspect file permissions for files in
> > > gentoo and if I had chroot access into gentoo change the necessary file
> > > permissions so once edits got done those edits would stick.
> > > Many years ago a process for doing this was put up on the speakup mailing
> > > list and I didn't need it at the time so deleted it on this end.  I
> > > remember it involved using loop in some way.
> > >
> > >
> > > --
> > > Jude <jdashiel at panix dot com>
> > > "There are four boxes to be used in defense of liberty:
> > > soap, ballot, jury, and ammo.
> > > Please use in that order."
> > > Ed Howdershelt 1940.
> > >
> > >
> >
> >
>
>

