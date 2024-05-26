Return-Path: <speakup+bounces-1119-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C7D5F8CF2A2
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 08:11:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=sIiVhwQB;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3E4583828CE; Sun, 26 May 2024 02:11:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 20F4E382703
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 02:11:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 02B9E38270A; Sun, 26 May 2024 02:11:43 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DAF023825C4
	for <speakup@linux-speakup.org>; Sun, 26 May 2024 02:11:42 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Vn7hJ6Sl2zs24;
	Sun, 26 May 2024 02:11:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716703888; bh=rQtubNwAV90kQECgyqHDUfnG3oq4ubyHID2NSr/jpLw=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=sIiVhwQBwdePe51cN8yPSfKzIlj3IV+AvMar21MHdJmBPxoxMu1/WyjHy7ZYRz7E0
	 BTW+8asO9U6Dmjx4v6N+HTpVMYBlcy+xzDYL3Sw6ddJSNTYFvyhldU0uGuf/QALe/r
	 CGJj52JQJj6aNPAbjX48ihnpaWVFv8z+uN5vIBkY=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Vn7hJ6DxQzcbc; Sun, 26 May 2024 02:11:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Vn7hJ69HJzcbV;
	Sun, 26 May 2024 02:11:28 -0400 (EDT)
Date: Sun, 26 May 2024 02:11:28 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    speakup@linux-speakup.org
Subject: Re: gentoo dracut puzzle
In-Reply-To: <ccdb0fa1-058b-e824-1048-5dacb49965a4@panix.com>
Message-ID: <1aaa0126-fe09-5219-4713-22f38e39e94f@panix.com>
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com> <MTAwMDA0MS5jbHVs.1716645692@quikprotect> <3aebe995-ac3f-5a1b-67dd-7f29145d2c45@panix.com> <MTAwMDA0Mi5jbHVs.1716686532@quikprotect> <ccdb0fa1-058b-e824-1048-5dacb49965a4@panix.com>
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

In my case it needed several tries to get gentoo install this far.
For that reason I wrote sgentoo.sh to help me get into
the building gentoo environment quickly and without mistakes.
If anyone else can use this, you're welcome to it:

#!/usr/bin/bash
# file: sgentoo.sh - setup gentoo mounts
echo "once disk setup from gentoo handbook is complete"
echo "press <enter> to chroot into gentoo environment."
read
sudo mount /dev/sda3 /mnt/gentoo
sudo mount /dev/sda1 /mnt/boot
sudo swapon /dev/sda2
sudo cp --dereference /etc/resolv.conf /mnt/gentoo/etc
sudo mount --types proc /proc /mnt/gentoo/proc
sudo mount --rbind /sys /mnt/gentoo/sys
sudo mount --rbind /dev /mnt/gentoo/dev
sudo mount --bind /run /mnt/gentoo/run
sudo chroot /mnt/gentoo /bin/bash

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.


