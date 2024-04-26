Return-Path: <speakup+bounces-1111-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ADC8C8B356A
	for <lists+speakup@lfdr.de>; Fri, 26 Apr 2024 12:39:19 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=H9XO0B1z;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 42408C81C8D; Fri, 26 Apr 2024 06:39:19 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 232E7C8103E
	for <lists+speakup@lfdr.de>; Fri, 26 Apr 2024 06:39:19 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CE3CCC81C3B; Fri, 26 Apr 2024 06:39:10 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B4EB9C8103D
	for <speakup@linux-speakup.org>; Fri, 26 Apr 2024 06:39:10 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VQq323W8vz11Cp;
	Fri, 26 Apr 2024 06:39:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1714127950; bh=+Drh/QQxScJoC7iFneivaVIcsLU5mPyofQIG/efpxUU=;
	h=Date:From:To:Subject:In-Reply-To:References;
	b=H9XO0B1zKWdgx35tLzr81A1vOZ06oSHnD+oxl8yJMobH5294oHxjJtyq+lpIFE9iT
	 Z2SvaQcDo32DI1QxzAuTQjwnTbUs5pKLsFYhd/986g09jPyvN1k/TyrmsBivGojoM6
	 +4cGj3JPMCTOeDLK6brG9170imeObQHJYZYSfCS0=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VQq323Hg9zcbc; Fri, 26 Apr 2024 06:39:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VQq323FZLzcbC;
	Fri, 26 Apr 2024 06:39:10 -0400 (EDT)
Date: Fri, 26 Apr 2024 06:39:10 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: John Covici <covici@ccs.covici.com>, speakup@linux-speakup.org
Subject: Re: insert getting permanently stuck on
In-Reply-To: <m3zftg26le.wl-covici@ccs.covici.com>
Message-ID: <846f7932-83fa-583e-d440-9b72890c9211@panix.com>
References: <m3zftg26le.wl-covici@ccs.covici.com>
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

have you tried control-insert as a toggle yet?  If I do capslock
accidentally I found out earlier that control-capslock turned capslock
off.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 25 Apr 2024, John Covici wrote:

> Hi.  So, I have had two instances in the last few weeks where the
> insert key remains on, fooling with the insert,shift keys does
> nothing.  Only solution seems to be a reboot.  I am using kernel
> 6.1.82 -- with gentoo patches.  Is there a flag somewhere I can
> toggle?
>
> Thanks in advance for any suggestions.
>
>

