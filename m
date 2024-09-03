Return-Path: <speakup+bounces-1209-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8016096A822
	for <lists+speakup@lfdr.de>; Tue,  3 Sep 2024 22:16:08 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (2048-bit key; unprotected) header.d=jookia.org header.i=@jookia.org header.a=rsa-sha256 header.s=key1 header.b=v474l0KP;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id E0A39380EA2; Tue, 03 Sep 2024 16:16:06 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id BF255380677
	for <lists+speakup@lfdr.de>; Tue, 03 Sep 2024 16:16:06 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CF4CC380742; Tue, 03 Sep 2024 16:15:59 -0400 (EDT)
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	by befuddled.reisers.ca (Postfix) with ESMTPS id B428F380677
	for <speakup@linux-speakup.org>; Tue, 03 Sep 2024 16:15:57 -0400 (EDT)
Date: Wed, 4 Sep 2024 06:15:04 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1725394522;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qQSZIHhwao+0o+V4Flq3Kx2HO+oNqSfqd9oHv8iwYV8=;
	b=v474l0KPUf3aKm2NhBKVh63XLNmVxgEibq85KX0eZdaZaHqoVVO4WMEqmX2yIgIhmz1eDu
	PP/iVfcAXcB5HErue62jtTTB9fcHBOlo1ZOWtaZBVdDF19gu0Xq/KNFoMpwoCr/ndi1nQc
	hdkWVPfsRdWZq+xSbEQdckgIzV8ddZRR8BoHdeuD25YFCtQ7EMD9/mRqViFKCxL2IGnb4e
	1A0bJXvr7lZ8x4PPOn0prSq/GuIhEG9I6KcLbo19V6eQvcFMgthJEINnmLyyoAK9FPr5rC
	9b16w8Ct1xvq0FUDkuTMwcIIqtEhANb0DZQwalC7XoQ1Rg7s4s0e7FhMIgFDrw==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Jookia <contact@jookia.org>
To: Martin McCormick <martin.m@suddenlink.net>
Cc: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
Message-ID: <ZtduSMS0hyMMjZQZ@titan>
References: <ZojtZ3RQxdiZaMN1@gregn.net>
 <E1sl62C-0002oX-0Y@wb5agz>
 <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za>
 <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu>
 <E1slBYr-0003js-0w@wb5agz>
 <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
 <8aaba50a-94aa-4171-afa0-71530ea1290c@jasonjgw.net>
 <E1slFDa-0001Hb-0R@wb5agz>
 <Zta33F80vCUd8tBU@titan>
 <E1slZoq-0004cu-22@wb5agz>
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
In-Reply-To: <E1slZoq-0004cu-22@wb5agz>
X-Migadu-Flow: FLOW_OUT
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi there,

On Tue, Sep 03, 2024 at 03:08:04PM -0500, Martin McCormick wrote:
> Jookia <contact@jookia.org> writes:
> > Did you try my guide?
> Jookia <contact@jookia.org> writes:
> > Did you try my guide?
> 
> 	Yes and it is well written but it doesn't quite address
> what I hope to do since this is not a multi-user system so I will
> describe things differently and see if I do a better job of it.

So you ran the instructions and speakup still doesn't talk?

> Martin

Jookia.

