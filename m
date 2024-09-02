Return-Path: <speakup+bounces-1196-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C1C5896893F
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 15:55:40 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=Mt7RNvVc;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id F2B843841AF; Mon, 02 Sep 2024 09:55:38 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id D1B12382210
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 09:55:38 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E0655382247; Mon, 02 Sep 2024 09:55:31 -0400 (EDT)
Received: from altprdrgo03.altice.prod.cloud.openwave.ai (altprdrgo03.altice.prod.cloud.openwave.ai [65.20.63.38])
	by befuddled.reisers.ca (Postfix) with ESMTPS id A0DB33820A1
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 09:55:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1725285331; 
        bh=yPEQ/GCvvecoF7Tmmd6jGJSvCERmCMMtDpfrUn0p2jM=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=Mt7RNvVcOIHlEwdci/kZHwOz9vbKqgJobIlQTHb4Bc/62QJubzF29/6sJ0tgqUynXf1a5LeuCHYken0ch2/e6BT3JlLweT0AKdSmRmlBrLKLZ/3AJCJqIyFFF/hgrX8VHDAlhFH5SXZE8HFbLR3VKHFcIDzZEj64GI5ih/ERVxYBVJSgU1pLGFxm4bn+rC0YYxd2rN62t9PSGqNlM0H0hovXXXAQxBUnmSLH4ZZODOOAdXKne9mjxSFD5MoZAz1AwiGoGjMAzTPFXZ2/ObaWkdGW8LBwlmn+wBHVX5ygZBny52w1DDjWCbPrXxGFwJCjTEjTguxaFPYrLy17d/Ibuw==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 66D09497008B2401
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeftddrudehfedgjedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdef
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo03.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 66D09497008B2401 for speakup@linux-speakup.org; Mon, 2 Sep 2024 09:55:24 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1sl7WY-0002xy-0P
	for speakup@linux-speakup.org;
	Mon, 02 Sep 2024 08:55:18 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: CLI Terminals with Speakup (Was howto run speakup/orca concurrently in ubuntu)
In-reply-to: <286a75c4-4d28-f45b-fb44-65aeb7a3d358@hubert-humphrey.com>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <286a75c4-4d28-f45b-fb44-65aeb7a3d358@hubert-humphrey.com>
Comments: In-reply-to Chime Hart <chime@hubert-humphrey.com>
   message dated "Mon, 02 Sep 2024 05:51:08 -0700."
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
Content-ID: <11404.1725285318.1@wb5agz.lan>
Date: Mon, 02 Sep 2024 08:55:18 -0500
Message-Id: <E1sl7WY-0002xy-0P@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

What I notice with the Raspberry Pi is not always at exactly the
same spot in a text file.  Sometimes, there is no trouble at all
and at other times, the dropping of characters starts sooner.  If
I read the same botched line by using the number pad, the text
	is clear which means that the trouble happened when data
were being fed to the text-to-speech conversion process.

	Raspberry Pi's are great little boxes but the tradeoff
between doing lots of seemingly parallel tasks at once and doing
several things in series because there aren't enough resources to
go around should look or in this case sound like getting swamped.
	Afaster processor doesn't get swamped as quickly but, at
some point, it's got to stop accepting new input and deal with
the task at hand and that may not be possible due to how fast
data are coming in plus the task of doing the text-to-speech
conversion.

	On the full-sized PC, there are bigger busses and more
ways to keep up.

	I've seen other tasks such as using the Raspberry Pi
imager on an actual Raspberry Pi slow to a crawl compared with
how fast it runs on a Windows version of the imager.

	I really hate to say these things because I like
Raspberry Pi's as they do most things as well as full-sized PC's
do but certain activities take longer depending on how much true
parollel activity is required.

	I wouldn't have 4 Raspberry Pi's if I didn't think they
weren't worth the investment but I have made good sound
recordings and done network sniffer captures using Pi's with no
trouble at all.

	The full-sized HP PC which is running orca 43.1 and will
hopefully eventually have talking command-line consoles probably
won't miss a syllable in command-line mode but the hardware cost
about as much as 20 Raspberry Pi's so it should flat scream under
Linux.

Martin

Chime Hart <chime@hubert-humphrey.com> writes:
> Hi Martin: I wish I had solutions for you, just an observation. About you
> noticing "long winded text" I am listening with a DecTalk USB. Even in 
> your
> message at line 54 was garbled, but of course useing flat-review, all was
> fine. Not completely sure but either blank-lines or quoting an original
> message may be confusing to Speakup. I will need to pay attention-and-see
> if its always the same line numbers involved? Your quote of Greg began on
> line 62. I have a maximum of 180 lines by 240 colomns. Hope we find a
> solution.

