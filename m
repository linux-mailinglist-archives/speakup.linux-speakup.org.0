Return-Path: <speakup+bounces-1253-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id BDD6BA9DB6B
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 16:17:52 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=sSBp/C+6;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id DEE87382960; Sat, 26 Apr 2025 10:17:50 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BF0F538252E
	for <lists+speakup@lfdr.de>; Sat, 26 Apr 2025 10:17:50 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CEDC4382533; Sat, 26 Apr 2025 10:17:43 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id CC67A382529
	for <speakup@linux-speakup.org>; Sat, 26 Apr 2025 10:17:42 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 83EABFA023;
	Sat, 26 Apr 2025 10:17:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1745677025;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eDA9y+ocYcgIRUr63Fi6nhI5eJ2VAZ73E5dr/34xUa8=;
	b=sSBp/C+6jWFw0RmGcKSuOOROJuy1eu7LqoYBrzqpk95W61gFhz6HwE4ovzYpIf+5zTFfmF
	2nFi1XmnAczS2925cdc0V0h0MY5g7NSq4d5cpoo1xxbj+aYcc3vsTE+z8Dupfi627Iii2x
	8ZpZy+GCwtFkIuRBV53gQVCSTYejJds=
DMARC-Filter: OpenDMARC Filter v1.4.2 mail.rednote.net 83EABFA023
Authentication-Results: mail.rednote.net; dmarc=pass (p=reject dis=none) header.from=rednote.net
Authentication-Results: mail.rednote.net; spf=pass smtp.mailfrom=rednote.net
Received: (from janina@localhost)
	by opera.rednote.net (8.18.1/8.16.1/Submit) id 53QEH43U821807;
	Sat, 26 Apr 2025 10:17:04 -0400
Date: Sat, 26 Apr 2025 10:17:04 -0400
From: Janina Sajka <janina@rednote.net>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org
Subject: Re: I break everything!
Message-ID: <aAzq4FRPgxCa3_QO@rednote.net>
References: <3b7d9a99-8314-77f0-62ce-e6ca3e6ee1e4@reisers.ca>
 <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9677270c-1283-4624-8246-804e41ff3287@math.wisc.edu>
X-Operating-System: Linux opera.rednote.net 6.13.11-200.fc41.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Amen to that!

John G. Heim writes:
> Well, you don't break everything. You are the reason Linux accessibility was
> not broken for a couple of decades.
> 
> 
> 
> On 4/25/25 1:53 PM, Kirk Reiser wrote:
> > So, I did a apt full-upgrade the other day and everything blew up. I
> > have everything mostly pieced back together except mastodon.el and I'm
> > getting weird cron notifications about this list and thus, this is a,
> > wonder if it'll work, post.
> > 
> >   me
> > 
> > 

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


