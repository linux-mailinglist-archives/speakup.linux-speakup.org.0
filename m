Return-Path: <speakup+bounces-767-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D16A860974A
	for <lists+speakup@lfdr.de>; Mon, 24 Oct 2022 01:30:50 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=IJHKDej5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 71CDF383F77; Sun, 23 Oct 2022 19:30:44 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 509FF3807BD
	for <lists+speakup@lfdr.de>; Sun, 23 Oct 2022 19:30:44 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F1C2E383F66; Sun, 23 Oct 2022 19:30:34 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AD22B3807BD
	for <speakup@linux-speakup.org>; Sun, 23 Oct 2022 19:30:34 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4MwZFN4gKKz2ryb
	for <speakup@linux-speakup.org>; Sun, 23 Oct 2022 19:30:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1666567832; bh=iDAach1MRTF3LQjNW6m8cVt/aj7KANHwm+5cAaZ1Z0s=;
	h=Date:From:To:Subject;
	b=IJHKDej5JJAViYhxmhsiQMBGnmu+nnaIdwcJyzI0vrg0XNONBBmL64WN+Uy5l9O3o
	 tpz3dsg60HNGWThFgW2sqeUun/T1zScBF4Lsiw6RVonXE22KDKsNN2xEckBOiWk/6Y
	 dfiTaQyZTF27j5VFXbyWkWw8NBAnWvQsSuy3juLI=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4MwZFN4LGPzcbc; Sun, 23 Oct 2022 19:30:32 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4MwZFN45YHzcbC
	for <speakup@linux-speakup.org>; Sun, 23 Oct 2022 19:30:32 -0400 (EDT)
Date: Sun, 23 Oct 2022 19:30:32 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: tintin-alteraeon development branch and speakup
Message-ID: <59e2e584-19ce-486d-5844-e137668ff2b4@panix.com>
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

I am using slint 15.0rc4 with espeak-ng and the above mentioned version of
the tintin-alteraeon sound pack.
In the last two weeks while playing in the mud, I had speakup crash on me
twice.
The first time I rebooted so didn't learn as much as I did the 2nd time.
The next time I lost speakup so managed to get back to my recall and
tintin-alteraeon sounds still played but speakup did not.
I quit out of tintin-alteraeon and even after having done that, I could
not get speakup to work.  The only way speakup came back and started
talking again was after a reboot.
I did not expect this behavior so didn't run:
tt++ -G -s -r aa.tin 2>&1|tee aa.err
Had I done so it's possible what error happened might have been logged.
I'll do that next time and save the error message or messages that return
so maybe someone can get a little further with this.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

