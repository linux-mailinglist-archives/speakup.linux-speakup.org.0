Return-Path: <speakup+bounces-1101-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 32D85881126
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 12:43:40 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; secure) header.d=rednote.net header.i=@rednote.net header.a=rsa-sha256 header.s=dkim header.b=ucuopyLP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 2D81A382664; Wed, 20 Mar 2024 07:43:39 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 0D02D3825CA
	for <lists+speakup@lfdr.de>; Wed, 20 Mar 2024 07:43:39 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 838853825DE; Wed, 20 Mar 2024 07:43:31 -0400 (EDT)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3CE213825C0
	for <speakup@linux-speakup.org>; Wed, 20 Mar 2024 07:43:31 -0400 (EDT)
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 89A1AFA020
	for <speakup@linux-speakup.org>; Wed, 20 Mar 2024 07:42:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rednote.net; s=dkim;
	t=1710934978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gybnI/044+GauKxavGe3yNXLNPMiapEdpI5uq3Ky7pI=;
	b=ucuopyLP2xn5jwQYUDbhTwVyq/AtTbE6dmCYPjyeJFCwirD4PatZtVKUgx5LxWbwEjvRvP
	6Ahyp2lHQ6wrpkjIipJsxI/3v6mSho4/hg9kkYFWWeegeZYgGpeF1Sskscfjo8VqqBvrW6
	YdEevLiBc3B/EQkx++VzvKCcnbqmFfU=
Received: (from janina@localhost)
	by opera.rednote.net (8.17.2/8.16.1/Submit) id 42KBgwNn234154
	for speakup@linux-speakup.org; Wed, 20 Mar 2024 07:42:58 -0400
Date: Wed, 20 Mar 2024 07:42:58 -0400
From: Janina Sajka <janina@rednote.net>
To: speakup@linux-speakup.org
Subject: Re: UTF-8 encoding of i18n files?
Message-ID: <ZfrLwvrqnuevfEIY@rednote.net>
References: <20240312224254.umw3ezrolerdu4yf@begin>
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
In-Reply-To: <20240312224254.umw3ezrolerdu4yf@begin>
X-Operating-System: Linux opera.rednote.net 6.7.9-200.fc39.x86_64
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I'm also in support of UTF8 for Speakup.

I'd like to set my mua, mutt, to utf8; but, that's currently a fraught
undertaking that makes knowing where I am rather impossible, so I've reverted the mutt default to iso8859-1.

Best,
Janina


Samuel Thibault writes:
> Hello,
> 
> i18n files are currently encoded in latin1 (aka iso-8859-1), which poses
> problem for various languages whose characters cannot be encoded that
> way.  We could duplicate the i18n entries, one in latin1 and one in
> utf-8, but it will probably be much simpler to just switch the i18n
> files to utf-8 and be done? Would anybody be against this?
> 
> (for english that changes nothing)
> 
> Samuel

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/


