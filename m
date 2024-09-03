Return-Path: <speakup+bounces-1208-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id AF71D96A80D
	for <lists+speakup@lfdr.de>; Tue,  3 Sep 2024 22:08:41 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=suddenlink.net header.i=@suddenlink.net header.a=rsa-sha256 header.s=dkim-001 header.b=X5RU+7dY;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 326E43823DC; Tue, 03 Sep 2024 16:08:26 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 10976380677
	for <lists+speakup@lfdr.de>; Tue, 03 Sep 2024 16:08:26 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 0C69F3806E8; Tue, 03 Sep 2024 16:08:19 -0400 (EDT)
Received: from altprdrgo05.altice.prod.cloud.openwave.ai (altprdrgo05.altice.prod.cloud.openwave.ai [65.20.63.74])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B496A380157
	for <speakup@linux-speakup.org>; Tue, 03 Sep 2024 16:08:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suddenlink.net; s=dkim-001; t=1725394098; 
        bh=/MnEZF2NxKhEaC7sKW2fBVkQCnIaJ7L8kfc9Wgam6Uc=;
        h=From:To:Subject:In-reply-to:References:MIME-Version:Content-Type:Date:Message-Id;
        b=X5RU+7dYVReGNOi6g4IQpKdWpvj2whd2qBe8dycT+eLc84RvzVn6xZ0HcBxWiznmAzvGBqQnceoFxl6Xblh2acx+LufoJPfTrVy3uvuRc0e4K/gJiJcay+KMWHWe8PUCbm8FHV/hujCsX/WXxAURgjeeacbdfv4maoMZsBg1nR/jIp4P1RnV5eYOWl5rxggLuLpmr10aFs8e1dq4Lrscd85m3rtESmrLiBWFsbMCyh7SwJMgVH22dEkfYhoBOLz3UUk3Z3bdCpv8LAGUrkqe7uZHy4o+PrHvTqVnAhDy5JDZlX1Xi+MsbSSOxrGTw1s1pfTFa34VSLNC0lp3I9KODw==
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 66D0E6B100B52AD9
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeftddrudehhedgudegiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefgieejtdffvedtffdtgfekvdeufeetvdevleffgeejteeuledtfeeguedtieehgfenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehsphgvrghkuhhpsehlihhnuhigqdhsphgvrghkuhhprdhorhhgpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdthe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo05.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 66D0E6B100B52AD9 for speakup@linux-speakup.org; Tue, 3 Sep 2024 16:08:10 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1slZoq-0004cu-22
	for speakup@linux-speakup.org;
	Tue, 03 Sep 2024 15:08:04 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was howto run speakup/orca concurrently in ubuntu)
In-reply-to: <Zta33F80vCUd8tBU@titan>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za> <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu> <E1slBYr-0003js-0w@wb5agz> <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca> <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net> <E1slFDa-0001Hb-0R@wb5agz> <Zta33F80vCUd8tBU@titan>
Comments: In-reply-to Jookia <contact@jookia.org>
   message dated "Tue, 03 Sep 2024 17:16:44 +1000."
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
Content-ID: <17786.1725394084.1@wb5agz.lan>
Date: Tue, 03 Sep 2024 15:08:04 -0500
Message-Id: <E1slZoq-0004cu-22@wb5agz>
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Jookia <contact@jookia.org> writes:
> Did you try my guide?
Jookia <contact@jookia.org> writes:
> Did you try my guide?

	Yes and it is well written but it doesn't quite address
what I hope to do since this is not a multi-user system so I will
describe things differently and see if I do a better job of it.

	What one gets if we install gnome and orca are 2 talking
GUI consoles which, in earlier days, we would have given our
dominant hands to have as they enabled us to get graphical access
to browsers like firefox and a few other similar browsers plus other
applications that use X.

	In not so long ago times, we might have installed Linux
and speakup and gotten good access to the command-line world of
vi and lynx, etc.

	If one installs gnome desktop now, we can run orca and
get two virtual consoles that talk.  There are 3 more consoles,
however, that are not GUI consoles but are non-graphical consoles
like the days of yore.

	They presently do not talk at all and it would be really
nice if they did because access to such applications as vi and
non-GUI terminals on remote systems feels a little odd when run
through the mate terminal.  In vi, for example, I have had vi
stop echoing properly which makes it hard to detect one's typos
as smoothly as one would like.

	In other words, the old stuff was better at times than
what one gets in a graphical console.

	I want the 3 remaining consoles to have speakup which is
like speakup is on non-GUI systems but I don't dislike the
speakup on the GUI consoles.  It's just different enough that
having access to both would be best.

	The ideal configuration would be that virtual consoles 1
and 2 speak as they already do but virtual consoles 3, 4 and 5
would behave like the older non-graphical terminals.

	On a non-GUI system, all the virtual consoles can talk.
One hears the name of the console when first activating it as it
presents a login prompt and one logs in and can go back and forth
between the first console and the others, depending on which ones
are active.

	That is what this whole discussion is about.

Martin

