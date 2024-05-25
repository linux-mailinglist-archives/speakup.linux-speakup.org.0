Return-Path: <speakup+bounces-1109-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5D74B8CEE6B
	for <lists+speakup@lfdr.de>; Sat, 25 May 2024 12:08:39 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Wym3BNgW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 04E82382837; Sat, 25 May 2024 06:08:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DA48B382532
	for <lists+speakup@lfdr.de>; Sat, 25 May 2024 06:08:34 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CC5FD38265E; Sat, 25 May 2024 06:08:27 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B22B238211E
	for <speakup@linux-speakup.org>; Sat, 25 May 2024 06:08:27 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Vmczy5b40z129h
	for <speakup@linux-speakup.org>; Sat, 25 May 2024 06:08:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716631694; bh=ZzjmMd2g/NXoWuHU0uqXgdM4v5QABHQdq5sgt/nPOsU=;
	h=Date:From:To:Subject;
	b=Wym3BNgWQafGxGmM3jlrtVJ3SUwYpWddzfYNfTpR9vWI1bOBl4WReAeDZnW9nWuCN
	 vJY9C2CUgK+otA0gxZ1+sAbbps5dhE47AToXkYTY4/gWIMj20cjp6kMJfVdtGIz8uF
	 NM3Ohw1Gpkh1hbZoIwXbjL92/qJykWwH1Ojy0t4Y=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Vmczy4sCzzcbc; Sat, 25 May 2024 06:08:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Vmczy4lxDzcbC
	for <speakup@linux-speakup.org>; Sat, 25 May 2024 06:08:14 -0400 (EDT)
Date: Sat, 25 May 2024 06:08:14 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: gentoo dracut puzzle
Message-ID: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com>
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

I have read the handbook several times and have /etc/portage/package.use
subdirectory on the system.
Should the next file put in that directory be named
sys-kernel/install-kernel
and have contents of:
USE="dracut"
in that file?  This is the prerequisite for installing a distribution
kernel.
The way the handbook is written it doesn't make any of this clear.  A few
more lines with specific commands could help this piece of the handbook
out.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

