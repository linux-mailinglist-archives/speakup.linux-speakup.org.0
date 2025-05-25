Return-Path: <speakup+bounces-1297-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8AA72AC3252
	for <lists+speakup@lfdr.de>; Sun, 25 May 2025 05:50:05 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Ww7WcySQ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6ABB33824AA; Sat, 24 May 2025 23:49:53 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 4BD2A38211E
	for <lists+speakup@lfdr.de>; Sat, 24 May 2025 23:49:53 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4679F38213F; Sat, 24 May 2025 23:49:46 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C5C2E380973
	for <speakup@linux-speakup.org>; Sat, 24 May 2025 23:49:45 -0400 (EDT)
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4b4lJn2gKWz4ky4
	for <speakup@linux-speakup.org>; Sat, 24 May 2025 23:49:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1748144985; bh=X7gzohWMqzIXqn01zFacVVWv3FkUwGlAU4xa61F5jQA=;
	h=Date:From:To:Subject;
	b=Ww7WcySQpRZocEzLrPzpkhpjIezAGGeMUM1OHMdK5udOiZJ1I2G2DlpcWKu9y3Q7o
	 eD2t7eoZlW4NoPDEjEASezZGNJE3Gm0afQmAjkn7IuXqBrDi2IS9iQYeyRyzQWovuq
	 NVzgghlkdbVkCrsVTL1QpRI+90wfRLhw4SOUXEu0=
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4b4lJn2QftzfYm; Sat, 24 May 2025 23:49:45 -0400 (EDT)
Date: Sat, 24 May 2025 23:49:45 -0400
From: Rudy Vener <salt@panix.com>
To: speakup@linux-speakup.org
Subject: controling speakup silent/vocal from scripts
Message-ID: <aDKTWd6xY5kZlvYv@panix.com>
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

I use a lot of scripts which play audio streams and I can toggle
speakup from vocal to silent and back again with:

# speakup-toggle - toggle between speakup on and off
echo key ctrl+kpenter | dotool

Mostly this works. When it doesn't it's because I pause the audio, switch to another screen, and
leave speakup active when I return, and my script shuts it off upon completion.

Is there a command I can run to  test if speakup is vocal or silent so I can
fine tune speakup-on/off commands?

At first I had high hopes for /sys/accessibility/speakup/silent, but alas
that variable is write-only for whatever arcane reasons I can only guess at.

Any wisdom this list can give me will be appreciated.

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Korean Destroyer Dumped Off Drydock https://limerickdude.substack.com/p/korean-destroyer-dumped-off-drydock
Website: http://www.rudyvener.com




