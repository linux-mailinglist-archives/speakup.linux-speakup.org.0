Return-Path: <speakup+bounces-840-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id E37E661E6FE
	for <lists+speakup@lfdr.de>; Sun,  6 Nov 2022 23:50:05 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=IJW2YkHp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id C8A3F383648; Sun,  6 Nov 2022 17:50:04 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AB54D383618
	for <lists+speakup@lfdr.de>; Sun,  6 Nov 2022 17:50:04 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 08EDB383617; Sun,  6 Nov 2022 17:49:56 -0500 (EST)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 62D553831D7
	for <speakup@linux-speakup.org>; Sun,  6 Nov 2022 17:49:55 -0500 (EST)
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net [78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id A731121873;
	Sun,  6 Nov 2022 22:46:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1667771183; bh=YZQLAmJVAxaoVyJXrHiXtmbL2UuX4TNZbKquZ9R5o4I=;
	h=Date:To:From:Subject:Cc:From;
	b=IJW2YkHpvpy+wyEqUpfNfuH/72zaC8sE05tsB3p3JiVpowP+qPpkDaMaWSuHyH1Bl
	 6zadPAFnFUJOA+j8ORbKW5sW/j/q3yyHHtCK9DexW+auvq8knJp3d4VumZtsqS3d01
	 Q7UAh3duEoDJwDK1fNxhkTcHjl4xUDU1DmXRp4dEJ6V1AXLKFJVksrSlCEYVjDyNOj
	 9jSog1Y4kG0jp5Tt68vqtxKKV1UEv323MeBF9ciau24rctEAFD4r4ZveILb2jOThEU
	 8fePQIzGV2ZbT3do3VeSslka7gzXxs2VHD20sBJnATZEodQAL1bjby6Jj2xLLZorwr
	 vv7X4bq87U1NA==
Message-ID: <770d29f0-0ccd-0618-4434-7a54c201846a@slint.fr>
Date: Sun, 6 Nov 2022 23:48:58 +0000
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
From: Didier Spaier <didier@slint.fr>
Subject: How to ship the speakup drivers
Cc: Tony Seth <lp800@samobile.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello,

Currently in Slint 15.0 all speakup drivers are shipped as modules.

So far, so good, but ...

A user equipped with a DoubleTalk (driver speakup-ltlk) would like to edit the
GRUB command line of the installer so this device be available early.

He could append speakup.synth=ltlk to the kernel command line if speakup was
built-in (as indicated in Documentation/adminguide/spkguide.txt) but this is not
the case currently here (Linux 6.0.5 at time of writing if that matters).

Another possibility is to tell dracut to put all speakup modules in the
initramfs it generates, in which case a user could append for instance
rd.driver.pre='speakup_ltlk" to the command line.

However...

1. Are there other ways to get the same result, without changing how the drivers
are provided?
2. Are there inconveniences to have the main speakup driver built-in the kernel?
And in this case should the other drivers also built-in?

Thanks for any clue.

Cheers,
Didier

