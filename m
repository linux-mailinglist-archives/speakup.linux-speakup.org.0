Return-Path: <speakup+bounces-1120-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 24E6D8B8DE0
	for <lists+speakup@lfdr.de>; Wed,  1 May 2024 18:16:48 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5AC07C81CE9; Wed, 01 May 2024 12:16:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 46BA6C80885
	for <lists+speakup@lfdr.de>; Wed, 01 May 2024 12:16:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DCE57C80BDE; Wed, 01 May 2024 12:16:42 -0400 (EDT)
Received: from atlas.bondproducts.com (unknown [23.24.6.165])
	by befuddled.reisers.ca (Postfix) with ESMTP id C3513C80BAD
	for <speakup@linux-speakup.org>; Wed, 01 May 2024 12:16:42 -0400 (EDT)
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 64DF440508;
	Wed,  1 May 2024 12:16:38 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 1A5BB1001C2; Wed,  1 May 2024 12:16:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 184F71000B6;
	Wed,  1 May 2024 12:16:38 -0400 (EDT)
Date: Wed, 1 May 2024 12:16:38 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: speakup@linux-speakup.org
Subject: Re: thinking about gentoo install
In-Reply-To: <feebe4f0-79a4-9ef2-ee0a-a201ed637a03@panix.com>
Message-ID: <Pine.LNX.4.64.2405011214580.1999345@users.shellworld.net>
References: <feebe4f0-79a4-9ef2-ee0a-a201ed637a03@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Jude,
I have an odd question?
Is there something wrong with your current  preferred Linux distribution?
A problem that you feel this one can  provide better?
Karen



On Wed, 1 May 2024, Jude DaShiell wrote:

> Burning gentoo onto a flash drive probably burns the image with all
> permissions intact.
> If those permissions are read-only and if the installer does not change
> any of those permissions it will be impossible to edit anything and have
> the edits saved.
> This may explain why espeakup cannot be started after booting the
> installer.  If that is the case, the accessibility project in order to
> promote screen reader accessibility use in gentoo will need to do a little
> more writing which will expand the espeakup start up process after boot.
> If I could run slint and actually reach into gentoo on a hard drive in its
> own mount point I might be able to inspect file permissions for files in
> gentoo and if I had chroot access into gentoo change the necessary file
> permissions so once edits got done those edits would stick.
> Many years ago a process for doing this was put up on the speakup mailing
> list and I didn't need it at the time so deleted it on this end.  I
> remember it involved using loop in some way.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
>

