Return-Path: <speakup+bounces-1294-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9E782AB1FF6
	for <lists+speakup@lfdr.de>; Sat, 10 May 2025 00:36:50 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=scmJJeyq;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4C8E4382A0B; Fri, 09 May 2025 18:36:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2E7173820CC
	for <lists+speakup@lfdr.de>; Fri, 09 May 2025 18:36:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4E006382966; Fri, 09 May 2025 18:36:32 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B48093820CC
	for <speakup@linux-speakup.org>; Fri, 09 May 2025 18:36:31 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4ZvP4C5rpCz4l3t
	for <speakup@linux-speakup.org>; Fri,  9 May 2025 18:36:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1746830187; bh=C8ymh0BZPxwQPSrsZ5ufdPfwvlxnwXHw1sW/VKTXYIM=;
	h=Date:From:To:Subject;
	b=scmJJeyqGPw96hVORQjSS57aliEQJaTk3dPdYQqMb4Cq2AaNmbHzu8KPWSr/bmvl9
	 AZIMGW1XZ3TXavDaXeU1RCaPmUv3Efk+lgt+zvYJsBEfXTR7oMHFgLN1y8BGFGjEer
	 NqUjLaGUKQzaTlPJZelbf5JtxQVO1TYu4zJNYfUk=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4ZvP4C5Yqyzcbd; Fri,  9 May 2025 18:36:27 -0400 (EDT)
Date: Fri, 9 May 2025 18:36:27 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: pipe-viewer for raspberry pi
Message-ID: <aB6DawLVsG5kEuKH@panix.com>
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

It's available though in the aur repository, and it may be pipe-viewer.git.


