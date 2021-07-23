Return-Path: <speakup+bounces-252-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DB8703D3E4B
	for <lists+speakup@lfdr.de>; Fri, 23 Jul 2021 19:15:11 +0200 (CEST)
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49AB9380F66; Fri, 23 Jul 2021 13:15:11 -0400 (EDT)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Sb84afIM;
	dkim-atps=neutral
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 36942380C71
	for <lists+speakup@lfdr.de>; Fri, 23 Jul 2021 13:15:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1B47C380C76; Fri, 23 Jul 2021 13:15:06 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D7778380B3F
	for <speakup@linux-speakup.org>; Fri, 23 Jul 2021 13:15:05 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GWbY35FlhzFm6;
	Fri, 23 Jul 2021 13:15:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1627060503; bh=svF5d9qoEQh1duDQv4XLoiRqrulQklQdE3YmhYMUj8c=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=Sb84afIMK3RoSQ+KuePKEL7tgYPKHc2IXJ7RfwVqm1b5Wav4hbEkjt1Ck1yFy9tCt
	 VFfH5Z0+EKsBHF65Cm5Ax06E7KCMrpM9D4nxcWKZ+xLLULgF2UtutNkIqFucEPP3gb
	 AubsXBronXP5E51WXXph/tfMfiYSUzjFajOOp8q8=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GWbY34sX6zcbc; Fri, 23 Jul 2021 13:15:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GWbY34XffzcbW;
	Fri, 23 Jul 2021 13:15:03 -0400 (EDT)
Date: Fri, 23 Jul 2021 13:15:03 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>, 
    "Joseph C. Lininger" <joe@pcdesk.net>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Speakup on Arch Linux
In-Reply-To: <20210723162731.ybyg2okeqgydfzph@alex-pc>
Message-ID: <alpine.NEB.2.23.451.2107231308430.13529@panix1.panix.com>
References: <c5c14706-16d7-c9bf-9b1e-b72e52b37889@pcdesk.net> <20210723162731.ybyg2okeqgydfzph@alex-pc>
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

I tried installing a clear archlinux installation using archinstall and
though the installer talked when booted correctly, the installed system
failed to talk with espeak-ng and espeak.  I'm going to try two things
next.
First boot the installed archlinux system and hit down-arrow then enter
during the boot process and see if that turns speech on.
If that fails, the next thing I'll try is to install a new version of
jenux and see if that comes up talking.  I usually go with a minimal
installation (no desktops) since in the past such installations were more
stable for me.
When I tried the archlinux installs recently, I chose minimal rather than
desktop install choices.  Before I knew about the archinstall script, I
installed archlinux according to directions in the large
installation-guide and have braille notes for that kind of installation.


On Fri, 23 Jul 2021, Alexander Epaneshnikov wrote:

> On Fri, Jul 23, 2021 at 12:12:12PM -0400, Joseph C. Lininger wrote:
> > Good day all,
>
> hello Joseph.
>
> > I saw a couple of messages earlier about ALSA issues on Arch Linux with
> > espeakup. I can't find them now though. The latest versions of alsa,
> > speakup, linux kernel, etc. cause the speach to lag while typing. Is there a
> > workaround to this, packages I should not upgrade right now, etc? I can
> > revert my system to a previous state, but I need to know how to avoid this
> > problem when I go to update packages going forward. Also, anyone know if a
> > fix is in the works? Obviously just permanently using older package versions
> > isn't a good solution.
>
> can you describe problem in more details? or maybe you can record sound?
> >
> > Thanks in advance.
> > Joe
> >
> --
> Sincerely, Alexander
>
>

