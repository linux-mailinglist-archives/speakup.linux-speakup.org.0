Return-Path: <speakup+bounces-1223-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 74AEA9FA358
	for <lists+speakup@lfdr.de>; Sun, 22 Dec 2024 03:36:35 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Rvy8O+F7;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1593F382563; Sat, 21 Dec 2024 21:28:40 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EBE18382086
	for <lists+speakup@lfdr.de>; Sat, 21 Dec 2024 21:28:39 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2C4C8382103; Sat, 21 Dec 2024 21:28:33 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B68B838194C
	for <speakup@linux-speakup.org>; Sat, 21 Dec 2024 21:28:31 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YG4nr3Hlmz11rr
	for <speakup@linux-speakup.org>; Sat, 21 Dec 2024 21:28:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1734834496; bh=tETFUsfymm9ghyEMWdTzu68r4uLjpewpwPpORx+K/Jo=;
	h=Date:From:To:Subject;
	b=Rvy8O+F7C36FDF892oV/2s2vC0qwetVoHuPs2kNUPq3agCM+l7ord0SczcsMfpdVf
	 7W8a93OECE5XRWc/cnQbMGeCbPnjZ2nSFCvOST85jR2YrY9YsPM7mlsSac7B2dMevz
	 3GPlc3ZZ7XB53Sfyobi+31qI0fVUOeX4vSby+djU=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4YG4nr35tFzcbc; Sat, 21 Dec 2024 21:28:16 -0500 (EST)
Date: Sat, 21 Dec 2024 21:28:16 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: espeak on chromebooks
Message-ID: <Z2d5QEYJ5FrQSVfS@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This  also applies to espeak-ng.
Neither espeak nor espeak-ng will work on chromebooks.
I use an acer spin #713 and how I am writing
this at all is because I got tdsr working.
I also got the git version of fenrir working on this system but the released versions
before December 2024 cannot work on a chromebook.
A couple bugs prevent those versions from working.
I installed espeak-ng and the espeakup package and the operating system here
is a cut down version of debian bookworm google loads onto these chromebooks.
During package install systemctl is unable to create some part and running the
systemctl enable espeakup command later in sudo then rebooting fails to get espeak-ng or espeak working.
Sound system here is alsa with pipewire not pulse.
I don't know if google cut the espeak support out of the kernels I got but wouldn't rule it out.

