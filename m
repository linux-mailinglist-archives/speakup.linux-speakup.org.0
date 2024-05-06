Return-Path: <speakup+bounces-1132-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DBDAC8BD0EF
	for <lists+speakup@lfdr.de>; Mon,  6 May 2024 17:00:16 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=dRJ1tPd8;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 79636C81CD6; Mon, 06 May 2024 11:00:16 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 5BCFDC80B8C
	for <lists+speakup@lfdr.de>; Mon, 06 May 2024 11:00:16 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32CAFC80B8C; Mon, 06 May 2024 11:00:08 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 14659C80B87
	for <speakup@linux-speakup.org>; Mon, 06 May 2024 11:00:08 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 61748FA020;
	Mon,  6 May 2024 10:59:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1715007577;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YD7DoG9QeJcdRsKciPyz44aeky35hV4qe0XBUtNggIU=;
	b=dRJ1tPd8wuzqegT9veGmOBg+x3RkDl6EZYgsro70j0w5DnyWTTEnv53jRdEbSYlD4UYrVY
	kKRYhwn+OO/vIJXTWn7GbS0GTGojJCyNomM7ttDcWfm8Yb+e/F/e7bvGPH1i7Pwv0LvUx3
	reIIVz5DI6BNW+e7lfBc9ocYmLpkFTI=
Received: (from janina@localhost)
	by opera.rednote.net (8.17.2/8.16.1/Submit) id 446Exbg1116147;
	Mon, 6 May 2024 10:59:37 -0400
Date: Mon, 6 May 2024 10:59:37 -0400
From: Janina Sajka <janina@rednote.net>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: speakup@linux-speakup.org
Subject: Re: Can We `Please Enjoy Single Digit Numbering in Speakup?
Message-ID: <ZjjwWbRcbtXWhaWc@rednote.net>
References: <af4eb9cb-7a49-f290-7fbe-d77cb5e39982@hubert-humphrey.com>
 <ZjjPiNYlatNpb7tK@rednote.net>
 <4411ea8e-2679-e510-4c40-3662964802af@hubert-humphrey.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4411ea8e-2679-e510-4c40-3662964802af@hubert-humphrey.com>
X-Operating-System: Linux opera.rednote.net 6.8.8-200.fc39.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Sure, Chime. Clever hacks like John's could go into the screen reader, I
suppose. I was simply pointing out the correct place for the fix is to
give the TTS the ability to say digits and not numbers.

The logic is fairly simple:

Look at every string of characters, i.e. from white space to the next
white space.

If there are digits in that string add a space after each char in what
you send to the TTS engine.

That would get you ham radio call signs in addition to phone numbers,
zip codes, and teleconference meeting IDs.

It would, of course, read prices as digits, too. You'd hear three nin
dot five two and not thirty nine decimal fifty two, or if the engine
knows about dollar signs thirty nine dollars and fifty two cents.

I could easily live with prices as digits to have more accessible phone
numbers, zip codes, and teleconference IDs myself! :)

Best,
Janina

Chime Hart writes:
> Thank you Janina-and-John for your analysis. Janina, would you also think an
> acception dictionary would also be purely dependant on each TTS? I think
> Speakup-and-YASR are an only Linux screen-readers without such a dictionary.
> Not sure if Storm reads this list, but I think Fenrir has a way of changing
> pronunciations?I asked Storm about single digits-and-he rigged up something,
> I think useing John's method, but it only works with Allison, not the
> DecTalk software. And Janina, recently in addition to phone
> numbers-and-zip-codes, we have Zoom ID numbers. I suppose as I think Kirk
> created Speakup, he would be an authority on why these 2 features were never
> implemented.
> I would think since we can easily ajust caractors, we could also enjoy these
> other options.
> Chime

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


