Return-Path: <speakup+bounces-1211-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A1C1696C99F
	for <lists+speakup@lfdr.de>; Wed,  4 Sep 2024 23:40:43 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=QSh2NzPA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1B7A2380E50; Wed, 04 Sep 2024 17:40:29 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id ED13E380E50
	for <lists+speakup@lfdr.de>; Wed, 04 Sep 2024 17:40:28 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0057D382036; Wed, 04 Sep 2024 17:40:21 -0400 (EDT)
Received: from altprdrgo04.altice.prod.cloud.openwave.ai (altprdrgo04.altice.prod.cloud.openwave.ai [65.20.63.32])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B0B73380E50
	for <speakup@linux-speakup.org>; Wed, 04 Sep 2024 17:40:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1725486021; 
        bh=G857ftXTU6pUcwiieERlcuU2OSN73q/XSxANCGwzTAs=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=QSh2NzPAhNuA51AZU2+5mlDQVn/adK/tWu1KwY38umYsgu7+c+pE7i/QayKRRYdxO25luxy2HDL9oAabr2pPlaseB3LroKReo4CgHQy/tEJX3qsDmuz1rvrxfjtNvvCT71J109KUgEyzrh/P9RVY5Xcm5t9e+TUanOw30mMqhgJ0BHa6LrYXpqEI0Qxgjyl8iUZ81N0CILAI2VJyoTYA8TtWj+u6B/rMvIf/gShvi2E6s2m71h3OlKXvaSRGb47vEg3bHISyM5eYHou2mTh832cXDd1CZdj+8hzLYDrlsZhw/o6m3iqzLayxWEnI6Wcp1zj92cdPKKaUvfNkRXA1Yw==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 66A9BD8605866D09
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeftddrudehkedgtdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeg
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo04.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 66A9BD8605866D09 for speakup@linux-speakup.org; Wed, 4 Sep 2024 17:40:16 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1slxjW-0001nZ-2d
	for speakup@linux-speakup.org;
	Wed, 04 Sep 2024 16:40:10 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was howto run speakup/orca concurrently in ubuntu)
In-reply-to: <ZtduSMS0hyMMjZQZ@titan>
References: <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za> <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu> <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca> <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net> <E1slFDa-0001Hb-0R@wb5agz> <Zta33F80vCUd8tBU@titan> <E1slZoq-0004cu-22@wb5agz> <ZtduSMS0hyMMjZQZ@titan>
Comments: In-reply-to Jookia <contact@jookia.org>
   message dated "Wed, 04 Sep 2024 06:15:04 +1000."
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
Content-ID: <6915.1725486010.1@wb5agz.lan>
Date: Wed, 04 Sep 2024 16:40:10 -0500
Message-Id: <E1slxjW-0001nZ-2d@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Jookia <contact@jookia.org> writes:
> So you ran the instructions and speakup still doesn't talk?

	That is unfortunately true but the plot thickens.
This system has always had audio issues running Linux.  When I first bought
it about 2-and-a-half years ago, it came with Windows 10 installed
and the sound was good so the hardware got along properly with
the Windows drivers but I bought it specifically for Debian Linux
so, after turning off secureboot and getting an ISO image from
debian, I installed debian11.4 on here plus a series of upgrades
to bookworm and the most current kernel.

	It positively flies like a bullet when doing tasks such
as stripping .wav sound files from mp4 videos which, themselves
were transcoded from .ts or transport stream files which are the
common way that broadcast television is demodulated from cable tv
and over-the-air reception so it's got wings all right but I soon
discovered that the main sound device never runs out of ways to
thwart what one is trying to do.

	So, I followed your very linear straight-forward
instructions, Steps 1, 2, 3 and 4 and ended up with the only
difference being that I could not log in to orca.  Normally, I
	faintly heare the prompt to press the pushbutton to log
in.  I do and the same faint speakup voice prompts for password.
Everytime I press a key, I hear the faint confirmation of "black
circle" and then it gets much louder and the pitch changes,
saying "Screen reader on" when I sent the correct password.

	I see no evidence of problems with gnome and want to keep
it that way.

	After following the instructions and rebooting, the
commands in step 4 of

systemctl --user enable espeakup
loginctl enable-linger
sudo gpasswd -a $USER audio


seemed to be what kept me from hearing that faint login prompt
any longer.  As soon as I ran

systemctl --user enable espeakup
loginctl disable-linger


the faint login messages were restored.  I also, for now, removed
the lines added in Steps 2 and 3 in case they also had some
effect.  I am also already a member of group audio so that part
was not an issue.

	The 3 non-GUI consoles never talked but I knew I had
opened them by logging in and running a script I wrote called
siggen which tells sox to send a steady sine-wave tone or
generate pink noise which is similar to the sound you hear when
an FM radio is between channels or one is running a noise
generator which is handy in audio testing situations.

	Basically, orca is running espeakup and the distribution
doesn't let you install speakup along with that.  Speakup is not
there.

