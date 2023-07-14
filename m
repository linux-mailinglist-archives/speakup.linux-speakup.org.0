Return-Path: <speakup+bounces-1006-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 001947543C3
	for <lists+speakup@lfdr.de>; Fri, 14 Jul 2023 22:32:51 +0200 (CEST)
Authentication-Results: befuddled.reisers.ca;
	dkim=fail reason="key not found in DNS" header.d=slint.fr header.i=@slint.fr header.a=rsa-sha256 header.s=default header.b=frZiYCkp;
	dkim-atps=neutral
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 128983825A2; Fri, 14 Jul 2023 16:32:49 -0400 (EDT)
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id E70953823EB
	for <lists+speakup@lfdr.de>; Fri, 14 Jul 2023 16:32:48 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 672C938241F; Fri, 14 Jul 2023 16:32:41 -0400 (EDT)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79])
	by befuddled.reisers.ca (Postfix) with ESMTP id 3FED438238D
	for <speakup@linux-speakup.org>; Fri, 14 Jul 2023 16:32:40 -0400 (EDT)
Received: from [192.168.0.12] (unknown [88.176.55.76])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 05B7AE6F42
	for <speakup@linux-speakup.org>; Fri, 14 Jul 2023 20:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=slint.fr; s=default;
	t=1689359538; bh=KAMWDNxTv2h5eoIvZPigjxT+X7zMoI8yJsdMMG05yiA=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=frZiYCkpDJtwuegSwZa8Lzsevz7hJgHY9GqlsPgSfepqaVEVWgR1fXUu1GhPyXUbq
	 WAtKtX9I6sU7jsf1983kCSfdduZtjNzk6y+3tPwP40dQ4KBAzzRiii5CVvxR6zNy++
	 K15VNcccBEhOyBNislk6OSwHqHCt7MTZvZGKQm3WDBnefNUZh5UaDlUmjBSPAgThIL
	 gQvOK2Ivm4jXBi5bYjtigCYn197taC/Yx4e57mi+lHLXy9d4XpR8V3Y96WT7X3j/wC
	 StfDjL5ltkRyZxMm2c7R64ab4KL4U0m5KI3NvnDxeka5WIHCAzGlA6vV2GR4RRUNst
	 mg2d+QFmAqq+g==
Message-ID: <4609d841-adef-4391-77e0-46fd8147fb47@slint.fr>
Date: Fri, 14 Jul 2023 22:32:17 +0200
X-BeenThere: speakup@linux-speakup.org
Precedence: list
List-Id: "Speakup is a screen review system for Linux."
 <speakup.linux-speakup.org>
List-Unsubscribe: <mailto:speakup+unsubscribe@linux-speakup.org>
List-Post: <mailto:speakup@linux-speakup.org>
List-Help: <mailto:speakup+help@linux-speakup.org>
List-Subscribe: <mailto:speakup+subscribe@linux-speakup.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Announcing pod-kast with a k
To: speakup@linux-speakup.org
References: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com>
Content-Language: en-US
From: Didier Spaier <didier@slint.fr>
In-Reply-To: <271c596a-9783-71c4-950f-2d2264c3e956@hubert-humphrey.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bogosity: Ham, tests=bogofilter, spamicity=0.000000, version=1.2.5

Hi Chime_and_All,

At first I had an issue building it but with Marc's help it worked.

I plan to package it for Slint in the coming days.
Link to the (now solved) issue:
https://github.com/mlytle4218/pod-kast-rust/issues/4

Cheers,
Didier

Le 12/07/2023 à 19:57, Chime Hart a écrit :
> Hi All: I have been waiting a long time to offer a newer much more intuative
> podcast client for those of us who like menus-and-simplicity. I am and will be
> announcing here-and-in the Blinux list, but since this works especially well in
> Speakup, this list will enjoy it first.
> DESCRIPTION
>        Welcome to Pod-kast 0.8.0 written by Marc Lytle and conceived by myself,
> Chime Hart.
> 
>        Over  many  years almost all podcast clients seemed to be lacking an
> interface which made sense, as well as features I was hoping for.  The only one
> I understood was hpodder, but it is no longer available.  In Pod-kast, since I
>        am totally blind and listen with Speakup, a Linux screen-reader, we took
> great care to make all functions really obvious by having numbered menus and yes
> having the word "number" before each digit removing any ambiguity.
> Back again live, while you may be able to grab from a github page, which seems
> really messy in L Y N X an easier option would be a direct url from my web-site,
> but not linked from my site.
> https://hubert-humphrey.com/pod-kast_0.8.0_amd64.deb
> This is beta software-and-there still may be inconsistancies in the man-page.
> Rather than clutterup the list, if you have opperational issues, please write
> myself directly, or write an author Marc at an address listed in the man-page. I
> `sincerely hope all of you enjoy-and-find alot of success with this new client,
> which I named with an alternative spelling, as there are several podcast clients
> with the regular spelling.
> Thanks so much in advance
> Chime

