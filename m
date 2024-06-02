Return-Path: <speakup+bounces-1135-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A1C5F8D73DF
	for <lists+speakup@lfdr.de>; Sun,  2 Jun 2024 06:55:27 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=rvVmwgMP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EEBB038273F; Sun,  2 Jun 2024 00:55:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id CE9FA382247
	for <lists+speakup@lfdr.de>; Sun,  2 Jun 2024 00:55:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 88D6A382247; Sun,  2 Jun 2024 00:55:19 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 58762380F51
	for <speakup@linux-speakup.org>; Sun,  2 Jun 2024 00:55:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1717304087; bh=6djoVdHzGmgqyU2p8+DiYIFD4W1U3oEg6P4GyZjYnRo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rvVmwgMPBAC3UvuTCkYEuBZCGRoge21IBRYUvwahwh0x/OYUmiRpFsk1qcQEzxQmJ
	 eaikO/3fKXv6qTs8qmAw2Ec0MmFfNpEFFmSUSfJe11rf48waLJrpe0IjRQiJdOVnb7
	 VgiDnhA5xpYhaZGxBLhYOluTsS4ziKK9XvDUZOqrncgd2AwkDW6ff4Vi1AxkPzRDEo
	 eEWIyJqXHNINyO41BaXg3+r8sEAbKWBddldtwaaKT59AgRYRfvM9kIxZwgQ0VvJlFX
	 zBobPcQxPDSGOzxdl/QbRnTuLMzAnVpXUqcj7DUUEjfuaxroFXYsKnJzo8CAj0NMAw
	 hn6/q7rDwFnvQ==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2dd2:8343:3d20:d23:b7ff:9995])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 6E5684CB;
	Sat,  1 Jun 2024 21:54:47 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 01E27C1D1; Sat,  1 Jun 2024 21:54:45 -0700 (MST)
Date: Sat, 1 Jun 2024 21:54:45 -0700
From: Gregory Nowak <greg@gregn.net>
To: Karen Lewellen <klewellen@shellworld.net>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: slightly ot: email options revisited?
Message-ID: <Zlv7Fe9tRnT7Ix2G@gregn.net>
References: <Pine.LNX.4.64.2406012324170.2555914@users.shellworld.net>
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
In-Reply-To: <Pine.LNX.4.64.2406012324170.2555914@users.shellworld.net>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.3 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

What exactly are you looking for? Free only, or paid too? Is a web
interface acceptable, or do you require pop/imap access? How much are
you willing to pay if paid is acceptable? How big of a mail quota do you need? Perhaps this
page will give you a starting point:

<https://en.wikipedia.org/wiki/Comparison_of_webmail_providers>

Greg


On Sat, Jun 01, 2024 at 11:37:26PM -0400, Karen Lewellen wrote:
> Hi folks,
> seasoning my question this time is the  fact that in March, most major email
> pockets, Apple, Google, Yahoo, all started requiring email addresses to
> carry an   identifying code that matches the actual  host, you @you.com has
> a code insuring that the email is coming from a place called you.com
> Goal is to keep spam from using hosts as a cover.
> Mailing list locations like freelist.org are requiring it too.
> This matters, because for reasons that are unclear, Luke Davis who  owns
> shellworld, either cannot, I have heard his mom is ill, or chooses not, to
> take the needed steps to properly insure  shellworld has these
> identifiers..and for me its becoming quite a problem.
> I have staff who use gmail, often sending content here so I  can use the
> Ubuntu Linux shell tools here for work..but they are not getting through.
> I cannot post to freelist locations, bookshare is hosted there  among other
> lists.
> So, seeking an email solution to add to my addresses for places like
> freelist and  where associates can safely write me.
> Do not want to abandon my shellworld address all together for many reasons,
> just add a new one.
> 
>  Happy to document the email requirement if of interest.
> Any prospects?
> thanks,
> Karen
> who does not mind paying a little if needful.
> 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

