Return-Path: <speakup+bounces-1121-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1FF6F8B8EDA
	for <lists+speakup@lfdr.de>; Wed,  1 May 2024 19:14:30 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=hODzDigR;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A4EE4C81CC2; Wed, 01 May 2024 13:14:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 85B4FC80BDE
	for <lists+speakup@lfdr.de>; Wed, 01 May 2024 13:14:29 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2E3E0C8100F; Wed, 01 May 2024 13:14:21 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1294FC80BDE
	for <speakup@linux-speakup.org>; Wed, 01 May 2024 13:14:21 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VV3ZT6KwRzGfK;
	Wed,  1 May 2024 13:14:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714583649; bh=JJ+5LVFe7QL1YhtN1fRPZ/NPxhbqGTsFlumKUQVBpK0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=hODzDigRfDo9Fq45fSooGHf0Au7nXrr085AtjZU+Nod3WkMATNwsTy6Pd9ObaceQq
	 3M9J6uXWCU5N//z7oiTzer8HzQ8kFYKuK7is/KECE7fLGn1UeMH+IYEBqSV0GVKARj
	 Z1MIOZughXfMhShLy2lW090ZNN6vFREjOy2V4iL8=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VV3ZT5w8Jzcbc; Wed,  1 May 2024 13:14:09 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VV3ZT5s3kzcbV;
	Wed,  1 May 2024 13:14:09 -0400 (EDT)
Date: Wed, 1 May 2024 13:14:09 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>
cc: speakup@linux-speakup.org
Subject: Re: thinking about gentoo install
In-Reply-To: <Pine.LNX.4.64.2405011214580.1999345@users.shellworld.net>
Message-ID: <0bc8374d-8339-19b5-87f1-cf342c8df6d4@panix.com>
References: <feebe4f0-79a4-9ef2-ee0a-a201ed637a03@panix.com> <Pine.LNX.4.64.2405011214580.1999345@users.shellworld.net>
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

Nothing wrong at all Karen.  I am doing what I am doing for how shall I
put this experimental purposes only.  If you don't test these things you
don't know.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 1 May 2024, Karen Lewellen wrote:

> Jude,
> I have an odd question?
> Is there something wrong with your current  preferred Linux distribution?
> A problem that you feel this one can  provide better?
> Karen
>
>
>
> On Wed, 1 May 2024, Jude DaShiell wrote:
>
> > Burning gentoo onto a flash drive probably burns the image with all
> > permissions intact.
> > If those permissions are read-only and if the installer does not change
> > any of those permissions it will be impossible to edit anything and have
> > the edits saved.
> > This may explain why espeakup cannot be started after booting the
> > installer.  If that is the case, the accessibility project in order to
> > promote screen reader accessibility use in gentoo will need to do a little
> > more writing which will expand the espeakup start up process after boot.
> > If I could run slint and actually reach into gentoo on a hard drive in its
> > own mount point I might be able to inspect file permissions for files in
> > gentoo and if I had chroot access into gentoo change the necessary file
> > permissions so once edits got done those edits would stick.
> > Many years ago a process for doing this was put up on the speakup mailing
> > list and I didn't need it at the time so deleted it on this end.  I
> > remember it involved using loop in some way.
> >
> >
> > --
> > Jude <jdashiel at panix dot com>
> > "There are four boxes to be used in defense of liberty:
> > soap, ballot, jury, and ammo.
> > Please use in that order."
> > Ed Howdershelt 1940.
> >
> >
>
>

