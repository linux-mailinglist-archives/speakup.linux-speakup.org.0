Return-Path: <speakup+bounces-1233-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ED9C4A1A30E
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 12:35:48 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Mw9H+1Zz;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C755338262E; Thu, 23 Jan 2025 06:35:47 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AA7E63818E5
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 06:35:47 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D260C3818E9; Thu, 23 Jan 2025 06:35:40 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B314F38073C
	for <speakup@linux-speakup.org>; Thu, 23 Jan 2025 06:35:40 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YdzQh01f2z4Hrg
	for <speakup@linux-speakup.org>; Thu, 23 Jan 2025 06:35:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1737632140; bh=3/fD3cY52FvVXYoKeQZF5Lh3JTxHVezqnh0RZv/6rpg=;
	h=Date:From:To:Subject;
	b=Mw9H+1ZzCufalOlDYcMucERrlvprSP19NeAgU844W4eJgUEDTNKp136TJ6lvsmJKJ
	 xxurDSbODSps9laQ1f3R96o4jJI+hi9VLWKeHlo2xgmSpZ951Xti4X0MG3afbnbMI1
	 Yi4R1g2GmUCChdGmtcHQ1WpvhRV9DsiJo8D3I21I=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4YdzQg6xlNzcbf; Thu, 23 Jan 2025 06:35:39 -0500 (EST)
Date: Thu, 23 Jan 2025 06:35:39 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: re: good old speakup
Message-ID: <Z5Ipi7m8qI19IGbu@panix.com>
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

I have been trying to get speakup working on a virtualized containerized debian bookworm environment on an acer spin #713 chromebook without success.
Has anyone managed to get speakup talking on a chromebook yet?
I'm thinking google which installs this version of linux on chromebooks may have ripped out the necessary speakup kernel support.
How I'm writing anything on the chromebook in terminal is by using a screen reader called tdsr.
My other linux tower computer died last year so I'm down to this chromebook.

