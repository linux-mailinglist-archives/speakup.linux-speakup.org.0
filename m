Return-Path: <speakup+bounces-1106-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 096618A789D
	for <lists+speakup@lfdr.de>; Wed, 17 Apr 2024 01:37:03 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=lfkUXPuz;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F3302C81C92; Tue, 16 Apr 2024 19:37:01 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D1D12C81C75
	for <lists+speakup@lfdr.de>; Tue, 16 Apr 2024 19:37:01 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 92065C81C76; Tue, 16 Apr 2024 19:36:53 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 76F6CC81C74
	for <speakup@linux-speakup.org>; Tue, 16 Apr 2024 19:36:53 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VK0mr75nHzJSr;
	Tue, 16 Apr 2024 19:36:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1713310605; bh=5RGeRQN/Yfw+F1G0XF7MbA55HvtVC/OcLrv54hmisQI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=lfkUXPuz/fRm0brnNGcU+hiEPWV/EQgIqOW9Tn0esMijrpIehx4gfu9CUFgtwsZuO
	 aLIm9a9adKRcuhlApWQCSJXp3lTukrvWrDMi2As5E8t8RwkQlHU1JXExpVGMyCzfgu
	 co1mCy7DvAjy9nmDJ0Ia02h0caX1NhF/pvwrMYhQ=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VK0mr6nWpzcbc; Tue, 16 Apr 2024 19:36:44 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VK0mr6kT0zcbC;
	Tue, 16 Apr 2024 19:36:44 -0400 (EDT)
Date: Tue, 16 Apr 2024 19:36:44 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>
cc: speakup@linux-speakup.org
Subject: Re: How Can I Enable Speakup in Arch?
In-Reply-To: <1ab88af6-465e-5351-3955-27ee90bbabaf@hubert-humphrey.com>
Message-ID: <c0b8b801-7873-c3ac-efd8-6c4e8ccf5d68@panix.com>
References: <5f590a48-de70-df83-f932-7c8b45f20c9d@hubert-humphrey.com> <018d835d-9ff8-e6cb-1cb3-d3182c40c3ec@panix.com> <1ab88af6-465e-5351-3955-27ee90bbabaf@hubert-humphrey.com>
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

Okay, try updatedb if you have locate on that computer and if you don't
you want to install the mlocate package then run updatedb.
Then type locate fenrir*.service and see if anything comes up.  I could
have got the name wrong and this will find the correct name of the service
for you.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 16 Apr 2024, Chime Hart wrote:

> Well, Jude, your 2nd command did certainly enable espeakup on reboot, but
> Fenrir says it cannot stop a service which is not running. So now much of the
> time I have both Allison in Fenrir at the same time as espeakup, unless I use
> the "you killed speakup" key. Even trying to kill processes of Fenrir they
> immediately restart. I cannot find an unstall command among yay or pacman.
> Thanks in advance
> Chime
>
>
>

