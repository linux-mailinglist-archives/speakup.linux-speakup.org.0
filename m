Return-Path: <speakup+bounces-1348-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 00B09B55647
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 20:35:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=GlYutfGW;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5B101383093; Fri, 12 Sep 2025 14:35:46 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3C201382C03
	for <lists+speakup@lfdr.de>; Fri, 12 Sep 2025 14:35:46 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 15301382C3F; Fri, 12 Sep 2025 14:35:39 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 73138382C03
	for <speakup@linux-speakup.org>; Fri, 12 Sep 2025 14:35:38 -0400 (EDT)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4cNjm85qSXzNJQ;
	Fri, 12 Sep 2025 14:35:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1757702136; bh=oSaqb6Loz3VgLroyQ6RBJukjf+ZJ7MwPi/WxmJh8uqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GlYutfGWuC65OOfFr8/rn+FaQPZAkGzhVBsKk9OQAFpKstE2q/nGNrPH9lUGIhhYt
	 0GQw5tj8M6glZ9humrDe+Uynxr6JCmQHDfTFpxLDihR5gUkGLn3PVZaDAcrKlXks4H
	 k/pZEEWlxVtwfrbCmDHJrmqvykZXSz/lX0Xy5RVc=
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4cNjm85fMlz1QXM; Fri, 12 Sep 2025 14:35:36 -0400 (EDT)
Date: Fri, 12 Sep 2025 14:35:36 -0400
From: Rudy Vener <salt@panix.com>
To: Brian Buhrow <buhrow@nfbcal.org>
Cc: speakup@linux-speakup.org
Subject: Re: Question about blind CLI use (was Re: "your browser is not
 supported anymore" ...)
Message-ID: <aMRn-M-4DIUPqQ5B@panix.com>
References: <aMQb_2EHO0HYypga@panix.com>
 <202509121609.58CG9HoH010921@nfbcal.org>
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
In-Reply-To: <202509121609.58CG9HoH010921@nfbcal.org>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I use duckduckgo via the surfraw meta search engine:

Here's my duckduckgo script in $HONE/bin/ddg:

surfraw duckduckgo $*


-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Ludicrous Limerick - News Of Trump's Death Were Greatly Exaggerated.  https://limerickdude.substack.com/p/news-of-trumps-death-were-greatly
Website: http://www.rudyvener.com



On Fri, Sep 12, 2025 at 09:09:17AM -0700, Brian Buhrow wrote:
> 	Hello.  I'd like to hear about what you did to get the ddg search
> engine to work with lynx.  As I wrote edarlier this morning, I tried to get
> it going, but couldn't figure out a way to get past the captcha.
> 
> -thanks
> -Brian

