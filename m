Return-Path: <speakup+bounces-746-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4205C5FD484
	for <lists+speakup@lfdr.de>; Thu, 13 Oct 2022 08:10:30 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=WDCh3eo5;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1C440383FCF; Thu, 13 Oct 2022 02:10:28 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id EECF73807C8
	for <lists+speakup@lfdr.de>; Thu, 13 Oct 2022 02:10:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0DC1C383F0E; Thu, 13 Oct 2022 02:10:19 -0400 (EDT)
Received: from out2.migadu.com (out2.migadu.com [188.165.223.204])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 16396380605
	for <speakup@linux-speakup.org>; Thu, 13 Oct 2022 02:10:17 -0400 (EDT)
Date: Thu, 13 Oct 2022 17:08:36 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1665641381;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=o34iCj3r1oditr3GvsNqFl+vJ9PqioKbAQfbjKCnG2M=;
	b=WDCh3eo5tAGyHAfHtbegxiJmKIBIIMMTj9+rAZ65Y/ll8OsSVGS5Y2F+z5t1BLCU2qhQ20
	Q912Et0KJwwwWP2mAhuR28YTUX4HcrOszLTAdlYEW1w4xwK9zrjf1lxanNGDtS86Y50ekU
	ZKEpz6gn2HVSQreyvhu7heMT4+DSDUCCOJwOtghTqoep8yILNW9/nKssE2tRHGPK4o+N9u
	RQc27MCVJ2nXkVx+nggpDSYxlu4/7Izd0u0Yz4gva8ETYYUobEjPARDBABo7cBNkYmNSZx
	ccqa233OiR7dNNiSoSn8uofsr/lCQu0ur41d6Hxtm7PzDRhbKEvW+xNnO40pKA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: speakup@linux-speakup.org
Subject: My guide to setting up espeakup on Linux
Message-ID: <Y0erZIhtXhs4coWu@novena-choice-citizen>
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
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hello speakup friends,

I've been spending the week trying to get speakup to play nice with sound
servers and seat management on Linux. If you're interesting for the gory details,
see my full article here: https://www.jookia.org/wiki/System-wide_speakup (WIP)

Anyway I wanted to share an excerpt from my page: How to run espeakup as your
own user, have it start at boot and have it read your login prompt even if you
log in as root or yourself.

These steps are for Arch Linux but they should work for any distro that uses
systemd. I've also explained what things actually do and why. I'd appreciate
feedback and will update the original page with better instructions.

Jookia.

Running espeakup as your user
-----------------------------

It's possible to run espeakup as your own user by:

- Taking control of the audio device away from logind
- Giving control of all audio devices to your user
- Giving control of the softsynth to your user
- Running espeakup as a daemon as your user
- Running espeakup at boot as your user

I've prepared steps to follow to get this working below.

Paste lines between --- PASTE START --- and --- PASTE END --- in to the file specified or a terminal.

Step 1: Put this in /etc/modules-load.d/speakup.conf

--- PASTE START ---
speakup
speakup_soft
--- PASTE END ---

This will cause the speakup kernel modules to load at boot.

Step 2: Put this in /etc/udev/rules.d/99-speakup.rules

--- PASTE START ---
SUBSYSTEM=="sound", TAG-="seat", GROUP="audio"
KERNEL=="softsynth*", GROUP="audio"
--- PASTE END ---

This will will do three things:

- Stop logind managing sound devices
- Give users in the audio group access to sound devices
- Give users in the audio group access to Speakup

Step 3: Put this in ~/.config/systemd/user/espeakup.service

--- PASTE START ---
[Unit]
Description=Software speech output for Speakup
After=pulseaudio.service
[Service]
Environment="default_voice= ALSA_CARD="
ExecStart=/usr/bin/espeakup -d --default-voice=${default_voice}
Restart=always
Nice=-10
OOMScoreAdjust=-900
[Install]
WantedBy=default.target
--- PASTE END ---

This is a service that just runs the espeakup daemon. It is set to start after pulseaudio.

Change pulseaudio.service to pipewire.service if you're using on PipeWire.

Step 4: Run these commands:

--- PASTE START ---
systemctl --user enable espeakup
loginctl enable-linger
sudo gpasswd -a $USER audio
--- PASTE END ---

This does three things:

- Enable the speakup user service
- Enable running user services when logged out
- Add your user to the audio group

Step 5: Reboot and run espeakup as your user.

There's two downsides to this method:

- Your user can see what other users are reading, including root
- Other users can't play audio

