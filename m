Return-Path: <speakup+bounces-1178-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 56F7195564C
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 09:58:47 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=GyYwBqBc;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A60FC3830C3; Sat, 17 Aug 2024 03:58:44 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 876D23821DD
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 03:58:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8C3AB382500; Sat, 17 Aug 2024 03:58:37 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 506E83821DB
	for <speakup@linux-speakup.org>; Sat, 17 Aug 2024 03:58:37 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WmB7b2JpGzqJK
	for <speakup@linux-speakup.org>; Sat, 17 Aug 2024 03:58:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1723881515; bh=6M7iDbxDXLnwiB4dNGpcHLtU0/YsMVG2fNcSt1YUxbI=;
	h=Date:From:To:Subject;
	b=GyYwBqBcNTaxpB65eRp8shcA3meEOCrb8/kvalJhdP7cATh+Tk8WDvVN7/brbddSJ
	 DLL7fQXQ1ahz0FBK3n5e34wXsTBYBbABo9ENEFVf7ciAgxBgrO/JihSgQuihEX5/j0
	 Y34skTa1IjhYgp7Mqy53W478DnVBft/gPqeR3v9o=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WmB7b22SFzcbc; Sat, 17 Aug 2024 03:58:35 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WmB7b1yzmzcbC
	for <speakup@linux-speakup.org>; Sat, 17 Aug 2024 03:58:35 -0400 (EDT)
Date: Sat, 17 Aug 2024 03:58:35 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: speakup crashing
Message-ID: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com>
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

Every so often speakup crashes on my computer.
I am running a recent version of Jenux so systemd is in use here.
What I would like to know is a procedure once the system has been rebooted
to locate any crash messages speakup may have left in logs.  pipewire is
running the sound system along with alsa here and there's necessary
pulseaudio artifacts pipewire uses on the system.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

