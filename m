Return-Path: <speakup+bounces-1110-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B157D8B3565
	for <lists+speakup@lfdr.de>; Fri, 26 Apr 2024 12:37:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=apQPFKuj;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 953D0C81C94; Fri, 26 Apr 2024 06:37:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 75B3BC80FD7
	for <lists+speakup@lfdr.de>; Fri, 26 Apr 2024 06:37:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3161AC80FD8; Fri, 26 Apr 2024 06:37:08 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 14158C80FD6
	for <speakup@linux-speakup.org>; Fri, 26 Apr 2024 06:37:08 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VQq0W1nZHz10PP;
	Fri, 26 Apr 2024 06:36:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714127819; bh=b+jbD+P/btqyXh/HeRZrHJI1Ge5WoGb5Z/xc3ubXQ4o=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=apQPFKuj+NYKp3+BqX3ediBU5U6/epnatURV89/l+VzUiyzd5fDLJNbwC1f2/+p3o
	 tWMUQhNyj2BT4wy8m8HjZ7Ep5xpTS/pojzivnE6d30swXt8LXxInSM+W2Noxzaj1Me
	 4qqtWz7HQkDGuvW/JW+vmm+QRJod7JysRUcdpDbQ=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VQq0W1Sx6zcbc; Fri, 26 Apr 2024 06:36:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VQq0W1Q5HzcbC;
	Fri, 26 Apr 2024 06:36:59 -0400 (EDT)
Date: Fri, 26 Apr 2024 06:36:59 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: John Covici <covici@ccs.covici.com>
cc: speakup@linux-speakup.org
Subject: Re: speakup and gentoo
In-Reply-To: <m3y19026je.wl-covici@ccs.covici.com>
Message-ID: <8c2f3044-4655-7dbe-a06f-5cf5ae148126@panix.com>
References: <10acd4eb-8872-1669-0086-fb591ee6cad4@panix.com> <m3y19026je.wl-covici@ccs.covici.com>
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

No hardware synthesizers available here and no braille display either.
What I tried last night after a full boot was:
/etc/init.d/espeakup start speakup.synth=soft
When that failed I tried:
export speakup.synth=soft
/etc/init.d/espeakup start
That also failed.
I'll probably use be my eyes sometime this weekend and see if this can
actually be done at the boot: prompt.
If the boot: prompt doesn't work, what that tells me is accessibility
testing of install-minimal disks was pencil whipped to the extent if
espeak packages and scripts are installed then the test passes.
What was not done was a sighted tester installed speakup at the boot
prompt and waited until the install disk came up speaking the same text
gentoo shows to sighted users all the way down to the root prompt.
If that's the case this will not be good for new screen reader
accessibility installs of gentoo.
If there is no way possible to start espeak after boot, for whatever
reason that hurts gentoo in terms of flexibility in accessibility
installs.  A click on a sound card at the boot prompt could help or if
grub is used for boot control in the installer disk uncommenting the one
line that has grub play a sound or sound series at boot would be even
quicker.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 25 Apr 2024, John Covici wrote:

> See if you can find a hardware synth to install the stage3 and after
> that you could emerge espeakup.
>
> On Thu, 25 Apr 2024 19:48:48 -0400,
> Jude DaShiell wrote:
> >
> > Does anyone on this list know what command to run in gentoo after booting
> > is finished to bring up espeak and have espeak read all of what comes up
> > on the screen?  I'm using speakup.synth=soft after the speakup command and
> > all it says is speakup.synth=soft.
> > I can't catch the boot: prompt so need to start this up after booting is
> > finished.  Apparently this is an openrc system though stage3 disks can put
> > other process managers like systemd on at user option.
> >
> >
> > --
> >  Jude <jdashiel at panix dot com>
> >  "There are four boxes to be used in defense of liberty:
> >  soap, ballot, jury, and ammo.
> >  Please use in that order."
> >  Ed Howdershelt 1940.
> >
>
>

