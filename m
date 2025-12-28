Return-Path: <speakup+bounces-1483-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 0D694CE490E
	for <lists+speakup@lfdr.de>; Sun, 28 Dec 2025 05:02:58 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=JLGBOvid;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 24536381803; Sat, 27 Dec 2025 23:02:56 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 052793817D7
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 23:02:56 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 241F33817D9; Sat, 27 Dec 2025 23:02:50 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A1DE1380C99
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 23:02:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1766894568; bh=IbrQ9eqJNU/g3cBxzYiSxhOExWr0jG3K1VHBADzHyfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JLGBOvid87fwdewT0+tqq2pWpn5+oarUhNEMsypUaIvaVrjpze+LNWcqVLjQcTZfx
	 Om47i5lVjIVPJZ7U58qvktPZlHsc4FnvrpgYXYnPJg9vxuaOco9IqPMVcpTGIFrw87
	 AARIF7m0DxrtacCe1W7rwgbpJ6sW7/zS9OWHQum73h3bwlkijKX0sFtxZJbWsqouB3
	 XGL6cWivZO5En2fh8naPVRHzRFGxvP6GWNpIRHBR1QgBufxRK6otAIynU7A+WxrR2L
	 81p4ptJHkXSH67Jhaqo2lppuLZW4qP6y+fksDsyPtitqUE4pC7rYXRlLtpPMzd3mRE
	 1UyFHT1QJ3SUg==
Received: from vbox.gregn.net (unknown [172.56.84.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 0C1D41CFA;
	Sat, 27 Dec 2025 20:02:48 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id E6F80C1E4; Sat, 27 Dec 2025 21:02:44 -0700 (MST)
Date: Sat, 27 Dec 2025 21:02:44 -0700
From: Gregory Nowak <greg@gregn.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Building a hardware speech synth with a Raspberry Pi
Message-ID: <aVCr5A08QwOE2fi7@gregn.net>
References: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
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
In-Reply-To: <4f9075a8-0252-46f9-8594-1dab9286474f@math.wisc.edu>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.9 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

The doubletalk pc/lt TTS synthesizer is documented in the manual:

<https://www.rcsys.com/Downloads/dtdoc.zip>

in the OPERATIONAL DESCRIPTION section. I haven't checked how close
the doubletalk parameters are to espeak-ng, so don't know how much
translation you would have to do between espeak-ng and doubletalk. It
would at the worst be translating input from the USB port to espeak-ng
equivalent, and sending that to espeak-ng to speak.

I have also heard of a windows project emulating a hardware
dectalk. If the dectalk synth source is available, and the emulation
of the synth is portable to GNU/Linux, that might be the simplest
option, provided the software dectalk is stable in operation.

Greg


On Sat, Dec 27, 2025 at 10:55:28AM -0600, John G. Heim wrote:
> I am looking for suggestions on how best to write code to emulate a hardware
> speech synthesizer.
> 
> I am trying to build a hardware speech synth out of a Raspberry Pi. I got so
> far that if I plug my Raspberry Pi into a USB port on my desktop and tell
> the desktop that it as a LiteTalk synth on that port, I hear the login
> prompt on my Raspberry Pi.
> 
> But that's about all I can do with it right now because all the code on the
> RPI does is to read from it's serial port and relay the text to espeak-ng.
> Single characters aren't echoed, etc. It doesn't really behave like a
> hardware speech synth.
> 
> So I am going to have to write some code to emulate a hardware synth. I am
> looking for suggestions for how best to go about that. Is there one synth or
> another that would be best to emulate? Should I invent a new synth type? Can
> speech-dispatcher help?
> 
> All ideas welcome.
> 
> 
> 
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

