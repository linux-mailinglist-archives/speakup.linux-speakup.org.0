Return-Path: <speakup+bounces-1245-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D0361A9D0E0
	for <lists+speakup@lfdr.de>; Fri, 25 Apr 2025 20:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745607207;
	bh=N9W5M5TJeX5YXQZIGBTh5h4FmoIr0gj7DkLULBJPkhA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=nhwMjZVgbBjEiF6YLWF9IBz+zIJfADDOzYpyx6Ll2t5w3N70EoVsAG24373ipEhbP
	 zGzOWsViMVHu0vJS9a8Gf/rx18krztkjMFskRaNLo8BitUzsUIuDwCJV6t9RfVXFJj
	 ruCSHRiJ7NglMI+tS6+sgRbr1ulxms/jb6txSbQ0=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 72AA6382987; Fri, 25 Apr 2025 14:53:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745607207;
	bh=N9W5M5TJeX5YXQZIGBTh5h4FmoIr0gj7DkLULBJPkhA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Post:List-Help:
	 List-Subscribe:From;
	b=nhwMjZVgbBjEiF6YLWF9IBz+zIJfADDOzYpyx6Ll2t5w3N70EoVsAG24373ipEhbP
	 zGzOWsViMVHu0vJS9a8Gf/rx18krztkjMFskRaNLo8BitUzsUIuDwCJV6t9RfVXFJj
	 ruCSHRiJ7NglMI+tS6+sgRbr1ulxms/jb6txSbQ0=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 547E6382528
	for <lists+speakup@lfdr.de>; Fri, 25 Apr 2025 14:53:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745607200;
	bh=N9W5M5TJeX5YXQZIGBTh5h4FmoIr0gj7DkLULBJPkhA=;
	h=Date:From:To:Subject:From;
	b=puJs+2NYpIkAqpjbsmD/hYyJTjg+Qtlzw85MB6iI95qgBiiVF+PuCH5qlfrhOsNjm
	 zxAtl0FVHQLBcsNNbaxBWPFdeqcuORXLPXSeDzbvLxuEYNW4EIthKW73Ed9SbJnfwE
	 xOPi9GX3mbeaX+lMqYi7Ol9KokqVpuILQI4BoL08=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 71AA53820F4; Fri, 25 Apr 2025 14:53:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1745607200;
	bh=N9W5M5TJeX5YXQZIGBTh5h4FmoIr0gj7DkLULBJPkhA=;
	h=Date:From:To:Subject:From;
	b=puJs+2NYpIkAqpjbsmD/hYyJTjg+Qtlzw85MB6iI95qgBiiVF+PuCH5qlfrhOsNjm
	 zxAtl0FVHQLBcsNNbaxBWPFdeqcuORXLPXSeDzbvLxuEYNW4EIthKW73Ed9SbJnfwE
	 xOPi9GX3mbeaX+lMqYi7Ol9KokqVpuILQI4BoL08=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 505F6381960
	for <speakup@linux-speakup.org>; Fri, 25 Apr 2025 14:53:20 -0400 (EDT)
Date: Fri, 25 Apr 2025 14:53:20 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: speakup@linux-speakup.org
Subject: I break everything!
Message-ID: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

So, I did a apt full-upgrade the other day and everything blew up. I
have everything mostly pieced back together except mastodon.el and I'm
getting weird cron notifications about this list and thus, this is a,
wonder if it'll work, post.

   me


