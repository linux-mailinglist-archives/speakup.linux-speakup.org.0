Return-Path: <speakup+bounces-1108-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D54948CED41
	for <lists+speakup@lfdr.de>; Sat, 25 May 2024 02:49:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=GYJEJ0gp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9B83D382715; Fri, 24 May 2024 20:49:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7B85C382240
	for <lists+speakup@lfdr.de>; Fri, 24 May 2024 20:49:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 78843382537; Fri, 24 May 2024 20:49:39 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5D391380ACA
	for <speakup@linux-speakup.org>; Fri, 24 May 2024 20:49:39 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VmNbD6gJNzqQw;
	Fri, 24 May 2024 20:49:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716598168; bh=kr+IZVBSe+18Sair4MHEpLaMzoJILsOc0XUHmXzHLvE=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=GYJEJ0gpNuJQbIQ5AdH1KhBWTbEjHOa3IVZN0YYQxYpLTk7LNqffAHpQJaetiNyxF
	 O8lGQpSXEsIb7pILLkE7iehaMm0yz9tkaRfs5V0fKvMh7NJpELRcpO1iwtPtzGpNdX
	 F9NHajAEDxDrF1YWPRCpKRm73pyHli0ZtdqfKqyg=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VmNbD6HNMzcbc; Fri, 24 May 2024 20:49:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VmNbD6CsKzcbC;
	Fri, 24 May 2024 20:49:28 -0400 (EDT)
Date: Fri, 24 May 2024 20:49:28 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: speakup and gentoo
In-Reply-To: <MTAwMDAxMS5jbHVs.1716596950@quikprotect>
Message-ID: <b2a7c74e-ec37-0602-3db3-97fbe6189443@panix.com>
References: <10acd4eb-8872-1669-0086-fb591ee6cad4@panix.com> <m3y19026je.wl-covici@ccs.covici.com> <8c2f3044-4655-7dbe-a06f-5cf5ae148126@panix.com> <MTAwMDAwMC5jbHVs.1714396598@quikprotect> <76be843c-0e87-abed-ff24-940b113acbe5@panix.com>
 <MTAwMDAxMS5jbHVs.1716596950@quikprotect>
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

Done.
If I'm correct, three tasks remain:
emerge distribution kernel,
use dracut to make an initramfs,
emerge grub,
Then reboot and see what works.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 24 May 2024, Cleverson Casarin Uliana wrote:

> Hi, I would create the directory /etc/modules_load.d as I suggested. In any
> case, I don't know as well if your method will work.
>
> As for the distribution kernel, it works, yes. Speakup is built into it.
>
> Best,
> Cleverson
>
>
>

