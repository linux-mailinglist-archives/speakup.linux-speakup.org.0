Return-Path: <speakup+bounces-933-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 1E964713518
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 16:03:51 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=ONTJ4jFr;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 292E6382477; Sat, 27 May 2023 10:03:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 085AB382451
	for <lists+speakup@lfdr.de>; Sat, 27 May 2023 10:03:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id D6A75382451; Sat, 27 May 2023 10:03:40 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B989D38233E
	for <speakup@linux-speakup.org>; Sat, 27 May 2023 10:03:40 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 2AA21FA191;
	Sat, 27 May 2023 10:03:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1685196190;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YG2zOUcXjI2nC0TTGA51T8Lyuu57eF2vcQpCJ97zZuw=;
	b=ONTJ4jFr+XEGn/RH4QOHXCzXZdXOdxyUlOwt8ceejWpE9d/yZw2AnmdNZNKG1ElnuEpm2w
	lcm+Ft/CwFSJVGgI2GblEAM79UfdNiw4D8kPPJrpWCjNCI7WswpeR5MHKWGJMxUfI4P5Tw
	BP0yUWJihFwOHWfzYM8FYcBAlU3ABdw=
Received: (from janina@localhost)
	by opera.rednote.net (8.17.1/8.16.1/Submit) id 34RE39Le322356;
	Sat, 27 May 2023 10:03:09 -0400
Date: Sat, 27 May 2023 10:03:09 -0400
From: Janina Sajka <janina@rednote.net>
To: Samuel Thibault <samuel.thibault@aquilenet.fr>
Cc: "Joseph C. Lininger" <joe@pcdesk.net>, speakup@linux-speakup.org
Subject: Re: Beep on Backspace in Console Sessions
Message-ID: <ZHINne5OJCQnDMVf@rednote.net>
References: <ZHGmQFwqgliD6p3X@rednote.net>
 <d9409a2a-457a-0427-0535-b5e5c2816ee7@pcdesk.net>
 <20230527090519.wmilxntbwgtfqdge@begin>
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
In-Reply-To: <20230527090519.wmilxntbwgtfqdge@begin>
X-Operating-System: Linux opera.rednote.net 6.2.15-300.fc38.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Thanks, Samuel and Joseph, for both your emails on this topic.

Thanks for confirming the code is still present, but that it directs to
a builtin speaker--something that doesn't exist much anymore. It
certainly isn't present in my System76 Meercat, which is the native
Linux machine I'm planning to take with me when I move to New York City
in (probably just a month or so). My 2012 era tower machine has that
built in speaker, and is beeping, but much argues against keeping it on
this move.

Thanks, Joseph, for the detailed flow explanation. That suggests there
may be some value in running a few different shells to see whether
there's any difference.

I'm quite comfortable running:

amixer -cX controls

and I don't see snd-pcsp anywhere. The Meercat currently has two
devices.

It seems to me some kind of bug on alsa, or perhaps an RFE, might be in
order. The available beep command isn't a reliable substitute because it
returns "device in use" message. Seems, with pipewire, that shouldn't be
an issue, and we should be able to specify which device gets the alert
sound? Is that reasonable? Or am I a vanishing fossil here! <smile>

Best,

Janina


PS: Because I am indeed moving, I may not be as on top of this as I
otherwise might be. Many things are being tossed or given away even as
other items are being packed.

Samuel Thibault writes:
> Joseph C. Lininger, le sam. 27 mai 2023 04:59:11 -0400, a ecrit:
> > Failing that, do you know if the snd_pcsp code has been removed entirely
> 
> It does still exist, but does the converse: using the old PC speaker as
> a sound card, which thus provides very low-quality sound card support.
> 
> Samuel

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


