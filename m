Return-Path: <speakup+bounces-438-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 9CEEF536F26
	for <lists+speakup@lfdr.de>; Sun, 29 May 2022 04:59:13 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=dT/XrUvq;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7A32F380E01; Sat, 28 May 2022 22:59:12 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 6342B380584
	for <lists+speakup@lfdr.de>; Sat, 28 May 2022 22:59:12 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24553380830; Sat, 28 May 2022 22:59:05 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id D85013800BA
	for <speakup@linux-speakup.org>; Sat, 28 May 2022 22:59:04 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.58.23.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 0D4A119F9;
	Sat, 28 May 2022 19:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1653793111; bh=ahXWVkOKx9uCTMbBl5CGzs2hyd8hA/RbcCJ4jshCvp0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dT/XrUvqAqIiuAqUu7vflx07LT6YOAIZiE0Hf6aD1ywxJmrFuMggWzv6QntJgqyBt
	 p+jV2CbUt7rGJAZVbvGXgdtGf55k2F9074KMFaAkeYhcOAYNfMSqTzlbzOJGmLXAdo
	 n3NqSSIj401Rp6dmreAKkF+NHwqX/4hk0723vR9sAlXyD0NWy8Mf2UxwGmB3Bu2f1l
	 V2mIbHtQmIKfkFMTI7WVTRi1akDzluppokgsUR3/jilXiNH5n3yQb6n7JpI6uqmWm9
	 pmOsty9HSuBEfv23sak3VT8U0js3cyBu0/C/IyVdcD47PxWQG+v+FD8K6PWt3kw0aD
	 9CnurajInXUmg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 9064CC1A0; Sat, 28 May 2022 19:58:31 -0700 (MST)
Date: Sat, 28 May 2022 19:58:31 -0700
From: Gregory Nowak <greg@gregn.net>
To: K0LNY_Glenn <glenn@ervin.email>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: OT, Resizing Partition
Message-ID: <YpLhV3YMOmkWvXEC@gregn.net>
References: <092001d872ff$3f8027e0$82ffa8c0@WIN40RPKAT965G>
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
In-Reply-To: <092001d872ff$3f8027e0$82ffa8c0@WIN40RPKAT965G>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Are you able to boot something like grml on the system in question,
and enter needed boot parameters to get the ssh server going? Down
sizing the partition on a running system can't be done as far as I
know.

Greg


On Sat, May 28, 2022 at 08:56:00PM -0500, K0LNY_Glenn wrote:
> Hi,
> Using CLI only via SSH, how do I shrink the partition of a running Ubuntu 
> without losing data?
> I want to unallocated any free space so I can install another system.
> 
> Thanks
> 
> Glenn 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

