Return-Path: <speakup+bounces-1225-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 00F929FA6CE
	for <lists+speakup@lfdr.de>; Sun, 22 Dec 2024 17:32:11 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=Ib9Z9a/i;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 774B738259D; Sun, 22 Dec 2024 11:32:10 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 59585382560
	for <lists+speakup@lfdr.de>; Sun, 22 Dec 2024 11:32:10 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 807E5382560; Sun, 22 Dec 2024 11:32:03 -0500 (EST)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3A75438255D
	for <speakup@linux-speakup.org>; Sun, 22 Dec 2024 11:32:02 -0500 (EST)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YGRWN6nDCz49Nq
	for <speakup@linux-speakup.org>; Sun, 22 Dec 2024 11:32:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1734885121; bh=OaSvGwd2lOrCd9OzCGtZxSypu0K2+ABWlJOGmRCmBGs=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=Ib9Z9a/i2fcAcE1VriHHCDGFYodIvVMhNIo7TFftUauXr50azCkwvhTY2NvMLkKUv
	 ynRWyJ7Deuzo1VI9vaFu2RwVqu3eOtNzNwsJmXvVn+jARPGkVXS2OjJN/inBkIx9zs
	 TaBnkQ3IkHog9jbSQw90G5zkSipunqio7Q52PisU=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4YGRWN4h8kzcbc; Sun, 22 Dec 2024 11:32:00 -0500 (EST)
Date: Sun, 22 Dec 2024 11:32:00 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: speakup@linux-speakup.org
Subject: Re: speakup on chromebooks
Message-ID: <Z2g_AIKsl6aRIpKj@panix.com>
References: <Z2g2LwZNCBDEF8sk@panix.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=unknown-8bit
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z2g2LwZNCBDEF8sk@panix.com>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Interesting, dmesg results show no fatals no errors and no warnings but do show 2 panics.
On Sun, Dec 22, 2024 at 10:54:23AM -0500, Jude DaShiell wrote:
> If anyy developers are interested, what follows is a log of what happens when espeak is installed.  This was without tdsr running and does not include relevant dmesg after starting the system and entering the debian environment.  I can send that in a separate post.
> 
> 
> WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
> 
> Reading package lists...
> Building dependency tree...
> Reading state information...
> The following packages were automatically installed and are no longer required:
>   python3-brotli python3-certifi python3-mutagen python3-pycryptodome
>   python3-pyxattr python3-websockets rtmpdump
> Use 'sudo apt autoremove' to remove them.
> The following additional packages will be installed:
>   espeak-data libespeak1 libportaudio2
> The following NEW packages will be installed:
>   espeak espeak-data espeakup libespeak1 libportaudio2
> 0 upgraded, 5 newly installed, 0 to remove and 0 not upgraded.
> Need to get 1,327 kB of archives.
> After this operation, 3,235 kB of additional disk space will be used.
> Do you want to continue? [Y/n] Get:1 https://deb.debian.org/debian bookworm/main amd64 libportaudio2 amd64 19.6.0-1.2 [66.7 kB]
> Get:2 https://deb.debian.org/debian bookworm/main amd64 espeak-data amd64 1.48.15+dfsg-3 [1,011 kB]
> Get:3 https://deb.debian.org/debian bookworm/main amd64 libespeak1 amd64 1.48.15+dfsg-3 [158 kB]
> Get:4 https://deb.debian.org/debian bookworm/main amd64 espeak amd64 1.48.15+dfsg-3 [72.2 kB]
> Get:5 https://deb.debian.org/debian bookworm/main amd64 espeakup amd64 1:0.90-13 [19.7 kB]
> Fetched 1,327 kB in 0s (2,969 kB/s)
> Selecting previously unselected package libportaudio2:amd64.
> (Reading database ...  (Reading database ... 5% (Reading database ... 10% (Reading database ... 15% (Reading database ... 20% (Reading database ... 25% (Reading database ... 30% (Reading database ... 35% (Reading database ... 40% (Reading database ... 45% (Reading database ... 50% (Reading database ... 55% (Reading database ... 60% (Reading database ... 65% (Reading database ... 70% (Reading database ... 75% (Reading database ... 80% (Reading database ... 85% (Reading database ... 90% (Reading database ... 95% (Reading database ... 100% (Reading database ... 69071 files and directories currently installed.)
> Preparing to unpack .../libportaudio2_19.6.0-1.2_amd64.deb ...
> Unpacking libportaudio2:amd64 (19.6.0-1.2) ...
> Selecting previously unselected package espeak-data:amd64.
> Preparing to unpack .../espeak-data_1.48.15+dfsg-3_amd64.deb ...
> Unpacking espeak-data:amd64 (1.48.15+dfsg-3) ...
> Selecting previously unselected package libespeak1:amd64.
> Preparing to unpack .../libespeak1_1.48.15+dfsg-3_amd64.deb ...
> Unpacking libespeak1:amd64 (1.48.15+dfsg-3) ...
> Selecting previously unselected package espeak.
> Preparing to unpack .../espeak_1.48.15+dfsg-3_amd64.deb ...
> Unpacking espeak (1.48.15+dfsg-3) ...
> Selecting previously unselected package espeakup.
> Preparing to unpack .../espeakup_1%3a0.90-13_amd64.deb ...
> Unpacking espeakup (1:0.90-13) ...
> Setting up libportaudio2:amd64 (19.6.0-1.2) ...
> Setting up espeak-data:amd64 (1.48.15+dfsg-3) ...
> Setting up espeakup (1:0.90-13) ...
> update-rc.d: warning: start and stop actions are no longer supported; falling back to defaults
> Created symlink /etc/systemd/system/sound.target.wants/espeakup.service → /lib/systemd/system/espeakup.service.
> Could not execute systemctl:  at /usr/bin/deb-systemd-invoke line 145.
> Setting up libespeak1:amd64 (1.48.15+dfsg-3) ...
> Setting up espeak (1.48.15+dfsg-3) ...
> Processing triggers for man-db (2.11.2-2) ...
> Processing triggers for libc-bin (2.36-9+deb12u9) ...
> 

