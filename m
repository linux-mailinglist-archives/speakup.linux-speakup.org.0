Return-Path: <speakup+bounces-923-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 6B118693D5A
	for <lists+speakup@lfdr.de>; Mon, 13 Feb 2023 05:17:52 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=FkV+rPYP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0FAAC3836E5; Sun, 12 Feb 2023 23:17:51 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E3B1F380F93
	for <lists+speakup@lfdr.de>; Sun, 12 Feb 2023 23:17:50 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B66FC38284D; Sun, 12 Feb 2023 23:17:41 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 7134E380F93
	for <speakup@linux-speakup.org>; Sun, 12 Feb 2023 23:17:41 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4PFWJy2pdpz3lQs
	for <speakup@linux-speakup.org>; Sun, 12 Feb 2023 23:17:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1676261858; bh=HVw6FuYAHMQPRZDKZfWepuSZ5vjkD0q5S7h6D/Z0slI=;
	h=Date:From:To:Subject;
	b=FkV+rPYPFLWSiP9CN1OQcj73cKv5lPzK7hE9z2NX6tGETUlIYOTilhSsvkfgsHUUT
	 rVKwL2EBswa2KlFktw+MloKRw15S8bfFmDE4boXWjIlgKha0kVPfyAR1lGrCy0W9mz
	 xmMYWpzkY41gvRp0cPffTVduww1UfZ+HNVJwUmDk=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4PFWJy2GsCzcbc; Sun, 12 Feb 2023 23:17:38 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4PFWJy1W9JzcbV
	for <speakup@linux-speakup.org>; Sun, 12 Feb 2023 23:17:38 -0500 (EST)
Date: Sun, 12 Feb 2023 23:17:38 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: speakup kernel syntax for ubuntu
Message-ID: <45b612f5-fd83-68cf-8d9f-ea82bd36ba7@panix.com>
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

If a user wants to have speakup_soft being run by speakup in ubuntu and
speakup_soft as a module is now available in the system would:
modprobe speakup.speakup_soft
work to get speakup going then:
sysctl enable speakup
then rebooting would bring up speakup talking?



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

