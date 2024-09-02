Return-Path: <speakup+bounces-1203-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 94DDD968F75
	for <lists+speakup@lfdr.de>; Tue,  3 Sep 2024 00:08:28 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=DHMOXlEg;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B38673841C3; Mon, 02 Sep 2024 18:08:27 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 924FB383CB2
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 18:08:27 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A3F31383CB6; Mon, 02 Sep 2024 18:08:20 -0400 (EDT)
Received: from altprdrgo03.altice.prod.cloud.openwave.ai (altprdrgo03.altice.prod.cloud.openwave.ai [65.20.63.38])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 6A49D383CAA
	for <speakup@linux-speakup.org>; Mon, 02 Sep 2024 18:08:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1725314900; 
        bh=NyJrYASu3qcAT0cAfdNEl4FP8GRsnqa3XhrwGUTnYA0=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=DHMOXlEg50BFzkwpfbbb7u/ZLAZPnpFwaRAh90VcTf2UYjRf4mqd2v4oA48bYddL2KSdrXZ3NAUKNURABejsnjimr6JJaCduHlUUnWJKmXbduytyqNQZg7oUTOvmJiPiPPT3S88OWsOr1T/AJ5mfc/Q2X1ay02Tjmfd5+3HrVJgkKLVk5pD8LPvGnmov6noIlE5c9qpLxBRwBovb7OL8tTSkHCpleUR04631F7OKLa57KiUYfzhzLPX+e62Ot4K5e2Xs2Tizv2AnPGGy6RKxxEib3WbXxl//jVghrxvp0nzHA9mZvldIJWYsmaeEo9EgYlVMt62jDnhpTJLtGaOLBA==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 66D09497009B5B80
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeftddrudehgedgtdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddtledruddujeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidpihhnvghtpeegjedrvddujedruddtledruddujedpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepshhpvggrkhhupheslhhinhhugidqshhpvggrkhhuphdrohhrghdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdef
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo03.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 66D09497009B5B80 for speakup@linux-speakup.org; Mon, 2 Sep 2024 18:08:19 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1slFDa-0001Hb-0R
	for speakup@linux-speakup.org;
	Mon, 02 Sep 2024 17:08:14 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was howto run speakup/orca concurrently in ubuntu)
In-reply-to: <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za> <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu> <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca> <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net>
Comments: In-reply-to "Jason J.G. White" <jason@jasonjgw.net>
   message dated "Mon, 02 Sep 2024 17:38:16 -0400."
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
Content-ID: <4933.1725314894.1@wb5agz.lan>
Date: Mon, 02 Sep 2024 17:08:14 -0500
Message-Id: <E1slFDa-0001Hb-0R@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks for the clarification about pipewire and why it is here.

	I didn't realize that pulseaudio is fading into the
sunset as it has been around and served well for quite a few
years.

	To remind those who have followed this thread today, the
only real problem I am talking about is minor compared with stuff
that is supposed to work but doesn't.

	It looks like one should be able to get speakup to work
older world of pure text-based command-line consoles since there
are things that runa little more smoothly there than when GUI
tools are needed.

	By the same token, the present implimentation of speakup
with gnome also does well and all I was hoping to do was have
both functionalities on the same system.

	Thanks for the information that has been provided as it
is useful and I am still interested if there is a way to do this
but at least things are about 95% working.

Martin
	
"Jason J.G. White" <jason@jasonjgw.net> writes:
> While we're discussing clarifications, note that Pulseaudio is effectively
> deprecated now. Pipewire has superseded it. Also, Pipewire includes an
> implementation of the Pulseaudio client API, so that client applications
> designed for Pulseaudio still work normally under Pipewire.

