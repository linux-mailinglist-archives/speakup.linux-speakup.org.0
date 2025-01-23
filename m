Return-Path: <speakup+bounces-1236-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 59158A1ACC7
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 23:42:37 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=a5ZF3l+N;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 99AB83821A8; Thu, 23 Jan 2025 17:42:35 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 7C87D3818E5
	for <lists+speakup@lfdr.de>; Thu, 23 Jan 2025 17:42:35 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 9E4043818E9; Thu, 23 Jan 2025 17:42:28 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 10D77380E17
	for <speakup@linux-speakup.org>; Thu, 23 Jan 2025 17:42:28 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YfGD14MtJz17TW
	for <speakup@linux-speakup.org>; Thu, 23 Jan 2025 17:42:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1737672145; bh=j6F4U0JlKfjIyGfDz7OlYytHxpboNYsbh68ICvTNwzw=;
	h=Date:From:To:Subject;
	b=a5ZF3l+NYAplTy/ADNneM5iv123PS2tpfEjHgNzOm3dVivP/xtdagcSSFOgzUwMEr
	 dIGfD6Ogdtfmjh6sBaLYaJjpDdmu+Un88xeVLlCcuWep36HuFzYnOx58IaMYyU8tQb
	 CRCL8MLyaFjkIMKi3lGb5CjnlN7ucQumNFDVbv2U=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4YfGD140mGzcbf; Thu, 23 Jan 2025 17:42:25 -0500 (EST)
Date: Thu, 23 Jan 2025 17:42:25 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: re: good old speakup
Message-ID: <Z5LF0Y3vQ3_JreXn@panix.com>
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

Last time I tried doing stuff with a kernel I ended up reinstalling a whole operating system after I found my results.
I seem to remember gentoo in that respect.
I did get frobtads-3 to build and run on this chromebook earlier.
to do it, dependencies are cmake libcurl4-gnutls-dev and libncurses-dev.
Then
git clone https://github.com/realnc/frobtads
follow instructions in ~/frobtads/doc/INSTALLATION
and the build will take a while to get done.
The games are at
https://ifarchive.org/indexes/tads/
and will work well with speakup.
Debian also has glulxe for the infocom games.

