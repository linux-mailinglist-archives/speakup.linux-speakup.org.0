Return-Path: <speakup+bounces-394-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 21AE1502B7D
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 16:08:33 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=RfTG7K2Z;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 31581380C73; Fri, 15 Apr 2022 10:02:43 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1D9663808D6
	for <lists+speakup@lfdr.de>; Fri, 15 Apr 2022 10:02:43 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9C56F380AE8; Fri, 15 Apr 2022 10:02:38 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 65308380813
	for <speakup@linux-speakup.org>; Fri, 15 Apr 2022 10:02:38 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Kfyh76h6Sznkt
	for <speakup@linux-speakup.org>; Fri, 15 Apr 2022 10:02:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1650031351; bh=p7/TYGRg370nS9VN3DE2YyQuWVMgjNpAKIqiYt/kOfE=;
	h=Date:From:To:Subject;
	b=RfTG7K2Zj6isAP78tnNiEl2J+HsOESl67gIA6ssBfL6au9qlZZZg3f3GHBTdKnqcL
	 YN7W8HCOgzaBm6FYoh1BXcsofEZtdj1/5eqKeLujm1G9DiUUVOUKVLgRfxzduvNz6h
	 501NFjraZDSnjWo9PXgE0TtHFaNYEMCWAcn3EynU=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Kfyh75xr5zcbc; Fri, 15 Apr 2022 10:02:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Kfyh75YBrzcbC
	for <speakup@linux-speakup.org>; Fri, 15 Apr 2022 10:02:31 -0400 (EDT)
Date: Fri, 15 Apr 2022 10:02:31 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: multiple gentoo speakup install failures
Message-ID: <c9b13650-c9da-cf15-68f7-9338fe6831@panix.com>
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


Things run until they don't any longer.
When they don't run any longer speakup dies.  The speakup cannot be
revived when this happens.
Also the system likely crashes since a poweroff command as root fails to
turn the system off.
Many times in order to start the computer I have to use the reset button
in addition to the power button on an 8 core 14gb ram amd system.
I tried restricting gentoo to one core with nosmp but that didn't help at
all either.
I tried with latest stage3 systemd file and latest gentoo-minimal disk.
So far as I'm concerned, gentoo at this time is uninstallable on this
system.
When speakup dies happens at random points during system installation too.
I got no idea what's going on and would like to know if I'm unique and
need a new computer or if this happens to others installing gentoo with
speakup.  I've tried gentoo and gentoo-nofb kernels too.
The farthest I got in recent install attempts was the emerge-webrsync step
which failed because of a bad /etc/portage/make.conf file.


