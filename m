Return-Path: <speakup+bounces-1131-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BAAD08D71E3
	for <lists+speakup@lfdr.de>; Sat,  1 Jun 2024 22:47:34 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=Sl5tCZZ6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F26923827FC; Sat,  1 Jun 2024 16:47:32 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id C8BDD3825E1
	for <lists+speakup@lfdr.de>; Sat,  1 Jun 2024 16:47:32 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5D80B382256; Sat,  1 Jun 2024 16:47:25 -0400 (EDT)
Received: from altprdrgo02.altice.prod.cloud.openwave.ai (altprdrgo02.altice.prod.cloud.openwave.ai [65.20.63.73])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0551F3821CE
	for <speakup@linux-speakup.org>; Sat,  1 Jun 2024 16:47:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1717274845; 
        bh=0RCJzznlOXM+LsVwF1zCtlj36ztuxkcXzSi0bcpsfIU=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=Sl5tCZZ6wlv/+09YzpvC2Nud7erxLGL2Nu3iv+vIJakn9YAIMEM0ceDJRIdwn5NGGE1KC//TelzmdjXC1sopQ7rmWP4il9Ne19X8Np/j9bv8boGiDHFoMT3s9bvHSEDLdImMvtc2z8MwKePh7FXq3bjbbbjqoZDdIpC29+qlOymGP3j3w/pak+oFecWWEsFuIKsUp0NOsGrTdV/00D+SupWLPUrSW+mKVLDUBxnJxo7WQIyWU/Ygbu2EGmpdVx+dXTP/udLCmzpTmEqTzHW2w3i789z57yESvwYyEyljjCX4+SWlahDQqev8CpMF1NEysatyn5x4JhANRoYBRig4Jg==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 6643BF38029E9019
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrvdekkedgudehvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhgpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtvd
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo02.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 6643BF38029E9019 for speakup@linux-speakup.org; Sat, 1 Jun 2024 16:47:20 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1sDVdC-0002UC-15
	for speakup@linux-speakup.org;
	Sat, 01 Jun 2024 15:47:14 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: Can We `Please Enjoy Single Digit Numbering in Speakup?
In-reply-to: <ZjjwWbRcbtXWhaWc@rednote.net>
References: <af4eb9cb-7a49-f290-7fbe-d77cb5e39982@hubert-humphrey.com> <ZjjPiNYlatNpb7tK@rednote.net> <4411ea8e-2679-e510-4c40-3662964802af@hubert-humphrey.com> <ZjjwWbRcbtXWhaWc@rednote.net>
Comments: In-reply-to Janina Sajka <janina@rednote.net>
   message dated "Mon, 06 May 2024 10:59:37 -0400."
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
Content-ID: <9558.1717274834.1@wb5agz.lan>
Date: Sat, 01 Jun 2024 15:47:14 -0500
Message-Id: <E1sDVdC-0002UC-15@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I am following this discussion with interest because I see this
situation constantly but as one who enjoys writing programs,
there sure are a lot of traps no matter what route someone
chooses because a bunch of digits together could just as easily
be a large number as digits that should be read singly and what
we are really asking for is context-sensitive speech such as one
would get from a human reader which would mean some sort of AI
logic engine in the screen reader and even then, it would
probably hit situations where it would blow up and do something
stupid.

	Think of the word R E A D.  We all know it should rhyme
with need and weed when it is talking about the process of
converting print on a page to words and ideas but after you've
done that, you have read something, same spelling but sounding
like the color rather than rhyming with speed.

	The NOAA Weather Radio broadcasts as heard in the United
States are text-to-speech engines that use a fairly natural
male voice that often-times sounds like a live person until it
does something really cringe-worthy such as the pronunciation of
the word "winds" as in what pushes a sail boat.  The
voice says, the same word one would say if one was talking about
winding the spring of an old mechanical clock or a pitcher
getting ready to throw a baseball as in "He winds up."

	Okay, somebody goes in and makes the plural of W I N D
have a short I sound which is perfect until
"Thunderstorm activity should begin to wind down later tonight but W I N D is
now spoken with the short I sound instead of the long I sound so that
just makes the other pronunciation of W I N D wrong now.  The
only way one can win is to use a text-to-speech engine with a
large language model and this should definitely be part of the
screen reader, itself.

	This should be quite possible but it means that the
speech engine in a screen reader will just have to get bigger and
smarter.

	Think how long it takes a child to get some of the rules
right.  Some adults who should know better never get some of this
concept right so our hope should be to get context-sensitive
rules right most of the time.

Janina Sajka <janina@rednote.net> writes:
> Sure, Chime. Clever hacks like John's could go into the screen reader, I
> suppose. I was simply pointing out the correct place for the fix is to
> give the TTS the ability to say digits and not numbers.
> 
> The logic is fairly simple:
> 
> Look at every string of characters, i.e. from white space to the next
> white space.
> 
> If there are digits in that string add a space after each char in what
> you send to the TTS engine.
> 
> That would get you ham radio call signs in addition to phone numbers,
> zip codes, and teleconference meeting IDs.
> 
> It would, of course, read prices as digits, too. You'd hear three nin
> dot five two and not thirty nine decimal fifty two, or if the engine
> knows about dollar signs thirty nine dollars and fifty two cents.
> 
> I could easily live with prices as digits to have more accessible phone
> numbers, zip codes, and teleconference IDs myself! :)
> 
> Best,
> Janina
> 

