Return-Path: <speakup+bounces-1189-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 71EA59566C1
	for <lists+speakup@lfdr.de>; Mon, 19 Aug 2024 11:20:38 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=l/jaexhY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DB0C7383CA9; Mon, 19 Aug 2024 05:20:36 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BB49538210C
	for <lists+speakup@lfdr.de>; Mon, 19 Aug 2024 05:20:36 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C925E382114; Mon, 19 Aug 2024 05:20:29 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6E17B382104
	for <speakup@linux-speakup.org>; Mon, 19 Aug 2024 05:20:29 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WnRs42w9lz4DXx
	for <speakup@linux-speakup.org>; Mon, 19 Aug 2024 05:20:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1724059224; bh=gOKuEeBSFZfFqA+D+iTkEnpCw7wc4r1u6DlNihDv7J0=;
	h=Date:From:To:Subject;
	b=l/jaexhYqitdO5Ss+KsNEjGH+IVgirjModR6M3a6ZV8Y8stlhCQOo4Dm1jwdWIWz9
	 YTj/iqIEz6SXH+e+PLv3TVLW8VhwXwKnQ/LW9h2JlUCxoBQLDcOiwsfXzo20Aoa8W2
	 NUl1ARaeodi02b1EGdiazH4sTbhIOhICaRDu2lbY=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WnRs42drMzcbc; Mon, 19 Aug 2024 05:20:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WnRs42YgCzcbC
	for <speakup@linux-speakup.org>; Mon, 19 Aug 2024 05:20:24 -0400 (EDT)
Date: Mon, 19 Aug 2024 05:20:24 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: knoppix
Message-ID: <675a3353-c5e3-8b91-5f58-359c937657ee@panix.com>
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

I managed somehow to boot knoppix and got adriane talking once.  I don't
remember exactly what I did to make that happen.  Has anyone here got the
boot procedure to get adriane running?
 -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
 defense of liberty: soap, ballot, jury, and ammo. Please use in that
 order." Ed Howdershelt 1940.

