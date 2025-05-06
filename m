Return-Path: <speakup+bounces-1269-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8C41BAAAC5E
	for <lists+speakup@lfdr.de>; Tue,  6 May 2025 04:15:25 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=vq1gXuYs;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C340F38298B; Mon, 05 May 2025 22:15:24 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A1AD338216D
	for <lists+speakup@lfdr.de>; Mon, 05 May 2025 22:15:24 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B801138216D; Mon, 05 May 2025 22:15:17 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5DB5A381FD6
	for <speakup@linux-speakup.org>; Mon, 05 May 2025 22:15:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1746497701; bh=FWjrpgl8TS8tq8CFa88GWHeaZuze2B9RkQfLJ334498=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vq1gXuYsnSz5DepZqcCccCKCd5RX8zQ6e6YvlnWqzKUzMsT9L/G/7lCJprJuOtinh
	 LXYkHlqUr0xtBZRd/fxVEM6Zup3ToBxCM/WRVrvmZu2uG8qTGmVix3Ve3leMmIVvNq
	 m+bwtXgTKLEywbk9s8eRZS3Czww2oiEkYwova6ZRf2dqHszX9Ng76yVJl67cTJ/e3T
	 W61QIHiJ+9mImw1vTHgxhcr0qX4MZHn6w1I9v60jbTg1c3RSOsHgak7LalPI9mauss
	 ecgUpVHyZ1yQIIacAcs2I1zqwaWrYEinXvSAXPSQg4B9HmcZpMPXZd6qLHrikAQ5hw
	 U8IPqYjFfKtOQ==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:8ea2:51b0:90b:77b7:3fb7:418f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id A442F1B9C;
	Mon,  5 May 2025 19:15:01 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 0A79BC717; Mon,  5 May 2025 19:15:01 -0700 (MST)
Date: Mon, 5 May 2025 19:15:01 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: Samuel Thibault <samuel.thibault@aquilenet.fr>,
	"Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Load speakup module as kernel parameter?
Message-ID: <aBlwpQWdLhedVVNx@gregn.net>
References: <55a2cd5c-4b26-4c77-a55b-cfaf59d74316@math.wisc.edu>
 <aBklhtM_CN4OmF3L@begin>
 <781e661c-7ee3-44ab-8da3-a69e7dd21d39@math.wisc.edu>
 <aBk1N295aRxq7LAP@begin>
 <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
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
In-Reply-To: <d8af1f2a-eaa9-4f91-adb2-e2c3cdbf1ebd@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Mon, May 05, 2025 at 08:11:59PM -0500, John G. Heim wrote:
> 
> Supposedly you can pass a kernel parm to
> the script that generates the iso file but I tried it like a million times
> and could not get it to work. Seriously, I tried it so many times I ended up
> writing a bash script so I only had to pass it the different parameters I
> wanted to try and the script would rebuild the iso and write it to a thumb
> drive. I said i tried it a million times which maybe is a bit of hyperbole.
> But honestly, I'll bet i've rebooted my desktop 50 times in the past week
> trying to get this to work.

I didn't see you saying in this thread what you're trying to pass to
the kernel. Something like:

speakup.synth=ltlk

should work. Both the speakup, and speakup_ltlk modules need to be
compiled into the kernel to load it like that. Otherwise, load the
modules you want from /etc/initramfs-tools/modules.

> 
> Maybe it's not really worth doing anyway. I thought if I could finally
> document how a blind sys admin could make a bootable thumb drive that spoke
> during the boot process, it would be a great service. I know that at one
> point in my career i'd have found that very useful. But I don't think you
> can even buy a hardware synth any more.

Not a new one, but you may still be able to find a working on on
ebay. I haven't checked lately.

> 
> Even so, how about some guesses about what should work? If i add
> "speakup_ltlk " or "speakup_ltlk.rate=5", do you think that should work?
> Assuming GRML properly handles those parameters, i mean. Their docs say they
> do.

There is no such parameter as "rate" supported by the speakup_ltlk module.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

