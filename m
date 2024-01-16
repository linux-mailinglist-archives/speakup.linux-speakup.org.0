Return-Path: <speakup+bounces-1064-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 906F482F720
	for <lists+speakup@lfdr.de>; Tue, 16 Jan 2024 21:16:24 +0100 (CET)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=f0ay3vxA;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B5428382759; Tue, 16 Jan 2024 15:16:23 -0500 (EST)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 91DBE3820AE
	for <lists+speakup@lfdr.de>; Tue, 16 Jan 2024 15:16:23 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 03AF838228F; Tue, 16 Jan 2024 15:16:16 -0500 (EST)
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [95.215.58.176])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 82EA538203D
	for <speakup@linux-speakup.org>; Tue, 16 Jan 2024 15:16:14 -0500 (EST)
Date: Wed, 17 Jan 2024 07:14:17 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1705436172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mkPx3v4VWvICKm2YfkrUYCpudzPx1SwVISTRQJO1iJU=;
	b=f0ay3vxAuZRCtLM91maPUDf0x+dY/W8I27CMGeHDMohrGVo4KYXdzOcW/BRcsjBqT22BHC
	wZ6e2CF97JOhi0gBbubD46mbKPx3MJerW6QIrovn/ZE5dr2829YPprtHjss3vSGC5NBT79
	yo6jBOx1UfbJvy8Q64WvcBIh1X3xnN1h+DZg6yR44z80ALdBMau2t6YFRQiM5Zq3IFWmzE
	n4lxEdCeW3RjoNe/SLej4ksUqlPsl67+PcP6EUK+kCg3l3PKor5GnreX7ueN8ZJZW5uSc5
	Uh9k/VZKtk2dYkCFqn7DO9+pCajRjoLoSfmJoTMoQ/FGLDng8J2JR6z2lcRG3w==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Kirk Reiser <kirk@reisers.ca>
Cc: speakup@linux-speakup.org
Subject: Re: Thoughts on the website and domain?
Message-ID: <ZabjmWUzllgChW5I@titan>
References: <7b6c8aad-7ff9-e768-cc91-fd31b8c886d7@reisers.ca>
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
In-Reply-To: <7b6c8aad-7ff9-e768-cc91-fd31b8c886d7@reisers.ca>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

I think it's best to keep it unless it's too expensive. Having to change
mailing lists would be a headache, and the website is good starting point
for the project.

Jookia.

On Tue, Jan 16, 2024 at 12:28:37PM -0500, Kirk Reiser wrote:
> Hello everybody: The linux-speakup.org domain needs to be renewed in
> the next few weeks and so I figured I should ask for peoples opinions
> on what to do. First of all, does anyone know whether the speakup
> website is used or useful for any purpose these days? All of speakup's
> code repos have been moved and there hasn't been any new material
> added to the site in years as far as I know. The mailing list, this
> list, could continue under my reisers.ca domain so the list itself
> does not need to be affected because occasionally there is some
> discussion which I believe is useful here on the list.
> 
> I would like to hear opinions if folks have them.
> 
>   Kirk
> 
> 

