Return-Path: <speakup+bounces-1475-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 4E7ACCDF7E2
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 11:35:54 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=KOYkpP8W;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 616D53815D0; Sat, 27 Dec 2025 05:35:53 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 459C4380969
	for <lists+speakup@lfdr.de>; Sat, 27 Dec 2025 05:35:53 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5E9D7380C6A; Sat, 27 Dec 2025 05:35:47 -0500 (EST)
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com [95.215.58.189])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 5E8A2380965
	for <speakup@linux-speakup.org>; Sat, 27 Dec 2025 05:35:45 -0500 (EST)
Date: Sat, 27 Dec 2025 21:32:27 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1766831743;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ubGL9ZX3HF+WsConIwAnaMK0rtjf8cBMvFRX1OPUEhE=;
	b=KOYkpP8WiJ/aGB559+trK6bZpbXhhrWMb6TKyv7bcZelO7apYRHo3qwfnlaLntlJuiTQvK
	hoQCKCvMFRXOazmnYouAaBgwuzZlod9sxcMbAlkRwImfFxajSpSI2dXj2aeGUuK0ZA07yp
	LXgbX160G+CFtbOqFU7ZxK5QPQhdI6bwGUwLk2cGvwpF8ZhCsQwrTcWSOh3RhIJuY1qL3o
	jyEC6K9EHjPgVk++3LayyEvjO+VQRicDc0VRWMwB/bf41p7ipy2rWZrh2ww8u12Ej5NgOW
	rT7DMY4Btwv/AL2sTo0SR3l2Nr9WOIdJtGCGzCEWgU8RdVKJ+Sg9+/MSaDHEmg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: "John G. Heim" <jheim@math.wisc.edu>
Cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: Connecting a synth via USB port
Message-ID: <aU-1uwESX7XPd5rY@titan>
References: <d1476802-003f-4971-bb3e-ace29be88839@math.wisc.edu>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux." <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d1476802-003f-4971-bb3e-ace29be88839@math.wisc.edu>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

You set the module arguments to use /dev/ttyUSB or whichever serial port is USB,
instead of /dev/ttyS0 or whatever you do with a non-USB port.

On Tue, Dec 23, 2025 at 09:23:42AM -0600, John G. Heim wrote:
> I have heard that speakup can operate via a USB port. But I can't find
> instructions for setting that up. Any pointers?
> 
> 

