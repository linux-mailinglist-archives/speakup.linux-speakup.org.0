Return-Path: <speakup+bounces-1071-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 863C083E2C0
	for <lists+speakup@lfdr.de>; Fri, 26 Jan 2024 20:41:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706298089;
	bh=kxzYcAgJQTQ327o7dc41Y9g5oppP8AEEYCaBaYf3S8s=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=npvEFU7yNvbM60259KqmIR/IpfW1xMyE69KJKxefRJrG4A1n28uEj+YcnP3lADvn6
	 psGvNqLp9QuRyEFzo7YxtkAB6wmpNftWLkmez5NyrTYGX3K7N28mMEskgkENluiIEd
	 Thp0Ad2cVEQ85ygDiQjMoOdl8akYCzuothHqckG8=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id CDAC0382781; Fri, 26 Jan 2024 14:41:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706298089;
	bh=kxzYcAgJQTQ327o7dc41Y9g5oppP8AEEYCaBaYf3S8s=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=npvEFU7yNvbM60259KqmIR/IpfW1xMyE69KJKxefRJrG4A1n28uEj+YcnP3lADvn6
	 psGvNqLp9QuRyEFzo7YxtkAB6wmpNftWLkmez5NyrTYGX3K7N28mMEskgkENluiIEd
	 Thp0Ad2cVEQ85ygDiQjMoOdl8akYCzuothHqckG8=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id AC584382059
	for <lists+speakup@lfdr.de>; Fri, 26 Jan 2024 14:41:29 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706298082;
	bh=kxzYcAgJQTQ327o7dc41Y9g5oppP8AEEYCaBaYf3S8s=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=kKLsUtW7bnWHRe1NeYnUv1A6R0T+3zOnPtYDwqDNL/V6x9iF71Jo/HNKmz33JU8ss
	 +fSSxdvZJFgi5Mt/RddqoikS1doPBN47+UPQyDq2oqUoMjW2HvXe3g8QHi+CZgQSeJ
	 ES6d7GMMG2/cXm4H0j/8//hzAK81zIh+KjIw2+ls=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 1361F3820BA; Fri, 26 Jan 2024 14:41:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1706298081;
	bh=kxzYcAgJQTQ327o7dc41Y9g5oppP8AEEYCaBaYf3S8s=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=Vkl+wOwkeldT24/Lmp0EYKv5Bs9bCtXyEFDmvMO1iQIoXP5TIvtwIuPXFaJ2U1bFF
	 LdI1ahKW5Ye94OJUegGuE2/qPLGNH1DSy0usaXk57dK46Y4wJmvM/RVEqZ8ECm0XOR
	 Pv7GOWH+IxTs7nZYCjsEL/kY9IuQipL67LnEu/AE=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id E3EB5382054;
	Fri, 26 Jan 2024 14:41:21 -0500 (EST)
Date: Fri, 26 Jan 2024 14:41:21 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Chris Brannon <chris@the-brannons.com>
cc: speakup@linux-speakup.org
Subject: Re: Thoughts on the website and domain?
In-Reply-To: <87jznwhtx6.fsf@the-brannons.com>
Message-ID: <6f101a67-18b1-0d4b-131a-7070312a1972@reisers.ca>
References: <7b6c8aad-7ff9-e768-cc91-fd31b8c886d7@reisers.ca> <87jznwhtx6.fsf@the-brannons.com>
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Heh! A null vote. One for one against. Well, maybe it's worth $52 to keep it for a while.

   Kirk

On Fri, 26 Jan 2024, Chris Brannon wrote:

> Kirk Reiser <kirk@reisers.ca> writes:
>
>> Hello everybody: The linux-speakup.org domain needs to be renewed in
>> the next few weeks and so I figured I should ask for peoples opinions
>> on what to do.
>
> We've talked about this off-list, but it's worth repeating in public.
> Most of the site is basically of historical relevance at this point, and
> little else.  Kernel docs may need to be updated to remove dangling
> references to linux-speakup.org if it goes away.  Personally, I don't
> see any strong reason to keep it, but I don't care much either way.
>
> Deedra just yelled at me from the other room to say that she'd vote for
> keeping it.
>
> -- Chris
>

