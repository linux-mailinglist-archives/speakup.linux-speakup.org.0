Return-Path: <speakup+bounces-1129-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id DB2078BCE32
	for <lists+speakup@lfdr.de>; Mon,  6 May 2024 14:40:20 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=quPC1uYa;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2CFECC81C9D; Mon, 06 May 2024 08:40:18 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0BC0AC80FF1
	for <lists+speakup@lfdr.de>; Mon, 06 May 2024 08:40:18 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D2A62C80FF1; Mon, 06 May 2024 08:40:09 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0A575C80EEE
	for <speakup@linux-speakup.org>; Mon, 06 May 2024 08:40:09 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 09E41FA020
	for <speakup@linux-speakup.org>; Mon,  6 May 2024 08:39:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1714999177;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pd77d1Ewe7iVv9enJiCmMHFHU8cYytgKyc7m/LhqNRE=;
	b=quPC1uYagggLVfXOCjUSS8jqjIF28nb9gsrNHaGlGY+lymQVNN53+EvPzAXrJrLmWbO8tq
	uyy2wafiytsYWlzLZMlUYJUnrSgQl3PZBhQaYGIUNmCOyY2vA7KHqHyOpz36KCh2OpWsP0
	wU/JdgylOzH6d7ZbFCgCsb+xS0/1jWs=
Received: (from janina@localhost)
	by opera.rednote.net (8.17.2/8.16.1/Submit) id 446CdaW8110617
	for speakup@linux-speakup.org; Mon, 6 May 2024 08:39:36 -0400
Date: Mon, 6 May 2024 08:39:36 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Re: Can We `Please Enjoy Single Digit Numbering in Speakup?
Message-ID: <ZjjPiNYlatNpb7tK@rednote.net>
References: <af4eb9cb-7a49-f290-7fbe-d77cb5e39982@hubert-humphrey.com>
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
In-Reply-To: <af4eb9cb-7a49-f290-7fbe-d77cb5e39982@hubert-humphrey.com>
X-Operating-System: Linux opera.rednote.net 6.8.8-200.fc39.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Providing text to speech readback of a string of numeric digits as
individual digits rather than as a number would indeed be useful.
However, I'm not so sure that's a Speakup problem, meaning that I
suspect this is a bug with the TTS itself.

Historically, TTS engines have assumed responsibility for similar
content interpretations. This has always been problematic and
inappropriate, imo, but getting them to understand that has proven
problematic in my experience. My favorite example is the way Eloquence
(and it's Linux versions) insisted on rendering cd as "cendelas," not
change directory, not compact disc, not even certificate of deposit, but
candelas as if we blind folks were exclusively fixated on measuring
luminosity in some arbitrary direction!

Rendering strings of numeric digits as digits would actually satisfy the
more common use case, imo. I find it annoyingly difficult to translate a
phone number from a speech rendering that starts with so many billion,
followed by so many million, and then so many thousands. And why? Just
because some developer saw an opportunity to show off how clever they were?

But to go back to my original point, I don't believe Speakup is
processing any semantic understanding of the text it feeds to the speech
engine. And, that's what it would take to solve this problem in Speakup.
I could be wrong, of course.

Best,
Janina

Chime Hart writes:
> Hi All: I think Speakup is an only screen-reader in almost any platform
> without an option to switch to hear single digits while reading. Maybe
> Chromevox may not have this, but just about all others from DOS up through
> Fenrir have offered this in some form. While it may seem like a small thing,
> while reading an Alpine mail index, hearing the word "hundred" feels as if
> it wastes alot of time. If it would be more official I can file a wish-list
> bug against speakup-tools? When I run reportbug, that seems an only package
> to file against. And speaking of outstanding bugs, back on February 20 I
> filed
> #1062507
> about the DecTalk drivers. Funny thing was, even while reading over what I
> had submitted, settings dropped. I looked around the Speakup drivers
> directory in a newest 6.9 kernel, where a specific change which Samuel had
> helped me with reguarding flush time. 10 is wonderful but in dectlk.c it
> still says 4000.
> In basicly nearly 21years of useing Speakup, an only other wish list item
> would be an exception dictionary. Again, an item in most other
> screen-readers. Thanks so much in advance for listing-and-considering these.
> Chime

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


