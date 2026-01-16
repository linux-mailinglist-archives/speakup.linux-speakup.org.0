Return-Path: <speakup+bounces-1506-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 77DC5D38A58
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 00:42:37 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=e76oRptZ;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2FA99381928; Fri, 16 Jan 2026 18:42:36 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 106243817DC
	for <lists+speakup@lfdr.de>; Fri, 16 Jan 2026 18:42:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 292DB3817F9; Fri, 16 Jan 2026 18:42:30 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C988A38099D
	for <speakup@linux-speakup.org>; Fri, 16 Jan 2026 18:42:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1768606946; bh=oFQk0v7JQZ2UmJ+pQw6irm6J6vohWzaN8JqYcvjHkSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e76oRptZlNLVDjQ2snk1nQii5hhGDce/Q5J5Bc447DoRWVqUlJ0Glniwch6G01K2b
	 783e4zwPAyt3wUNFOB134PRRb3E6um0ki1GXb1//VkeL06BLv3yTMA5Q/iFzR5b2fC
	 rCkvgDlvy/TFzPWgedeoYNLuAhOtbKi3nR2ehMTSnAC51Lo7BlFXjKAuisFqAL8p+B
	 U3OCZKHRbW89pD2o48XIdwEWINfAAbcdT1zqeQqoj8gwVeNvIR02eAF2CQuMz9oCWN
	 00vRVbUOToD4Tc6D2xDMQP+A/lToV9R2fGEtnMBSyK+mNwxwe8EX15gPxJLM4Ci/PM
	 b8wKyAiiIAKVw==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:4f8d:c97b:9feb:750b:be90:9f7f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id D75C83745;
	Fri, 16 Jan 2026 15:42:26 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 17CDCC1F4; Fri, 16 Jan 2026 16:42:30 -0700 (MST)
Date: Fri, 16 Jan 2026 16:42:30 -0700
From: Gregory Nowak <greg@gregn.net>
To: Kirk Reiser <kirk@reisers.ca>
Cc: Janina Sajka <janina@a11y.nyc>, speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
Message-ID: <aWrM5ulF9rgeEMRW@gregn.net>
References: <aWpRKvcLNxlSLfbU@A11y.NYC>
 <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I'm not seeing latency issues with espeak/espeak-ng on machines
running devuan Daedalus, based on debian 12. I seem to recall Kirk is
running debian testing or unstable. Janina, what distribution are you
using?

I don't have anything running Devuan Excalibre yet. However, I don't
remember latency issues with espeakup/espeak-ng when I was testing
it. That was a couple of months ago though.

The garbled output when speech is long enough is due to frequency
scaling. Disable frequency scaling on your processor, and that issue
should go away, at the expense of your CPU always running at the same
speed. No one has yet figured out a way to cause this to happen
consistently, so until someone is able to, this won't get fixed.

Greg


On Fri, Jan 16, 2026 at 06:01:16PM -0500, Kirk Reiser wrote:
> Hi Janina: Your question is very much a valid one. I was hoping
> someone else would answer you and we might all benefit from a solid
> answer.
> 
> I use espeakup with espeak-ng on at least four computers and my
> experience is that on a few it instantly flushes when a control or
> another key is typed The exact reaction it was designed to be. But
> more often than not on some computers it is not instantaneous and when
> moving back across the screen with the review keys it becomes mushy
> because the text sounds like it is all running together.
> 
> The fact that I use debian on these boxes would somewhat seem to
> indicate that the software should all be exactly the same but at las
> it certainly doesn't seem so.
> 
> Sometimes I can restart espeakup and it starts behaving itself
> properly but other times theres no difference.
> 
> Yes, it is very frustrating just like the jumbled speech towards the
> bottom of the screen when you just allow the standard output to rattle
> on.
> 
> I'm sorry I don't have a nice answer for you but I wished to let you
> know you are not alone with your experiences.
> 
>   kirk
> 
> 
> 


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

