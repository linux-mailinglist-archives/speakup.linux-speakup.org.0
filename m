Return-Path: <speakup+bounces-501-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 31720590DC9
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 10:52:29 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=sisXbyMs;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0EFAC3819B1; Fri, 12 Aug 2022 04:52:21 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E24083818F4
	for <lists+speakup@lfdr.de>; Fri, 12 Aug 2022 04:52:20 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 22F48380AC2; Fri, 12 Aug 2022 04:52:14 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DE9F9380607
	for <speakup@linux-speakup.org>; Fri, 12 Aug 2022 04:52:13 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4M3y9859Rjz2tDM;
	Fri, 12 Aug 2022 04:52:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1660294332; bh=MnQxhly8CaMYndDBxk2vZOLln5YBI2RhtOQ7wyCHPnU=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=sisXbyMst2EWyC7uxSQ0RQVZHpU3IMdylL+uwm+lgLDcCMZFWcM32yRVGBRO4vX3w
	 jd2xXsLbh3eS/rL/PpKK41+q9alNGU02/KAbC/OacYDyNiDRqUzLUuxleCDPvC6LB7
	 f8yIx2Xq3+C1ACHmvQ0b/e2QRI+cfxBoWdCZuWfU=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4M3y984c84zcbc; Fri, 12 Aug 2022 04:52:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4M3y984FZKzcbC;
	Fri, 12 Aug 2022 04:52:12 -0400 (EDT)
Date: Fri, 12 Aug 2022 04:52:12 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: K0LNY_Glenn <glenn@ervin.email>, 
    "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: help finding a folder
In-Reply-To: <017b01d8adf2$e34cc620$80ffa8c0@Win7VM>
Message-ID: <9650b2bb-79d-7624-123-34a12cf2fe5@panix.com>
References: <017b01d8adf2$e34cc620$80ffa8c0@Win7VM>
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

When I do git downloads I usually make a builds subdirectory in my home
directory then cd to that builds directory then do the git clone.  git
usually drops whatever I cloned into that builds subdirectory and so long
as nothing else is in that builds subdirectory the clone results are easy
to find.  One could do something like builds1 then builds2 and builds3 to
keep those builds subdirectories unique.


On Thu, 11 Aug 2022, K0LNY_Glenn wrote:

> Hi,
> I did a git download of some files for rh-voice on an armbian image.
> I'm to the point to do the make stuff, and the instructions say to go into
> the rhvoice directory, but I cannot find it.
> Why can't simply find, or ls find anything that is in the immediate folder?!
> Any help finding rhvoice, or rh anything is appreciated.
> Glenn
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Groups.io Links: You receive all messages sent to this group.
> View/Reply Online (#1604): https://groups.io/g/stormux/message/1604
> Mute This Topic: https://groups.io/mt/92972496/12256
> -=-=-
> Donations: https://ko-fi.com/stormux
> Images: https://stormux.org/downloads
> Repository: https://gitlab.com/stormux/stormux
> Website: https://stormux.org
> -=-=-
> Group Owner: stormux+owner@groups.io
> Unsubscribe: https://groups.io/g/stormux/leave/8620284/12256/530318790/xyzzy
> [glenn@ervin.email]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>
>
>

