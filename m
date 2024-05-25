Return-Path: <speakup+bounces-1111-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 345B68CF16B
	for <lists+speakup@lfdr.de>; Sat, 25 May 2024 23:29:16 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Sf+MlFe/;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7B5923828B6; Sat, 25 May 2024 17:29:14 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5198238270E
	for <lists+speakup@lfdr.de>; Sat, 25 May 2024 17:29:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 144D7382710; Sat, 25 May 2024 17:29:07 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CEDE0382703
	for <speakup@linux-speakup.org>; Sat, 25 May 2024 17:29:06 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Vmw5H0p2XzMPG;
	Sat, 25 May 2024 17:28:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716672531; bh=RuzatkMVUIVyVHWAATpZe8dABnO++NwnRB6NkrdFoQc=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=Sf+MlFe/iEGEEfXofQ4mA4vL8p/J/LRawbcwyC3jXaWsmKSKopDKShGbqrHt3Slbz
	 svPJ+hb+pxPV5NdFN6NiveB7yaS7cbkkJtQhc1lQm869ZW8tKNCoND4NPe8zNjBia6
	 knjIIE8eFrv+lLIcd1ZhAq1Al7wetExaB4HxtETk=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Vmw5H0WdRzcbc; Sat, 25 May 2024 17:28:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Vmw5H0S3qzcbC;
	Sat, 25 May 2024 17:28:51 -0400 (EDT)
Date: Sat, 25 May 2024 17:28:51 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    speakup@linux-speakup.org
Subject: Re: gentoo dracut puzzle
In-Reply-To: <MTAwMDA0MS5jbHVs.1716645692@quikprotect>
Message-ID: <1e26f353-3cf9-4ac1-8dec-49ce03cd7e3e@panix.com>
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com> <MTAwMDA0MS5jbHVs.1716645692@quikprotect>
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

When I typed emerge linux-firmware I got:

!!! All ebuilds that could satisfy "linux-firmware" have been masked.
!!! One of the following masked packages is required to complete your request:
- sys-kernel/linux-firmware-99999999::gentoo (masked by: || ( ) linux-fw-redistributable license(s), missing keyword)
A copy of the 'linux-fw-redistributable' license is located at '/var/db/repos/gentoo/licenses/linux-fw-redistributable'.

- sys-kernel/linux-firmware-20240513::gentoo (masked by: || ( ) linux-fw-redistributable license(s))
- sys-kernel/linux-firmware-20240410::gentoo (masked by: || ( ) linux-fw-redistributable license(s))
- sys-kernel/linux-firmware-20240312::gentoo (masked by: || ( ) linux-fw-redistributable license(s))

For more information, see the MASKED PACKAGES section in the emerge
man page or refer to the Gentoo Handbook.

Can this be cleared?

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sat, 25 May 2024, Cleverson Casarin Uliana wrote:

> Hi, I have installed Gentoo last year, so I don't know if any instruction has
> changed since then. In any case, since the first time I installed Gentoo back
> in 2007, my practice has been to firstly read all of the Handbook, as well as
> all relevant material at Gentoo Wiki, and keep annotating in a plain text file
> all of commands I'll be taking. Only after finishing such notetaking, I
> proceed to start installing.
>
> Although I still have all the commands I used, I don't recall exactly what was
> the purpose of each and every of them. In any case, here is what I have
> anotated regarding kernel and initramfs specifically, as well as commands
> which appears to be related, along with some comments I'm inserting when the
> following command isn't obvious. As you will see, I didn't need to deal with
> dracut directly. From what I recall, simply inserting an initramfs USE flag
> was enough to generate an initramfs automatically:
>
> nano /etc/portage/package.use/linux-firmware
> # insert this line, and save
> sys-kernel/linux-firmware initramfs
>
> mkdir /etc/portage/package.license
> nano /etc/portage/package.license/kernel
> # Insert these two lines and save
> sys-kernel/linux-firmware @BINARY-REDISTRIBUTABLE
> sys-firmware/intel-microcode intel-ucode
>
> emerge linux-firmware
> nano /etc/portage/package.use/intel-microcode
> # Insert this line and save
> sys-firmware/intel-microcode hostonly initramfs
>
> emerge --noreplace intel-microcode
> iucode_tool -S --write-earlyfw=/boot/early_ucode.cpio
> /lib/firmware/intel-ucode/*
> emerge installkernel-gentoo
> emerge gentoo-kernel-bin
>
> HTH,
> Cleverson
>
>
>

