Return-Path: <speakup+bounces-1226-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4C432A198D6
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 19:55:09 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=Xvhb1Xg6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4D72B38212C; Wed, 22 Jan 2025 13:49:47 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2B89B3818EB
	for <lists+speakup@lfdr.de>; Wed, 22 Jan 2025 13:49:47 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5AB773818FD; Wed, 22 Jan 2025 13:49:40 -0500 (EST)
Received: from altprdrgo03.altice.prod.cloud.openwave.ai (altprdrgo03.altice.prod.cloud.openwave.ai [65.20.63.176])
	by befuddled.reisers.ca (Postfix) with ESMTPS id DBDDA3818EB
	for <speakup@linux-speakup.org>; Wed, 22 Jan 2025 13:49:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1737571779; 
        bh=F8OdYiuTPQxxQ1nnlcMWyXTiIxGJfKDS4Mz+YVdnFt0=;
        h=From:To:Subject:MIME-Version:Content-Type:Date:Message-Id;
        b=Xvhb1Xg69p94d9Qe2YBNLSsZwQYjY4BB3gmsEr9B9zFH7Oe2KBKN+E5VGtAl4ODuu9LEXVCJVXjXfe8HQ6Bu/jRZJD3su3Eswfzk8E94R1UKeohYUkde7BbdXUs3Qb5FGrvYwXMq/gVpI5SJvk5ox0u9Sx0nU3PkNvTZt80sIh1nhu5Wj9Ge6IQkAKuybaFY5XFbtCY66quax0AhLfUBatJ2sL1NbeSAkSD6v1KOydh/VF2W5/KBXv1dq9ssDfBY33XIEdJlMviCFQFplLX7bmIbLeeK3DyWBKD1VXUhvkM6jgUPW3eTAdTjehni/2nYt37VrADKiOypI6qcr9TVYg==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 678F9D79003D9CCD
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudejfedgvdegtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvufggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfektdektdeljedtvefhgfeuleeiveevffduieelieffueejteelledukeekhfeunecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdef
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo03.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 678F9D79003D9CCD for speakup@linux-speakup.org; Wed, 22 Jan 2025 13:49:35 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tafn8-000EhT-0P
	for speakup@linux-speakup.org;
	Wed, 22 Jan 2025 12:49:30 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Good old Speakup
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
Content-ID: <56509.1737571770.1@wb5agz.lan>
Date: Wed, 22 Jan 2025 12:49:30 -0600
Message-Id: <E1tafn8-000EhT-0P@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Those of us who use screen readers have things we particularly
like about them and stuff we dislike and a lot of that is
totally subjective which makes the job of programming them even
harder than simply coding.  I have used speakup or espeakup
depending on the time period we are talking about since 2009 or
thereabouts when I first got vinux to work and no longer had to
use a MSDOS PC running kermit and feeding a hardware speech
synthesizer so I know of what I speak.

	I have a good and fast PC running debian bookworm with
orca and the speech is good under orca but I always have wanted
to have a pure command-line instance of old-school speakup for
use in command-line stuff such as programming in c++, perl and
shell scripts, PIC assembler and system administrative tasks.

	There are at least 2 command line consoles that open text
terminal windows on Control-Alt-F3 and Control-Alt-F4.  They
don't talk so I installed fenrir and now, they talk but it's not
what I was hoping for.

	By pure accident/stupidity on my part, I once installed
espeakup on here before finding out that that is not a good idea
because espeakup is not a user-space application and uses kernel
modules that might conflict with orca.

	I forgot about the installation and have used orca a lot
with no trouble but when i installed fenrir and got pipewire
reconfigured to work with it, I was rudely reminded of espeakup
which was a sleeping giant and awoke.  Both espeakup and fenrir
would simultaneously speak screen output in the command consoles,
each one at a different pitch and rate.  It was kind of amusing
for about 15 seconds and then frustrating because the babble of
the 2 voices, both e-speak but at different settings, tended to
obscure what each was saying.

	I worked on that issue on and off for a couple of days
before another happy accident which clued me in on what happened.

	I pressed the PrintScreen button and one of the voices
said, "You killed speakup."  Pressing it again brought it back
like normal.

	So now I knew it was espeakup and fenrir having the
babble battle.

	I de-installed espeakup and fenrir now talks but it's not
the same thing.  If you set punctuations to some, one must do
that in the configuration file, then restart the service.  When
you do that, the = sign is not one of the punctuation marks that
is spoken, so much for programming.

	Also, for some odd reason, Control-J (newline) and
Control-K cause the screenreader to say "," as in the comma
punctuation even there are no commas on the screen as near as i
can tell.

	That, alone drives me batty since it is confusing to say
the least.

	I am not trying to talk trash about fenrir because it's a
good idea and there are things I like about the interface but oh,
how I would like to just experience speakup in those command
consoles.  It's easy to go through different punctuation levels
and change speech rates on the fly plus, if one sets the
punctuation to most, you do hear what one  needs to hear and that
is important when programming and doing administrative tasks.

	Any constructive ideas are appreciated.

	Since espeakup did try to run, I have thought about
putting it back as it never bothered orca while it was installed
and then removing fenrir since both were trying to work at the
same time.

Martin

