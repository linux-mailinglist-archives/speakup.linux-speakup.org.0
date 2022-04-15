Return-Path: <speakup+bounces-399-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1EDD8502CEF
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 17:38:04 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=CICv+WtB;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B4AC3380D3C; Fri, 15 Apr 2022 11:38:03 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A09F9380BD5
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 11:38:03 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 26A0D380BD4; Fri, 15 Apr 2022 11:37:59 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 17F3F380BC2
	for <speakup@linux-speakup.org>; Fri, 15 Apr 2022 11:37:59 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Kg0pG3vDgz14Cr;
	Fri, 15 Apr 2022 11:37:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1650037078; bh=aLDCVZT5HRJzXr73ZDHHBDV6F6b6IVg0XzAiehBRqNE=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=CICv+WtBx0M/BsbGY/fO2/fY25sHLg+F6oScesOD9OKdo2RDLim/lxcsF6jSOmzsy
	 pstzdpX7JRdyMBIo4lK7y2O7CdN4I5OgE7uXI1JmJhpAyW8KT1pj3K2wIhIMN4Gl9L
	 xwZiOmdV2XVfryZxeq2mAUxjEydMKRrNA/bMSro4=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Kg0pG3bdnzcbc; Fri, 15 Apr 2022 11:37:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Kg0pG3Yp7zcbP;
	Fri, 15 Apr 2022 11:37:58 -0400 (EDT)
Date: Fri, 15 Apr 2022 11:37:58 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: John Covici <covici@ccs.covici.com>
cc: speakup@linux-speakup.org
Subject: Re: multiple gentoo speakup install failures
In-Reply-To: <m3sfqeo0j6.wl-covici@ccs.covici.com>
Message-ID: <e5e5ff75-f985-5bb3-978b-c27232f4f01b@panix.com>
References: <c9b13650-c9da-cf15-68f7-9338fe6831@panix.com> <m3sfqeo0j6.wl-covici@ccs.covici.com>
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

No hardware synthesizer is available.


On Fri, 15 Apr 2022, John Covici wrote:

> You might try a hardware synth instead and when you compile the kernel
> you can fix it up the way you want.  Also, I like to use ssh to
> install such a thing, I am pretty sure you can use some boot parameter
> on your net install to do this.
>
> On Fri, 15 Apr 2022 10:02:31 -0400,
> Jude DaShiell wrote:
> >
> >
> > Things run until they don't any longer.
> > When they don't run any longer speakup dies.  The speakup cannot be
> > revived when this happens.
> > Also the system likely crashes since a poweroff command as root fails to
> > turn the system off.
> > Many times in order to start the computer I have to use the reset button
> > in addition to the power button on an 8 core 14gb ram amd system.
> > I tried restricting gentoo to one core with nosmp but that didn't help at
> > all either.
> > I tried with latest stage3 systemd file and latest gentoo-minimal disk.
> > So far as I'm concerned, gentoo at this time is uninstallable on this
> > system.
> > When speakup dies happens at random points during system installation too.
> > I got no idea what's going on and would like to know if I'm unique and
> > need a new computer or if this happens to others installing gentoo with
> > speakup.  I've tried gentoo and gentoo-nofb kernels too.
> > The farthest I got in recent install attempts was the emerge-webrsync step
> > which failed because of a bad /etc/portage/make.conf file.
> >
> >
>
>

