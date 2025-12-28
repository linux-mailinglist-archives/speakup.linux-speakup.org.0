Return-Path: <speakup+bounces-1487-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1F925CE5744
	for <lists+speakup@lfdr.de>; Sun, 28 Dec 2025 21:43:07 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=TUGRIM18;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 7C2E9381855; Sun, 28 Dec 2025 15:43:06 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5BEC83817D6
	for <lists+speakup@lfdr.de>; Sun, 28 Dec 2025 15:43:06 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 77F09381812; Sun, 28 Dec 2025 15:43:00 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 501513817D5
	for <speakup@linux-speakup.org>; Sun, 28 Dec 2025 15:43:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1766954579; bh=kTom3hs/o9fV8/oj2Ns2/cL+YOT69fHwnaP9ttK6jl4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TUGRIM18i03gVO38M1oAdu+1o+RJ9jz8Nvm6ywdpXoqv+xRXORa6YRaDQV73mjFjk
	 ufUR1yP8NmUpcptCHnJIh3KbQFJhh/98ULIQkALvn6w+X+KrFdoPbaBrRcNZDZ8jga
	 exDSdRcaMSYXtzXSy6jJ1xWpYfWu2BlV2Ej/20mrVfruGqheutiDjVRAqdalgClgdE
	 YN3PvjG4xWDshVupU9xWDwbT9AT7IZWHB128pONAPpDU1i1N0FFVkm45+zDUeoeNF0
	 zFTPmy8Ss4+CrkGrsK5BWrMJx//G8bSOLEPQPLfm5PfFQtTkKZXLaCO1PNj/LU0YlB
	 RCEpC1ESudHKw==
Received: from vbox.gregn.net (unknown [172.56.84.36])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 1AF081F80;
	Sun, 28 Dec 2025 12:42:59 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 08BCDC1E4; Sun, 28 Dec 2025 13:42:56 -0700 (MST)
Date: Sun, 28 Dec 2025 13:42:56 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: Cleverson Casarin Uliana <clul+speakup@posteo.com.br>,
	speakup@linux-speakup.org
Subject: Re: Building a hardware speech synth with a Raspberry Pi
Message-ID: <aVGWUA2bDenVsQ2n@gregn.net>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
 <01FF57A0-2383-4625-975C-944AE93F762D@speedpost.net>
 <eb7fcb31-4b34-4e31-a2db-67e41cc8a79c@posteo.com.br>
 <6b154ff0-fbfb-4eb7-9ca4-21ded53e7c22@math.wisc.edu>
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
In-Reply-To: <6b154ff0-fbfb-4eb7-9ca4-21ded53e7c22@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Bluetooth will almost certainly introduce latency. Keeping the pipe to
espeak open would also likely be more responsive than spawning a new
instance of espeak every time it needs to speak new text. Keep in mind
that serial synths also introduce some latency of their own, because
of the 9,600 baud bottleneck.

Greg


On Sun, Dec 28, 2025 at 10:08:14AM -0600, John G. Heim wrote:
> The synth emulation is independent of the speech itself. My python emulation
> script acts like a LiteTalk (for now) and speaks via espeak-ng (for now). A
> user will never care about which hardware synth it is emulating. They'll
> have to know which synth it is emulating but it won't effect their
> experience. They might care about the speech though. I intend to get the
> emulation working perfectly first and then add support for other TTS engines
> like voxim and festival.
> 
> The only reason the choice of which synth to emulate matters is in how
> difficult it will be to code the emulation. People have said there is
> already code out there for emulating a DecTalk but I can't find it.
> 
> PS: I was able to log in on my desktop and ping another machine on my
> network using my Raspberry Pi synth. It was a struggle though. I thought
> that once I got this far, I would be assured of success. But there's a huge
> latency problem. I figure that's because I am using a bluetooth speaker for
> sound. But if it is because of the USB hardware on the RPI that could be a
> problem. It could also be that my code is inefficient, forking a new espeak
> process each time it needs to say something.
> 
> 


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

