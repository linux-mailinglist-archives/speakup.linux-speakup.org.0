Return-Path: <speakup+bounces-1107-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 04AE08B2DC2
	for <lists+speakup@lfdr.de>; Fri, 26 Apr 2024 01:49:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=NEuv+tnm;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0F03BC81C9B; Thu, 25 Apr 2024 19:49:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E7589C80AE4
	for <lists+speakup@lfdr.de>; Thu, 25 Apr 2024 19:49:11 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C0BD7C80AE4; Thu, 25 Apr 2024 19:49:03 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7DEB6C8088E
	for <speakup@linux-speakup.org>; Thu, 25 Apr 2024 19:49:03 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VQXcc4rhnzQsl
	for <speakup@linux-speakup.org>; Thu, 25 Apr 2024 19:48:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714088928; bh=no3nFOWu1n9BGoBh+LAh4xkr26ehmWakJ/MM7lvZ49E=;
	h=Date:From:To:Subject;
	b=NEuv+tnmu9wrbe6mR3GWCQQFDXV0dnBY1oH2YlnQeQ01NMG4lD2zXXH8tnw3MRy28
	 gFWLBMCh8h/ENLXTf8DMnBTJI7pL0YZtz9UeEQ1JXZaHB/3u+mrW3dswkLEH2Nw1O6
	 r53FnPqYCFjqSFPitoR33G8jy8sDGBfi6I9DWGk0=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VQXcc4VqWzcbc; Thu, 25 Apr 2024 19:48:48 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VQXcc4Rx6zcbC
	for <speakup@linux-speakup.org>; Thu, 25 Apr 2024 19:48:48 -0400 (EDT)
Date: Thu, 25 Apr 2024 19:48:48 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: speakup and gentoo
Message-ID: <10acd4eb-8872-1669-0086-fb591ee6cad4@panix.com>
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

Does anyone on this list know what command to run in gentoo after booting
is finished to bring up espeak and have espeak read all of what comes up
on the screen?  I'm using speakup.synth=soft after the speakup command and
all it says is speakup.synth=soft.
I can't catch the boot: prompt so need to start this up after booting is
finished.  Apparently this is an openrc system though stage3 disks can put
other process managers like systemd on at user option.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

