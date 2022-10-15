Return-Path: <speakup+bounces-750-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 115E95FFC09
	for <lists+speakup@lfdr.de>; Sat, 15 Oct 2022 23:33:31 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=pass (1024-bit key; unprotected) header.d=panix.com header.i=@panix.com header.a=rsa-sha256 header.s=panix header.b=p7jap3xp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 98B96384000; Sat, 15 Oct 2022 17:33:30 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 79A22383FD3
	for <lists+speakup@lfdr.de>; Sat, 15 Oct 2022 17:33:30 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 8A457383FD4; Sat, 15 Oct 2022 17:33:21 -0400 (EDT)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3120C383FCF
	for <speakup@linux-speakup.org>; Sat, 15 Oct 2022 17:33:21 -0400 (EDT)
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Mqc1r23qhz2sJr;
	Sat, 15 Oct 2022 17:33:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1665869600; bh=kFk2Wy5p7k7Qx6f+/Y094g7slKCWD4bhAGb2jOOLhW4=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=p7jap3xpRIlorvQXy1s8MqnftYYIoxEbAWqgQDuyNd3Os+ONuy5kAAvg0qylMkeyL
	 pheMP1eouKTq54a5q1co2n6orYhdq3nAiOmLV/GPy2I+1kSKBuZWTX2O3IdcWoE6rk
	 bSazSNGg90ww5tRw+N9eu2TI1fhMETrhXyEubF2U=
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Mqc1r23CKzcbc; Sat, 15 Oct 2022 17:33:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Mqc1r20stzcbC;
	Sat, 15 Oct 2022 17:33:20 -0400 (EDT)
Date: Sat, 15 Oct 2022 17:33:20 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Okash Khawaja <okash.khawaja@gmail.com>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>, 
    Mushahid Hussain <mushi.shar@gmail.com>, 
    Osama Muhammad <osmtendev@gmail.com>
Subject: Re: Reading charts
In-Reply-To: <20221015212713.jnf52npv7lhjdkuv@begin>
Message-ID: <f9a92fa5-9842-e3ae-f8ea-a8ff8bdc531a@panix.com>
References: <CAOtcWM2rq=DAqLH=CT9S_ZHM-eZaJHADxKjYvxWcHOADPA2dmw@mail.gmail.com> <20221015212713.jnf52npv7lhjdkuv@begin>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

That's because no linux graph drawing program can draw in ascii or
printable utf-8 characters for its line plots.
The only possibility I can think of for this would be orgmode tables since
graphs are only children of tables.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sat, 15 Oct 2022, Samuel Thibault wrote:

> Hello,
>
> Okash Khawaja, le ven. 14 oct. 2022 07:04:47 +0100, a ecrit:
> > I was wondering if it will be worth adding support for reading charts and
> > graph. The idea came while reading this synopsis of a Linux conference talk
> > [1].
>
> This synopsis is talking about desktop accessibility. I don't think it's
> reasonable to try to do something on the console (I don't even know any
> standard way to read charts and graphs on the console).
>
> Samuel
>
>

