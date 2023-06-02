Return-Path: <speakup+bounces-955-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 20A96720837
	for <lists+speakup@lfdr.de>; Fri,  2 Jun 2023 19:15:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=Qs4gIkmX;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 479683824CC; Fri,  2 Jun 2023 13:06:08 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 287A7382358
	for <lists+speakup@lfdr.de>; Fri,  2 Jun 2023 13:06:08 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0287E3823E6; Fri,  2 Jun 2023 13:05:59 -0400 (EDT)
Received: from altprdrgo03.altice.prod.msg.synchronoss.net (altprdrgo03.altice.prod.msg.synchronoss.net [65.20.63.138])
	by befuddled.reisers.ca (Postfix) with ESMTPS id AD48E382358
	for <speakup@linux-speakup.org>; Fri,  2 Jun 2023 13:05:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1685725558; 
        bh=hBE0XYQELowLr+1fuu2z6h5CVH8e6WP38XQJVChG6EQ=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=Qs4gIkmXNaoE9g3+Rl/Lp2UQo3sEsL7HdOB1urU+Stal+gUW/CG71VnMcHvkr2uYg30kt4VQ90NhSzijNi0XRDP8VselWXFB2RhvfEX4FiWqU/6T4CvFLSqFHUZx5w3rA2b8uuMVz/2Qv4cAyMe5q5cBH0zjAKCVqELnLMcvVE4prowfJbPnGmjQPNnqUHvQUdmO+XsbMqvque5Car7/NTt4sWVHvqqzQnjrPOOdMKZP3YiSnwrPTO9PIwGc/POasyJk3rMHPDcYovryyWZr15i6SEByzqMsMaC56BrTNt2WYUAhl+mLVZedNHh26bjTy4BFye6SqwOHCsICJNF95A==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 644135C20A305E38
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvhedrfeelfedguddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiirdhlrghnpdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhgpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtfe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz.lan (47.217.109.117) by altprdrgo03.altice.prod.msg.synchronoss.net (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 644135C20A305E38 for speakup@linux-speakup.org; Fri, 2 Jun 2023 13:05:44 -0400
Received: from martin by wb5agz.lan with local (Exim 4.92)
	(envelope-from <martin.m@suddenlink.net>)
	id 1q58Da-0006GQ-2T
	for speakup@linux-speakup.org; Fri, 02 Jun 2023 12:05:38 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: Beep on Backspace in Console Sessions
In-reply-to: <ZHfVG9Z7CiU6csE6@gregn.net>
References: <ZHGmQFwqgliD6p3X@rednote.net> <b175e143-de30-9fb6-1ed2-d352a3af34a9@slint.fr> <ZHUKjA+f+SLDtpR+@gregn.net> <87e9db08-ba5f-1287-9409-d51fd5c3bad4@slint.fr> <ZHfVG9Z7CiU6csE6@gregn.net>
Comments: In-reply-to Gregory Nowak <greg@gregn.net>
   message dated "Wed, 31 May 2023 16:15:39 -0700."
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
Content-ID: <24080.1685725537.1@wb5agz.lan>
Date: Fri, 02 Jun 2023 12:05:37 -0500
Message-Id: <E1q58Da-0006GQ-2T@wb5agz.lan>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I may put my ignorance on shining display here, but the original
PC as in IBM PC plus 4 or 5 zillion clones used to do all their
speaker sounds with a programmable timer-counter IC that was pure
genius for the world of 1980 but it was also very useful and the
HP Rizen system I purchased in 2022 still has something that is
functionally similar in that when I run the debian installer I
used to put Linux on this system, I put the following image on a
thumb drive:

dd if=debian-11.3.0-amd64-DVD-1.iso of=/dev/sdX

	I happened, that day, to have sdd free but your number
will vary so  it could be anything as in be very careful.

	Anyway, I hear a beep from the mother board so there is a
counter-timer type of speaker driver on the main board and I bet
it is a different chip but same function.

	Many boards these days do not appear to have this
programmable timer-counter which is a shame because there is no
way to hear those sounds except from the piezo buzzer on the
mother board.

	I have a Dell Dimension whose built-in mother board
actually provides a PC speaker input to amixer on Card 0 and one
can hear the beeper in the headphone or external speakers jack
which I wish every PC mother board did since you can listen with
headphones from somewhere else and not miss system sounds.

	What would really be just as good would be to have a
kernel module that functionally emulated the old timer-counter
and fed it in to Card 0's mixer.

	Of course, you will only get square waves and pulses, but
those can be useful for many reasons.

	The hardware speaker driver also had a transistor that
could deliver steady DC to the speaker and served to turn on and
off a beep so it was a fairly versatile noise maker.

	Back when the PC first came out, there were no sound
cards at all and the speaker sounds only came from that timer
chip.

	Today, the sound cards and speaker buzzer, if it exists
on your main board have only the fact that they make noises in
common with one another.

	Raspberry Pi's play analog sound fairly well but if some
software tries to access the legacy timer-counter noise maker,
you will hear nothing.

Martin

Gregory Nowak <greg@gregn.net> writes:
> No. The pcspkr module is compiled as a module, and doesn't need to be
> loaded for the speakers or headphone jack to produce the console beep.
> 
> Greg

