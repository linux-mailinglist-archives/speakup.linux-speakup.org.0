Return-Path: <speakup+bounces-1237-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DBAE0A1B63A
	for <lists+speakup@lfdr.de>; Fri, 24 Jan 2025 13:41:48 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=sjuo1vkC;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2A6AF38262C; Fri, 24 Jan 2025 07:41:44 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0ACC03818DF
	for <lists+speakup@lfdr.de>; Fri, 24 Jan 2025 07:41:44 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 3C8163818ED; Fri, 24 Jan 2025 07:41:37 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 1DF7D3818DD
	for <speakup@linux-speakup.org>; Fri, 24 Jan 2025 07:41:37 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YfcrF6zMfz4Grh
	for <speakup@linux-speakup.org>; Fri, 24 Jan 2025 07:41:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1737722493; bh=ox/QELMBG22miQ4ealA1YmO9W/bAMGg38NuKbISHpOo=;
	h=Date:From:To:Subject;
	b=sjuo1vkCY7tLMMVTHizeupgsu11N5HyaHgxwYDdvRRKSGgthL4Yl3uxbRFRffGhAj
	 2lyRmtEwmgdMds/eslVZPnBmBdkU4hMdIH+vPIzyVheRhyRr1kh1YrLOr0kZKIMKz8
	 tjoxDsJs0x2QQfkNMo+oj6QiYDTPOWY3DM8g7/C4=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4YfcrF6qNZzcbd; Fri, 24 Jan 2025 07:41:33 -0500 (EST)
Date: Fri, 24 Jan 2025 07:41:33 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: re: good old speakup
Message-ID: <Z5OKffuRN0eNL9SY@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I may have to power wash this chromebook again but it might be worth finding out.
I could take this system up to trixie in debian.  If debian replaces the google kernel with the trixie kernel maybe I'll find speakup_soft in that kernel and be able to run speakup on trixie but not google's version of bookworm.
I have some programming to finish before going on that adventure and some notes to make.

