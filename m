Return-Path: <speakup+bounces-1127-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 089DA8B9663
	for <lists+speakup@lfdr.de>; Thu,  2 May 2024 10:23:25 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=u+kWRezF;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 191BEC81CD6; Thu, 02 May 2024 04:23:20 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ED25BC81C5A
	for <lists+speakup@lfdr.de>; Thu, 02 May 2024 04:23:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D5CA5C81C5C; Thu, 02 May 2024 04:23:11 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1B9F1C81C58
	for <speakup@linux-speakup.org>; Thu, 02 May 2024 04:23:11 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VVRl16Lbnz401n
	for <speakup@linux-speakup.org>; Thu,  2 May 2024 04:22:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714638173; bh=W88C3Poi4qwYk0oyHGkY8V3jfT3YQPj2emubn4JjgqM=;
	h=Date:From:To:Subject;
	b=u+kWRezFP0rgW8tWTE6kW+HDyLWlmcrzGssvzMQS0vmjlaSWRY2bX2vlKktM6/XGa
	 /hKxMUhBZYpvjLpiPGs98LYCNZGhZnas3/T6NrOYoF+5U9r7F2H6UYR6m84lY+M9hF
	 oyQGGnmLeNHv3PZwFS3Or6YqU11PNNyBaJM2nFiI=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VVRl163rkzcbc; Thu,  2 May 2024 04:22:53 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VVRl160n7zcbC
	for <speakup@linux-speakup.org>; Thu,  2 May 2024 04:22:53 -0400 (EDT)
Date: Thu, 2 May 2024 04:22:53 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: latest install-amd64-minimal gentoo
Message-ID: <d8d0b690-f7c4-e96b-2d64-e6b0fde2eb3c@panix.com>
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

Needs editing of the iso and rebuilding the iso for any change to any file
on that iso due to write permissions.  All of which will make getting a
flash drive which when it boots up to talk at least as long as installing
gentoo.  Once the iso is available for editing the emerges for espeakup
and alsa-utils will need to be done then the rc-update commands provided
in the instructions.  I don't know what got done to gentoo isos to make
them this way but they're certainly locked down tight by now.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

