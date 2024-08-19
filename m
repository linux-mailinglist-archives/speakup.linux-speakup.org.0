Return-Path: <speakup+bounces-1192-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 7A644957895
	for <lists+speakup@lfdr.de>; Tue, 20 Aug 2024 01:20:36 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=FPFZP3Lj;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 77DB83825CE; Mon, 19 Aug 2024 19:20:35 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 598C23825C6
	for <lists+speakup@lfdr.de>; Mon, 19 Aug 2024 19:20:35 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 6B8BD3825CD; Mon, 19 Aug 2024 19:20:28 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 2C7BE3825C6
	for <speakup@linux-speakup.org>; Mon, 19 Aug 2024 19:20:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1724109626; bh=sqvSswRjk/CVAur/fQH/PxYebpkn5X6qHZzq1tKklJ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FPFZP3LjJlQJCuwld1IvFFRNQojGVY9kOoUKdbClU3fj01wUGvic6SFbPujA20MMI
	 uE3iTVWnlIxAE9RL/3ChckQGvf5RVbgAOUqKxgtLo33BUbhLraJ3qh0yodEAJTeaXr
	 KZMfJMWiVkHnbbomq8gQGbV6fcF1w5njR2MyakzpxNd8/HMooD3SCI42v3U45Td2v5
	 6+GzYM3n/yp2MVpDLcHK6YhlAntrES+qHFg7ZH9KyX26tucG7W4v6aLmsMB5HqwKsG
	 MUdq2ZypYvhDOrmEu0hB0m8xqcIVARLVvz+QnIKJCz3wqKSg6MfTXyhQk3J3VUWGjH
	 R+FPcrtx0lbMw==
Received: from vbox.gregn.net (unknown [172.56.85.104])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 1380018FA;
	Mon, 19 Aug 2024 16:20:26 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id E3BC6C19D; Mon, 19 Aug 2024 16:20:24 -0700 (MST)
Date: Mon, 19 Aug 2024 16:20:24 -0700
From: Gregory Nowak <greg@gregn.net>
To: Jude DaShiell <jdashiel@panix.com>
Cc: speakup@linux-speakup.org
Subject: Re: for laptops where is the key to activate highlight tracking?
Message-ID: <ZsPTOHJZY8V5cipV@gregn.net>
References: <11ba98ac-d8c7-326e-f657-a8b1dd12389e@panix.com>
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
In-Reply-To: <11ba98ac-d8c7-326e-f657-a8b1dd12389e@panix.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.5 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

That key isn't in the speakup laptop layout. On some laptops fn+0 has
worked for me in the past, but not on all of them.

Greg


On Mon, Aug 19, 2024 at 12:32:25PM -0400, Jude DaShiell wrote:
> I have no laptop here with speakup on it and a friend needs to know.
> 
> 
> --
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

