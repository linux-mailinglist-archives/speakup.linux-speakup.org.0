Return-Path: <speakup+bounces-1094-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 2DAF98805CC
	for <lists+speakup@lfdr.de>; Tue, 19 Mar 2024 21:03:11 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=DBYgle0n;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id EC49A382703; Tue, 19 Mar 2024 16:03:09 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C89F4380F19
	for <lists+speakup@lfdr.de>; Tue, 19 Mar 2024 16:03:09 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 41CCD382076; Tue, 19 Mar 2024 16:03:02 -0400 (EDT)
Received: from altprdrgo04.altice.prod.cloud.openwave.ai (altprdrgo04.altice.prod.msg.synchronoss.net [65.20.63.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 02162380F19
	for <speakup@linux-speakup.org>; Tue, 19 Mar 2024 16:03:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1710878582; 
        bh=qXTQQIZuoztlKCZOdG0lVvAmQTr9QJ1/HqBff+7l1Do=;
        h=From:To:Subject:MIME-Version:Content-Type:Date:Message-Id;
        b=DBYgle0nI1o9WZVAy2ZVHqDp5e1seSXMEISnWT0UylebWxWntrQ81Ui9qcv6GFaTXEt0gvD6ukMrt/+O2Gd8jc8wbQzYAzj+fMhSfnjUyPTTFENgwNoexCqBkklK9SmEbvqC5UPuheED7s024jbcL7SXosIPyXYircR3RkvPNNX+6eD2NadR+m93t5ZcUYdKRDEYqnknBBFBJeEq5oGRP40Pt11AQzy1yW6ENoX4U47i0EaKjmtXDsC2IONTa5I8IxMyOwpfi590eosO3hE8mXAjosqn1SotXnhVFFhUmtxE5oe15BNOjVtrJRh8cYvqimMKwTSnbgLa+jX90PgJZQ==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65F11F1A01111949
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrledtgddutdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhvffugggtgfesthhqtddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnheplefgveegveevhfdufeefffeuvdduleduffekgedtieejheffffefveetieekffeknecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo04.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65F11F1A01111949 for speakup@linux-speakup.org; Tue, 19 Mar 2024 16:02:55 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rmffd-0009s5-0f
	for speakup@linux-speakup.org;
	Tue, 19 Mar 2024 15:02:49 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Trouble-shooting a Mute Speakup on a Raspberry Pi
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <37947.1710878569.1@wb5agz.lan>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 Mar 2024 15:02:49 -0500
Message-Id: <E1rmffd-0009s5-0f@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I put debian bookworm on a Raspberry Pi 2b Rev 1  and it is
trying to start but can't seem to find it's way.

Here are syslog lines from the attempt to start with the time
stamps removed but everything else present:

rpi1 systemd[1]: Starting espeakup.service - Software speech output for Sp=
eakup...
rpi1 systemd[1]: espeakup.service: Control process exited, code=3Dexited, =
status=3D2/INVALIDARGUMENT
rpi1 systemd[1]: espeakup.service: Failed with result 'exit-code'.
rpi1 systemd[1]: Failed to start espeakup.service - Software speech output=
 for Speakup.
rpi1 systemd[1]: espeakup.service: Scheduled restart job, restart counter =
is at 5.
rpi1 systemd[1]: Stopped espeakup.service - Software speech output for Spe=
akup.
rpi1 systemd[1]: espeakup.service: Start request repeated too quickly.
rpi1 systemd[1]: espeakup.service: Failed with result 'exit-code'.
rpi1 systemd[1]: Failed to start espeakup.service - Software speech output=
 for Speakup.

	I know, for sure, that the sound interface which is a
playback-only device works fine.  I have used aplay to send .wav
files to it and they are heard loud and clear.

	The installation of speakup was done on the raspberry pi
by the following actions:

apt-get -y install espeakup speakup-tools speakup-doc
and, based on a message from those installations:
apt-get -y install speechd-up

	Is there something I can look at that shows what invalid
argument was sent which is probably what is killing the whole
startup procedure?

	I also wonder if I need pulseaudio running since libpulse
was one of the libraries downloaded when I gave the apt install
commands.

	I think I may have missed some step or something because
it certainly does try to start and amixer shows the sound
interface on.

	I will be using this older Raspberry Pi as a talking
terminal for command-line work since I do have an image based on
debian 8 or jessie from around 2017 that actually does talk with
speakup but can't be used any more because such things as ssh
keys and other security features aren't compatible with todays
ssh world.

	I did look at espeak.conf and see that espeak keeps a log
in /var/log but there is no espeak or anything with the word
speak in that file tree so it appears to have never gotten that
far.

	I asked this question on a raspberry Pi list and got a
number of helpful answers but so far, I am not sure how to trace
what is happening that shouldn't be happening.

Thanks for all constructive solutions since I don't think this is
too far gone but obviously needs some adjustment.

amartin

