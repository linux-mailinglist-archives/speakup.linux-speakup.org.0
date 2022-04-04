Return-Path: <speakup+bounces-383-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 5D2E64F0D46
	for <lists+speakup@lfdr.de>; Mon,  4 Apr 2022 02:37:41 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=gregn.net header.i=@gregn.net header.a=rsa-sha256 header.s=default header.b=RBuN8gw8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D102B380A89; Sun,  3 Apr 2022 20:37:40 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id A2830380F55
	for <lists+speakup@lfdr.de>; Sun,  3 Apr 2022 20:37:38 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E11A7380953; Sun,  3 Apr 2022 20:37:35 -0400 (EDT)
Received: from vserver.gregn.net (vserver.gregn.net [174.136.110.154])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A0FB938092A
	for <speakup@linux-speakup.org>; Sun,  3 Apr 2022 20:37:35 -0400 (EDT)
Received: from vbox.gregn.net (unknown [172.58.195.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by vserver.gregn.net (Postfix) with ESMTPSA id 435241BAD
	for <speakup@linux-speakup.org>; Sun,  3 Apr 2022 17:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=gregn.net; s=default;
	t=1649032657; bh=fJNdgyN9hhgd2xnE7Uun4BhxONd7L5auseafhb0xkeY=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=RBuN8gw8Up8LVVFRkz6OyJwK8DYp2cNs4QGlShKACAqIx979zrgPM8l8S0prT9udQ
	 5N9sxxGxYlysEsl8iVHB0ykjXZuArmDmv5ZkTqoTfPvq7vducE8a9ytd0Ayyjjk/iN
	 8B1qem4Aa8/yfcBClbZf1M9rEusc0ESxOCy2X7+xvpEZF92MU4/33reWkTIvcvDvCk
	 DMijQkvPjhWj/g6UF+H0lLzJE1FDSCbobtDqW4SEdd6bTfW/S4LMYdmlYuBeHHoXIB
	 t6XLWun+Yy1x4Jpo5KQrSrPMyptEIUUOS2yEgZ/zk1ynZBN0aoINbgB3XPiQvhFtZl
	 dvUbhoi/i2VPg==
Received: by vbox.gregn.net (Postfix, from userid 1000)
	id 2C69DC16A; Sun,  3 Apr 2022 17:37:32 -0700 (MST)
Date: Sun, 3 Apr 2022 17:37:32 -0700
From: Gregory Nowak <greg@gregn.net>
To: speakup@linux-speakup.org
Subject: Re: How Can I Switch Synthesizers on the Fly?
Message-ID: <Yko9zLikCNY1qcDX@gregn.net>
References: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
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
In-Reply-To: <1dc619bf-ba8a-47b3-2c85-7dff6e27086@hubert-humphrey.com>
X-PGP-Key: http://www.gregn.net/pubkey.asc
X-Virus-Scanned: clamav-milter 0.103.4 at vserver
X-Virus-Status: Clean
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

On Sun, Apr 03, 2022 at 12:36:25PM -0700, Chime Hart wrote:
> last year I purchased some hi quality voices from Oralux, which are software
> speech. When I have Allison installed, I can send her text through spd-say.
> Making matters more complex, speech-dispatcher will not seem to install on
> this Debian Sid machine.

This is contradictory. Having spd-say working implies a working and
installed speech-dispatcher. So, I will assume you have
speech-dispatcher installed and spd-say installed and working on one
machine, but not another. In that case saying speech-dispatcher won't
install doesn't help us help you.

> Guidance I've received from 2 sources, says I must
> install and have espeak talking before I can switch to Allison, which is an
> embedded voice.

If these voices interface through speech-dispatcher, then that would
make sense. However, the only way I know of to interface speakup to
speech-dispatcher right now is through speechd-up. So, it seems like
you would have to install speechd-up, get that working with
speech-dispatcher and espeak-ng, and once you have that working get
speech-dispatcher to use your purchased voices.

> When I was running Slint on a laptop, Didier had created a
> talk-with command to easily switch synths, but his script would need to be
> re written for Debian.

I can confirm the talkwith provided in the speakup-tools package for
debian bullseye seems to be broken. Issuing talkwith soft comes back
with:

/usr/sbin/talkwith: 88: shift: can't shift that many

I took a look at the script, but don't see where the problem is.

> In addition, if I unload the DecTalk module, I won't
> have speech, or would their be a way of having both DecTalk and software
> speech at the same time?

No, you can't have both your dectalk and software speech at the same time.

> So, can some1 please provide exact commands I can
> switch synths on the fly? I ran a locate for softsynth  but nothing found.

No surprise. What you want is the speakup_soft module. You would as
root load that with:

modprobe speakup_soft

then start espeakup or speechd-up, depending on which one you use. I
think that would be something like:

systemctl speechd-up start
or
systemctl espeakup start

I'm not a systemd user, so someone else can correct the above if
they're not correct.

Now, assuming you have both speakup_soft and speakup_dectlk kernel
modules loaded, you can switch between them as root with:

echo dectlk >/sys/accessibility/speakup/synth

for the dectalk, and

echo soft >/sys/accessibility/speakup/synth

for software speech. Remember that before switching to dectlk you
should stop espeakup or speechd-up, and after switching to soft you
should start espeakup or speechd-up. I seem to recall you use csh, so
maybe someone can roll all that into a csh script for you.

Greg


-- 
web site: http://www.gregn.net
gpg public key: http://www.gregn.net/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)
If we haven't been in touch before, e-mail me before adding me to your contacts.

--
Free domains: http://www.eu.org/ or mail dns-manager@EU.org

