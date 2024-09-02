Return-Path: <speakup+bounces-1201-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id ADD5B968DAF
	for <lists+speakup@lfdr.de>; Mon,  2 Sep 2024 20:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1725302534;
	bh=VJa6wpMidt3ZjCe9aPU2DUc42RThiZ2fJBbzu22fHVI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=ghNFJm4EySGaKhQwV5tt/TU/ioKgtzJW8Bf1wU6M1X+Qr3ZQxlAW5uusHSWBJcml7
	 REr9hVoJCvjwFHjUkFJ9A09DRTYW+XARD1SW2o1RhtwNPLnpvvARsjRI9nqYjNdEKA
	 Krxg9PfDsZkQl4IdDW41RTXmtNBKAep3RESnHszI=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 4C1273841AE; Mon, 02 Sep 2024 14:42:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1725302534;
	bh=VJa6wpMidt3ZjCe9aPU2DUc42RThiZ2fJBbzu22fHVI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=ghNFJm4EySGaKhQwV5tt/TU/ioKgtzJW8Bf1wU6M1X+Qr3ZQxlAW5uusHSWBJcml7
	 REr9hVoJCvjwFHjUkFJ9A09DRTYW+XARD1SW2o1RhtwNPLnpvvARsjRI9nqYjNdEKA
	 Krxg9PfDsZkQl4IdDW41RTXmtNBKAep3RESnHszI=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 2BDF2383CB0
	for <lists+speakup@lfdr.de>; Mon, 02 Sep 2024 14:42:14 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1725302527;
	bh=VJa6wpMidt3ZjCe9aPU2DUc42RThiZ2fJBbzu22fHVI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=k7QWB49fQLVn3puwzTAgByzhVg4lpGnfci9xtUwgoWEuHtiIb78yrT9RcX7kzHmqV
	 oDH8J+9SzRzAwHnqWxF27hJ1fQF0n4f9BT7aRzcr4Hb9jRuKwMJwM/zzHwesU9FowQ
	 91zyKpOcgj7zmYdjSvjbeatxAsHiisG4+1rHjJ38=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id 5F72D383CB4; Mon, 02 Sep 2024 14:42:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1725302527;
	bh=VJa6wpMidt3ZjCe9aPU2DUc42RThiZ2fJBbzu22fHVI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=k7QWB49fQLVn3puwzTAgByzhVg4lpGnfci9xtUwgoWEuHtiIb78yrT9RcX7kzHmqV
	 oDH8J+9SzRzAwHnqWxF27hJ1fQF0n4f9BT7aRzcr4Hb9jRuKwMJwM/zzHwesU9FowQ
	 91zyKpOcgj7zmYdjSvjbeatxAsHiisG4+1rHjJ38=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 3B584383CAE;
	Mon, 02 Sep 2024 14:42:07 -0400 (EDT)
Date: Mon, 2 Sep 2024 14:42:07 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Martin McCormick <martin.m@suddenlink.net>
cc: speakup@linux-speakup.org
Subject: Re: SPFUNSUPPORTED MAY BE MALICIOUS CLI Terminals with Speakup (Was
 howto run speakup/orca concurrently in ubuntu)
In-Reply-To: <E1slBYr-0003js-0w@wb5agz>
Message-ID: <cb2e836c-c6ce-aa54-a752-3a0d56126c7a@reisers.ca>
References: <ZoieyBFD0TXlL_bd@cudneys.ca> <ZojtZ3RQxdiZaMN1@gregn.net> <E1sl62C-0002oX-0Y@wb5agz> <b47611eb-67aa-5c99-07b8-3b31b4168e67@csir.co.za> <e7b27ee1-63bd-430c-8d66-d6dc9e9829ec@math.wisc.edu> <E1slBYr-0003js-0w@wb5agz>
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

Hi Martin: I am quite dense, so maybe you already stated the issue and
I just missed it. What is the exact issue? Speakup doesn't start on
boot? Speakup doesn't run at all? Speakup won't run while gnome and
orca are running? If it is the boot issue, zookia posted a link on the
speakup list about getting that working. If it's they don't play nice
together, you'll need to provide more info because they work just fine
together here. But, having said that I don't use gnome, I use i3 and
storms i38 scripts and startx. I'd appreciate it if you could clarify
the issue please.

   Kirk

On Mon, 2 Sep 2024, Martin McCormick wrote:

> It looks like speech-dispatcher is running and was started on
> boot and is serving all the gnome terminals that is, the first
> two consoles.  They both talk but behave identically as gnome
> consoles.  The remaining 3 consoles are not GUI so are mute right
> now except for the beep which comes from the sounder on the main
> board but sound does result if I play noise, tones or anything
> else through sox so, if speakup was in the output path, it should
> speak.
>
> 	As I said, I don't want to mess up orca speech since it
> works fine, just switch inputs to speakup from gnome while I am
> using the text consoles and then go back to gnome when needed.
>
> 	This installation started as a debian install a couple of
> years ago in which I got speech going by typing the s character
> to get a talking installer and then went from there after
> installing the gnome desktop.  I didn't even know that pulseaudio
> is not the sound system of choice but pipewire is so I'm getting
> smarter by the minute.  I'm still not sure what I am learning,
> but so far, so good.
>
> Martin
>

