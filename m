Return-Path: <speakup+bounces-1104-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 582408A75D5
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 22:41:00 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=vT5xYyCK;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 78EB0C81C7B; Tue, 16 Apr 2024 16:40:59 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5AB32C81C74
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 16:40:59 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0AA3AC81C76; Tue, 16 Apr 2024 16:40:51 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E464BC81C74
	for <speakup@linux-speakup.org>; Tue, 16 Apr 2024 16:40:50 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VJwsf1q8Cz4XtJ;
	Tue, 16 Apr 2024 16:40:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1713300038; bh=s0mMBNGhvQQ4WJkkpF4ygmvrUqTNGCOE8QkVFbvwoKk=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=vT5xYyCKg4z/XFNhJyw+92UYSg2qTjOH4Q9kcP0QxjKTgsstGqd2BPzInaRmidlOX
	 4CcGTXErDBx2cLONw18dZ+dmiXis77Tij5EMbCI6ILgp6cMEwub2FSwH8k/+uecj2c
	 pxGPjeoc1e3GLJDkZfhIa4UC1qAMEArShRTmMBbc=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VJwsf1kLwzcbc; Tue, 16 Apr 2024 16:40:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VJwsf1jyXzcbC;
	Tue, 16 Apr 2024 16:40:38 -0400 (EDT)
Date: Tue, 16 Apr 2024 16:40:38 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>
cc: speakup@linux-speakup.org
Subject: Re: How Can I Enable Speakup in Arch?
In-Reply-To: <44349bc7-0281-802e-b2e6-ca87886c9dbe@hubert-humphrey.com>
Message-ID: <b1fbdba1-60ab-56b3-67d0-6557c3f9c49e@panix.com>
References: <5f590a48-de70-df83-f932-7c8b45f20c9d@hubert-humphrey.com> <018d835d-9ff8-e6cb-1cb3-d3182c40c3ec@panix.com> <44349bc7-0281-802e-b2e6-ca87886c9dbe@hubert-humphrey.com>
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

Because espeak is the engine that runs all of the other speech items you
have on your system.  Without espeak, voxin alison and dectalk could do
nothing.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 16 Apr 2024, Chime Hart wrote:

> Well, thanks Jude, I have a Voxin package with Allison, so why would I putup
> with e speak. Also, have a github DecTalk package. Thanks
> Chime
>
>
>

