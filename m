Return-Path: <speakup+bounces-1515-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id D2F60D39543
	for <lists+speakup@lfdr.de>; Sun, 18 Jan 2026 14:27:07 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=a11y.nyc header.i=@a11y.nyc header.a=rsa-sha256 header.s=dkim header.b=dNJkwi7f;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 34F2A381940; Sun, 18 Jan 2026 08:27:05 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 11F7A381804
	for <lists+speakup@lfdr.de>; Sun, 18 Jan 2026 08:27:05 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1BA57381806; Sun, 18 Jan 2026 08:26:59 -0500 (EST)
Received: from a11y.nyc (unknown [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3A18C380B6E
	for <speakup@linux-speakup.org>; Sun, 18 Jan 2026 08:26:58 -0500 (EST)
Received: from opera.a11y.nyc (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by a11y.nyc (Postfix) with ESMTPS id A7054FA0D2;
	Sun, 18 Jan 2026 08:26:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=a11y.nyc; s=dkim;
	t=1768742812;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LCY8EifnU3jf5bb2YhAybB831CU9kcF1UG7CrT3T2uE=;
	b=dNJkwi7fKcKBYW54h3GEhGm064D7zyMp7YDjV8kkABlsZtvaWaYdiSkNq9NJUW7knEKFie
	IEq1Kj8sTd+Q2CcQpiriHUerSZ4MCfUvlf3hpwCfSxGEM8ScwxO/+EQcCQWOEfj/9DDEIW
	4qHv6Dcshc2kxAKawIskQlkjCqvTziI=
DMARC-Filter: OpenDMARC Filter v1.4.2 a11y.nyc A7054FA0D2
Authentication-Results: a11y.nyc; dmarc=pass (p=reject dis=none) header.from=a11y.nyc
Authentication-Results: a11y.nyc; spf=pass smtp.mailfrom=a11y.nyc
Received: (from janina@localhost)
	by opera.a11y.nyc (8.18.1/8.16.1/Submit) id 60IDQqIg009765;
	Sun, 18 Jan 2026 08:26:52 -0500
Date: Sun, 18 Jan 2026 08:26:52 -0500
From: Janina Sajka <janina@a11y.nyc>
To: Gregory Nowak <greg@gregn.net>
Cc: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
Message-ID: <aWzVWpWgwaSt7qH0@A11y.NYC>
References: <aWpRKvcLNxlSLfbU@A11y.NYC>
 <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
 <aWrM5ulF9rgeEMRW@gregn.net>
 <470c3532-a524-5cdf-e351-38f5e8bd62e2@reisers.ca>
 <aWxHZD6_uq52kCtm@gregn.net>
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
In-Reply-To: <aWxHZD6_uq52kCtm@gregn.net>
X-Operating-System: Linux opera.a11y.nyc 6.18.5-100.fc42.x86_64
X-UID: 3118
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi All:

Thanks for the thoughts Gregg. Question: How do you control CPU
frequency scaling? It sounds like you can do so realtime? Is that
correct? Any pointer would be appreciated. I'm willing to give that a
go.

I removed wireplumber this morning, just after reading your message. So
far, I don't see much impact on screen review, though key echo seems to
be more consistently good. Interesting.
 
 Also, I do have a directory /etc/speakup, but the espeakup file in
 there only specifies the voice, not an alsa card number directive. The
 latter would be golden.

 Maybe I need to switch to Debian after all these years? :) I am Debian
 in my VMware.

Thanks for this conversation. It's much appreciated.
Janina

Gregory Nowak writes:
> Kirk and all,
> as far as the latency issue, I find it interesting that downgrading
> espeakup/espeak-ng didn't resolve the issue for Janina. I'm wondering
> if it may be caused by intermediate software. None of my systems have
> pulseaudio, pipewire, or wire-plumber installed. I'm wondering if one
> or more of those packages could be causing the issue when upgraded? I
> believe wire-plumber is fairly new on the scene, so do those of you
> with the latency issue have it installed? If yes, does uninstalling
> wire-plumber fix it for you, assuming you don't need wire-plumber
> installed?
> 
> The sound card espeakup uses is set in /etc/default/espeakup in
> debian, I don't know how that's set on arch. The key is to export the
> ALSA_CARD shell variable before starting espeakup.
> 
> As far as the garbled speech during long reads issue, I stumbled on to
> the fix when playing with zenstates.py. Overclocking my CPU locks the
> frequency on all cores. When I do that, I can have speakup read as much
> text as I want as text scrolls on to the screen with no problems.
> This is also true if I simply just lock
> all cores at stock frequency without overclocking.
> 
> Greg
> 
> 
> On Sat, Jan 17, 2026 at 06:27:48PM -0500, Kirk Reiser wrote:
> > Hello Greg and Jude, I'll try to address both posts in one.
> > 
> > You are correct about me using debian sid although I don't really
> > think that is the issue. I am using all the same versions of debian on
> > those boxes. I am running to other void linux systems which I do not
> > have the espeakup issue on. One of the systems that does have the
> > issue is a raspberry pi 4B although the others are desktops.
> > 
> > How did you figure out the frequency scaling problem Greg? I also guess I don't quite understand the issue?
> > 
> >   kirk
> > 
> 
> -- 
> web site: http://www.gregn.net
> gpg public key: http://www.gregn.net/pubkey.asc
> 
> --
> Free domains: http://www.eu.org/ or mail dns-manager@EU.org

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


