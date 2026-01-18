Return-Path: <speakup+bounces-1514-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E9288D39240
	for <lists+speakup@lfdr.de>; Sun, 18 Jan 2026 03:37:37 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=AyAzH9O1;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 17B9A381901; Sat, 17 Jan 2026 21:37:37 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ED9493817B9
	for <lists+speakup@lfdr.de>; Sat, 17 Jan 2026 21:37:36 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 234083817B9; Sat, 17 Jan 2026 21:37:31 -0500 (EST)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 40DDE3817B4
	for <speakup@linux-speakup.org>; Sat, 17 Jan 2026 21:37:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1768703845; bh=3XWaLa7xUN1AMIa9i8aCfpQfzJ/VT6M8lQ+RxhEDFRo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AyAzH9O1KNZeziKDJDWnxlbDrjjrCWjjHdrwmmd5zKnCUQV4XH1ux7Ki0NaTHB/PG
	 xouiFvC8nyEsLcuRR1UK+FCwOsy/jCI5mbWfbYiJtWgs2YJSB+AB4Dna21j9I1PJ8L
	 vk8yjWPZN/LQvhWohAC7J/Vvy9XNxesXvLqWRVIfBXrZZdsJd0BHTONap2xKylaruo
	 bNznPscKVoYby5zxtx9LsVlY1Ydf8rAr1jm/4E4zSeuVCLjgIsgLUFzOFxwN174R3m
	 zfAqZx2xRX6/WQQ9GPKpO8LcXeHZZA9aXlpkYpj5EQft4bI8Z4cIrj6JmmryxpH6E2
	 L/ZkH6/xN9COg==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb91:4f8d:c97b:14fd:2ee4:b7b8:49a3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 34C803223;
	Sat, 17 Jan 2026 18:37:25 -0800 (PST)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 5989EC65A; Sat, 17 Jan 2026 19:37:24 -0700 (MST)
Date: Sat, 17 Jan 2026 19:37:24 -0700
From: Gregory Nowak <greg@gregn.net>
To: Kirk Reiser <kirk@reisers.ca>
Cc: Janina Sajka <janina@a11y.nyc>, speakup@linux-speakup.org
Subject: Re: Espeakup & Espeak Upgrades Broke Latency
Message-ID: <aWxHZD6_uq52kCtm@gregn.net>
References: <aWpRKvcLNxlSLfbU@A11y.NYC>
 <a004a67b-aa1b-4390-ad97-928e0dc680e2@reisers.ca>
 <aWrM5ulF9rgeEMRW@gregn.net>
 <470c3532-a524-5cdf-e351-38f5e8bd62e2@reisers.ca>
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
In-Reply-To: <470c3532-a524-5cdf-e351-38f5e8bd62e2@reisers.ca>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.4.3 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Kirk and all,
as far as the latency issue, I find it interesting that downgrading
espeakup/espeak-ng didn't resolve the issue for Janina. I'm wondering
if it may be caused by intermediate software. None of my systems have
pulseaudio, pipewire, or wire-plumber installed. I'm wondering if one
or more of those packages could be causing the issue when upgraded? I
believe wire-plumber is fairly new on the scene, so do those of you
with the latency issue have it installed? If yes, does uninstalling
wire-plumber fix it for you, assuming you don't need wire-plumber
installed?

The sound card espeakup uses is set in /etc/default/espeakup in
debian, I don't know how that's set on arch. The key is to export the
ALSA_CARD shell variable before starting espeakup.

As far as the garbled speech during long reads issue, I stumbled on to
the fix when playing with zenstates.py. Overclocking my CPU locks the
frequency on all cores. When I do that, I can have speakup read as much
text as I want as text scrolls on to the screen with no problems.
This is also true if I simply just lock
all cores at stock frequency without overclocking.

Greg


On Sat, Jan 17, 2026 at 06:27:48PM -0500, Kirk Reiser wrote:
> Hello Greg and Jude, I'll try to address both posts in one.
> 
> You are correct about me using debian sid although I don't really
> think that is the issue. I am using all the same versions of debian on
> those boxes. I am running to other void linux systems which I do not
> have the espeakup issue on. One of the systems that does have the
> issue is a raspberry pi 4B although the others are desktops.
> 
> How did you figure out the frequency scaling problem Greg? I also guess I don't quite understand the issue?
> 
>   kirk
> 

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

