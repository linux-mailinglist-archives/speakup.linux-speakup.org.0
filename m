Return-Path: <speakup+bounces-1193-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id A3854968760
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 14:20:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=gAjk6r9d;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32CC738418D; Mon, 02 Sep 2024 08:20:07 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 14547382132
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 08:20:07 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 18CA6382210; Mon, 02 Sep 2024 08:20:00 -0400 (EDT)
Received: from altprdrgo03.altice.prod.cloud.openwave.ai (altprdrgo03.altice.prod.cloud.openwave.ai [65.20.63.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id C02703820E5
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 08:19:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1725279599; 
        bh=ZnJMSsTH9ZLnXbsDwKXAHg6KLdZTQ9Fo38/9+xTxWwc=;
        h=From:To:Subject:References:MIME-Version:Content-Type:Date:Message-Id;
        b=gAjk6r9dhHRTIU/2x6lq2h+jhBuL7MAGLxONT27GwL0HwFb9McrKU1Tau3I0Dza8d0Fj52FbOZ1q4qX4SCRyGUXhAvt2xqfkdyt5yClGY9+xKfUmv33nfLggwLqjadWOKWNXvvN2Nz8mBs1Kx8BCcR9CUpp10HbzoepFPc9ewIwR844dWGo/TlgzCUbZ8cna1mbjZweYqg7uqRw3t+OKTxXCVV29ggYcA0hCWOLFddjJh+8KiYtqqTBNcL4TqyLgB9aFpVl8N5RP3FWN4dNV6Agw30wSc4UyqE82c2liw8A+w8N+DmQnXgpcB9odNsHUQqErGfB4Du76NhehDrMWvQ==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 66D094970087EAA6
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeftddrudehfedghedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufhfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhieegfeffvdevvedvteekgfegleeuffekvdejvdeiveejuefhkedtueduhfffheenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhgpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtfe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo03.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 66D094970087EAA6 for speakup@linux-speakup.org; Mon, 2 Sep 2024 08:19:58 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1sl62C-0002oX-0Y
	for speakup@linux-speakup.org;
	Mon, 02 Sep 2024 07:19:52 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: CLI Terminals with Speakup (Was howto run speakup/orca concurrently in ubuntu)
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net>
Comments: In-reply-to Gregory Nowak <greg@gregn.net>
   message dated "Sat, 06 Jul 2024 00:08:23 -0700."
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
Content-ID: <10819.1725279592.1@wb5agz.lan>
Date: Mon, 02 Sep 2024 07:19:52 -0500
Message-Id: <E1sl62C-0002oX-0Y@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

This message is slightly different in scope than the thread I am
referencing which was active slightly less than 2 months ago so I
didn't want to hijack it but instead have more questions.

	The system in question is running Debian bookworm and
Orca 43.1 with speakup and appears to be doing that fine as I
have run firefox and done a few other GUI activities with no
unusual issues.

	For the longest time, I thought the alternate consoles
didn't work but Control-Alt F1 through F6 seem to work now that I
know to use Control-Alt instead of just Alt-Fx.

	Control+alt+F1 or F2 gives one a choice of two GUI
consoles and orca works in tty1 and tty2.  Tty's 3-5 are CLI
consoles and I know they work because I have a Bell character as
part of the command-line prompt and the little piezoelectric
buzzer beeps and I can log in to them and call alsa-based sound
utilities such as sox and there is proper sound but I would love
to have the old-school speakup command-line utility there because
that system just works when dealing with plain text, very well.

	Right now, I can either get on an older Debian box from
the 8086 era and ssh in and run lynx sessions or use gcc or g++
and all is great.  The other thing I am doing right now is I
have a Raspberry Pi4 with speakup running on it and it almost
works perfectly except that it seems to have some sort of
buffering issue when reading a long text output such as an email
message that covers several screens orthe output from doing a
build which may go on and on forever, more or less.

	It seems to be a Raspberry Pi problem as I tried
everything from a Pi Model 2B through a Pi4.  The faster
processor in the models 3 and 4 were some improvement but it
still ends up imitating someone who is out of breath several
lines in.

	The Raspberry Pi4 isn't a replacement for the 8086 system
because of that buffering issue but it sure uses a lot less UPS
energy and having the CLI consoles would use even less energy.

	The systems I am using are not multi-user systems so
thankfully there is no security issue but it would be nice to
free up the Raspberry Pi4 which talks and should be fine for
other projects, just not for long-winded text output.  The other
advantage of having the CLI consoles on the same box is greater
simplicity of setup.

	I also definitely do not want to ruin orca as it is very
useful, just for different activities.

	Any ideas on how I can have the best of both worlds are
much appreciated.  Thank you.

Martin

Gregory Nowak <greg@gregn.net> writes:
> Jookia's page lists one solution to the problem. The other solution
> which I personally use is to get rid of pulseaudio since I don't need
> it. If you do that, you will want to change the output from pulseaudio
> to libao in /etc/speech-dispatcher/speechd.conf if you still want to
> use orca.
> 
> Greg

