Return-Path: <speakup+bounces-1315-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8BBABAFC02C
	for <lists+speakup@lfdr.de>; Tue,  8 Jul 2025 03:43:46 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=VzlMI0M6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E7F2F3824A3; Mon, 07 Jul 2025 21:43:45 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C60BB3822DD
	for <lists+speakup@lfdr.de>; Mon, 07 Jul 2025 21:43:45 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C7E413822DD; Mon, 07 Jul 2025 21:43:38 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id F0C073820CF
	for <speakup@linux-speakup.org>; Mon, 07 Jul 2025 21:43:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1751939016; bh=CHijThDsSY2AnqEmyjykgy8ZILo2QE9nLJ/G/n/lEEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VzlMI0M661JlcqjlmM7boBuU4I9Ug+oZ1heE0MJMPfpgDzUpp5Ds0taeD5piIkgJb
	 Yq3oq9LCZd/Mts254HJSYyGNufO+ebdT67+6+97mF1GQg6F0EJVAiQRbzZj0bupFEH
	 DlZy4kuoF1eirPYAUal35m8FSsGo8TkJ23r6/LjZEeVo3XLXj6kWMJV+LRk+81vgwT
	 KzjuV0mZPjB53/EyEKOYzqmtWw56FyJkCcfdnv0esBAfS3QQQDW3fIB1Gdt79/R2d1
	 PXEqASqya7loKOE97i/i1fveA/Api08TTZR7pwOe6ofJzchvtSvBrkpV9oMtyalyJU
	 3cRSnEuxoKyUA==
Received: from vbox.gregn.net (unknown [IPv6:2607:fb90:2d83:ca53:24a8:f140:2ed2:419c])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 81DF762B0;
	Mon,  7 Jul 2025 18:43:36 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id B6141C4F1; Mon,  7 Jul 2025 18:43:35 -0700 (MST)
Date: Mon, 7 Jul 2025 18:43:35 -0700
From: Gregory Nowak <greg@gregn.net>
To: Georgina Joyce <gena@m0ebp.uk>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: debian update killed speakup
Message-ID: <aGx3xz6v8d5YBOjg@gregn.net>
References: <8BEF2F60-C508-44B0-B8B5-68268D196FCB@m0ebp.uk>
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
In-Reply-To: <8BEF2F60-C508-44B0-B8B5-68268D196FCB@m0ebp.uk>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

1. I assume you've already done a reboot, but still don't have speech
from speakup/espeakup when the machine boots, yes?

2. If you don't have a need for pipewire/pulseaudio, I would suggest
purging both. If you purge pulseaudio, you need to set

AudioOutputMethod "libao"

in /etc/speech-dispatcher/speechd.conf to continue to have speech in
the GUI through orca.

3. What does

espeak-ng hello

give you? If it says "hello," espeak is working, which means you
should be getting speech from espeakup.

4. I assume audio from other sources works fine?

Greg


On Mon, Jul 07, 2025 at 08:29:22PM +0100, Georgina Joyce wrote:
> Hello,
> 
> I am at a loss to why debian update should kill speakup. The soft synth module is still loading on boot. I think I tried restarting the service with systemctl but not too sure of having the right syntax but it stated speakup was already running. I recall someone mentioning a symlink that had been removed but have no idea what is meant to be linked to what. Speakup was installed using espeakup. I have a desktop installed and using pipewire. I suspect that pipewire was probably the culprit but no proof.
> 
> How do I troubleshoot or even better restore speakup in the console?
> 
> Thanks,
> 
> Gena
>  

-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

