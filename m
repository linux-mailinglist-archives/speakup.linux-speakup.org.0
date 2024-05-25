Return-Path: <speakup+bounces-1112-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1194B8CF1D8
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 00:01:59 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=gmr9JJuU;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8A72338286B; Sat, 25 May 2024 18:01:58 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6A01838270F
	for <lists+speakup@lfdr.de>; Sat, 25 May 2024 18:01:58 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 323ED382712; Sat, 25 May 2024 18:01:51 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 16163382701
	for <speakup@linux-speakup.org>; Sat, 25 May 2024 18:01:51 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VmwqB19nFzNTD;
	Sat, 25 May 2024 18:01:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716674502; bh=kVxPcbbp/tsCNi0Q5CRJvVpnoWm84kLviLS0QNHeTO0=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=gmr9JJuUzBCmbrx/x2jpcyNNGdBQKwHtodxfACwsXBYRqiGv+Rqh0qi7MjgkTEKi2
	 CAYgL63e48p1+Jg4lgHfQUWOaRq/h9apoywfasKouVcYIZ0JEB0/LRWmWCsTGm58Vu
	 1DZQ9ZkCflnDB+27k4s224OhvhxjLo5hmByVgXNs=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VmwqB10KFzcbc; Sat, 25 May 2024 18:01:42 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VmwqB0y5KzcbC;
	Sat, 25 May 2024 18:01:42 -0400 (EDT)
Date: Sat, 25 May 2024 18:01:42 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    speakup@linux-speakup.org
Subject: Re: gentoo dracut puzzle
In-Reply-To: <1e26f353-3cf9-4ac1-8dec-49ce03cd7e3e@panix.com>
Message-ID: <1ace456e-d23e-70de-afc5-6f88e4dc7575@panix.com>
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com> <MTAwMDA0MS5jbHVs.1716645692@quikprotect> <1e26f353-3cf9-4ac1-8dec-49ce03cd7e3e@panix.com>
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

Having added ACCEPT-LICENsE="@EULA" to /etc/portage/make.conf
the emerge linux-firmware started and probably failed again.
emerge assumes I have no boot partition so needs kerneldir variable
defined and I'm not even sure that's the correct variable name since so
much errors came up on the screen I couldn't read that character by
character.
Undefined license group also came up.
/dev/sda1 is bootable discoverable and formatted with mkfs.vfat -F 32 and
the only time I found mention of kerneldir variable was when trying to
install firmware and intel-microcode packages but not in the handbook.
Much more problems like this and I'm likely to run wipefs -af /dev/sda
and after that, I'm not sure I'll ever try a gentoo installation ever
again.


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sat, 25 May 2024, Jude DaShiell wrote:

> When I typed emerge linux-firmware I got:
>
> !!! All ebuilds that could satisfy "linux-firmware" have been masked.
> !!! One of the following masked packages is required to complete your request:
> - sys-kernel/linux-firmware-99999999::gentoo (masked by: || ( ) linux-fw-redistributable license(s), missing keyword)
> A copy of the 'linux-fw-redistributable' license is located at '/var/db/repos/gentoo/licenses/linux-fw-redistributable'.
>
> - sys-kernel/linux-firmware-20240513::gentoo (masked by: || ( ) linux-fw-redistributable license(s))
> - sys-kernel/linux-firmware-20240410::gentoo (masked by: || ( ) linux-fw-redistributable license(s))
> - sys-kernel/linux-firmware-20240312::gentoo (masked by: || ( ) linux-fw-redistributable license(s))
>
> For more information, see the MASKED PACKAGES section in the emerge
> man page or refer to the Gentoo Handbook.
>
> Can this be cleared?
>
>

