Return-Path: <speakup+bounces-1105-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9598D8C91A4
	for <lists+speakup@lfdr.de>; Sat, 18 May 2024 18:42:38 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=SdNsJKBt;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 060C538235D; Sat, 18 May 2024 12:42:37 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id DC2DB382271
	for <lists+speakup@lfdr.de>; Sat, 18 May 2024 12:42:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6C41382278; Sat, 18 May 2024 12:42:29 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id BBB2C382270
	for <speakup@linux-speakup.org>; Sat, 18 May 2024 12:42:29 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VhV452qTRz198H
	for <speakup@linux-speakup.org>; Sat, 18 May 2024 12:42:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716050549; bh=daCGNMet9DD2TeIfiC8LrrvWAASI1FRZr7LBEsKjOpY=;
	h=Date:From:To:Subject;
	b=SdNsJKBtOZy7Ld+BfvwoGs9fYciLNjzGw8rGm11KyzT79htMt7V3mZBzOdq7dmxom
	 2uiRyrqjycVLhhgB25ze80grMyTi7LM3b7oOC/XvuAQmrr2hiiFzmP7lqSZ603ser3
	 F3OoDmUm9hM5WAtaWrERe3hQGmfLeRA5Z3wGyqJ8=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VhV452NSyzcbc; Sat, 18 May 2024 12:42:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VhV452JpGzcbC
	for <speakup@linux-speakup.org>; Sat, 18 May 2024 12:42:29 -0400 (EDT)
Date: Sat, 18 May 2024 12:42:29 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: re: x86_64 handbook wiki needs love
Message-ID: <c9a00911-96c3-4c44-6810-db4e3757f3e3@panix.com>
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

https://wiki.gentoo.org/wiki/Installation_alternatives#Installation_from_non-Gentoo_live_environments
In that wiki, I got down through editing /mnt/gentoo/etc/portage/make.conf
and saved the edits.
Unfortunately at the bottom of that material I can't find a link to move
onto the next step in the installation.
Has anyone got an idea where to go from here?


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

