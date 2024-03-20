Return-Path: <speakup+bounces-1102-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 26933881618
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 18:05:57 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=UQUDELvp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 692F03826EB; Wed, 20 Mar 2024 13:05:55 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 45B5B3820F7
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 13:05:55 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A57A33825C0; Wed, 20 Mar 2024 13:05:47 -0400 (EDT)
Received: from altprdrgo04.altice.prod.cloud.openwave.ai (altprdrgo04.altice.prod.cloud.openwave.ai [65.20.63.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6B01E3820F7
	for <speakup@linux-speakup.org>; Wed, 20 Mar 2024 13:05:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1710954347; 
        bh=znn2L78gK0P+BONw/mc4QsTfLIu27Aeam7ZHrFIKvf0=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=UQUDELvpnEl88D3yVlTjrPtjak0M5HnGSclFna/Fi1fn4iIRPRsane10I/hf1AwEBipCpX1j/aOrFGRmBsostISoxVqMQN3x7rHMcnm1ao7u8ELq9JcQLnC5W4csWBLkj0enYvYaJaPTF1j4B2z18w0vCco++WW2zLnUiThRGUDhGbuXkN5IbM8a9/tjV+JeVDDdxw6XEHxM/YzyfN1KI8dIU0SqYp/QOokfHoVKqugItzG6n/wAdh0x/pVtXBubxgB4n2ltPsIFBGwR6pgVknl4ABKpJKcXonCQg1B5V1tYIF3roZEx5LdRstYeYooo+vXtmq7+nxtuIAdmypcYgw==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65F11F1A01407078
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrleeggdeliecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo04.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65F11F1A01407078 for speakup@linux-speakup.org; Wed, 20 Mar 2024 13:05:42 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rmzNg-0001J9-1r
	for speakup@linux-speakup.org;
	Wed, 20 Mar 2024 12:05:36 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Trouble-shooting a Mute Speakup on a Raspberry Pi Solved
In-reply-to: <23c504ea-60e0-d2b9-c9b1-3d60404d7a2b@panix.com>
References: <E1rmffd-0009s5-0f@wb5agz> <d021a211-bbe2-7b3f-0357-40c64c707afb@panix.com> <E1rmkQD-000BSn-06@wb5agz> <23c504ea-60e0-d2b9-c9b1-3d60404d7a2b@panix.com>
Comments: In-reply-to Jude DaShiell <jdashiel@panix.com>
   message dated "Wed, 20 Mar 2024 04:59:54 -0400."
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
Content-ID: <5029.1710954336.1@wb5agz.lan>
Date: Wed, 20 Mar 2024 12:05:36 -0500
Message-Id: <E1rmzNg-0001J9-1r@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Well, I wish I had the Power ball winnings to give you half of but
I don't  so all I can say is thank you.
	The first words it said were
"enabled espeak.service" in that good clear speakup voice.

	Actually, it laughed and called me an idiot but that's
okay but it is in that good clear voice.  Just kidding.

	Now, to be serious.  I should never have added speechd-up
and it would have just worked.  In reading articles on line,
speakup has undergone many changes so that it can run on a
systemd installation and my thanks as always to Samuel and all
for the hard work and effort.

	When I zapped speechd-up, it also purged
speech-dispatcher so all that's left in the screen-reader world
is espeakup and it hasn't missed a beat  since it came up about
2-and-a-half hours ago.  I just rebooted again and it appears to
start espeak just before it does dhcpd.

	Basically, if you have an older installation of
speakup-enabled unix, none of the configuration you see will help
you, here and in fact, that's what got me in trouble.

	I also tried playing all those .wav files while espeakup
was talking and they played perfectly at the same time espeakup
was reading the screen.  This is not terribly pleasant to hear
but from a technical standpoint, a very good thing to be able to
do.  I half expected to get an error about a device being busy
but speakup talk while the other sounds played.

	When I began to learn about unix-like operating systems
in 1989, I was running a conventional desktop with msdos, kermit
for the serial terminal and an Echo speech synthesizer plus a
screen reader I had written for myself in 8086 assembler.

	This raspberry Pi is about the same size as the Echo GP
box so I really appreciate how far things have come.

	I started using vinux in about 2009 and that was my first
experience with software speech.  I may be wrong, but I think
that was a speakup-enabled kernel.

	Anyway, thanks for the help.

Martin
Jude DaShiell <jdashiel@panix.com> writes:
> If you enabled espeak.service reboot and see if it works.

