Return-Path: <speakup+bounces-1118-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0E06D8CF294
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 07:26:17 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=jeWXZJH4;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 233B23828C2; Sun, 26 May 2024 01:26:13 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 065C5382703
	for <lists+speakup@lfdr.de>; Sun, 26 May 2024 01:26:13 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DF43F382707; Sun, 26 May 2024 01:26:05 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C2DF03826FB
	for <speakup@linux-speakup.org>; Sun, 26 May 2024 01:26:05 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Vn6gn6WfqzqNQ;
	Sun, 26 May 2024 01:25:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1716701157; bh=j0xPOve7Uymr8TmGexlIfYcKizc1UregbJUUwnH2XO8=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=jeWXZJH4nsMDRTdfETMn2WBqmrAtNtWAr+sUKOZm0DY+dqmFOc7wcSey9tzskqqDE
	 +tPSn+4IXMZqtFOpb14m/OHBGfwv+FZa5qsZ/XFIgPt5MGGAkcHP5hkLBk22daZWLL
	 a9aBdxVoRBfm7mvNqZ/9QAPLXUIKuyU1gx5lu91k=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Vn6gn6Dwwzcbc; Sun, 26 May 2024 01:25:57 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Vn6gn69bjzcbC;
	Sun, 26 May 2024 01:25:57 -0400 (EDT)
Date: Sun, 26 May 2024 01:25:57 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Cleverson Casarin Uliana <speakup@clul.router5.com>, 
    speakup@linux-speakup.org
Subject: Re: gentoo dracut puzzle
In-Reply-To: <MTAwMDA0Mi5jbHVs.1716686532@quikprotect>
Message-ID: <ccdb0fa1-058b-e824-1048-5dacb49965a4@panix.com>
References: <a65a8a6f-4230-3bd9-153c-8edef21e74da@panix.com> <MTAwMDA0MS5jbHVs.1716645692@quikprotect> <3aebe995-ac3f-5a1b-67dd-7f29145d2c45@panix.com> <MTAwMDA0Mi5jbHVs.1716686532@quikprotect>
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

I didn't create the /mnt/boot directory but will fix that shortly.  I
mounted /dev/sda1 in /mnt/gentoo/boot and thinking about it I can
understand the mistake.  Thanks.  I put a script together to get me across
from slint to gentoo quickly so will also correct that script.

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Sat, 25 May 2024, Cleverson Casarin Uliana wrote:

> Hi, have you created the /mnt/boot directory and mounted /dev/sda1 inside it?
> I assume your WEFI partition is /dev/sda1, right? If you did it, then I have
> no clue what is happening...
>
> Cleverson
>
>
>

