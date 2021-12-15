Return-Path: <speakup+bounces-338-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id C1DE0475F74
	for <lists+speakup@lfdr.de>; Wed, 15 Dec 2021 18:37:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1639589863;
	bh=sJzZ956WC+qPLKdm/rzNcgQeVv7lo9sdfmHRH3e2AtU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=cTRKtKe8cgayeLYHQmpllsDsz0OfAabzjXhnFKosHSXOF29wIy51I7wPDHEURDwbg
	 V5l1lp5Xum6wCRaJGvh5O871LqZG79f3+K697vblJ6/h9DP5MdEUlTlwHw68Obhnkw
	 9EnnIXONYYC5dpX6Vg3AUUW4ThuatZ8gBNwR5qhc=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 32579381160; Wed, 15 Dec 2021 12:37:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1639589863;
	bh=sJzZ956WC+qPLKdm/rzNcgQeVv7lo9sdfmHRH3e2AtU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=cTRKtKe8cgayeLYHQmpllsDsz0OfAabzjXhnFKosHSXOF29wIy51I7wPDHEURDwbg
	 V5l1lp5Xum6wCRaJGvh5O871LqZG79f3+K697vblJ6/h9DP5MdEUlTlwHw68Obhnkw
	 9EnnIXONYYC5dpX6Vg3AUUW4ThuatZ8gBNwR5qhc=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 1FCA2380E4E
	for <lists+speakup@lfdr.de>; Wed, 15 Dec 2021 12:37:43 -0500 (EST)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1639589857;
	bh=sJzZ956WC+qPLKdm/rzNcgQeVv7lo9sdfmHRH3e2AtU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=t4bz+zMcwkOT84JmjbeszkuNrKVG9pJM5mb+/dIrUKgDqyQDHUKKXjQPgkuHKj7wV
	 qOlWEJH0BDPyOpe/GwcewK+3gwHG+SyP7A9E4D5YKx0OvEfeh5C4Hjei8Mnzlng9Mv
	 mN8SOA5H/Hm++ZBNwDoXer/hhpzcX0RpxeZCuxAo=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5B3E7380E4E; Wed, 15 Dec 2021 12:37:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1639589856;
	bh=sJzZ956WC+qPLKdm/rzNcgQeVv7lo9sdfmHRH3e2AtU=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=x8vG8aT/UcGecx5/tyiVJrMd9+gLbXMXl73K0SwX7cuoNxgfMWmDZYlvOeN7K39kh
	 fR6JNQ5csgILAd8LJcc5KmXp0aibw9YLofiHv4mHjCblkzulFrtOgQeJPKSNAOjJuw
	 ihdJP9w6ctXOqyGBhW1vmxvN+vjfSFO8tLzjv8rw=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 0D5923809FD;
	Wed, 15 Dec 2021 12:37:36 -0500 (EST)
Date: Wed, 15 Dec 2021 12:37:36 -0500 (EST)
From: Kirk Reiser <kirk@reisers.ca>
To: Frank Carmickle <frank@carmickle.com>
cc: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: Re: espeakup not speaking screen review from speakup in Debian sid
 20211215 while screen refreshing to quickly
In-Reply-To: <6C488A97-ABC4-42AE-96FF-20B10156191C@carmickle.com>
Message-ID: <438c249c-e061-150-4e25-877b4dad1b2@reisers.ca>
References: <6C488A97-ABC4-42AE-96FF-20B10156191C@carmickle.com>
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

Hi Frank: Yes, I've noticed the problem. My guess is they've lowered
the keyboard interrupt priority so it doesn't get recognized until all
output is complete. That's just a guess however and yes it is
iritating as hell.

   Kirk

On Wed, 15 Dec 2021, Frank Carmickle wrote:

> Hi all,
>
> I've been noticing a problem with speakup/espeakup/espeak-ng, across kernels 5.10 5.14 and now 5.15. When I write a lot of output to a screen, say dmesg without a pager, screen review stops working for a few seconds. I know speakup is still responding because the tones are played when navigating by word when moving to a new line. The speech is interrupted appropriately but it will not speak again for a few seconds.
>
> Has anyone else experienced this? Does anyone have an idea of where to look to help sort this out.
>
> I very much liked the former functionality of being able to press a key to momentarily flush the buffer and pick up reading the screen immediately.
>
> Thanks all,
> --FC
>
>

