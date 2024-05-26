Return-Path: <speakup+bounces-1127-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 536708CF62D
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 23:41:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=l1rpZONg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 49BF1382935; Sun, 26 May 2024 17:41:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2D5EC38265C
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 17:41:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 03591382653; Sun, 26 May 2024 17:41:12 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A92C53820F9
	for <speakup@linux-speakup.org>; Sun, 26 May 2024 17:41:11 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VnXJl3CtNz499w
	for <speakup@linux-speakup.org>; Sun, 26 May 2024 17:40:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716759655; bh=RQholcPnS+9xktuxQ9s+kf2Oc4w4n8T+BYvZ+MotrLE=;
	h=Date:From:To:Subject;
	b=l1rpZONggCZU/qoNwUmB0+ewYCENzqUPyalK0YWxMIvHUU+anZnpUNUd4kLh/fdR+
	 P/qMXBMLM4r6RUDg8LmBT9oI+40/VaKW8hGz57DOB7jWUKph9lnmrtV9fO57cEoRx8
	 wLjKDeuTU8AALJLR0bvyqcBi0DhE0QGmeGGMvGyo=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VnXJl381Xzcbc; Sun, 26 May 2024 17:40:55 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VnXJl37T3zcbV
	for <speakup@linux-speakup.org>; Sun, 26 May 2024 17:40:55 -0400 (EDT)
Date: Sun, 26 May 2024 17:40:55 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: gentoo install helper script update
Message-ID: <2269f248-5fc4-9dba-a975-992a1b486fa1@panix.com>
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

#!/usr/bin/bash
# file: sgentoo.sh - setup gentoo mounts
echo "once disk setup from gentoo handbook is complete"
echo "press <enter> to chroot into gentoo environment."
read
sudo mount /dev/sda3 /mnt/gentoo
sudo mount /dev/sda1 /mnt/gentoo/boot
sudo swapon /dev/sda2
sudo cp --dereference /etc/resolv.conf /mnt/gentoo/etc
sudo mount --types proc /proc /mnt/gentoo/proc
sudo mount --rbind /sys /mnt/gentoo/sys
sudo mount --rbind /dev /mnt/gentoo/dev
sudo mount --bind /run /mnt/gentoo/run
sudo chroot /mnt/gentoo /bin/bash

For those that don't install gentoo in a single session at the computer.

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

