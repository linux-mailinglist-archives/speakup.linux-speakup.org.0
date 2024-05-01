Return-Path: <speakup+bounces-1119-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 3F6768B8657
	for <lists+speakup@lfdr.de>; Wed,  1 May 2024 09:48:31 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=uMUeJHTa;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8F5C7C81CE5; Wed, 01 May 2024 03:48:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6A543C8101B
	for <lists+speakup@lfdr.de>; Wed, 01 May 2024 03:48:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4B904C8101B; Wed, 01 May 2024 03:48:20 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F18A3C8100F
	for <speakup@linux-speakup.org>; Wed, 01 May 2024 03:48:19 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VTq1R4T4Zzqdb
	for <speakup@linux-speakup.org>; Wed,  1 May 2024 03:48:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714549691; bh=0Vq/vq4EXIAHMK4DPQJtE5KP2Hdy65J//DIajSR6vuc=;
	h=Date:From:To:Subject;
	b=uMUeJHTa1zUjNKYnqSIhQ8AwYswAmaFvDHYkXt8ROQBsctrHz8FPdu1CvwzloXmU8
	 CkGiDu2TBi6o7LW/qf/epr/S/VDyngSxjPFfdR3po5Sk3OdTx31u8ZUai8Es2x3ze8
	 X0tCcjDlbTnHYROw3nOOQCzqQYjbISfvH8CVKjC8=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VTq1R4Kcjzcbc; Wed,  1 May 2024 03:48:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VTq1R4Fj1zcbV
	for <speakup@linux-speakup.org>; Wed,  1 May 2024 03:48:11 -0400 (EDT)
Date: Wed, 1 May 2024 03:48:11 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: thinking about gentoo install
Message-ID: <feebe4f0-79a4-9ef2-ee0a-a201ed637a03@panix.com>
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

Burning gentoo onto a flash drive probably burns the image with all
permissions intact.
If those permissions are read-only and if the installer does not change
any of those permissions it will be impossible to edit anything and have
the edits saved.
This may explain why espeakup cannot be started after booting the
installer.  If that is the case, the accessibility project in order to
promote screen reader accessibility use in gentoo will need to do a little
more writing which will expand the espeakup start up process after boot.
If I could run slint and actually reach into gentoo on a hard drive in its
own mount point I might be able to inspect file permissions for files in
gentoo and if I had chroot access into gentoo change the necessary file
permissions so once edits got done those edits would stick.
Many years ago a process for doing this was put up on the speakup mailing
list and I didn't need it at the time so deleted it on this end.  I
remember it involved using loop in some way.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

