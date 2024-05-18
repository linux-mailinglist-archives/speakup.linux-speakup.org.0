Return-Path: <speakup+bounces-1104-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 383468C91A3
	for <lists+speakup@lfdr.de>; Sat, 18 May 2024 18:39:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=TagToZXc;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CAB2A382271; Sat, 18 May 2024 12:39:47 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AD44138226E
	for <lists+speakup@lfdr.de>; Sat, 18 May 2024 12:39:47 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A79CC382270; Sat, 18 May 2024 12:39:40 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id EB51A38208D
	for <speakup@linux-speakup.org>; Sat, 18 May 2024 12:39:39 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VhV0X4Htnz18tw
	for <speakup@linux-speakup.org>; Sat, 18 May 2024 12:39:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716050364; bh=uY/38noxSn7uUh2uXxNP3akfCW7zA2SBnFCRtrAJ5cY=;
	h=Date:From:To:Subject;
	b=TagToZXcvWXaf0B7dKAON0T8Y1sdA23sGX4XJaqn8u9Vbra8/JT/d3kHjVqRrIxQJ
	 zOg/VMtscmXgkawZ9G1g4RcQbcB6RqHDqtxa0JTF1r677IGX49HIjPGMf4bKD6bkt2
	 IBiixdG6VZ40dyNUVx/TP/rawkALgjUwHoZUaUw0=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VhV0X3vHSzcbc; Sat, 18 May 2024 12:39:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VhV0X3qGqzcbC
	for <speakup@linux-speakup.org>; Sat, 18 May 2024 12:39:24 -0400 (EDT)
Date: Sat, 18 May 2024 12:39:24 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: [gentoo-accessibility] re: x86_64 handbook wiki needs love (fwd)
Message-ID: <3049a377-60f6-1e8d-4c1a-3cc248f5b93b@panix.com>
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



-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

---------- Forwarded message ----------
Date: Sat, 18 May 2024 12:25:49
From: Jude DaShiell <jdashiel@panix.com>
Reply-To: gentoo-accessibility@lists.gentoo.org
To: gentoo-accessibility@lists.gentoo.org
Subject: [gentoo-accessibility] re: x86_64 handbook wiki needs love

To be specific anyone interested in checking this out and verifying what I
found can start at:
https://wiki.gentoo.org/wiki/Installation_alternatives#Installation_from_non-Gentoo_live_environments


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.


