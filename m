Return-Path: <speakup+bounces-1179-lists+speakup=lfdr.de@linux-speakup.org>
X-Original-To: lists+speakup@lfdr.de
Delivered-To: lists+speakup@lfdr.de
Received: from befuddled.reisers.ca (befuddled.reisers.ca [206.248.184.127])
	by mail.lfdr.de (Postfix) with ESMTP id 8D2489558E7
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 18:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723911922;
	bh=0T08BxBgby9dwFNG/wnm7gGH0iPndDi+5p6EsLUJZE0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=jB9Mh0Y7rlHhqmsUzXLQq936eWimbrSYK+SMDhuWDtCn3KYVZ/IDnKKHPlX7BKLq3
	 mnzDBUzjDcy5klpsOVui9ITw3OvpqisfiRrUm6FwVPc5mEaNpnBXbr2SgGJCZhPGcJ
	 S9DL+Xj2VsEaDboFO1pcqMajCvwg6kGwKY5uEWKA=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id B356D382706; Sat, 17 Aug 2024 12:25:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723911922;
	bh=0T08BxBgby9dwFNG/wnm7gGH0iPndDi+5p6EsLUJZE0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:List-Id:
	 List-Unsubscribe:List-Post:List-Help:List-Subscribe:From;
	b=jB9Mh0Y7rlHhqmsUzXLQq936eWimbrSYK+SMDhuWDtCn3KYVZ/IDnKKHPlX7BKLq3
	 mnzDBUzjDcy5klpsOVui9ITw3OvpqisfiRrUm6FwVPc5mEaNpnBXbr2SgGJCZhPGcJ
	 S9DL+Xj2VsEaDboFO1pcqMajCvwg6kGwKY5uEWKA=
Received: from befuddled.reisers.ca (localhost [127.0.0.1])
	by befuddled.reisers.ca (Postfix) with ESMTP id 932B23821DB
	for <lists+speakup@lfdr.de>; Sat, 17 Aug 2024 12:25:22 -0400 (EDT)
X-Original-To: speakup@linux-speakup.org
Delivered-To: speakup@linux-speakup.org
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723911915;
	bh=0T08BxBgby9dwFNG/wnm7gGH0iPndDi+5p6EsLUJZE0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=eW+KMFGyDWSj6OOMWa5jYfMRBYBH4BWqRHkhEetlkPLQZejBlkLt79OTQdqjdq7Vm
	 dHC2svcdqDoWaxIAXnhyLOmchILNgAVWWA0Xjw38mMUpqlpD2zSyFOUfyutYedUcsU
	 ZvHsFGrg3BLutCTHzw3i9vnu9N3pwnVvz2WLuIVw=
Received: by befuddled.reisers.ca (Postfix, from userid 65534)
	id A531C382508; Sat, 17 Aug 2024 12:25:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=reisers.ca;
	s=befuddled; t=1723911915;
	bh=0T08BxBgby9dwFNG/wnm7gGH0iPndDi+5p6EsLUJZE0=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=eW+KMFGyDWSj6OOMWa5jYfMRBYBH4BWqRHkhEetlkPLQZejBlkLt79OTQdqjdq7Vm
	 dHC2svcdqDoWaxIAXnhyLOmchILNgAVWWA0Xjw38mMUpqlpD2zSyFOUfyutYedUcsU
	 ZvHsFGrg3BLutCTHzw3i9vnu9N3pwnVvz2WLuIVw=
Received: from localhost (localhost [IPv6:::1])
	by befuddled.reisers.ca (Postfix) with ESMTPS id 845863821DB;
	Sat, 17 Aug 2024 12:25:15 -0400 (EDT)
Date: Sat, 17 Aug 2024 12:25:15 -0400 (EDT)
From: Kirk Reiser <kirk@reisers.ca>
To: Jude DaShiell <jdashiel@panix.com>
cc: speakup@linux-speakup.org
Subject: Re: speakup crashing
In-Reply-To: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com>
Message-ID: <b2ea57df-4d66-e408-4179-a220e4d2b9d3@reisers.ca>
References: <a25a455d-8a84-f0ad-826d-5ba67f14ee99@panix.com>
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

Hi Jude: This may be a silly question, but are you sure it's speakup
crashing? Often, espeakup dies here and so I have a simple script to
kill it off and restart espeakup. I haven''t had speakup itself hang
the system for quite a while.

   Kirk

On Sat, 17 Aug 2024, Jude DaShiell wrote:

> Every so often speakup crashes on my computer.
> I am running a recent version of Jenux so systemd is in use here.
> What I would like to know is a procedure once the system has been rebooted
> to locate any crash messages speakup may have left in logs.  pipewire is
> running the sound system along with alsa here and there's necessary
> pulseaudio artifacts pipewire uses on the system.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>

