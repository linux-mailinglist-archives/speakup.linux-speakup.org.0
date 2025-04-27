Return-Path: <speakup+bounces-1257-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id B0A1AA9DEB7
	for <lists+speakup@lfdr.de>; Sun, 27 Apr 2025 04:44:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=oLC8qoC3;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 15974382936; Sat, 26 Apr 2025 22:44:11 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E91F13806C1
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 22:44:10 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 06AAD382529; Sat, 26 Apr 2025 22:44:04 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C3BCE38250A
	for <speakup@linux-speakup.org>; Sat, 26 Apr 2025 22:44:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gregn.net; s=default;
	t=1745721843; bh=fyNwyYxOCARFrb/UTFrnnkd5brYXS+Un0q+g0M5yRZw=;
	h=Resent-From:Resent-Date:Resent-To:Date:From:To:Cc:Subject:From;
	b=oLC8qoC34l5FXDF0eUIQKu1ahy8IsahBcSlXJ2a2Yi/s2VKkdyo/xKb+4X5wS0boT
	 4GGYziN4uguMK/Y4U5gX/5CsSNKBPDs6bJaqSf55OqFAM/zZxKVMUprMXsIRg1z/pH
	 b2QQPtjM0w4xDRm6uFIZRO4gr8aQFYyyfCGshkEqKklVAujdNbRTo2FqJ5NHVUBSan
	 UHdDqgzePFgyuErVn+gWKek5ql64/Q6HqmxvH+4188uqJGvSJzRhyFR3EAxjcWKmks
	 Y0DU3/aqolsEUGZKhDq+DNjRe1n2ggy4Ee82TmBj9hduR6G+/SO5DGWGkArrYBgSn/
	 flXTBMlRBfMUQ==
Received: from vbox.gregn.net (unknown [172.56.85.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 1C322858
	for <speakup@linux-speakup.org>; Sat, 26 Apr 2025 19:44:03 -0700 (PDT)
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 3552BC202; Sat, 26 Apr 2025 19:44:02 -0700 (MST)
Resent-From: Gregory Nowak <greg@gregn.net>
Resent-Date: Sat, 26 Apr 2025 19:44:02 -0700
Resent-Message-ID: <aA2Z8oJug9FDyGz6@gregn.net>
Resent-To: speakup@linux-speakup.org
Date: Sat, 26 Apr 2025 17:46:54 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Cc: fsmithred@gmail.com
Subject: announcing experimental Devuan Daedalus mate desktop iso
Message-ID: <aA1-fneTSXgUZa5y@gregn.net>
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
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 1.0.7 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello everyone.

An experimental mate desktop live iso based on Devuan Daedalus has
been created by fsmithred <fsmithred@gmail.com>. The iso can be had
from:

<https://get.refracta.org/files/experimental/devuan-live-speech-daedalus-amd64-20250425_1652.iso>

sha256sum:
<https://get.refracta.org/files/experimental/devuan-live-speech-daedalus-amd64-20250425_1652.iso.sha256>

The image is about 1 GB in size. It is a basic GUI environment with
the desktop, mate-desktop, and laptop tasks installed. It doesn't
contain the console-productivity task, so no brltty is installed. The
systems I tested on all have ethernet connectivity with a dhcp server
on the network, so I was simply able to do:

apt update
apt install brltty

When the iso boots, it will produce a beep through the PC speaker if
your PC has one. There are two options in the boot menu. Pressing
enter after the beep on the first boot option will boot into run level
2, with user devuan automatically logged in on TTY 1-6 on the text
console with speakup/espeakup, and user devuan automatically logged in
on TTY 7 with mate/orca, using whatever ALSA decides your default
sound card is.

For those who have multiple sound cards, press down arrow followed by
enter after the beep when the iso first boots to choose the second
boot option. You will be logged in as root on TTY1, and user devuan on
TTY 2-6. At this point, you can run a script called set-card, and pass
to it either the number or name (as listed in /proc/asound/cards if
you know it) of the sound card you want to set as default. The
set-card script updates /etc/default/espeakup, creates
/etc/asound.conf, and restarts espeakup as well as alsa-utils. The
set-card script can be run as many times as desired, until you get
speech. So for example:

set-card 1 <enter>
set-card 2 <enter>
ETC ...

Once you have speech, you can run:

init 2

to get to the mate desktop, and login as user devuan, password
devuan. The password for root is:

toor

For those who are comfortable using su in TTY 1-6, and logging out of
mate by feel, you may use set-card when you boot into the first boot
option. Note that ctrl+alt+esc doesn't kill the x server, so to log
out of mate, you will need to use alt+f1, left-arrow once, up-arrow
twice, and enter.

There is also a script called reset-card, which will set the output
card to card0 in /etc/default/espeakup, remove /etc/asound.conf if it
exists, and restart espeakup/alsa-utils. You do not need to use
reset-card before running set-card.

I think I covered everything. All comments and feedback should be
directed to fsmithred. Happy exploring.

Greg

	
-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

